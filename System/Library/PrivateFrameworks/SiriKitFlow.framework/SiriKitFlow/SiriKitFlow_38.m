void sub_1DCE955B0(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(sub_1DD0DB04C() - 8);
  v6 = v5;
  v53 = a1;
  if (a2 > 3)
  {
    v51 = *(v5 + 64);
    v47 = *(sub_1DD0DC76C() - 8);
    v22 = *(v47 + 80);
    v49 = *(sub_1DD0DB1EC() - 8);
    v43 = *(v49 + 80) | v22;
    v45 = *(sub_1DD0DB4BC() - 8);
    v23 = *(v45 + 80) & 0xF8;
    v24 = *(sub_1DD0DB3EC() - 8);
    v25 = *(v24 + 80);
    v26 = v23 | v25 | 7;
    v44 = *(sub_1DD0DD12C() - 8);
    v27 = *(v44 + 80);
    v28 = *(sub_1DD0DD08C() - 8);
    v29 = (v43 | (v27 | *(v28 + 80))) & 0xF8 | v26;
    v30 = (v51 + v29) & ~v29;
    v31 = *(v47 + 64);
    if (((v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v31)
    {
      v31 = ((v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    if (v31 <= *(v49 + 64))
    {
      v31 = *(v49 + 64);
    }

    v32 = *(v24 + 64) + ((*(v45 + 64) + v25) & ~v25);
    if (!*(v24 + 84))
    {
      ++v32;
    }

    v33 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 19) | 5;
    if (v31 <= v34)
    {
      v31 = (v33 + 19) | 5;
    }

    v35 = ((((((v33 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    if (v31 <= v35)
    {
      v31 = v35;
    }

    if (v31 <= ((v34 + ((v26 + ((*(v44 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v31 = ((v34 + ((v26 + ((*(v44 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    v36 = *(v28 + 64);
    if (v31 > v36)
    {
      v36 = v31;
    }

    if (v36 <= 0x18)
    {
      v36 = 24;
    }

    v37 = ((((v30 + v36 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
    v38 = *(*(*(a3 + 16) - 8) + 64);
    if (v38 <= 9)
    {
      v38 = 9;
    }

    if (v38 + 1 > v37)
    {
      v37 = v38 + 1;
    }

    if (v37 <= 9)
    {
      v39 = 9;
    }

    else
    {
      v39 = v37;
    }

    v40 = a2 - 4;
    if (v39 < 4)
    {
      v41 = v53;
      v53[v39] = (v40 >> (8 * v39)) + 4;
      if (!v39)
      {
        return;
      }

      v40 &= ~(-1 << (8 * v39));
    }

    else
    {
      v41 = v53;
      v53[v39] = 4;
    }

    if (v39 >= 4)
    {
      v42 = 4;
    }

    else
    {
      v42 = v39;
    }

    bzero(v41, v39);
    switch(v42)
    {
      case 2:
        *v41 = v40;
        break;
      case 3:
        *v41 = v40;
        v41[2] = BYTE2(v40);
        break;
      case 4:
        *v41 = v40;
        break;
      default:
        *v41 = v40;
        break;
    }
  }

  else
  {
    v50 = *(sub_1DD0DC76C() - 8);
    v48 = *(sub_1DD0DB1EC() - 8);
    v7 = *(sub_1DD0DB4BC() - 8);
    v8 = *(sub_1DD0DB3EC() - 8);
    v46 = *(sub_1DD0DD12C() - 8);
    v9 = *(sub_1DD0DD08C() - 8);
    v10 = *(*(*(a3 + 16) - 8) + 64);
    if (v10 <= 9)
    {
      v10 = 9;
    }

    v11 = *(v8 + 80);
    v12 = v11 | *(v7 + 80) & 0xF8 | 7;
    v13 = v12 | ((*(v48 + 80) | *(v50 + 80)) | (*(v46 + 80) | *(v9 + 80))) & 0xF8;
    v14 = (*(v6 + 64) + v13) & ~v13;
    v15 = *(v50 + 64);
    if (((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v15)
    {
      v15 = ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    if (v15 <= *(v48 + 64))
    {
      v15 = *(v48 + 64);
    }

    v16 = *(v8 + 64) + ((*(v7 + 64) + v11) & ~v11);
    if (!*(v8 + 84))
    {
      ++v16;
    }

    v17 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v17 + 19) | 5;
    if (v15 <= v18)
    {
      v15 = (v17 + 19) | 5;
    }

    v19 = ((((((v17 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    if (v15 <= v19)
    {
      v15 = v19;
    }

    if (v15 <= ((v18 + ((v12 + ((*(v46 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v15 = ((v18 + ((v12 + ((*(v46 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    v20 = *(v9 + 64);
    if (v15 > v20)
    {
      v20 = v15;
    }

    if (v20 <= 0x18)
    {
      v20 = 24;
    }

    v21 = ((((v14 + v20 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
    if (v10 + 1 > v21)
    {
      v21 = v10 + 1;
    }

    if (v21 <= 9)
    {
      v21 = 9;
    }

    a1[v21] = a2;
  }
}

uint64_t sub_1DCE95D18()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_30_30();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_59(v1);

  return sub_1DCE8DC08(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCE95DAC()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_93(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCE8DAD8(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE95E38()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_93(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCE8D9A8(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE95EC4()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_93(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCE8D878(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE95F50()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_93(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCE8D748(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE95FDC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_30_30();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_59(v1);

  return sub_1DCE8D610(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCE9609C()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCE8D1DC(v3, v4);
}

uint64_t sub_1DCE96120()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCE8D3C8(v3, v4);
}

uint64_t sub_1DCE961A4()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_17(v4);

  return sub_1DCE8D46C(v6, v2, v1);
}

uint64_t sub_1DCE9623C()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCE8D324(v3, v4);
}

uint64_t sub_1DCE962C0()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCE8D280(v3, v4);
}

uint64_t sub_1DCE96344()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_30_30();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_59(v1);

  return sub_1DCE8DF30(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCE963D8()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_93(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCE8E264(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE96464()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_93(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCE8E4B8(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE964F0()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_93(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCE8E70C(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE9657C()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_93(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCE8E960(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE96608()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_30_30();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_59(v1);

  return sub_1DCE8EBB4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCE966EC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v6 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 80);

  return sub_1DCE8E1F0(a1);
}

uint64_t sub_1DCE967E0(uint64_t a1)
{
  v3 = type metadata accessor for Parse(0);
  v4 = OUTLINED_FUNCTION_1_93(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v8 = OUTLINED_FUNCTION_0_87();
  sub_1DCB29E58(a1 + *(v8 + 20), v1);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1DCB29EBC(v1);
    return 1;
  }

  v9 = OUTLINED_FUNCTION_2_78();
  if (v9 == v10 && 0x80000001DD115AF0 == a1)
  {

    return 0;
  }

  v12 = OUTLINED_FUNCTION_3_94();

  result = 0;
  if ((v12 & 1) == 0)
  {
    return 1;
  }

  return result;
}

BOOL sub_1DCE968C8(uint64_t a1)
{
  v3 = type metadata accessor for Parse(0);
  v4 = OUTLINED_FUNCTION_1_93(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v8 = OUTLINED_FUNCTION_0_87();
  sub_1DCB29E58(a1 + *(v8 + 20), v1);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1DCB29EBC(v1);
    return 0;
  }

  v9 = OUTLINED_FUNCTION_2_78();
  if (v9 != v10 || 0x80000001DD115AF0 != a1)
  {
    v12 = OUTLINED_FUNCTION_3_94();

    return (v12 & 1) != 0;
  }

  return 1;
}

uint64_t sub_1DCE969AC(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  result = type metadata accessor for USOKeyPath();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_1DCE96A40(void *a1, void *a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((((*(v4 + 64) + ((v5 + 48) & ~v5) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 <= 0x18)
  {
    v8 = a2[1];
    *a1 = *a2;
    a1[1] = v8;
    v9 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v10 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v9 = *v10;
    v9[1] = v10[1];
    v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
    v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
    v13 = v12[1];
    *v11 = *v12;
    v11[1] = v13;
    v14 = *(v4 + 16);

    sub_1DD0DCF8C();
  }

  *a1 = *a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE96BDC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v5 + 8);

  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 8);

  v9 = *(*(a2 + 24) - 8);
  v10 = v9 + 8;
  v11 = (v7 + *(v9 + 80) + 16) & ~*(v9 + 80);
  (*(v9 + 8))(v11);
  v12 = (*(v10 + 56) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 8);

  v14 = *(((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_1DCE96CA4(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v5[1] = v6[1];
  v7 = ((v5 + 23) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v10 = *(a3 + 24);
  v11 = *(*(v10 - 8) + 16);
  v12 = *(*(v10 - 8) + 80);

  sub_1DD0DCF8C();
}

void sub_1DCE96DC8(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v5 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = v5[1];
  v5[1] = v6[1];

  v8 = ((v5 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9[1];
  v11 = v8[1];
  *v8 = *v9;
  v8[1] = v10;
  sub_1DD0DCF8C();
}

_OWORD *sub_1DCE96F20(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = ((v4 + 23) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((v5 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 16) & ~v10;
  v12 = (v7 + v10 + 16) & ~v10;
  (*(v8 + 32))(v11, v12);
  v13 = *(v9 + 32) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_1DCE96FF8(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  *a1 = *a2;
  a1[1] = v6;

  v8 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v10 = v8[1];
  v8[1] = v9[1];

  v11 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = *(v11 + 8);
  *v11 = *v12;

  v14 = *(*(a3 + 24) - 8);
  v15 = v14 + 40;
  v16 = *(v14 + 80);
  v17 = (v16 + 16 + v11) & ~v16;
  v18 = (v12 + v16 + 16) & ~v16;
  (*(v14 + 40))(v17, v18);
  v19 = *(v15 + 24) + 7;
  v20 = (v19 + v17) & 0xFFFFFFFFFFFFFFF8;
  v21 = v19 + v18;
  v22 = *(v20 + 8);
  v23 = (v21 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v20 = *(v21 & 0xFFFFFFFFFFFFFFF8);

  v24 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v24 + 8);
  *v24 = *(v23 & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1DCE9711C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((((((result + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 16) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((*(*(v4 - 8) + 64) + ((v7 + 48) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1DCE9727C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v18 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

            __swift_storeEnumTagSinglePayload(v18, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCE9748C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for USOKeyPath();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 32);

  return v7(a2, a1, v5);
}

uint64_t sub_1DCE974F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 16);
  v183 = sub_1DD0DB9FC();
  OUTLINED_FUNCTION_0_1();
  v182 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v12);
  v194 = a2;
  v180 = *(a2 - 8);
  v13 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v202 = (v177 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(a2 + 24);
  OUTLINED_FUNCTION_0_1();
  v189 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = v177 - v26;
  MEMORY[0x1EEE9AC00](v25, v28);
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_13_2(v177 - v31);
  v203 = v6;
  v32 = sub_1DD0DBAAC();
  v187 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_0_1();
  v185 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v36, v37);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v38);
  v195 = v32;
  v192 = *(v32 - 8);
  v39 = *(v192 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v40, v41);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v42);
  v43 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5D98, &qword_1DD0F3EB0) - 8) + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v44, v45);
  OUTLINED_FUNCTION_34_0();
  v199 = v46;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28A8, &unk_1DD0FE400);
  OUTLINED_FUNCTION_0_1();
  v198 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v50, v51);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v52, v53);
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = v177 - v56;
  v58 = type metadata accessor for Input(0);
  v59 = OUTLINED_FUNCTION_2(v58);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59, v62);
  v64 = v177 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v65 = sub_1DD0DD8FC();
  v66 = __swift_project_value_buffer(v65, qword_1EDE57E00);
  sub_1DCC174D4(a1, v64);
  v200 = v66;
  v67 = sub_1DD0DD8EC();
  v68 = sub_1DD0DE6DC();
  v69 = os_log_type_enabled(v67, v68);
  v196 = v57;
  v178 = v27;
  if (v69)
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v197 = v17;
    v72 = a3;
    v73 = v71;
    v206 = v71;
    *v70 = 136315138;
    v74 = Input.description.getter();
    v76 = v75;
    sub_1DCE984F8(v64);
    v77 = sub_1DCB10E9C(v74, v76, &v206);

    *(v70 + 4) = v77;
    _os_log_impl(&dword_1DCAFC000, v67, v68, "[PromptInputResolver] Resolving user input %s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    a3 = v72;
    v17 = v197;
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {

    sub_1DCE984F8(v64);
  }

  v78 = *(v58 + 20);
  sub_1DCE2FF24();
  v79 = v202;
  if (v80)
  {
    sub_1DCC9FB70();
    *a3 = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v81 = sub_1DD0DF22C();
    swift_storeEnumTagMultiPayload();
    v82 = a3;
LABEL_8:
    v83 = 0;
    v84 = v81;
    return __swift_storeEnumTagSinglePayload(v82, v83, 1, v84);
  }

  sub_1DCE30A18();
  if (!v85)
  {
    v87 = v199;
    __swift_storeEnumTagSinglePayload(v199, 1, 1, v201);
    goto LABEL_15;
  }

  v86 = sub_1DD0DC5BC();

  v87 = v199;
  sub_1DCC62440(v86);

  if (__swift_getEnumTagSinglePayload(v87, 1, v201) == 1)
  {
LABEL_15:
    sub_1DCB0E9D8(v87, &qword_1ECCA5D98, &qword_1DD0F3EB0);
    v119 = sub_1DD0DD8EC();
    v120 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_22(v120))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v121, v122, "[PromptInputResolver] Could not extract task from input.");
      OUTLINED_FUNCTION_80();
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    goto LABEL_18;
  }

  v177[0] = a3;
  v197 = v17;
  v88 = v198;
  v89 = v196;
  v90 = v87;
  v91 = v201;
  (*(v198 + 32))(v196, v90, v201);
  v92 = *(v88 + 16);
  v92(v193, v89, v91);
  v93 = *(v194 + 32);
  v94 = v191;
  sub_1DD0DBA9C();
  v95 = v195;
  if (__swift_getEnumTagSinglePayload(v94, 1, v195) == 1)
  {
    (*(v185 + 8))(v94, v187);
    v96 = v186;
    v92(v186, v89, v201);
    v97 = v200;
    v98 = v89;
    v99 = sub_1DD0DD8EC();
    v100 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_22(v100))
    {
      v101 = swift_slowAlloc();
      v102 = v201;
      v103 = v101;
      v202 = swift_slowAlloc();
      v206 = v202;
      *v103 = 136315394;
      LODWORD(v200) = v97;
      v92(v193, v96, v102);
      v104 = sub_1DD0DE02C();
      v106 = v105;
      v107 = *(v198 + 8);
      v108 = v96;
      v109 = v102;
      v107(v108, v102);
      v110 = sub_1DCB10E9C(v104, v106, &v206);

      *(v103 + 4) = v110;
      *(v103 + 12) = 2080;
      v111 = *(v93 + 8);
      v112 = v181;
      sub_1DD0DBB3C();
      v113 = v183;
      v114 = sub_1DD0DB9DC();
      v116 = v115;
      (*(v182 + 8))(v112, v113);
      v117 = sub_1DCB10E9C(v114, v116, &v206);

      *(v103 + 14) = v117;
      _os_log_impl(&dword_1DCAFC000, v99, v200, "[PromptInputResolver] Could not cast %s to DynamicTask<%s>).", v103, 0x16u);
      swift_arrayDestroy();
      v118 = v177[0];
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();

      v107(v196, v109);
    }

    else
    {

      v140 = *(v198 + 8);
      v141 = v201;
      v140(v96, v201);
      v140(v98, v141);
      v118 = v177[0];
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v84 = sub_1DD0DF22C();
    v82 = v118;
    goto LABEL_19;
  }

  v124 = v190;
  (*(v192 + 32))(v190, v94, v95);
  v125 = v197;
  v126 = type metadata accessor for USOKeyPath();
  v127 = v188;
  if ((USOKeyPath.nodeExists(_:)() & 1) == 0)
  {
    v142 = v180;
    v143 = v194;
    (*(v180 + 16))(v79, v127, v194);
    v144 = sub_1DD0DD8EC();
    v145 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v206 = v147;
      *v146 = 136315138;
      v148 = v79[1];
      v203 = *v79;
      v149 = *(v142 + 8);

      v149(v79, v143);
      v150 = sub_1DCB10E9C(v203, v148, &v206);
      a3 = v177[0];

      *(v146 + 4) = v150;
      OUTLINED_FUNCTION_26_20(&dword_1DCAFC000, v151, v152, "[PromptInputResolver] No node found for input and USOKeyPath %s.");
      __swift_destroy_boxed_opaque_existential_1Tm(v147);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();

      OUTLINED_FUNCTION_1_94();
      v153(v190, v195);
      v154 = OUTLINED_FUNCTION_0_88();
      v155(v154);
    }

    else
    {

      (*(v142 + 8))(v79, v143);
      OUTLINED_FUNCTION_1_94();
      v156(v124, v195);
      v157 = OUTLINED_FUNCTION_0_88();
      v158(v157);
      a3 = v177[0];
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
LABEL_18:
    v84 = sub_1DD0DF22C();
    v82 = a3;
LABEL_19:
    v83 = 1;
    return __swift_storeEnumTagSinglePayload(v82, v83, 1, v84);
  }

  v128 = v184;
  USOKeyPath.getValue(_:)(v124, v126);
  v129 = *(v189 + 16);
  v129(v179, v128, v125);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8A00, &qword_1DD0FE410);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v205 = 0;
    memset(v204, 0, sizeof(v204));
    sub_1DCB0E9D8(v204, qword_1ECCA8A08, &qword_1DD0FE418);
LABEL_35:
    v159 = v178;
    v129(v178, v128, v125);
    v160 = sub_1DD0DD8EC();
    v161 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v206 = v163;
      *v162 = 136315138;
      v129(v177[1], v159, v125);
      v164 = sub_1DD0DE02C();
      v166 = v165;
      v167 = v189;
      (*(v189 + 8))(v159, v125);
      v168 = sub_1DCB10E9C(v164, v166, &v206);

      *(v162 + 4) = v168;
      OUTLINED_FUNCTION_26_20(&dword_1DCAFC000, v169, v170, "[PromptInputResolver] Resolved input to value: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v163);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();

      v171 = v167;
      OUTLINED_FUNCTION_1_94();
      v173 = v190;
    }

    else
    {

      v171 = v189;
      (*(v189 + 8))(v159, v125);
      OUTLINED_FUNCTION_1_94();
      v173 = v124;
    }

    v172(v173, v195);
    v174 = OUTLINED_FUNCTION_0_88();
    v175(v174);
    v176 = v177[0];
    (*(v171 + 32))(v177[0], v184, v125);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v81 = sub_1DD0DF22C();
    swift_storeEnumTagMultiPayload();
    v82 = v176;
    goto LABEL_8;
  }

  sub_1DCAFF9E8(v204, &v206);
  v130 = v207;
  v131 = v208;
  __swift_project_boxed_opaque_existential_1(&v206, v207);
  if (((*(v131 + 8))(v130, v131) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v206);
    goto LABEL_35;
  }

  v132 = sub_1DD0DD8EC();
  v133 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_22(v133))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v134, v135, "[PromptInputResolver] No value was found for this input.");
    OUTLINED_FUNCTION_80();
  }

  (*(v189 + 8))(v128, v125);
  OUTLINED_FUNCTION_1_94();
  v136(v124, v195);
  v137 = OUTLINED_FUNCTION_0_88();
  v138(v137);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v139 = sub_1DD0DF22C();
  __swift_storeEnumTagSinglePayload(v177[0], 1, 1, v139);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v206);
}

uint64_t sub_1DCE984F8(uint64_t a1)
{
  v2 = type metadata accessor for Input(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCE98554(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(a1 + 5);
  v2 = a1[11];

  v3 = a1[13];
}

void sub_1DCE9859C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 64);
  *(a1 + 64) = v5;
  (**(v5 - 8))(a1 + 40, a2 + 40);
  v6 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v6;
  v7 = *(a2 + 96);
  v8 = *(a2 + 104);
  *(a1 + 96) = v7;
  *(a1 + 104) = v8;
  sub_1DD0DCF8C();
}

void sub_1DCE98660(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  __swift_assign_boxed_opaque_existential_1(a1 + 5, a2 + 5);
  v4 = a2[11];
  v5 = a1[11];
  a1[10] = a2[10];
  a1[11] = v4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE986E0(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 40));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v5 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);

  v6 = *(a2 + 104);
  v7 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v6;

  return a1;
}

uint64_t sub_1DCE9875C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1DCE9879C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DCE98810@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v10 = *a5;
  v11 = a5[1];
  sub_1DCAFF9E8(a1, a6);
  result = sub_1DCAFF9E8(a2, (a6 + 5));
  a6[10] = a3;
  a6[11] = a4;
  a6[12] = v10;
  a6[13] = v11;
  return result;
}

uint64_t sub_1DCE9886C()
{
  OUTLINED_FUNCTION_42();
  v1[42] = v2;
  v1[43] = v0;
  v3 = type metadata accessor for NLContextUpdate();
  v1[44] = v3;
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64);
  v1[45] = OUTLINED_FUNCTION_38();
  v6 = sub_1DD0DB6EC();
  v1[46] = v6;
  v7 = *(v6 - 8);
  v1[47] = v7;
  v8 = *(v7 + 64);
  v1[48] = OUTLINED_FUNCTION_38();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v9);
  v11 = *(v10 + 64);
  v1[49] = OUTLINED_FUNCTION_38();
  v12 = sub_1DD0DB04C();
  v1[50] = v12;
  v13 = *(v12 - 8);
  v1[51] = v13;
  v14 = *(v13 + 64);
  v1[52] = OUTLINED_FUNCTION_38();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA8A90, &qword_1DD0FE488);
  OUTLINED_FUNCTION_20_0(v15);
  v17 = *(v16 + 64);
  v1[53] = OUTLINED_FUNCTION_38();
  v18 = type metadata accessor for OutputGenerationManifest();
  v1[54] = v18;
  OUTLINED_FUNCTION_20_0(v18);
  v20 = *(v19 + 64);
  v1[55] = OUTLINED_FUNCTION_38();
  v21 = type metadata accessor for ResponseBundle();
  v1[56] = v21;
  OUTLINED_FUNCTION_20_0(v21);
  v23 = *(v22 + 64);
  v1[57] = OUTLINED_FUNCTION_38();
  v24 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1DCE98A30()
{
  v1 = v0[43];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v10 = (v4 + *v4);
  v5 = v4[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[58] = v6;
  *v6 = v7;
  v6[1] = sub_1DCE98B58;
  v8 = v0[57];

  return v10(v8, v2, v3);
}

uint64_t sub_1DCE98B58()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 464);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 472) = v0;

  if (v0)
  {
    v7 = sub_1DCE99C58;
  }

  else
  {
    v7 = sub_1DCE98C5C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1DCE98C5C()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  sub_1DCB09910(*(v0 + 456) + *(*(v0 + 448) + 28), v1, &unk_1ECCA8A90, &qword_1DD0FE488);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = *(v0 + 440);
  if (EnumTagSinglePayload == 1)
  {
    v5 = *(v0 + 432);
    v7 = *(v0 + 408);
    v6 = *(v0 + 416);
    v109 = *(v0 + 400);
    v110 = *(v0 + 424);
    v9 = *(v0 + 344);
    v8 = *(v0 + 352);
    v10 = *(v9 + 96);
    v11 = *(v9 + 104);
    *(v4 + v5[6]) = 0;
    *(v4 + v5[7]) = 0;
    v107 = v5[8];
    *(v4 + v5[9]) = 256;
    v105 = v5[10];
    v106 = v10;
    *(v4 + v5[11]) = 0;
    __swift_storeEnumTagSinglePayload(v4 + v5[12], 1, 1, v8);
    v108 = v5[13];
    v12 = (v4 + v5[14]);
    *v12 = 0;
    v12[1] = 0;
    v13 = (v4 + v5[15]);
    *v13 = 0;
    v13[1] = 0;
    *(v4 + v5[16]) = 0;
    *(v4 + v5[18]) = 0;
    v14 = v4 + v5[19];
    *v14 = 0;
    *(v14 + 4) = 512;
    *(v4 + v5[20]) = 0;
    *(v4 + v5[21]) = 0;
    *(v4 + v5[22]) = 0;
    *(v4 + v5[23]) = 0;
    *(v4 + v5[24]) = 0;
    *(v4 + v5[25]) = 0;
    v15 = (v4 + v5[26]);
    *v15 = 0;
    v15[1] = 0;
    *(v4 + v5[27]) = 0;
    *(v4 + v5[28]) = MEMORY[0x1E69E7CC0];
    v16 = v5[29];
    v17 = *MEMORY[0x1E69D0678];
    v18 = sub_1DD0DD15C();
    OUTLINED_FUNCTION_2(v18);
    (*(v19 + 104))(v4 + v16, v17);
    v20 = v5[30];
    v21 = sub_1DD0DD10C();
    __swift_storeEnumTagSinglePayload(v4 + v20, 1, 1, v21);
    *(v4 + v5[31]) = 2;
    *v4 = v106;
    v4[1] = v11;
    v22 = v5[5];

    sub_1DCB67914();
  }

  sub_1DCE40EF4(*(v0 + 424), *(v0 + 440));
  v23 = *(v0 + 440);
  v24 = *(v0 + 392);
  v25 = *(v0 + 352);
  v26 = *(*(v0 + 432) + 48);
  sub_1DCB09910(v23 + v26, v24, &unk_1ECCA3270, &qword_1DD0E0F70);
  LODWORD(v25) = __swift_getEnumTagSinglePayload(v24, 1, v25);
  v27 = sub_1DCB0E9D8(v24, &unk_1ECCA3270, &qword_1DD0E0F70);
  if (v25 == 1)
  {
    v28 = *(v0 + 472);
    v29 = *(v0 + 384);
    v30 = *(v0 + 344);
    v31 = *(v30 + 88);
    (*(v30 + 80))(v27);
    if (v28)
    {
      v32 = *(v0 + 456);
      v33 = *(v0 + 440);
      OUTLINED_FUNCTION_1_95();
      sub_1DCE99D8C(v34, v35);
      OUTLINED_FUNCTION_0_89();
      sub_1DCE99D8C(v33, v36);
      v37 = *(v0 + 456);
      v38 = *(v0 + 440);
      v40 = *(v0 + 416);
      v39 = *(v0 + 424);
      v42 = *(v0 + 384);
      v41 = *(v0 + 392);
      v43 = *(v0 + 360);

      v44 = *(v0 + 8);
      OUTLINED_FUNCTION_141();

      __asm { BRAA            X1, X16 }
    }

    v48 = *(v0 + 376);
    v47 = *(v0 + 384);
    v49 = *(v0 + 360);
    v50 = *(v0 + 368);
    v51 = *(v0 + 352);
    NLContextUpdate.init()(v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA1800, &qword_1DD0F9820);
    v52 = *(v48 + 72);
    v53 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1DD0E07C0;
    (*(v48 + 32))(v54 + v53, v47, v50);
    v55 = *(v49 + 216);

    *(v49 + 216) = v54;
    sub_1DCB0E9D8(v23 + v26, &unk_1ECCA3270, &qword_1DD0E0F70);
    sub_1DCB46478(v49, v23 + v26);
    __swift_storeEnumTagSinglePayload(v23 + v26, 0, 1, v51);
    sub_1DCE99D8C(v49, type metadata accessor for NLContextUpdate);
  }

  v56 = *(v0 + 456);
  sub_1DCB09910(v56 + 8, v0 + 56, &qword_1ECCA1838, &unk_1DD0FC960);
  if (*(v0 + 80))
  {
    v57 = *(v0 + 456);
    sub_1DCAFF9E8((v0 + 56), v0 + 16);
    sub_1DCB09910(v57 + 48, v0 + 296, &qword_1ECCA1838, &unk_1DD0FC960);
    if (*(v0 + 320))
    {
      v58 = *(v0 + 456);
      v59 = *(v0 + 344);
      sub_1DCAFF9E8((v0 + 296), v0 + 256);
      v60 = *(OUTLINED_FUNCTION_3_95() + 48);
      OUTLINED_FUNCTION_6_61();
      v111 = v61 + *v61;
      v63 = *(v62 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 480) = v64;
      *v64 = v65;
      v64[1] = sub_1DCE995DC;
      v66 = *(v0 + 440);
      v67 = *(v0 + 336);
      OUTLINED_FUNCTION_141();

      __asm { BRAA            X7, X16 }
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v70 = v0 + 296;
  }

  else
  {
    v70 = v0 + 56;
  }

  sub_1DCB0E9D8(v70, &qword_1ECCA1838, &unk_1DD0FC960);
  sub_1DCB09910(v56 + 8, v0 + 136, &qword_1ECCA1838, &unk_1DD0FC960);
  v71 = *(v0 + 456);
  if (*(v0 + 160))
  {
    v72 = *(v0 + 344);
    sub_1DCAFF9E8((v0 + 136), v0 + 96);
    v73 = *(OUTLINED_FUNCTION_3_95() + 56);
    OUTLINED_FUNCTION_6_61();
    v112 = v74 + *v74;
    v76 = *(v75 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 488) = v77;
    *v77 = v78;
    v77[1] = sub_1DCE99784;
    v79 = *(v0 + 440);
    v80 = *(v0 + 336);
    OUTLINED_FUNCTION_14_51();
    OUTLINED_FUNCTION_141();

    __asm { BRAA            X6, X16 }
  }

  sub_1DCB0E9D8(v0 + 136, &qword_1ECCA1838, &unk_1DD0FC960);
  sub_1DCB09910(v71 + 48, v0 + 216, &qword_1ECCA1838, &unk_1DD0FC960);
  v83 = *(v0 + 456);
  v84 = *(v0 + 344);
  if (*(v0 + 240))
  {
    sub_1DCAFF9E8((v0 + 216), v0 + 176);
    v85 = *(OUTLINED_FUNCTION_3_95() + 64);
    OUTLINED_FUNCTION_6_61();
    v113 = v86 + *v86;
    v88 = *(v87 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 496) = v89;
    *v89 = v90;
    v89[1] = sub_1DCE99924;
    v91 = *(v0 + 440);
    v92 = *(v0 + 336);
    OUTLINED_FUNCTION_14_51();
    OUTLINED_FUNCTION_141();

    __asm { BRAA            X6, X16 }
  }

  sub_1DCB0E9D8(v0 + 216, &qword_1ECCA1838, &unk_1DD0FC960);
  v95 = *(OUTLINED_FUNCTION_3_95() + 72);
  OUTLINED_FUNCTION_6_61();
  v114 = v96 + *v96;
  v98 = *(v97 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 504) = v99;
  *v99 = v100;
  v99[1] = sub_1DCE99AC4;
  v101 = *(v0 + 440);
  v102 = *(v0 + 336);
  OUTLINED_FUNCTION_141();

  __asm { BRAA            X5, X16 }
}

uint64_t sub_1DCE995DC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 480);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCE996C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  v12 = v11[57];
  __swift_destroy_boxed_opaque_existential_1Tm(v11 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm(v11 + 2);
  OUTLINED_FUNCTION_1_95();
  sub_1DCE99D8C(v12, v13);
  v14 = v11[57];
  OUTLINED_FUNCTION_2_79();
  OUTLINED_FUNCTION_0_89();
  sub_1DCE99D8C(v10, v15);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_121();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1DCE99784()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 488);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCE99868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  v12 = *(v11 + 456);
  __swift_destroy_boxed_opaque_existential_1Tm((v11 + 96));
  OUTLINED_FUNCTION_1_95();
  sub_1DCE99D8C(v12, v13);
  v14 = *(v11 + 456);
  OUTLINED_FUNCTION_2_79();
  OUTLINED_FUNCTION_0_89();
  sub_1DCE99D8C(v10, v15);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_121();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1DCE99924()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 496);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCE99A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  v12 = *(v11 + 456);
  __swift_destroy_boxed_opaque_existential_1Tm((v11 + 176));
  OUTLINED_FUNCTION_1_95();
  sub_1DCE99D8C(v12, v13);
  v14 = *(v11 + 456);
  OUTLINED_FUNCTION_2_79();
  OUTLINED_FUNCTION_0_89();
  sub_1DCE99D8C(v10, v15);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_121();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1DCE99AC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 504);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCE99BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  v12 = *(v11 + 456);
  OUTLINED_FUNCTION_1_95();
  sub_1DCE99D8C(v13, v14);
  v15 = *(v11 + 456);
  OUTLINED_FUNCTION_2_79();
  OUTLINED_FUNCTION_0_89();
  sub_1DCE99D8C(v10, v16);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_121();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_1DCE99C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  v11 = v10[59];
  v12 = v10[57];
  OUTLINED_FUNCTION_2_79();

  v13 = v10[1];
  OUTLINED_FUNCTION_121();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1DCE99CF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCC467A0;

  return sub_1DCE9886C();
}

uint64_t sub_1DCE99D8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t PromptResult.description.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1, v1);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  (*(v12 + 16))(v11);
  v13 = 0x6C6C65636E61632ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v14 = *v11;
      v15 = v11[8];
      v21[0] = 0;
      v21[1] = 0xE000000000000000;
      sub_1DD0DEC1C();

      strcpy(v21, ".error error: ");
      HIBYTE(v21[1]) = -18;
      swift_getErrorValue();
      v16 = sub_1DD0DF18C();
      MEMORY[0x1E12A6780](v16);

      MEMORY[0x1E12A6780](0x64656C646E616820, 0xEA0000000000203ALL);
      if (v15)
      {
        v17 = 1702195828;
      }

      else
      {
        v17 = 0x65736C6166;
      }

      if (v15)
      {
        v18 = 0xE400000000000000;
      }

      else
      {
        v18 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v17, v18);

      v13 = v21[0];
      break;
    case 2u:
      return v13;
    case 3u:
      v13 = 0x6577736E616E752ELL;
      break;
    default:
      (*(v3 + 32))(v7, v11, v2);
      v21[0] = 0;
      v21[1] = 0xE000000000000000;
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](0xD000000000000011, 0x80000001DD114A10);
      sub_1DD0DF07C();
      v13 = v21[0];
      (*(v3 + 8))(v7, v2);
      break;
  }

  return v13;
}

uint64_t sub_1DCE9A0E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

_BYTE *sub_1DCE9A178(_BYTE *__dst, id *__src, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  if (*(v5 + 64) <= 9uLL)
  {
    v6 = 9;
  }

  else
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  if ((*(v5 + 80) & 0x1000F8) != 0 || (v6 + 1) > 0x18)
  {
    *__dst = *__src;
    sub_1DD0DCF8C();
  }

  v8 = *(__src + v6);
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v6 <= 3)
    {
      v10 = v6;
    }

    else
    {
      v10 = 4;
    }

    switch(v10)
    {
      case 1:
        v11 = *__src;
        goto LABEL_19;
      case 2:
        v11 = *__src;
        goto LABEL_19;
      case 3:
        v11 = *__src | (*(__src + 2) << 16);
        goto LABEL_19;
      case 4:
        v11 = *__src;
LABEL_19:
        v12 = (v11 | (v9 << (8 * v6))) + 2;
        if (v6 >= 4)
        {
          v8 = v11 + 2;
        }

        else
        {
          v8 = v12;
        }

        break;
      default:
        break;
    }
  }

  if (v8 == 1)
  {
    v13 = *__src;
    v14 = *__src;
    *__dst = v13;
    __dst[8] = *(__src + 8);
    __dst[v6] = 1;
    return __dst;
  }

  if (!v8)
  {
    (*(v5 + 16))(__dst, __src);
    __dst[v6] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v6 + 1);
}

void sub_1DCE9A32C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 9)
  {
    v2 = 9;
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    switch(v5)
    {
      case 1:
        v6 = *a1;
        goto LABEL_12;
      case 2:
        v6 = *a1;
        goto LABEL_12;
      case 3:
        v6 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v6 = *a1;
LABEL_12:
        v7 = (v6 | (v4 << (8 * v2))) + 2;
        if (v2 >= 4)
        {
          v3 = v6 + 2;
        }

        else
        {
          v3 = v7;
        }

        break;
      default:
        break;
    }
  }

  if (v3 == 1)
  {
  }

  else if (!v3)
  {
    (*(*(*(a2 + 16) - 8) + 8))();
  }
}

_BYTE *sub_1DCE9A420(_BYTE *__dst, id *__src, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 9uLL)
  {
    v5 = 9;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(__src + v5);
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v5 <= 3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    switch(v8)
    {
      case 1:
        v9 = *__src;
        goto LABEL_13;
      case 2:
        v9 = *__src;
        goto LABEL_13;
      case 3:
        v9 = *__src | (*(__src + 2) << 16);
        goto LABEL_13;
      case 4:
        v9 = *__src;
LABEL_13:
        v10 = (v9 | (v7 << (8 * v5))) + 2;
        if (v5 >= 4)
        {
          v6 = v9 + 2;
        }

        else
        {
          v6 = v10;
        }

        break;
      default:
        break;
    }
  }

  if (v6 == 1)
  {
    v11 = *__src;
    v12 = *__src;
    *__dst = v11;
    __dst[8] = *(__src + 8);
    __dst[v5] = 1;
    return __dst;
  }

  if (!v6)
  {
    (*(*(*(a3 + 16) - 8) + 16))(__dst, __src);
    __dst[v5] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v5 + 1);
}

id *sub_1DCE9A594(id *__dst, id *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 9uLL)
  {
    v7 = 9;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = 8 * v7;
  v9 = *(__dst + v7);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v7 <= 3)
    {
      v11 = v7;
    }

    else
    {
      v11 = 4;
    }

    switch(v11)
    {
      case 1:
        v12 = *__dst;
        goto LABEL_14;
      case 2:
        v12 = *__dst;
        goto LABEL_14;
      case 3:
        v12 = *__dst | (*(__dst + 2) << 16);
        goto LABEL_14;
      case 4:
        v12 = *__dst;
LABEL_14:
        v13 = (v12 | (v10 << v8)) + 2;
        v9 = v12 + 2;
        if (v7 < 4)
        {
          v9 = v13;
        }

        break;
      default:
        break;
    }
  }

  if (v9 == 1)
  {
  }

  else if (!v9)
  {
    (*(v6 + 8))(__dst, v5);
  }

  v14 = *(__src + v7);
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    switch(v16)
    {
      case 1:
        v17 = *__src;
        goto LABEL_29;
      case 2:
        v17 = *__src;
        goto LABEL_29;
      case 3:
        v17 = *__src | (*(__src + 2) << 16);
        goto LABEL_29;
      case 4:
        v17 = *__src;
LABEL_29:
        v18 = (v17 | (v15 << v8)) + 2;
        v14 = v17 + 2;
        if (v7 < 4)
        {
          v14 = v18;
        }

        break;
      default:
        break;
    }
  }

  if (v14 == 1)
  {
    v19 = *__src;
    v20 = *__src;
    *__dst = v19;
    *(__dst + 8) = *(__src + 8);
    *(__dst + v7) = 1;
    return __dst;
  }

  if (!v14)
  {
    (*(v6 + 16))(__dst, __src, v5);
    *(__dst + v7) = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v7 + 1);
}

_BYTE *sub_1DCE9A7C8(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 9uLL)
  {
    v4 = 9;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        if (v4 >= 4)
        {
          v5 = v8 + 2;
        }

        else
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 == 1)
  {
    *__dst = *a2;
    __dst[8] = a2[8];
    __dst[v4] = 1;
    return __dst;
  }

  if (!v5)
  {
    (*(*(*(a3 + 16) - 8) + 32))(__dst);
    __dst[v4] = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v4 + 1);
}

id *sub_1DCE9A91C(id *__dst, id *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 9uLL)
  {
    v7 = 9;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = 8 * v7;
  v9 = *(__dst + v7);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v7 <= 3)
    {
      v11 = v7;
    }

    else
    {
      v11 = 4;
    }

    switch(v11)
    {
      case 1:
        v12 = *__dst;
        goto LABEL_14;
      case 2:
        v12 = *__dst;
        goto LABEL_14;
      case 3:
        v12 = *__dst | (*(__dst + 2) << 16);
        goto LABEL_14;
      case 4:
        v12 = *__dst;
LABEL_14:
        v13 = (v12 | (v10 << v8)) + 2;
        v9 = v12 + 2;
        if (v7 < 4)
        {
          v9 = v13;
        }

        break;
      default:
        break;
    }
  }

  if (v9 == 1)
  {
  }

  else if (!v9)
  {
    (*(v6 + 8))(__dst, v5);
  }

  v14 = *(__src + v7);
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    switch(v16)
    {
      case 1:
        v17 = *__src;
        goto LABEL_29;
      case 2:
        v17 = *__src;
        goto LABEL_29;
      case 3:
        v17 = *__src | (*(__src + 2) << 16);
        goto LABEL_29;
      case 4:
        v17 = *__src;
LABEL_29:
        v18 = (v17 | (v15 << v8)) + 2;
        v14 = v17 + 2;
        if (v7 < 4)
        {
          v14 = v18;
        }

        break;
      default:
        break;
    }
  }

  if (v14 == 1)
  {
    *__dst = *__src;
    *(__dst + 8) = *(__src + 8);
    *(__dst + v7) = 1;
    return __dst;
  }

  if (!v14)
  {
    (*(v6 + 32))(__dst, __src, v5);
    *(__dst + v7) = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v7 + 1);
}

uint64_t sub_1DCE9AB48(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 9;
  if (*(v3 + 64) > 9uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = (1u >> (8 * v4)) ^ 0xFD;
  if (v4 > 3)
  {
    v5 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_24;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_24:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_24;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
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

void sub_1DCE9AC94(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 9)
  {
    v5 = 9;
  }

  if (v5 <= 3)
  {
    v6 = (1u >> (8 * v5)) ^ 0xFD;
  }

  else
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  v8 = 8 * (v5 + 1);
  if (v6 >= a3)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((~(-1 << v8) + a3 - v6) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v6 >= a2)
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v7] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v5] = -a2;
        }

        break;
    }
  }

  else
  {
    v10 = ~v6 + a2;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v5 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v7);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCE9AE78(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 9;
  if (*(v2 + 64) > 9uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    switch(v6)
    {
      case 1:
        v7 = *a1;
        goto LABEL_12;
      case 2:
        v7 = *a1;
        goto LABEL_12;
      case 3:
        v7 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v7 = *a1;
LABEL_12:
        v8 = (v7 | (v5 << (8 * v3))) + 2;
        LODWORD(v4) = v7 + 2;
        if (v3 >= 4)
        {
          v4 = v4;
        }

        else
        {
          v4 = v8;
        }

        break;
      default:
        return v4;
    }
  }

  return v4;
}

void sub_1DCE9AF1C(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 9uLL)
  {
    v4 = 9;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 1)
  {
    v5 = a2 - 2;
    if (v4 < 4)
    {
      a1[v4] = (v5 >> (8 * v4)) + 2;
      if (v4)
      {
        v6 = v5 & ~(-1 << (8 * v4));
        bzero(a1, v4);
        if (v4 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v4 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v5;
        }
      }
    }

    else
    {
      a1[v4] = 2;
      bzero(a1, v4);
      *a1 = v5;
    }
  }

  else
  {
    a1[v4] = a2;
  }
}

uint64_t sub_1DCE9B034()
{
  OUTLINED_FUNCTION_79_12();
  v0 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v1 = OUTLINED_FUNCTION_194();
  v3 = OUTLINED_FUNCTION_74_13(v1, v2);
  if (v0)
  {
  }

  else
  {
    v5 = v3;
    if (v3)
    {
      v6 = [v3 localizedName];
      v4 = sub_1DD0DDFBC();

      return v4;
    }
  }

  return 0;
}

uint64_t ProtectedAppCheckStrategy.protectedAppCheck(_:needsAppNameForAppID:)()
{
  OUTLINED_FUNCTION_79_12();
  v0 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v1 = OUTLINED_FUNCTION_194();
  v3 = OUTLINED_FUNCTION_74_13(v1, v2);
  if (v0)
  {
  }

  else
  {
    v5 = v3;
    if (v3)
    {
      v6 = [v3 localizedName];
      v4 = sub_1DD0DDFBC();

      return v4;
    }
  }

  return 0;
}

uint64_t ProtectedAppCheck.__allocating_init(appIDs:strategy:client:deviceState:outputPublisher:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  ProtectedAppCheck.init(appIDs:strategy:client:deviceState:outputPublisher:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t sub_1DCE9B1F4()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v2 = swift_allocError();
  *v3 = v0;

  return MEMORY[0x1EEE6DEE8](v1, v2);
}

uint64_t sub_1DCE9B260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

uint64_t ProtectedAppCheck.__allocating_init(appID:strategy:)()
{
  OUTLINED_FUNCTION_79_12();
  v3 = v2;
  sub_1DCB8878C();
  if (v8)
  {
    sub_1DCAFF9E8(&v7, v9);
  }

  else
  {
    v9[3] = &type metadata for EmptyProtectedAppCheckStrategy;
    v9[4] = &off_1F586A120;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = v3;
  *(inited + 40) = v1;
  sub_1DCB17CA0(v9, &v7);
  v5 = ProtectedAppCheck.__allocating_init(appIDs:strategy:)();
  sub_1DCB0E9D8(v0, &unk_1ECCA8AA0, &unk_1DD0E4C90);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v5;
}

uint64_t ProtectedAppCheck.__allocating_init(appIDs:strategy:)()
{
  OUTLINED_FUNCTION_21();
  sub_1DCB17CA0(v0, v13);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v2 = type metadata accessor for ProtectedAppCheck(0);
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  ProtectedAppCheck.init(appIDs:strategy:client:deviceState:outputPublisher:)(v1, v13, v11, v9, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  return v5;
}

id sub_1DCE9B428()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  v1 = [v0 canEvaluatePolicy:1 error:0];
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = v0;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    if (v1)
    {
      MEMORY[0x1E12A6780](2126697, 0xE300000000000000);
      [v3 biometryType];
      type metadata accessor for LABiometryType(0);
      sub_1DD0DEDBC();
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      v9 = 0x80000001DD120530;
      v8 = 0xD000000000000010;
    }

    v10 = sub_1DCB10E9C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "DeviceState: biometric policy %s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A8390](v7, -1, -1);
    MEMORY[0x1E12A8390](v6, -1, -1);
  }

  if (v1)
  {
    v11 = [v3 biometryType];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t static ProtectedAppStatus.uninstalled(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return OUTLINED_FUNCTION_3_86();
}

uint64_t static ProtectedAppStatus.hidden(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 256;
  return OUTLINED_FUNCTION_3_86();
}

uint64_t static ProtectedAppStatus.locked(_:isAccessible:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 17) = 2;
  *(a4 + 16) = a3;
  return OUTLINED_FUNCTION_3_86();
}

uint64_t static ProtectedAppStatus.normal(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 769;
  return OUTLINED_FUNCTION_3_86();
}

SiriKitFlow::ProtectedAppStatus::AppState_optional __swiftcall ProtectedAppStatus.AppState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD0DEE9C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ProtectedAppStatus.AppState.rawValue.getter()
{
  result = 0x6C6174736E696E75;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_71_11();
      break;
    case 2:
      result = OUTLINED_FUNCTION_49_16();
      break;
    case 3:
      result = 0x6C616D726F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCE9B7D0@<X0>(uint64_t *a1@<X8>)
{
  result = ProtectedAppStatus.AppState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ProtectedAppStatus.appID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_33_1();
}

void *static ProtectedAppCheck.clientForExecutionDevice.getter@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for AppInstallationCheckingClient;
  a1[4] = &off_1F586A108;
  result = swift_allocObject();
  *a1 = result;
  result[5] = &type metadata for AppProtectionFrameworkClient;
  result[6] = &off_1F586A0F0;
  result[2] = 0xD000000000000012;
  result[3] = 0x80000001DD1203C0;
  return result;
}

uint64_t sub_1DCE9B8FC(char a1)
{
  result = OUTLINED_FUNCTION_2_20();
  *(v1 + 16) = a1 & 1;
  return result;
}

uint64_t sub_1DCE9B940(uint64_t a1)
{
  v56[1] = a1;
  v1 = type metadata accessor for Parse(0);
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  OUTLINED_FUNCTION_16();
  v8 = (v7 - v6);
  v9 = sub_1DD0DB04C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  v16 = OUTLINED_FUNCTION_21_35();
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v56[0] = v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = v56 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = v56 - v27;
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_6_62();
  sub_1DCB88B4C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 4, v9);
  OUTLINED_FUNCTION_2_80();
  sub_1DCB551D4(v28, v30);
  if (EnumTagSinglePayload == 1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_6_62();
  sub_1DCB88B4C();
  if (!__swift_getEnumTagSinglePayload(v25, 4, v9))
  {
    (*(v10 + 32))(v15, v25, v9);
    v34 = *(type metadata accessor for Input(0) + 20);
    sub_1DCB88B4C();
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v49 = OUTLINED_FUNCTION_31_22();
      v50(v49);
      v32 = type metadata accessor for Parse;
      v33 = v8;
      goto LABEL_24;
    }

    v35 = *v8;
    v36 = v8[1];
    v37 = v8[2];
    v38 = v35 == 0xD000000000000038 && 0x80000001DD120380 == v36;
    if (!v38 && (sub_1DD0DF0AC() & 1) == 0)
    {
      v53 = OUTLINED_FUNCTION_31_22();
      v54(v53);

      return 0;
    }

    if (v37)
    {
      sub_1DCB90D40(25705, 0xE200000000000000, v37);

      if (*(&v58 + 1))
      {
        if (swift_dynamicCast())
        {
          v40 = v56[2];
          v39 = v56[3];
          if (v40 == sub_1DD0DAFFC() && v39 == v41)
          {
          }

          else
          {
            v43 = sub_1DD0DF0AC();

            if ((v43 & 1) == 0)
            {
              if (qword_1EDE4F900 != -1)
              {
                OUTLINED_FUNCTION_0_0();
              }

              v44 = sub_1DD0DD8FC();
              OUTLINED_FUNCTION_92(v44, qword_1EDE57E00);
              v45 = sub_1DD0DD8EC();
              v46 = sub_1DD0DE6EC();
              if (os_log_type_enabled(v45, v46))
              {
                v47 = OUTLINED_FUNCTION_50_0();
                *v47 = 0;
                v48 = "PAC: received unlock DI for another request? Unsure how to proceed; resetting";
LABEL_32:
                _os_log_impl(&dword_1DCAFC000, v45, v46, v48, v47, 2u);
                OUTLINED_FUNCTION_80();
                goto LABEL_33;
              }

              goto LABEL_33;
            }
          }

          v55 = v56[0];
          __swift_storeEnumTagSinglePayload(v56[0], 3, 4, v9);
          sub_1DCB8BD60(v55);
        }

LABEL_28:
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v51 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v51, qword_1EDE57E00);
        v45 = sub_1DD0DD8EC();
        v46 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = OUTLINED_FUNCTION_50_0();
          *v47 = 0;
          v48 = "PAC: received unlock DI that is missing an id; resetting the flow";
          goto LABEL_32;
        }

LABEL_33:

        v52 = v56[0];
        __swift_storeEnumTagSinglePayload(v56[0], 1, 4, v9);
        sub_1DCB8BD60(v52);
      }
    }

    else
    {

      v57 = 0u;
      v58 = 0u;
    }

    sub_1DCB0E9D8(&v57, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_2_80();
  v33 = v25;
LABEL_24:
  sub_1DCB551D4(v33, v32);
  return 0;
}

uint64_t sub_1DCE9BE98()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCE9BF7C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCE9C060()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 224) = v0;

  if (v0)
  {
    v9 = *(v3 + 208);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DCE9C164()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  if (qword_1EDE4F6A8 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  sub_1DD0DD1FC();
  v5 = sub_1DD0DD1AC();
  *(v0 + 232) = v5;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  type metadata accessor for SiriKitEvent(0);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  OUTLINED_FUNCTION_34_30(32);
  v3[3] = v5;
  v3[4] = 0;
  v3[5] = 0;
  sub_1DCB8878C();
  v3[10] = 0;
  v3[11] = 0;
  sub_1DCB8878C();
  OUTLINED_FUNCTION_77_10();
  OUTLINED_FUNCTION_84_9(124);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE9C2F4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = v4[31];
  v6 = v4[30];
  v7 = v4[29];
  v8 = *v0;
  OUTLINED_FUNCTION_27();
  *v9 = v8;

  sub_1DCB0E9D8(v2 + 16, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB0E9D8(v2 + 56, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE9C444()
{
  OUTLINED_FUNCTION_42();
  static ExecuteResponse.ongoing(requireInput:)(1, v0[18]);
  v1 = v0[22];
  v2 = v0[20];

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE9C4B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 256);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 264) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCE9C5AC()
{
  OUTLINED_FUNCTION_42();
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_12_53(v3);
}

void sub_1DCE9C628()
{
  OUTLINED_FUNCTION_41();
  v24 = v0;
  v1 = v0[28];
  v2 = v0[23];
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[28];
    v7 = OUTLINED_FUNCTION_151();
    v8 = OUTLINED_FUNCTION_83();
    v23 = v8;
    *v7 = 136315138;
    v0[16] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v10 = sub_1DD0DE02C();
    v12 = sub_1DCB10E9C(v10, v11, &v23);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_62();
  }

  v18 = v0[28];
  v19 = v0[19];
  v20 = v0[20];
  v21 = v0[18];
  v22 = sub_1DD0DB04C();
  __swift_storeEnumTagSinglePayload(v20, 4, 4, v22);
  sub_1DCB8BD60(v20);
}

void sub_1DCE9C7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_139();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_41();
  a16 = v19;
  v22 = *(v19 + 184);
  v23 = *(v19 + 264);
  v24 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();

  if (os_log_type_enabled(v24, v18))
  {
    v25 = *(v19 + 264);
    v26 = OUTLINED_FUNCTION_151();
    v27 = OUTLINED_FUNCTION_83();
    a9 = v27;
    *v26 = 136315138;
    *(v19 + 136) = v25;
    v28 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v29 = sub_1DD0DE02C();
    v31 = sub_1DCB10E9C(v29, v30, &a9);

    *(v26 + 4) = v31;
    OUTLINED_FUNCTION_8_4(&dword_1DCAFC000, v32, v33, "PAC: Could not produce unlock dialog: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
    v34 = *(v19 + 264);
  }

  v36 = *(v19 + 152);
  v35 = *(v19 + 160);
  v37 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_12_53(v37);
}

uint64_t sub_1DCE9C928()
{
  OUTLINED_FUNCTION_42();
  v1[65] = v0;
  v1[63] = v2;
  v1[64] = v3;
  v4 = type metadata accessor for OutputGenerationManifest();
  v1[66] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64);
  v1[67] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_21_35();
  v8 = *(v7 + 64);
  v1[68] = OUTLINED_FUNCTION_38();
  v9 = sub_1DD0DB04C();
  v1[69] = v9;
  v10 = *(v9 - 8);
  v1[70] = v10;
  v11 = *(v10 + 64) + 15;
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1DCE9CA28()
{
  OUTLINED_FUNCTION_125();
  v17 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[64];
  v2 = sub_1DD0DD8FC();
  v0[73] = OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);

  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[63];
    v5 = v0[64];
    v7 = OUTLINED_FUNCTION_151();
    v8 = OUTLINED_FUNCTION_83();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1DCB10E9C(v6, v5, &v16);
    _os_log_impl(&dword_1DCAFC000, v3, v4, "PAC: Pushing sendUnlockRequest for app: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_37();
  }

  v9 = v0[72];
  v10 = v0[70];
  v11 = v0[69];
  v12 = v0[68];
  v13 = v0[65];
  v15 = v0[63];
  v14 = v0[64];
  sub_1DD0DB03C();
  (*(v10 + 16))(v12, v9, v11);
  __swift_storeEnumTagSinglePayload(v12, 0, 4, v11);
  sub_1DCB8BD60(v12);
}

uint64_t sub_1DCE9CDC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 600);
  v6 = *(v4 + 592);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v10 + 608) = v9;
  *(v10 + 616) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1DCE9CEE0()
{
  v1 = v0[72];
  v2 = v0[70];
  v13 = v0[71];
  v14 = v0[69];
  v3 = v0[65];
  v4 = v0[63];
  v12 = v0[64];
  sub_1DCDACAD8();
  v5 = sub_1DCD10120();
  v0[78] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4918, &qword_1DD0ED840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E32B0;
  v0[58] = 25705;
  v0[59] = 0xE200000000000000;
  v7 = MEMORY[0x1E69E6158];
  sub_1DD0DEBBC();
  v8 = sub_1DD0DAFFC();
  *(inited + 96) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  v0[60] = 7368801;
  v0[61] = 0xE300000000000000;
  sub_1DD0DEBBC();
  *(inited + 168) = v7;
  *(inited + 144) = v4;
  *(inited + 152) = v12;

  v10 = sub_1DD0DDE9C();
  sub_1DCDAD634(v10, v5);
  objc_opt_self();
  v11 = v3[18];
  __swift_project_boxed_opaque_existential_1(v3 + 14, v3[17]);
  DeviceState.asInvocationContext.getter();
}

uint64_t sub_1DCE9D4AC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 672);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 680) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE9D5A4()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 520);
  v2 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v1[22]);
  OUTLINED_FUNCTION_12_4();
  v9 = (v3 + *v3);
  v5 = *(v4 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 688) = v6;
  *v6 = v7;
  v6[1] = sub_1DCE9D6B4;
  OUTLINED_FUNCTION_62_1();

  return v9();
}

uint64_t sub_1DCE9D6B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 688);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 696) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE9D7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_39_22();

  __swift_destroy_boxed_opaque_existential_1Tm((v13 + 232));
  v19 = OUTLINED_FUNCTION_194();
  v14(v19);
  OUTLINED_FUNCTION_0_90();
  sub_1DCB551D4(v12, v20);
  OUTLINED_FUNCTION_85_8();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_117();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_1DCE9D854()
{
  OUTLINED_FUNCTION_39();
  (*(v0[70] + 8))(v0[72], v0[69]);
  v1 = v0[77];
  OUTLINED_FUNCTION_86_8();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCE9D8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_39_22();

  v19 = OUTLINED_FUNCTION_194();
  v14(v19);
  OUTLINED_FUNCTION_0_90();
  sub_1DCB551D4(v12, v20);
  v21 = *(v13 + 680);
  OUTLINED_FUNCTION_86_8();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_117();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

void sub_1DCE9D988()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 584);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 696);
    v33 = *(v0 + 656);
    v35 = *(v0 + 664);
    v27 = *(v0 + 640);
    v28 = *(v0 + 648);
    v7 = *(v0 + 624);
    v8 = *(v0 + 608);
    v29 = *(v0 + 632);
    v30 = *(v0 + 552);
    v31 = *(v0 + 576);
    v32 = *(v0 + 536);
    v9 = OUTLINED_FUNCTION_151();
    v10 = OUTLINED_FUNCTION_83();
    v37 = v10;
    *v9 = 136315138;
    *(v0 + 496) = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v12 = sub_1DD0DE02C();
    v14 = sub_1DCB10E9C(v12, v13, &v37);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "PAC: Error caught while publishing unlock output: %s. Ignoring and continuing with ProtectedAppCheck flow.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 232));
    v33(v31, v30);
    OUTLINED_FUNCTION_0_90();
    v16 = v32;
  }

  else
  {
    v17 = *(v0 + 696);
    v34 = *(v0 + 656);
    v36 = *(v0 + 664);
    v18 = *(v0 + 648);
    v19 = *(v0 + 640);
    v20 = *(v0 + 632);
    v21 = *(v0 + 608);
    v22 = *(v0 + 576);
    v23 = *(v0 + 552);
    v24 = *(v0 + 536);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 232));
    v34(v22, v23);
    OUTLINED_FUNCTION_0_90();
    v16 = v24;
  }

  sub_1DCB551D4(v16, v15);
  OUTLINED_FUNCTION_85_8();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_141();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCE9DBE8()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  *(v0 + 96) = v5;
  *(v0 + 64) = v3;
  *(v0 + 72) = v1;
  *(v0 + 56) = v6;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_31_0(v7);

  return sub_1DCB683D8(v4, v2);
}

uint64_t sub_1DCE9DC90()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 88) = v3;
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1DCE9DDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  v13 = *(v12 + 88);
  v14 = *(v12 + 96);
  v16 = *(v12 + 64);
  v15 = *(v12 + 72);
  v17 = *(v12 + 56);
  v18 = type metadata accessor for OutputGenerationManifest();
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0;
  *(v12 + 16) = 0u;
  v19 = *(v18 + 48);
  v20 = type metadata accessor for AceOutput();
  v17[3] = v20;
  v17[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v17);
  v22 = v20[7];
  sub_1DCB8878C();
  v23 = v20[9];
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  v28 = v20[8];
  v29 = *MEMORY[0x1E69D0678];
  v30 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_2(v30);
  (*(v31 + 104))(boxed_opaque_existential_1Tm + v28, v29);
  boxed_opaque_existential_1Tm[15] = 0;
  *(boxed_opaque_existential_1Tm + 13) = 0u;
  *(boxed_opaque_existential_1Tm + 11) = 0u;
  v32 = v16;
  sub_1DCB6C5E8(v12 + 16, (boxed_opaque_existential_1Tm + 11));
  *(boxed_opaque_existential_1Tm + v20[10]) = v14 & 1;
  *boxed_opaque_existential_1Tm = v13;
  boxed_opaque_existential_1Tm[1] = v32;
  *(boxed_opaque_existential_1Tm + 80) = 1;
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_117();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

void sub_1DCE9DF34()
{
  v1 = OUTLINED_FUNCTION_21_35();
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  type metadata accessor for ProtectedAppDeviceUnlockStrategy();
  v8 = swift_allocObject();
  sub_1DCB17CA0(v0 + 112, v15);
  sub_1DCB17CA0(v0 + 152, v14);
  v9 = type metadata accessor for UnlockDeviceFlowAsync(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  sub_1DCEA20B4(v8, v15, v14, v12);
  v13 = sub_1DD0DB04C();
  __swift_storeEnumTagSinglePayload(v7, 2, 4, v13);
  sub_1DCB8BD60(v7);
}

void sub_1DCE9E04C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtectedAppCheck.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v11 = v9;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v12 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v12, qword_1EDE57E00);
    v13 = v9;
    v14 = sub_1DD0DD8EC();
    v15 = sub_1DD0DE6EC();
    sub_1DCB79378(v9, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v9;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1DCAFC000, v14, v15, "PAC: Failed device unlock with error: %@", v16, 0xCu);
      sub_1DCB0E9D8(v17, qword_1ECCA8AD0, &qword_1DD0E4F90);
      MEMORY[0x1E12A8390](v17, -1, -1);
      MEMORY[0x1E12A8390](v16, -1, -1);
      sub_1DCB79378(v9, 1);
    }

    else
    {

      sub_1DCB79378(v9, 1);
    }
  }

  v20 = a2 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_deviceUnlockResult;
  v21 = *(a2 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_deviceUnlockResult);
  *v20 = v9;
  v22 = *(v20 + 8);
  *(v20 + 8) = v10;
  sub_1DCB8D4CC(v9, v10);
  sub_1DCB5524C(v21, v22);
  v23 = sub_1DD0DB04C();
  __swift_storeEnumTagSinglePayload(v8, 1, 4, v23);
  sub_1DCB8BD60(v8);
}

uint64_t sub_1DCE9E284()
{
  OUTLINED_FUNCTION_42();
  v1[16] = v0;
  v2 = type metadata accessor for SiriKitEventPayload(0);
  v1[17] = v2;
  OUTLINED_FUNCTION_20_0(v2);
  v4 = *(v3 + 64);
  v1[18] = OUTLINED_FUNCTION_38();
  v5 = sub_1DD0DB04C();
  v1[19] = v5;
  v6 = *(v5 - 8);
  v1[20] = v6;
  v7 = *(v6 + 64);
  v1[21] = OUTLINED_FUNCTION_38();
  v8 = type metadata accessor for OutputGenerationManifest();
  v1[22] = v8;
  OUTLINED_FUNCTION_20_0(v8);
  v10 = *(v9 + 64);
  v1[23] = OUTLINED_FUNCTION_38();
  v11 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCE9E378()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[16];
  v2 = v1[7];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v2);
  if ((*(v3 + 24))(v1, v2, v3))
  {
    *(v0[16] + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_appsRemainInaccessible) = 1;
    if (qword_1EDE48CE8 != -1)
    {
      OUTLINED_FUNCTION_1_7();
    }

    v4 = OUTLINED_FUNCTION_87();
    v0[24] = v4;
    v5 = OUTLINED_FUNCTION_87();
    v0[25] = v5;
    v6 = swift_task_alloc();
    v0[26] = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_31_0(v6);

    return sub_1DCC6FD30(18, v4, 0, v5);
  }

  else
  {
    OUTLINED_FUNCTION_72_13();

    OUTLINED_FUNCTION_29();

    return v8();
  }
}

uint64_t sub_1DCE9E51C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 208);
  *v4 = *v1;
  v3[27] = v7;
  v3[28] = v0;

  if (!v0)
  {
    v9 = v3[24];
    v8 = v3[25];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DCE9E630()
{
  if (qword_1EDE4EBE0 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v31 = v0[16];
  v32 = v0[27];
  v6 = qword_1EDE4EBE8;
  v7 = unk_1EDE4EBF0;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  v30 = v2[8];
  *(v1 + v2[9]) = 256;
  v28 = v2[10];
  v29 = v6;
  *(v1 + v2[11]) = 0;
  v8 = v2[12];
  v9 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  v27 = v2[13];
  v13 = (v1 + v2[14]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v1 + v2[15]);
  *v14 = 0;
  v14[1] = 0;
  *(v1 + v2[16]) = 0;
  *(v1 + v2[18]) = 0;
  OUTLINED_FUNCTION_78_15(v1 + v2[19]);
  *(v1 + v15) = 0;
  *(v1 + v2[21]) = 0;
  *(v1 + v2[22]) = 0;
  *(v1 + v2[23]) = 0;
  *(v1 + v2[24]) = 0;
  *(v1 + v2[25]) = 0;
  v16 = (v1 + v2[26]);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + v2[27]) = 0;
  *(v1 + v2[28]) = MEMORY[0x1E69E7CC0];
  v17 = v2[29];
  v18 = *MEMORY[0x1E69D0678];
  v19 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_2(v19);
  (*(v20 + 104))(v1 + v17, v18);
  v21 = v2[30];
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  *(v1 + v2[31]) = 2;
  *v1 = v29;
  v1[1] = v7;
  v26 = v2[5];

  sub_1DCB67914();
}

uint64_t sub_1DCE9E948()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 240);
  v3 = *(v1 + 232);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCE9EA48()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 128);
  v2 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v1[22]);
  OUTLINED_FUNCTION_12_4();
  v9 = (v3 + *v3);
  v5 = *(v4 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 248) = v6;
  *v6 = v7;
  v6[1] = sub_1DCE9EB58;
  OUTLINED_FUNCTION_62_1();

  return v9();
}

uint64_t sub_1DCE9EB58()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 256) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE9EC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v11 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v11, qword_1EDE57E00);
  v12 = sub_1DD0DD8EC();
  v13 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v13))
  {
    v14 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v14);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v15, v16, v17, v18, v19, 2u);
    OUTLINED_FUNCTION_62();
  }

  v20 = *(v10 + 48);
  __swift_project_boxed_opaque_existential_1((v10 + 16), *(v10 + 40));
  v21 = OUTLINED_FUNCTION_194();
  if (sub_1DCB651D0(v21))
  {
    if (qword_1EDE4F6A8 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v23 = *(v10 + 136);
    v22 = *(v10 + 144);
    *(v10 + 112) = 0u;
    *(v10 + 96) = 0u;
    v24 = *(v10 + 48);
    __swift_project_boxed_opaque_existential_1((v10 + 16), *(v10 + 40));
    v25 = *(v24 + 8);
    v26 = OUTLINED_FUNCTION_67_14();
    v27(v26, v24);
    type metadata accessor for SiriKitEvent(0);
    OUTLINED_FUNCTION_34_30(119);
    v22[4] = 0;
    v22[5] = 0;
    v22[3] = 0;
    sub_1DCB8878C();
    v22[10] = 0;
    v22[11] = 0;
    sub_1DCB8878C();
    OUTLINED_FUNCTION_77_10();
    OUTLINED_FUNCTION_84_9(29);
    *(v10 + 264) = SiriKitEvent.__allocating_init(_:builder:)(v22, 0);
    v28 = swift_task_alloc();
    *(v10 + 272) = v28;
    *v28 = v10;
    OUTLINED_FUNCTION_31_0(v28);
    OUTLINED_FUNCTION_121();

    return sub_1DCB649AC(v29);
  }

  else
  {
    v32 = *(v10 + 216);
    v33 = *(v10 + 184);
    OUTLINED_FUNCTION_0_90();
    sub_1DCB551D4(v34, v35);

    __swift_destroy_boxed_opaque_existential_1Tm((v10 + 16));
    OUTLINED_FUNCTION_72_13();

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_121();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
  }
}

uint64_t sub_1DCE9EEC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *(v4 + 264);
  v7 = *v0;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  sub_1DCB0E9D8(v2 + 56, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB0E9D8(v2 + 96, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v9 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE9EFF0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 184);

  OUTLINED_FUNCTION_0_90();
  sub_1DCB551D4(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_72_13();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE9F078()
{
  OUTLINED_FUNCTION_39();
  v2 = v0[24];
  v1 = v0[25];

  v3 = v0[28];
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[18];

  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCE9F104()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 184);

  OUTLINED_FUNCTION_0_90();
  sub_1DCB551D4(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v3 = *(v0 + 256);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);
  v6 = *(v0 + 144);

  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCE9F1A0()
{
  OUTLINED_FUNCTION_42();
  v1[12] = v2;
  v1[13] = v0;
  OUTLINED_FUNCTION_21_35();
  v4 = *(v3 + 64);
  v1[14] = OUTLINED_FUNCTION_38();
  v5 = swift_task_alloc();
  v1[15] = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_31_0(v5);

  return sub_1DCB890F8();
}

uint64_t sub_1DCE9F240()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCE9F324()
{
  v112 = v0;
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_statuses;
  OUTLINED_FUNCTION_156();
  v106 = v1;
  v104 = v2;
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  v105 = v0;
  if (v4)
  {
    v108 = MEMORY[0x1E69E7CC0];

    sub_1DCB38954();
    v5 = v108;
    v6 = (v3 + 49);
    do
    {
      v7 = *(v6 - 9);
      v8 = *(v6 - 1);
      v9 = *v6;
      v109[0] = *(v6 - 17);
      v109[1] = v7;
      v110 = v8;
      v111 = v9;
      v10 = ProtectedAppStatus.debugDescription.getter();
      v12 = v11;
      v14 = *(v108 + 16);
      v13 = *(v108 + 24);
      if (v14 >= v13 >> 1)
      {
        OUTLINED_FUNCTION_21_0(v13);
        sub_1DCB38954();
      }

      v6 += 24;
      *(v108 + 16) = v14 + 1;
      v15 = v108 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      --v4;
    }

    while (v4);
  }

  if (qword_1EDE4F900 != -1)
  {
LABEL_90:
    OUTLINED_FUNCTION_0_0();
  }

  v16 = sub_1DD0DD8FC();
  *(v0 + 128) = OUTLINED_FUNCTION_92(v16, qword_1EDE57E00);

  v17 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_80_10();

  if (os_log_type_enabled(v17, v4))
  {
    v18 = OUTLINED_FUNCTION_151();
    v19 = OUTLINED_FUNCTION_83();
    v109[0] = v19;
    *v18 = 136315138;
    *(v0 + 88) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
    sub_1DCB38974();
    v20 = sub_1DD0DDF6C();
    v22 = v21;

    sub_1DCB10E9C(v20, v22, v109);
    OUTLINED_FUNCTION_67_14();

    *(v18 + 4) = v20;
    _os_log_impl(&dword_1DCAFC000, v17, v4, "PAC: handleUnlockResponse: statuses=%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
  }

  v5 = *(v106 + v104);
  v4 = *(v5 + 16);

  v23 = 0;
  v107 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v24 = 24 * v23;
LABEL_13:
    if (v4 == v23)
    {
      break;
    }

    if (v23 >= *(v5 + 16))
    {
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v25 = *(v5 + v24 + 32);
    v0 = *(v5 + v24 + 40);
    v26 = *(v5 + v24 + 48);
    v27 = *(v5 + v24 + 49);
    OUTLINED_FUNCTION_38_23();
    OUTLINED_FUNCTION_7_56();
    switch(v27)
    {
      case 1:
        OUTLINED_FUNCTION_71_11();
        goto LABEL_20;
      case 2:

        if ((v26 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      case 3:
        OUTLINED_FUNCTION_18_41();
        goto LABEL_20;
      default:
LABEL_20:
        v28 = OUTLINED_FUNCTION_62_11();

        if (v26 & 1 | ((v28 & 1) == 0))
        {
LABEL_21:

          v24 += 24;
          ++v23;
          goto LABEL_13;
        }

LABEL_22:
        v29 = v107;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v109[0] = v107;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_64_13();
          v31 = OUTLINED_FUNCTION_47_19();
          sub_1DCE06BE8(v31, v32, v33);
          v29 = v109[0];
        }

        v35 = *(v29 + 16);
        v34 = *(v29 + 24);
        if (v35 >= v34 >> 1)
        {
          v37 = OUTLINED_FUNCTION_21_0(v34);
          sub_1DCE06BE8(v37, v35 + 1, 1);
          v29 = v109[0];
        }

        ++v23;
        *(v29 + 16) = v35 + 1;
        v107 = v29;
        v36 = v29 + 24 * v35;
        *(v36 + 32) = v25;
        *(v36 + 40) = v0;
        *(v36 + 48) = 0;
        *(v36 + 49) = v27;
        break;
    }
  }

  v38 = *(v106 + v104);
  v4 = *(v38 + 16);

  v39 = 0;
  v106 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v40 = 24 * v39;
  while (v4 != v39)
  {
    if (v39 >= *(v38 + 16))
    {
      goto LABEL_88;
    }

    v41 = *(v38 + v40 + 32);
    v42 = *(v38 + v40 + 40);
    v43 = *(v38 + v40 + 48);
    v5 = *(v38 + v40 + 49);
    OUTLINED_FUNCTION_38_23();
    OUTLINED_FUNCTION_7_56();
    switch(v5)
    {
      case 1:

        v5 = 1;
LABEL_40:

        goto LABEL_41;
      case 2:
        OUTLINED_FUNCTION_49_16();
        break;
      case 3:
        OUTLINED_FUNCTION_18_41();
        break;
      default:
        break;
    }

    v0 = OUTLINED_FUNCTION_61_17();

    if (v0)
    {
LABEL_41:
      v45 = v106;
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v109[0] = v106;
      if ((v46 & 1) == 0)
      {
        OUTLINED_FUNCTION_64_13();
        v47 = OUTLINED_FUNCTION_47_19();
        sub_1DCE06BE8(v47, v48, v49);
        v45 = v109[0];
      }

      v51 = *(v45 + 16);
      v50 = *(v45 + 24);
      v0 = v51 + 1;
      if (v51 >= v50 >> 1)
      {
        v53 = OUTLINED_FUNCTION_21_0(v50);
        sub_1DCE06BE8(v53, v51 + 1, 1);
        v45 = v109[0];
      }

      ++v39;
      *(v45 + 16) = v0;
      v106 = v45;
      v52 = v45 + 24 * v51;
      *(v52 + 32) = v41;
      *(v52 + 40) = v42;
      *(v52 + 48) = v43;
      *(v52 + 49) = v5;
      goto LABEL_28;
    }

    switch(v5)
    {
      case 0:
        goto LABEL_40;
      case 1:
      case 3:
        goto LABEL_37;
      case 2:
        OUTLINED_FUNCTION_49_16();
LABEL_37:
        v44 = sub_1DD0DF0AC();

        if (v44)
        {
          goto LABEL_41;
        }

        v40 += 24;
        ++v39;
        break;
      default:
        JUMPOUT(0);
    }
  }

  v54 = *(v107 + 16);
  v55 = MEMORY[0x1E69E7CC0];
  if (v54)
  {
    v109[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_70_10();
    v56 = v109[0];
    v57 = *(v109[0] + 16);
    v58 = 16 * v57;
    v59 = (v107 + 40);
    v60 = v54;
    do
    {
      v62 = *(v59 - 1);
      v61 = *v59;
      v109[0] = v56;
      v63 = *(v56 + 24);

      if (v57 >= v63 >> 1)
      {
        sub_1DCB38954();
        v56 = v109[0];
      }

      *(v56 + 16) = v57 + 1;
      v64 = v56 + v58;
      *(v64 + 32) = v62;
      *(v64 + 40) = v61;
      v58 += 16;
      v59 += 3;
      ++v57;
      --v60;
    }

    while (v60);
    v55 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v56 = MEMORY[0x1E69E7CC0];
  }

  v5 = v105;
  v65 = v105[13];
  v66 = sub_1DCDA58AC(v56);
  sub_1DCB17CA0(v65 + 32, (v105 + 2));
  v68 = v105[5];
  v67 = v105[6];
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  if (v54)
  {
    v103 = v67;
    v104 = v68;
    v109[0] = v55;
    OUTLINED_FUNCTION_70_10();
    v69 = 0;
    v70 = v109[0];
    v71 = *(v109[0] + 16);
    v72 = 16 * v71;
    v73 = v107;
    do
    {
      v74 = *(v73 + v69 + 32);
      v75 = *(v73 + v69 + 40);
      v109[0] = v70;
      v76 = *(v70 + 24);

      if (v71 >= v76 >> 1)
      {
        sub_1DCB38954();
        v70 = v109[0];
      }

      *(v70 + 16) = v71 + 1;
      v77 = v70 + v72;
      *(v77 + 32) = v74;
      *(v77 + 40) = v75;
      v72 += 16;
      v69 += 24;
      ++v71;
      --v54;
      v73 = v107;
    }

    while (v54);

    v68 = v104;
    v5 = v105;
    v67 = v103;
  }

  else
  {

    v70 = MEMORY[0x1E69E7CC0];
  }

  v4 = (*(v67 + 16))(*(v5 + 104), v70, v68, v67);

  __swift_destroy_boxed_opaque_existential_1Tm((v5 + 16));
  v0 = *(v4 + 16);
  if (v0)
  {
    v78 = 0;
    v79 = MEMORY[0x1E69E7CC0];
    while (v78 < *(v4 + 16))
    {
      if (*(v66 + 16))
      {
        v80 = (v4 + 32 + 16 * v78);
        v81 = *v80;
        v5 = v80[1];
        v82 = *(v66 + 40);
        sub_1DD0DF1DC();

        sub_1DD0DDF2C();
        v83 = sub_1DD0DF20C();
        v84 = ~(-1 << *(v66 + 32));
        do
        {
          v85 = v83 & v84;
          if (((*(v66 + 56 + (((v83 & v84) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v83 & v84)) & 1) == 0)
          {

            goto LABEL_77;
          }

          v86 = (*(v66 + 48) + 16 * v85);
          if (*v86 == v81 && v86[1] == v5)
          {
            break;
          }

          v88 = sub_1DD0DF0AC();
          v83 = v85 + 1;
        }

        while ((v88 & 1) == 0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = *(v79 + 16);
          OUTLINED_FUNCTION_47_19();
          sub_1DCB34108();
          v79 = v93;
        }

        v90 = *(v79 + 16);
        v89 = *(v79 + 24);
        if (v90 >= v89 >> 1)
        {
          OUTLINED_FUNCTION_21_0(v89);
          sub_1DCB34108();
          v79 = v94;
        }

        *(v79 + 16) = v90 + 1;
        v91 = v79 + 16 * v90;
        *(v91 + 32) = v81;
        *(v91 + 40) = v5;
      }

LABEL_77:
      if (++v78 == v0)
      {

        v5 = v105;
        goto LABEL_80;
      }
    }

LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v79 = MEMORY[0x1E69E7CC0];
LABEL_80:
  v95 = *(v79 + 16);

  if (!v95)
  {

LABEL_86:
    v100 = *(v5 + 104);
    v101 = *(v5 + 112);
    v102 = sub_1DD0DB04C();
    __swift_storeEnumTagSinglePayload(v101, 4, 4, v102);
    sub_1DCB8BD60(v101);
  }

  v96 = *(v106 + 16);

  if (!v96)
  {
    goto LABEL_86;
  }

  *(*(v5 + 104) + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_appsRemainInaccessible) = 1;
  v97 = swift_task_alloc();
  *(v5 + 136) = v97;
  *v97 = v5;
  v97[1] = sub_1DCE9FD4C;
  v98 = *(v5 + 104);

  return sub_1DCE9E284();
}

uint64_t sub_1DCE9FD4C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCE9FE44()
{
  OUTLINED_FUNCTION_42();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_12_53(v3);
}

uint64_t sub_1DCE9FEC0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 152);
  v3 = *(v1 + 112);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_29();

  return v6();
}

void sub_1DCE9FFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_139();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_41();
  a16 = v19;
  v22 = *(v19 + 128);
  v23 = *(v19 + 144);
  v24 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();

  if (os_log_type_enabled(v24, v18))
  {
    v25 = *(v19 + 144);
    v26 = OUTLINED_FUNCTION_151();
    v27 = OUTLINED_FUNCTION_83();
    a9 = v27;
    *v26 = 136315138;
    *(v19 + 80) = v25;
    v28 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v29 = sub_1DD0DE02C();
    v31 = sub_1DCB10E9C(v29, v30, &a9);

    *(v26 + 4) = v31;
    OUTLINED_FUNCTION_8_4(&dword_1DCAFC000, v32, v33, "PAC: Could not produce unlock dialog: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
    v34 = *(v19 + 144);
  }

  v36 = *(v19 + 104);
  v35 = *(v19 + 112);
  v37 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_12_53(v37);
}

void sub_1DCEA0128(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCEA01EC()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCB88ADC();
}

uint64_t sub_1DCEA027C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DCE9B8D0();
  *a1 = result;
  return result;
}

void sub_1DCEA02A8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_1DD0FE998;
  a2[1] = v5;

  sub_1DD0DCF8C();
}

uint64_t sub_1DCEA0314(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v10 = (a3 + *a3);
  v7 = a3[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DCB4AE1C;

  return v10(a1, v5, v6);
}

void sub_1DCEA0420(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 8);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEA0490(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_1DCB3F98C;

  return (v9)(a1, v4 + 2);
}

void CustomProtectedAppCheckClient.status.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DD0DCF8C();
}

uint64_t CustomProtectedAppCheckClient.status.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CustomProtectedAppCheckClient.init(status:)()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v2[2] = 0x6D6F74737543;
  v2[3] = 0xE600000000000000;
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v0;
  *v3 = &unk_1DD0FE548;
  v3[1] = result;
  return result;
}

uint64_t sub_1DCEA068C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  a4(a2, a3);
  v5 = *(v4 + 8);

  return v5();
}

uint64_t CustomProtectedAppCheckClient.status(for:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_4_49();
  v1 = *v0;
  v2 = v0[1];
  v9 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v5[1] = sub_1DCB4AE1C;
  v7 = OUTLINED_FUNCTION_37_0();

  return v9(v7);
}

uint64_t CustomProtectedAppCheckClient.loggingDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCEA0818()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return CustomProtectedAppCheckClient.status(for:)();
}

unint64_t sub_1DCEA08CC()
{
  sub_1DD0DEC1C();

  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 16))(v1, v2);
  MEMORY[0x1E12A6780](v3);

  return 0xD000000000000019;
}

uint64_t sub_1DCEA0980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCEA09A4, 0, 0);
}

uint64_t sub_1DCEA09A4()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[4];
  v2 = v0[2];
  *v2 = v0[3];
  *(v2 + 8) = v1;
  *(v2 + 16) = 769;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1DCEA0A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v8 = v3[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1DCB4AE1C;

  return sub_1DCEA0980(a1, a2, a3);
}

uint64_t sub_1DCEA0ADC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCEA0BD8()
{
  OUTLINED_FUNCTION_39();
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[18];
  v4 = [v3 BOOLValue];

  v5 = v0[21];
  v6 = v0[19];
  *v6 = v0[20];
  *(v6 + 8) = v5;
  *(v6 + 17) = 2;
  *(v6 + 16) = v4 ^ 1;
  v7 = v0[24];
  v8 = v0[21];

  OUTLINED_FUNCTION_29();

  return v9();
}

uint64_t sub_1DCEA0C88()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[26];
  v2 = v0[27];
  swift_willThrow();

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v3 = v0[27];
  v4 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
  v5 = v3;
  v6 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();

  v7 = os_log_type_enabled(v6, v2);
  v8 = v0[27];
  v9 = v0[25];
  if (v7)
  {
    v10 = OUTLINED_FUNCTION_151();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    OUTLINED_FUNCTION_8_4(&dword_1DCAFC000, v14, v15, "PAC: Error during getIsChallengeCurrentlyRequired: %@");
    sub_1DCB0E9D8(v11, qword_1ECCA8AD0, &qword_1DD0E4F90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
  }

  v16 = v0[21];
  v17 = v0[19];
  *v17 = v0[20];
  *(v17 + 8) = v16;
  *(v17 + 16) = 513;
  v18 = v0[24];
  v19 = v0[21];

  OUTLINED_FUNCTION_29();

  return v20();
}

uint64_t *sub_1DCEA0E24(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    return sub_1DCE9B1F4();
  }

  else if (a2)
  {
    return sub_1DCE9B280(*result, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DCEA0E90(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 32) = &type metadata for FeatureFlagDefinitions.Core;
  *(a1 + 40) = &off_1F585CB38;
  *(a1 + 8) = 0;
}

uint64_t sub_1DCEA0EC8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_4_49();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;
  v6 = OUTLINED_FUNCTION_37_0();

  return v7(v6);
}

unint64_t sub_1DCEA0F7C()
{
  result = qword_1ECCA8AB8;
  if (!qword_1ECCA8AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA8AB8);
  }

  return result;
}

uint64_t sub_1DCEA0FD0(uint64_t a1)
{
  result = sub_1DCB8BBF0(&unk_1EDE49270, type metadata accessor for ProtectedAppCheck);
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithCopy for ProtectedAppStatus(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t assignWithTake for ProtectedAppStatus(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t getEnumTagSinglePayload for ProtectedAppStatus(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for ProtectedAppStatus(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ProtectedAppStatus.AppState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DCEA12A8()
{
  result = type metadata accessor for ProtectedAppCheck.State(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of ProtectedAppCheck.execute()()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = *(*v0 + 344);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AD3C;

  return v9(v2);
}

uint64_t dispatch thunk of ProtectedAppCheckClient.status(for:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(v0 + 8);
  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_11_0(v12);
  *v13 = v14;
  v13[1] = sub_1DCB4AE1C;

  return v16(v9, v7, v5, v3, v1);
}

uint64_t destroy for CustomProtectedAppCheckClient(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 24);
}

void initializeWithCopy for CustomProtectedAppCheckClient(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  sub_1DD0DCF8C();
}

void assignWithCopy for CustomProtectedAppCheckClient(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = a1[1];
  *a1 = *a2;
  a1[1] = v3;
  sub_1DD0DCF8C();
}

uint64_t assignWithTake for CustomProtectedAppCheckClient(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a2 + 24);
  v6 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for CustomProtectedAppCheckClient(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for CustomProtectedAppCheckClient(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1DCEA18A0(void *a1, void *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a3 - 8);
  v6 = sub_1DD0DB04C();
  if (__swift_getEnumTagSinglePayload(a2, 4, v6))
  {
    v7 = *(v5 + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    __swift_storeEnumTagSinglePayload(a1, 0, 4, v6);
    return a1;
  }
}

uint64_t sub_1DCEA19B4(uint64_t a1)
{
  v2 = sub_1DD0DB04C();
  result = __swift_getEnumTagSinglePayload(a1, 4, v2);
  if (!result)
  {
    v4 = *(*(v2 - 8) + 8);

    return v4(a1, v2);
  }

  return result;
}

void *sub_1DCEA1A3C(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  if (__swift_getEnumTagSinglePayload(a2, 4, v6))
  {
    v7 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    __swift_storeEnumTagSinglePayload(a1, 0, 4, v6);
    return a1;
  }
}

void *sub_1DCEA1B14(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 4, v6);
  v8 = __swift_getEnumTagSinglePayload(a2, 4, v6);
  if (EnumTagSinglePayload)
  {
    if (!v8)
    {
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      __swift_storeEnumTagSinglePayload(a1, 0, 4, v6);
      return a1;
    }
  }

  else
  {
    v9 = *(v6 - 8);
    if (!v8)
    {
      (*(v9 + 24))(a1, a2, v6);
      return a1;
    }

    (*(v9 + 8))(a1, v6);
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_1DCEA1C74(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  if (__swift_getEnumTagSinglePayload(a2, 4, v6))
  {
    v7 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    __swift_storeEnumTagSinglePayload(a1, 0, 4, v6);
    return a1;
  }
}

void *sub_1DCEA1D4C(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 4, v6);
  v8 = __swift_getEnumTagSinglePayload(a2, 4, v6);
  if (EnumTagSinglePayload)
  {
    if (!v8)
    {
      (*(*(v6 - 8) + 32))(a1, a2, v6);
      __swift_storeEnumTagSinglePayload(a1, 0, 4, v6);
      return a1;
    }
  }

  else
  {
    v9 = *(v6 - 8);
    if (!v8)
    {
      (*(v9 + 40))(a1, a2, v6);
      return a1;
    }

    (*(v9 + 8))(a1, v6);
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_1DCEA1ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB04C();

  return __swift_storeEnumTagSinglePayload(a1, a2, 4, v4);
}

uint64_t sub_1DCEA1F20()
{
  result = sub_1DD0DB04C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

void sub_1DCEA1FD8()
{
  OUTLINED_FUNCTION_79_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
  v2 = sub_1DD0DE2DC();

  [v1 *v0];
}

void sub_1DCEA205C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setAppBundleId_];
}

uint64_t sub_1DCEA20B4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v8 = sub_1DD0DB04C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  (*(v9 + 8))(v13, v8);
  *(a4 + 120) = sub_1DCB598EC(8);
  *(a4 + 128) = v14;
  *(a4 + 136) = v15;
  *(a4 + 144) = v16;
  *(a4 + 32) = sub_1DD01D628(a1);
  sub_1DCB17CA0(a2, a4 + 40);
  sub_1DCB17CA0(a3, a4 + 80);
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v17 = CommandFailure.init(errorCode:reason:)(-1, 0x656C706D6F636E49, 0xEA00000000006574);
  sub_1DCB8BBF0(qword_1EDE49B80, type metadata accessor for CommandFailure);
  v18 = swift_allocError();
  *v19 = v17;
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(a4 + 16) = v18;
  *(a4 + 24) = 1;
  type metadata accessor for UnlockDeviceFlowAsync.State(0);
  swift_storeEnumTagMultiPayload();
  return a4;
}

uint64_t sub_1DCEA22BC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_4_49();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;
  v6 = OUTLINED_FUNCTION_37_0();

  return v7(v6);
}

uint64_t sub_1DCEA236C()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_62_1();

  return v6();
}

void sub_1DCEA24A0(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000002ELL;
  *(a1 + 8) = 0x80000001DD120550;
  *(a1 + 16) = 1;
}

void ProtoJsonCoding.makeSlotDescriptionForEncoding(parameterName:intentSlotDescription:selectionItem:typeNamesByValueType:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v53 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v51 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7948, &qword_1DD0F9840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v19 = sub_1DD0DDE9C();
  if (a4 && (v20 = [a4 value]) != 0)
  {
    v21 = v20;
    v22 = [v20 type];
  }

  else
  {
    v22 = sub_1DCEA2D78([a3 valueType]);
  }

  v52 = v17;
  switch(v22)
  {
    case 1:
      v23 = @"String";
      goto LABEL_50;
    case 2:
      v23 = @"Double";
      goto LABEL_50;
    case 3:
      v23 = @"Integer";
      goto LABEL_50;
    case 4:
      v23 = @"Contact";
      goto LABEL_50;
    case 5:
      v23 = @"DateTimeRange";
      goto LABEL_50;
    case 6:
      v23 = @"Location";
      goto LABEL_50;
    case 7:
      v23 = @"DataString";
      goto LABEL_50;
    case 8:
      v23 = @"Long";
      goto LABEL_50;
    case 9:
      v23 = @"PaymentMethod";
      goto LABEL_50;
    case 10:
      v23 = @"Temperature";
      goto LABEL_50;
    case 11:
      v23 = @"Distance";
      goto LABEL_50;
    case 12:
      v23 = @"FinancialAccount";
      goto LABEL_50;
    case 13:
      v23 = @"BillType";
      goto LABEL_50;
    case 14:
      v23 = @"Mass";
      goto LABEL_50;
    case 15:
      v23 = @"Volume";
      goto LABEL_50;
    case 16:
      v23 = @"Speed";
      goto LABEL_50;
    case 17:
      v23 = @"Energy";
      goto LABEL_50;
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
LABEL_11:
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v22];
      goto LABEL_51;
    case 50:
      v23 = @"StringList";
      goto LABEL_50;
    case 51:
      v23 = @"DoubleList";
      goto LABEL_50;
    case 52:
      v23 = @"IntegerList";
      goto LABEL_50;
    case 53:
      v23 = @"ContactList";
      goto LABEL_50;
    case 54:
      v23 = @"DateTimeRangeList";
      goto LABEL_50;
    case 55:
      v23 = @"LocationList";
      goto LABEL_50;
    case 56:
      v23 = @"DataStringList";
      goto LABEL_50;
    case 57:
      v23 = @"LongList";
      goto LABEL_50;
    case 58:
      v23 = @"PaymentMethodList";
      goto LABEL_50;
    case 59:
      v23 = @"TemperatureList";
      goto LABEL_50;
    case 60:
      v23 = @"DistanceList";
      goto LABEL_50;
    default:
      switch(v22)
      {
        case 'd':
          v23 = @"PrimitiveBool";
          break;
        case 'e':
          v23 = @"PrimitiveInt";
          break;
        case 'f':
          v23 = @"PrimitiveLong";
          break;
        case 'g':
          v23 = @"PrimitiveDouble";
          break;
        case 'h':
          v23 = @"PrimitiveString";
          break;
        case 'i':
          v23 = @"DateTime";
          break;
        case 'j':
          goto LABEL_11;
        case 'k':
          v23 = @"Intent";
          break;
        case 'l':
          v23 = @"ModifyRelationship";
          break;
        case 'm':
          v23 = @"ModifyNickname";
          break;
        case 'n':
          v23 = @"CalendarEvent";
          break;
        case 'o':
          v23 = @"EventParticipant";
          break;
        case 'p':
          v23 = @"EventAttribute";
          break;
        default:
          if (v22 != 1000)
          {
            goto LABEL_11;
          }

          v23 = @"Extension";
          break;
      }

LABEL_50:
      v24 = v23;
LABEL_51:
      v25 = v23;
      v26 = sub_1DD0DDFBC();
      v28 = v27;

      swift_isUniquelyReferenced_nonNull_native();
      v55 = v19;
      sub_1DCC5FCB4(v26, v28, 0x70795465756C6176, 0xE900000000000065);
      v29 = v55;
      if (v22 == 1000)
      {
        v30 = sub_1DCC17E1C([a3 valueType], a5);
        if (!v31)
        {
          v55 = 0;
          v56 = 0xE000000000000000;
          sub_1DD0DEC1C();
          MEMORY[0x1E12A6780](0xD000000000000030, 0x80000001DD1205B0);
          MEMORY[0x1E12A6780](a1, a2);
          MEMORY[0x1E12A6780](0xD000000000000020, 0x80000001DD1205F0);
          v54 = [a3 valueType];
          v34 = sub_1DD0DF03C();
          MEMORY[0x1E12A6780](v34);

          MEMORY[0x1E12A6780](0xD000000000000048, 0x80000001DD120620);
          v35 = v55;
          v36 = v56;
          v37 = qword_1EDE4F900;

          if (v37 != -1)
          {
            swift_once();
          }

          v38 = sub_1DD0DD8FC();
          v39 = __swift_project_value_buffer(v38, qword_1EDE57E00);
          v40 = *(v38 - 8);
          v41 = v52;
          (*(v40 + 16))(v52, v39, v38);
          __swift_storeEnumTagSinglePayload(v41, 0, 1, v38);
          v42 = v41;
          v43 = v53;
          sub_1DCBCF6C8(v42, v53);
          if (__swift_getEnumTagSinglePayload(v43, 1, v38) == 1)
          {
            sub_1DCBCF738(v53);
          }

          else
          {

            v44 = sub_1DD0DD8EC();
            v45 = sub_1DD0DE6EC();

            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v47 = swift_slowAlloc();
              v54 = v47;
              *v46 = 136315650;
              v48 = sub_1DD0DEC3C();
              v50 = sub_1DCB10E9C(v48, v49, &v54);

              *(v46 + 4) = v50;
              *(v46 + 12) = 2048;
              *(v46 + 14) = 28;
              *(v46 + 22) = 2080;
              *(v46 + 24) = sub_1DCB10E9C(v35, v36, &v54);
              _os_log_impl(&dword_1DCAFC000, v44, v45, "FatalError at %s:%lu - %s", v46, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1E12A8390](v47, -1, -1);
              MEMORY[0x1E12A8390](v46, -1, -1);
            }

            (*(v40 + 8))(v53, v38);
          }

          static SiriKitLifecycle._logCrashToEventBus(_:)(v35, v36);
        }

        v32 = v30;
        v33 = v31;
        swift_isUniquelyReferenced_nonNull_native();
        v55 = v29;
        sub_1DCC5FCB4(v32, v33, 0xD000000000000021, 0x80000001DD1206F0);
        v29 = v55;
      }

      sub_1DCDAC354(v29);
  }
}

uint64_t sub_1DCEA2D78(uint64_t a1)
{
  v1 = a1 - 10;
  result = 1;
  switch(v1)
  {
    case 0:
      result = 4;
      break;
    case 2:
      result = 7;
      break;
    case 4:
      result = 105;
      break;
    case 6:
      result = 5;
      break;
    case 11:
      result = 2;
      break;
    case 14:
      result = 3;
      break;
    case 16:
      result = 8;
      break;
    case 17:
      result = 6;
      break;
    case 20:
      return result;
    case 22:
      result = 10;
      break;
    default:
      result = 1000;
      break;
  }

  return result;
}

uint64_t ProtoJsonCoding.makeIntentForEncoding(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 backingStore];
  v7 = [a1 typeName];
  v8 = sub_1DD0DDFBC();
  v10 = v9;

  (*(a3 + 8))(v6, v8, v10, a2, a3);
}

void ProtoJsonCoding.makeIntentResponseForEncoding(_:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v7 = a1;
  v8 = [v7 _payloadResponseMessageData];
  if (!v8)
  {

LABEL_8:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  v9 = v8;
  v10 = sub_1DD0DAF2C();
  v12 = v11;

  v13 = [v7 _payloadResponseTypeName];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1DD0DDFBC();
    v17 = v16;

    (*(a3 + 16))(v20, v10, v12, v15, v17, a2, a3);
    sub_1DCB21A14(v10, v12);

    v18 = v21;
    v19 = v20[1];
    if (!v21)
    {
      v19 = 0;
    }

    *a4 = v20[0];
    *(a4 + 8) = v19;
    *(a4 + 16) = v18;
  }

  else
  {
    __break(1u);
  }
}

uint64_t ProtoJsonCoding.toJsonDictionary(pbObject:typeName:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v38 - v17;
  v19 = [a1 data];
  if (!v19)
  {
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1DD0DEC1C();

    v40 = 0xD000000000000028;
    v41 = 0x80000001DD120930;
    MEMORY[0x1E12A6780](a2, a3);
    v25 = v40;
    v26 = v41;
    v27 = qword_1EDE4F900;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = sub_1DD0DD8FC();
    v29 = __swift_project_value_buffer(v28, qword_1EDE57E00);
    v30 = *(v28 - 8);
    (*(v30 + 16))(v18, v29, v28);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v28);
    sub_1DCBCF6C8(v18, v15);
    if (__swift_getEnumTagSinglePayload(v15, 1, v28) == 1)
    {
      sub_1DCBCF738(v15);
    }

    else
    {

      v31 = sub_1DD0DD8EC();
      v32 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = v38;
        *v33 = 136315650;
        v34 = sub_1DD0DEC3C();
        v36 = sub_1DCB10E9C(v34, v35, &v39);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2048;
        *(v33 + 14) = 62;
        *(v33 + 22) = 2080;
        *(v33 + 24) = sub_1DCB10E9C(v25, v26, &v39);
        _os_log_impl(&dword_1DCAFC000, v31, v32, "FatalError at %s:%lu - %s", v33, 0x20u);
        v37 = v38;
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v37, -1, -1);
        MEMORY[0x1E12A8390](v33, -1, -1);
      }

      (*(v30 + 8))(v15, v28);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(v25, v26);
  }

  v20 = v19;
  v21 = sub_1DD0DAF2C();
  v23 = v22;

  (*(a5 + 16))(v21, v23, a2, a3, a4, a5);

  return sub_1DCB21A14(v21, v23);
}

void ReactiveFlowPlan.pushIfNil<A>(flowProducer:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v4);
  v16[0] = a1;
  v16[1] = a2;
  type metadata accessor for OptionalFlowMappingModifier();
  OUTLINED_FUNCTION_1_96();
  sub_1DCDDC1D8(v14, v16, a3, v4, a4);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEA3588(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_1DCEA35D4()
{
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_0_1();
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v2, v3);
  (*(v5 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DCEA36B4();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEA36B4()
{
  OUTLINED_FUNCTION_3_10();
  (*(*(v3 - 8) + 32))(v2);
  result = type metadata accessor for OptionalFlowMappingPlan();
  v5 = (v2 + *(result + 44));
  *v5 = v1;
  v5[1] = v0;
  return result;
}

void sub_1DCEA3734(uint64_t a1, void *a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  sub_1DCEA35D4();
}

uint64_t sub_1DCEA3760(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_1DCEA37FC(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  if ((*(v5 + 80) & 0x1000F8) != 0 || ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    *a1 = *a2;
  }

  else
  {
    (*(v5 + 16))(a1, a2);
    v8 = ((a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    v9 = v8[1];
    v10 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v8;
    v10[1] = v9;
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DCEA38F4(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *(((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_1DCEA3964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  sub_1DD0DCF8C();
}

void sub_1DCEA39E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  v10 = v7[1];
  *v7 = *v8;
  v7[1] = v9;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEA3A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_1DCEA3AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 8);
  *v7 = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1DCEA3B70(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1DCEA3CAC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCEA3E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = type metadata accessor for OptionalFlowMappingPlan();
  OUTLINED_FUNCTION_0_1();
  v52 = v8;
  v53 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v51 = &v41 - v12;
  v47 = a3;
  sub_1DD0DE97C();
  type metadata accessor for _FlowPlanEvent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v13 = sub_1DD0DDAEC();
  type metadata accessor for _FlowPlanEvent();
  v14 = sub_1DD0DDAEC();
  v49 = v13;
  WitnessTable = swift_getWitnessTable();
  v41 = v14;
  v15 = sub_1DD0DDA9C();
  OUTLINED_FUNCTION_0_1();
  v50 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v45 = &v41 - v21;
  v22 = swift_getWitnessTable();
  v44 = v22;
  v43 = swift_getWitnessTable();
  v55 = v14;
  v56 = v15;
  v57 = v22;
  v58 = v43;
  v23 = sub_1DD0DDA7C();
  OUTLINED_FUNCTION_0_1();
  v46 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v41 - v29;
  v31 = a2;
  v42 = (*(a4 + 48))(a1, a2, a4);
  v55 = v42;
  v33 = v51;
  v32 = v52;
  v34 = v54;
  (*(v52 + 16))(v51, a1, v54);
  v35 = (*(v32 + 80) + 40) & ~*(v32 + 80);
  v36 = swift_allocObject();
  v37 = v47;
  *(v36 + 2) = v31;
  *(v36 + 3) = v37;
  *(v36 + 4) = a4;
  (*(v32 + 32))(&v36[v35], v33, v34);
  v38 = v45;
  sub_1DD0DDC3C();

  MEMORY[0x1E12A6240](v15, v43, v44);
  (*(v50 + 8))(v38, v15);
  swift_getWitnessTable();
  v39 = sub_1DD0DDBFC();

  (*(v46 + 8))(v30, v23);
  return v39;
}

uint64_t sub_1DCEA427C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v122 = a2;
  v129 = a6;
  v130 = a1;
  v125 = a3;
  v126 = a5;
  v7 = type metadata accessor for OptionalFlowMappingPlan();
  v123 = *(v7 - 8);
  v124 = v7;
  v120 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v121 = &v98 - v9;
  v127 = sub_1DD0DE97C();
  v10 = type metadata accessor for _FlowPlanEvent();
  v11 = sub_1DD0DDBAC();
  v115 = *(v11 - 8);
  v116 = v11;
  v12 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v114 = &v98 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v16 = sub_1DD0DF21C();
  v118 = *(v16 - 8);
  v17 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v117 = &v98 - v19;
  v20 = type metadata accessor for _FlowPlanEvent();
  v21 = sub_1DD0DF21C();
  v128 = v15;
  v22 = sub_1DD0DDB2C();
  WitnessTable = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v131 = v21;
  v132 = v22;
  v106 = WitnessTable;
  v133 = WitnessTable;
  v134 = v24;
  v25 = sub_1DD0DDABC();
  v26 = swift_getWitnessTable();
  v119 = v16;
  v113 = v26;
  v27 = sub_1DD0DDA9C();
  v28 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  v131 = v25;
  v132 = v27;
  v133 = v28;
  v134 = v29;
  v112 = sub_1DD0DDA7C();
  v111 = *(v112 - 8);
  v30 = *(v111 + 64);
  v32 = MEMORY[0x1EEE9AC00](v112, v31);
  v110 = &v98 - v33;
  v34 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32, v35);
  v102 = &v98 - v36;
  v107 = v20;
  v105 = sub_1DD0DDBAC();
  v104 = *(v105 - 8);
  v37 = *(v104 + 64);
  v39 = MEMORY[0x1EEE9AC00](v105, v38);
  v101 = &v98 - v40;
  v108 = v21;
  v103 = *(v21 - 8);
  v41 = *(v103 + 64);
  v43 = MEMORY[0x1EEE9AC00](v39, v42);
  v99 = &v98 - v44;
  v100 = *(a4 - 8);
  v45 = *(v100 + 64);
  v47 = MEMORY[0x1EEE9AC00](v43, v46);
  v98 = &v98 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(v10 - 8);
  v50 = *(v49 + 64);
  v52 = MEMORY[0x1EEE9AC00](v47, v51);
  v54 = &v98 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v52, v55);
  v58 = &v98 - v57;
  v59 = v127;
  v60 = *(v127 - 8);
  v61 = *(v60 + 64);
  v63 = MEMORY[0x1EEE9AC00](v56, v62);
  v65 = &v98 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63, v66);
  v68 = &v98 - v67;
  v109 = *(v49 + 16);
  v109(v58, v130, v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v49 + 8))(v58, v10);
    v69 = v59;
LABEL_5:
    if (qword_1ECCA13A8 != -1)
    {
      swift_once();
    }

    v71 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v71, qword_1ECCD2748);
    v72 = sub_1DD0DD8EC();
    v73 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = v69;
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_1DCAFC000, v72, v73, "#OptionalFlowMappingPlan: upstream value is nil, interrupting for a resolution", v75, 2u);
      v76 = v75;
      v69 = v74;
      MEMORY[0x1E12A8390](v76, -1, -1);
    }

    v109(v54, v130, v10);
    v77 = v114;
    sub_1DD0DDBBC();
    v78 = v116;
    sub_1DD0DDB9C();
    (*(v115 + 8))(v77, v78);
    v79 = v123;
    v80 = v121;
    v81 = v124;
    (*(v123 + 16))(v121, v122, v124);
    v82 = (*(v79 + 80) + 40) & ~*(v79 + 80);
    v83 = swift_allocObject();
    v84 = v126;
    *(v83 + 2) = v125;
    *(v83 + 3) = a4;
    *(v83 + 4) = v84;
    (*(v79 + 32))(&v83[v82], v80, v81);
    sub_1DCDAA7E8(sub_1DCEA4FC4, v83, v119, v69, a4, v113);
  }

  (*(v60 + 32))(v68, v58, v59);
  (*(v60 + 16))(v65, v68, v59);
  v69 = v59;
  if (__swift_getEnumTagSinglePayload(v65, 1, a4) == 1)
  {
    v70 = *(v60 + 8);
    v70(v68, v59);
    v70(v65, v59);
    goto LABEL_5;
  }

  v85 = v100;
  v86 = v98;
  (*(v100 + 32))(v98, v65, a4);
  if (qword_1ECCA13A8 != -1)
  {
    swift_once();
  }

  v87 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v87, qword_1ECCD2748);
  v88 = sub_1DD0DD8EC();
  v89 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_1DCAFC000, v88, v89, "#OptionalFlowMappingPlan: upstream value not nil, sending completed message", v90, 2u);
    v91 = v90;
    v69 = v59;
    MEMORY[0x1E12A8390](v91, -1, -1);
  }

  (*(v85 + 16))(v102, v86, a4);
  swift_storeEnumTagMultiPayload();
  v92 = v101;
  sub_1DD0DDBBC();
  v93 = v99;
  v94 = v105;
  sub_1DD0DDB9C();
  (*(v104 + 8))(v92, v94);
  v95 = v108;
  v96 = sub_1DD0DDBFC();
  (*(v103 + 8))(v93, v95);
  (*(v85 + 8))(v86, a4);
  result = (*(v60 + 8))(v68, v69);
  *v129 = v96;
  return result;
}

uint64_t sub_1DCEA4E68(uint64_t a1, uint64_t a2)
{
  v2 = a2 + *(type metadata accessor for OptionalFlowMappingPlan() + 44);
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_1DCEA4ED0()
{
  swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter();
}

uint64_t sub_1DCEA4F24(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCEA4F60()
{
  OUTLINED_FUNCTION_4_88();
  v1 = *(v0 + 80);
  v2 = OUTLINED_FUNCTION_2_81();

  return sub_1DCEA427C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1DCEA4FC4()
{
  OUTLINED_FUNCTION_4_88();
  v1 = *(v0 + 80);
  v2 = OUTLINED_FUNCTION_2_81();

  return sub_1DCEA4E68(v2, v3);
}

void ReactiveFlowPlan.push<A>(flowProducer:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  (*(v16 + 16))(v14 - v13, v4);
  v18[0] = a1;
  v18[1] = a2;
  v17 = type metadata accessor for FlowMappingModifier();
  OUTLINED_FUNCTION_0_91();
  swift_getWitnessTable();
  sub_1DCDDC1D8(v15, v18, a3, v17, a4);
  sub_1DD0DCF8C();
}

void ReactiveFlowPlan.push<A>(flowProducer:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_16();
  v18 = v17 - v16;
  (*(v19 + 16))(v17 - v16, v20);
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a1;
  v21[6] = a2;
  v23[0] = sub_1DCEA5374;
  v23[1] = v21;
  v22 = type metadata accessor for FlowMappingModifier();
  OUTLINED_FUNCTION_0_91();
  swift_getWitnessTable();
  sub_1DCDDC1D8(v18, v23, a3, v22, a6);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEA5284@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t)@<X1>, uint64_t **a3@<X8>)
{
  v6 = type metadata accessor for ResultUpcastingFlow();
  a2(v9, a1);
  v7 = sub_1DCEA5320(v9);
  a3[3] = v6;
  result = swift_getWitnessTable();
  a3[4] = result;
  *a3 = v7;
  return result;
}

uint64_t *sub_1DCEA5320(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_1DCEA5A44(a1);
}

uint64_t sub_1DCEA5374@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  return sub_1DCEA5284(a1, *(v2 + 40), a2);
}

uint64_t sub_1DCEA5384(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for ResultUpcastingFlow.State();
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

void sub_1DCEA5418()
{
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_0_1();
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_16();
  (*(v6 + 16))(v5 - v4);
  sub_1DCEA54F0();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEA54F0()
{
  OUTLINED_FUNCTION_3_10();
  (*(*(v3 - 8) + 32))(v2);
  result = type metadata accessor for FlowMappingPlan();
  v5 = (v2 + *(result + 44));
  *v5 = v1;
  v5[1] = v0;
  return result;
}

void sub_1DCEA5570(uint64_t a1, void *a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  sub_1DCEA5418();
}

void sub_1DCEA5584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _FlowPlanEvent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_2_4();
  sub_1DD0DF21C();
  OUTLINED_FUNCTION_2_4();
  sub_1DD0DDB2C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DD0DDABC();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent();
  v7 = sub_1DD0DDAEC();
  WitnessTable = swift_getWitnessTable();
  sub_1DD0DDA9C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DD0DDA7C();
  OUTLINED_FUNCTION_0_1();
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  swift_getWitnessTable();
  sub_1DD0DDA5C();
  OUTLINED_FUNCTION_0_1();
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  (*(a4 + 48))(a1, a2, a4);
  v16 = type metadata accessor for FlowMappingPlan();
  sub_1DCDAA7E8(*(a1 + *(v16 + 44)), *(a1 + *(v16 + 44) + 8), v7, AssociatedTypeWitness, a3, WitnessTable);
}

unint64_t sub_1DCEA59F0()
{
  swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter();
}

uint64_t *sub_1DCEA5A44(__int128 *a1)
{
  v2 = *v1;
  sub_1DCAFF9E8(a1, v1 + *(*v1 + 88));
  v3 = *(v2 + 80);
  type metadata accessor for ResultUpcastingFlow.State();
  swift_storeEnumTagMultiPayload();
  return v1;
}

uint64_t sub_1DCEA5AB8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = *v1;
  v4 = *(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v5 = sub_1DD0DF22C();
  v27[0] = *(v5 - 8);
  v6 = *(v27[0] + 64);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = v27 - v9;
  v11 = *(v4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8, v13);
  v15 = v27 - v14;
  v16 = type metadata accessor for ResultUpcastingFlow.State();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = (v27 - v20);
  v22 = *(v3 + 88);
  swift_beginAccess();
  (*(v17 + 16))(v21, &v2[v22], v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1DCAFF9E8(v21, v31);
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    v29 = type metadata accessor for LifeCycleModifierFlow();
    WitnessTable = swift_getWitnessTable();
    sub_1DD0DCF8C();
  }

  (*(v11 + 32))(v15, v21, v4);
  (*(v11 + 16))(v10, v15, v4);
  swift_storeEnumTagMultiPayload();
  v23 = type metadata accessor for Conclude();
  v24 = v28;
  v28[3] = v23;
  v24[4] = &protocol witness table for Conclude<A>;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v24);
  type metadata accessor for ResultUpcastingFlow();
  swift_getWitnessTable();
  ActingFlow.conclude(with:)(v10, boxed_opaque_existential_1Tm);
  (*(v27[0] + 8))(v10, v5);
  return (*(v11 + 8))(v15, v4);
}

uint64_t sub_1DCEA5F50(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  v5 = type metadata accessor for ResultUpcastingFlow.State();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  (*(*(v4 - 8) + 16))(&v13 - v9, a1, v4);
  swift_storeEnumTagMultiPayload();
  v11 = *(*a2 + 88);
  swift_beginAccess();
  (*(v6 + 40))(a2 + v11, v10, v5);
  return swift_endAccess();
}

uint64_t sub_1DCEA60A8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for ResultUpcastingFlow.State();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  return v0;
}

uint64_t sub_1DCEA612C()
{
  v0 = *sub_1DCEA60A8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCEA61B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_1DCEA6248(uint64_t *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 0x28)
  {
    v2 = 40;
  }

  v3 = *(a1 + v2);
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    switch(v5)
    {
      case 1:
        v6 = *a1;
        goto LABEL_12;
      case 2:
        v6 = *a1;
        goto LABEL_12;
      case 3:
        v6 = *a1 | (*(a1 + 2) << 16);
        goto LABEL_12;
      case 4:
        v6 = *a1;
LABEL_12:
        v7 = (v6 | (v4 << (8 * v2))) + 2;
        v3 = v6 + 2;
        if (v2 < 4)
        {
          v3 = v7;
        }

        break;
      default:
        break;
    }
  }

  if (v3 == 1)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  else
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t sub_1DCEA6330(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x28uLL)
  {
    v4 = 40;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        v5 = v8 + 2;
        if (v4 < 4)
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 == 1)
  {
    (*(*(*(a3 + 16) - 8) + 16))(a1);
    v10 = 1;
  }

  else
  {
    v11 = *(a2 + 24);
    *(a1 + 24) = v11;
    (**(v11 - 8))(a1);
    v10 = 0;
  }

  *(a1 + v4) = v10;
  return a1;
}

unsigned __int8 *sub_1DCEA6484(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 0x28uLL)
    {
      v7 = 40;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      switch(v10)
      {
        case 1:
          v11 = *a1;
          goto LABEL_14;
        case 2:
          v11 = *a1;
          goto LABEL_14;
        case 3:
          v11 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v11 = *a1;
LABEL_14:
          v12 = (v11 | (v9 << (8 * v7))) + 2;
          v8 = v11 + 2;
          if (v7 < 4)
          {
            v8 = v12;
          }

          break;
        default:
          break;
      }
    }

    if (v8 == 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      switch(v15)
      {
        case 1:
          v16 = *a2;
          goto LABEL_28;
        case 2:
          v16 = *a2;
          goto LABEL_28;
        case 3:
          v16 = *a2 | (a2[2] << 16);
          goto LABEL_28;
        case 4:
          v16 = *a2;
LABEL_28:
          v17 = (v16 | (v14 << (8 * v7))) + 2;
          v13 = v16 + 2;
          if (v7 < 4)
          {
            v13 = v17;
          }

          break;
        default:
          break;
      }
    }

    if (v13 == 1)
    {
      (*(v6 + 16))(a1, a2, v5);
      v18 = 1;
    }

    else
    {
      v19 = *(a2 + 3);
      *(a1 + 3) = v19;
      *(a1 + 4) = *(a2 + 4);
      (**(v19 - 8))(a1, a2);
      v18 = 0;
    }

    a1[v7] = v18;
  }

  return a1;
}

uint64_t sub_1DCEA66AC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x28uLL)
  {
    v4 = 40;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        v5 = v8 + 2;
        if (v4 < 4)
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 == 1)
  {
    (*(*(*(a3 + 16) - 8) + 32))(a1);
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v11 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v11;
    *(a1 + 32) = *(a2 + 4);
  }

  *(a1 + v4) = v10;
  return a1;
}

unsigned __int8 *sub_1DCEA67D8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 0x28uLL)
    {
      v7 = 40;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      switch(v10)
      {
        case 1:
          v11 = *a1;
          goto LABEL_14;
        case 2:
          v11 = *a1;
          goto LABEL_14;
        case 3:
          v11 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v11 = *a1;
LABEL_14:
          v12 = (v11 | (v9 << (8 * v7))) + 2;
          v8 = v11 + 2;
          if (v7 < 4)
          {
            v8 = v12;
          }

          break;
        default:
          break;
      }
    }

    if (v8 == 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      switch(v15)
      {
        case 1:
          v16 = *a2;
          goto LABEL_28;
        case 2:
          v16 = *a2;
          goto LABEL_28;
        case 3:
          v16 = *a2 | (a2[2] << 16);
          goto LABEL_28;
        case 4:
          v16 = *a2;
LABEL_28:
          v17 = (v16 | (v14 << (8 * v7))) + 2;
          v13 = v16 + 2;
          if (v7 < 4)
          {
            v13 = v17;
          }

          break;
        default:
          break;
      }
    }

    if (v13 == 1)
    {
      (*(v6 + 32))(a1, a2, v5);
      v18 = 1;
    }

    else
    {
      v18 = 0;
      v19 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v19;
      *(a1 + 4) = *(a2 + 4);
    }

    a1[v7] = v18;
  }

  return a1;
}

uint64_t sub_1DCEA69D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 40;
  if (*(v3 + 64) > 0x28uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1DCEA6AF4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x28)
  {
    v5 = 40;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1DCEA6CB8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 40;
  if (*(v2 + 64) > 0x28uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    switch(v6)
    {
      case 1:
        v7 = *a1;
        goto LABEL_12;
      case 2:
        v7 = *a1;
        goto LABEL_12;
      case 3:
        v7 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v7 = *a1;
LABEL_12:
        v8 = (v7 | (v5 << (8 * v3))) + 2;
        LODWORD(v4) = v7 + 2;
        if (v3 >= 4)
        {
          v4 = v4;
        }

        else
        {
          v4 = v8;
        }

        break;
      default:
        return v4;
    }
  }

  return v4;
}

uint64_t sub_1DCEA6D80(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1DCEA6DEC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1DCEA6F28(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCEA70F8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void ReactiveFlowPlan.pushOnError(flowProducer:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_5_3();
  (*(v13 + 16))(v4, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v17[0] = sub_1DCEA7300;
  v17[1] = v15;
  v16 = type metadata accessor for ErrorReportingFlowModifier();
  OUTLINED_FUNCTION_0_92();
  swift_getWitnessTable();
  sub_1DCDDC1D8(v4, v17, a3, v16, a4);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEA725C@<X0>(void (*a1)(uint64_t *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  a1(v8);
  v7 = v9;
  v3 = v9;
  v4 = __swift_project_boxed_opaque_existential_1(v8, v9);
  *(a2 + 24) = v7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1Tm, v4, v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

void sub_1DCEA7364()
{
  OUTLINED_FUNCTION_3_96();
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_5_3();
  (*(v5 + 16))(v0);
  sub_1DCEA7428();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEA7428()
{
  OUTLINED_FUNCTION_3_96();
  (*(*(v3 - 8) + 32))(v2);
  result = type metadata accessor for ErrorReportingFlowPlan();
  v5 = (v2 + *(result + 36));
  *v5 = v1;
  v5[1] = v0;
  return result;
}

void sub_1DCEA74A4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1DCEA7364();
}

uint64_t sub_1DCEA74CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1DCEA7568(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1DCEA76A4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1DCEA7874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_2_82();
  sub_1DD0DF21C();
  OUTLINED_FUNCTION_2_82();
  sub_1DD0DDAEC();
  OUTLINED_FUNCTION_2_82();
  sub_1DD0DDB2C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_83();
  sub_1DD0DDABC();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_83();
  sub_1DD0DDAAC();
  OUTLINED_FUNCTION_5_83();
  sub_1DD0DDA9C();
  OUTLINED_FUNCTION_5_83();
  sub_1DD0DDA7C();
  OUTLINED_FUNCTION_0_1();
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_5_83();
  sub_1DD0DDA5C();
  OUTLINED_FUNCTION_0_1();
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  (*(a3 + 48))(a1, a2, a3);
  v14 = (a1 + *(type metadata accessor for ErrorReportingFlowPlan() + 36));
  v16 = *v14;
  v15 = v14[1];
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  sub_1DD0DCF8C();
}

unint64_t sub_1DCEA7CCC()
{
  swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter();
}

uint64_t sub_1DCEA7D20(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCEA7D5C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t RawDucTemplatingParameter.conceptType.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

__n128 RawDucTemplatingParameter.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 48) = 0x65756C6156776152;
  *(v2 + 56) = 0xE800000000000000;
  result = *a1;
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  return result;
}

uint64_t RawDucTemplatingParameter.init(_:)(_OWORD *a1)
{
  *(v1 + 48) = 0x65756C6156776152;
  *(v1 + 56) = 0xE800000000000000;
  v2 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  return v1;
}

uint64_t RawDucTemplatingParameter.deinit()
{
  sub_1DCC8BC14(v0 + 16);
  v1 = *(v0 + 56);

  return v0;
}

uint64_t RawDucTemplatingParameter.__deallocating_deinit()
{
  sub_1DCC8BC14(v0 + 16);
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCEA7F3C()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1DD0DD2DC();
  v0[4] = v3;
  OUTLINED_FUNCTION_99(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCEA7FE0()
{
  OUTLINED_FUNCTION_39();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E69CE230])
  {
    v5 = v0[6];
    (*(v0[5] + 96))(v5, v0[4]);
    v0[11] = *v5;
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v0[12] = v6;
    *v6 = v7;
    v6[1] = sub_1DCEA84A4;
    OUTLINED_FUNCTION_45_15();

    return sub_1DCEA99C0();
  }

  else if (v4 == *MEMORY[0x1E69CE238])
  {
    v9 = OUTLINED_FUNCTION_60_10();
    v10(v9);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v0[7] = v11;
    *v11 = v12;
    v11[1] = sub_1DCEA825C;
    OUTLINED_FUNCTION_45_15();

    return sub_1DCEA953C();
  }

  else if (v4 == *MEMORY[0x1E69CE228])
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v0[9] = v13;
    *v13 = v14;
    v13[1] = sub_1DCEA83AC;
    OUTLINED_FUNCTION_45_15();
    OUTLINED_FUNCTION_24();

    return sub_1DCEA88E4();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v0[14] = v15;
    *v15 = v16;
    v15[1] = sub_1DCEA85FC;
    OUTLINED_FUNCTION_45_15();

    return sub_1DCCDC444();
  }
}

uint64_t sub_1DCEA825C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCEA8354()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1DCEA83AC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCEA84A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCEA859C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 88);

  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1DCEA85FC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCEA86F4()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_60_10();
  v2(v1);
  v3 = *(v0 + 48);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1DCEA875C()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_60_10();
  v2(v1);
  v3 = *(v0 + 120);
  v4 = *(v0 + 48);

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCEA87C8()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCEA8824()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCEA8880()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[11];

  v2 = v0[13];
  v3 = v0[6];

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCEA88E4()
{
  OUTLINED_FUNCTION_42();
  v0[116] = v1;
  v0[115] = v2;
  v0[114] = v3;
  v4 = sub_1DD0DB04C();
  v0[117] = v4;
  OUTLINED_FUNCTION_99(v4);
  v0[118] = v5;
  v7 = *(v6 + 64);
  v0[119] = OUTLINED_FUNCTION_38();
  v8 = type metadata accessor for OutputGenerationManifest();
  v0[120] = v8;
  OUTLINED_FUNCTION_20_0(v8);
  v10 = *(v9 + 64);
  v0[121] = OUTLINED_FUNCTION_38();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  OUTLINED_FUNCTION_20_0(v11);
  v13 = *(v12 + 64);
  v0[122] = OUTLINED_FUNCTION_38();
  v14 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

void sub_1DCEA89E0()
{
  OUTLINED_FUNCTION_42();
  if (qword_1ECCA1360 != -1)
  {
    OUTLINED_FUNCTION_49_17();
  }

  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 97));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 97);
  v0[90] = type metadata accessor for RefreshableDeviceState();
  v0[91] = &protocol witness table for RefreshableDeviceState;
  v0[87] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEA8B28()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 992);
  v7 = *(v5 + 984);
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v3 + 1000) = v10;
  *(v3 + 1008) = v0;

  sub_1DCB16DB0(v3 + 696, &qword_1ECCA8AB0, &qword_1DD0E23E0);

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1DCEA8C64()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[116];
  OUTLINED_FUNCTION_72_14();
  swift_asyncLet_begin();
  if (v1)
  {
    v2 = v0[116];
    v3 = v0[115];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA1C70, &unk_1DD0F9830);
    v4 = sub_1DD0DAB1C();
    OUTLINED_FUNCTION_99(v4);
    v6 = *(v5 + 72);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_1DD0E07C0;

    sub_1DD0DAB0C();
  }

  v9 = v0[122];
  sub_1DCB10E5C(0, &qword_1ECCA8F00, 0x1E69C7B00);
  static SAUIAppPunchOut.makeAppStorePunchOutURL(queryItems:)();

  if (qword_1ECCA1358 != -1)
  {
    OUTLINED_FUNCTION_4_89();
  }

  v0[127] = qword_1ECCD26C0;
  v10 = type metadata accessor for SiriKitSnippets(0);
  v0[128] = v10;
  v0[110] = v10;
  v0[111] = sub_1DCEADC10();
  v0[129] = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 107);
  OUTLINED_FUNCTION_52_23();

  JUMPOUT(0x1DD0DF88CLL);
}

uint64_t sub_1DCEA8E48()
{
  *(v1 + 1040) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCEA9428);
  }

  else
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCEA8E74);
  }
}

void sub_1DCEA8E74()
{
  v1 = v0[129];
  v2 = v0[128];
  v3 = v0[125];
  v4 = v0[122];
  v5 = v0[112];
  v6 = v0[113];
  v7 = type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0);
  sub_1DCB4F1DC(v4, v1 + *(v7 + 20), &unk_1ECCA28C0, &unk_1DD0E1D80);
  *v1 = v5;
  v1[1] = v6;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v8 = OUTLINED_FUNCTION_52_2();
  v0[131] = v8;
  *(v8 + 16) = xmmword_1DD0E15D0;
  *(v8 + 32) = v3;
  v9 = qword_1EDE4EC68;

  v10 = v3;
  if (v9 != -1)
  {
    OUTLINED_FUNCTION_11();
  }

  v11 = v0[121];
  v12 = v0[120];
  v13 = v0[119];
  v14 = v0[118];
  v15 = v0[117];
  v16 = *algn_1EDE4EC78;
  OUTLINED_FUNCTION_73_8();
  v36 = v12[8];
  *(v11 + v12[9]) = 256;
  v35 = v12[10];
  *(v11 + v12[11]) = 0;
  v17 = v12[12];
  v18 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  v34 = v12[13];
  OUTLINED_FUNCTION_57_13(v12[14]);
  OUTLINED_FUNCTION_57_13(v12[15]);
  *(v11 + v12[16]) = 0;
  *(v11 + v12[18]) = 0;
  OUTLINED_FUNCTION_16_29(v11 + v12[19]);
  OUTLINED_FUNCTION_29_26();
  *(v11 + v22) = MEMORY[0x1E69E7CC0];
  v23 = v12[29];
  v24 = *MEMORY[0x1E69D0678];
  v25 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v25);
  (*(v26 + 104))(v11 + v23, v24);
  v27 = v12[30];
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  OUTLINED_FUNCTION_70_11();
  *v11 = v32;
  v11[1] = v16;
  v33 = v12[5];

  sub_1DCB67914();
}

uint64_t sub_1DCEA9178()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = v4[132];
  v6 = v4[131];
  v7 = v4[121];
  v8 = *v0;
  OUTLINED_FUNCTION_27();
  *v9 = v8;

  OUTLINED_FUNCTION_1_97();
  sub_1DCEB0054(v7, v10);
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 856));
  v11 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCEA92A0()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB16DB0(*(v0 + 976), &unk_1ECCA28C0, &unk_1DD0E1D80);
  v1 = OUTLINED_FUNCTION_52_23();

  return MEMORY[0x1EEE6DEB0](v1, v0 + 896);
}

uint64_t sub_1DCEA9328()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 976);
  v2 = *(v0 + 968);
  v3 = *(v0 + 952);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1DCEA93AC()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[126];
  v2 = v0[122];
  v3 = v0[121];
  v4 = v0[119];

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCEA9428()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB16DB0(*(v0 + 976), &unk_1ECCA28C0, &unk_1DD0E1D80);
  __swift_deallocate_boxed_opaque_existential_1((v0 + 856));
  v1 = OUTLINED_FUNCTION_52_23();

  return MEMORY[0x1EEE6DEB0](v1, v0 + 896);
}

uint64_t sub_1DCEA94B8()
{
  OUTLINED_FUNCTION_39();

  v1 = *(v0 + 1040);
  v2 = *(v0 + 976);
  v3 = *(v0 + 968);
  v4 = *(v0 + 952);

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCEA953C()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_79_13(v1);
  v0[3] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v6 = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_78_1(v6);
  v0[6] = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  v0[7] = OUTLINED_FUNCTION_38();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_97(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_31_0(v11);

  return sub_1DCF65E10();
}

uint64_t sub_1DCEA9620()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  *v4 = *v1;
  OUTLINED_FUNCTION_77_0(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_81();

    OUTLINED_FUNCTION_32_3();

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1DCEA98C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCEA99C0()
{
  OUTLINED_FUNCTION_42();
  v0[105] = v1;
  v0[99] = v2;
  v3 = sub_1DD0DB04C();
  v0[106] = v3;
  OUTLINED_FUNCTION_99(v3);
  v0[107] = v4;
  v6 = *(v5 + 64);
  v0[108] = OUTLINED_FUNCTION_38();
  v7 = type metadata accessor for OutputGenerationManifest();
  v0[109] = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  v0[110] = OUTLINED_FUNCTION_38();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v10);
  v0[111] = v11;
  v0[112] = *(v12 + 64);
  v0[113] = swift_task_alloc();
  v0[114] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DCEA9AFC()
{
  OUTLINED_FUNCTION_42();
  sub_1DCEAC8C4(v0[105], v0[114]);
  if (qword_1ECCA1360 != -1)
  {
    OUTLINED_FUNCTION_49_17();
  }

  v1 = sub_1DD0DDE9C();
  v0[115] = v1;
  v2 = swift_task_alloc();
  v0[116] = v2;
  *v2 = v0;
  v2[1] = sub_1DCEA9BF4;
  v3 = OUTLINED_FUNCTION_55_2(v0[114]);

  return ErrorResponses.appDoesNotSupportIntent(appDisplayInfo:catOverrides:)(v3, v1);
}

uint64_t sub_1DCEA9BF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 928);
  v6 = *(v4 + 920);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v10 + 936) = v9;
  *(v10 + 944) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1DCEA9D10()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  sub_1DCB4F1DC(v0[114], v1, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_67_15();
  v5 = swift_allocObject();
  v0[119] = v5;
  sub_1DCD0506C(v1, v5 + v3);
  OUTLINED_FUNCTION_72_14();
  swift_asyncLet_begin();
  if (qword_1ECCA1358 != -1)
  {
    OUTLINED_FUNCTION_4_89();
  }

  v0[120] = qword_1ECCD26C0;
  v6 = type metadata accessor for SiriKitSnippets(0);
  v0[121] = v6;
  v0[90] = v6;
  v0[91] = sub_1DCEADC10();
  v0[122] = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 87);
  OUTLINED_FUNCTION_52_23();

  JUMPOUT(0x1DD0DF88CLL);
}

uint64_t sub_1DCEA9E48()
{
  *(v1 + 984) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCEAA448);
  }

  else
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCEA9E74);
  }
}

void sub_1DCEA9E74()
{
  v1 = v0[122];
  v2 = v0[121];
  v3 = v0[117];
  v4 = v0[105];
  v5 = v0[97];
  v6 = v0[98];

  v7 = sub_1DD0DD1BC();
  *v1 = v5;
  v1[1] = v6;
  v1[2] = v7;
  v1[3] = v8;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v9 = OUTLINED_FUNCTION_52_2();
  v0[124] = v9;
  *(v9 + 16) = xmmword_1DD0E15D0;
  *(v9 + 32) = v3;
  v10 = qword_1EDE4EBE0;
  v11 = v3;
  if (v10 != -1)
  {
    OUTLINED_FUNCTION_10_27();
  }

  v12 = v0[110];
  v13 = v0[109];
  v14 = v0[108];
  v15 = v0[107];
  v16 = v0[106];
  v17 = qword_1EDE4EBE8;
  v18 = unk_1EDE4EBF0;
  *(v12 + v13[6]) = 0;
  *(v12 + v13[7]) = 0;
  v40 = v13[8];
  *(v12 + v13[9]) = 256;
  v38 = v13[10];
  v39 = v17;
  *(v12 + v13[11]) = 0;
  v19 = v13[12];
  v20 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  v37 = v13[13];
  v24 = (v12 + v13[14]);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v12 + v13[15]);
  *v25 = 0;
  v25[1] = 0;
  *(v12 + v13[16]) = 0;
  *(v12 + v13[18]) = 0;
  OUTLINED_FUNCTION_16_29(v12 + v13[19]);
  *(v12 + v13[20]) = 0;
  *(v12 + v13[21]) = 0;
  *(v12 + v13[22]) = 0;
  *(v12 + v13[23]) = 0;
  *(v12 + v13[24]) = 0;
  *(v12 + v13[25]) = 0;
  v26 = (v12 + v13[26]);
  *v26 = 0;
  v26[1] = 0;
  *(v12 + v13[27]) = 0;
  *(v12 + v13[28]) = MEMORY[0x1E69E7CC0];
  v27 = v13[29];
  v28 = *MEMORY[0x1E69D0678];
  v29 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v29);
  (*(v30 + 104))(v12 + v27, v28);
  v31 = v13[30];
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  *(v12 + v13[31]) = 2;
  *v12 = v39;
  v12[1] = v18;
  v36 = v13[5];

  sub_1DCB67914();
}

uint64_t sub_1DCEAA1BC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = v4[125];
  v6 = v4[124];
  v7 = v4[110];
  v8 = *v0;
  OUTLINED_FUNCTION_27();
  *v9 = v8;

  OUTLINED_FUNCTION_1_97();
  sub_1DCEB0054(v7, v10);
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 696));

  return MEMORY[0x1EEE6DEB0](v2 + 16, v2 + 776);
}

uint64_t sub_1DCEAA304()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 952);
  v2 = *(v0 + 912);
  v3 = *(v0 + 904);
  v4 = *(v0 + 880);
  v5 = *(v0 + 864);

  sub_1DCB16DB0(v2, &qword_1ECCA8EE0, &unk_1DD0ECCD0);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_152();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DCEAA3B8()
{
  OUTLINED_FUNCTION_39();
  sub_1DCB16DB0(*(v0 + 912), &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v1 = *(v0 + 944);
  OUTLINED_FUNCTION_75_11();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCEAA448()
{
  OUTLINED_FUNCTION_42();
  __swift_deallocate_boxed_opaque_existential_1((v0 + 696));
  v1 = OUTLINED_FUNCTION_52_23();

  return MEMORY[0x1EEE6DEB0](v1, v0 + 776);
}

uint64_t sub_1DCEAA4C0()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 952);
  v2 = *(v0 + 912);

  sub_1DCB16DB0(v2, &qword_1ECCA8EE0, &unk_1DD0ECCD0);

  v3 = *(v0 + 984);
  OUTLINED_FUNCTION_75_11();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCEAA568()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_79_13(v1);
  v0[3] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v6 = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_78_1(v6);
  v0[6] = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  v0[7] = OUTLINED_FUNCTION_38();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_97(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_31_0(v11);

  return sub_1DCF65754();
}

uint64_t sub_1DCEAA64C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  *v4 = *v1;
  OUTLINED_FUNCTION_77_0(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_81();

    OUTLINED_FUNCTION_32_3();

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}