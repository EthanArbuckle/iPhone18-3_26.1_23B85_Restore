uint64_t sub_21DFFD288(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13FCA4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_21DFFD2EC()
{
  v1 = MEMORY[0x277D84F90];
  if (!*(v0 + 3) && (sub_21DF44E38() & 1) != 0)
  {
    return &unk_282F3BEE0;
  }

  return v1;
}

uint64_t sub_21DFFD330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v9 = type metadata accessor for MorphingContainer();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  v16 = sub_21E1423F4();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a1, v9);
  sub_21E1423C4();
  v17 = sub_21E1423B4();
  v18 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 2) = v17;
  *(v19 + 3) = v20;
  *(v19 + 4) = a2;
  *(v19 + 5) = a3;
  v21 = v24;
  *(v19 + 6) = a4;
  *(v19 + 7) = v21;
  (*(v10 + 32))(&v19[v18], v12, v9);
  sub_21E0C2E04(0, 0, v15, &unk_21E14D3E0, v19);
}

uint64_t sub_21DFFD568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v9 = sub_21E142994();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  sub_21E1423C4();
  v8[15] = sub_21E1423B4();
  v11 = sub_21E142364();
  v8[16] = v11;
  v8[17] = v10;

  return MEMORY[0x2822009F8](sub_21DFFD670, v11, v10);
}

uint64_t sub_21DFFD670()
{
  v1 = sub_21E142C94();
  v3 = v2;
  sub_21E142BB4();
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_21DFFD750;

  return sub_21E077260(v1, v3, 0, 0, 1);
}

uint64_t sub_21DFFD750()
{
  v2 = *v1;
  v2[19] = v0;

  v3 = v2[14];
  v4 = v2[12];
  v5 = v2[11];
  if (v0)
  {

    v6 = *(v4 + 8);
    v2[21] = v6;
    v6(v3, v5);
    v7 = v2[16];
    v8 = v2[17];
    v9 = sub_21DFFDA54;
  }

  else
  {
    v10 = *(v4 + 8);
    v2[20] = v10;
    v10(v3, v5);
    v7 = v2[16];
    v8 = v2[17];
    v9 = sub_21DFFD8F0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21DFFD8F0()
{
  *(v0 + 176) = *(v0 + 160);
  v1 = *(v0 + 48);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);
  sub_21E141D34();
  v2 = swift_task_alloc();
  *(v2 + 16) = v9;
  *(v2 + 32) = v8;
  *(v2 + 48) = v1;
  sub_21E13F864();

  v3 = sub_21E142C94();
  v5 = v4;
  sub_21E142BB4();
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *v6 = v0;
  v6[1] = sub_21DFFDBBC;

  return sub_21E077260(v3, v5, 0, 0, 1);
}

uint64_t sub_21DFFDA54()
{
  *(v0 + 176) = *(v0 + 168);
  v1 = *(v0 + 48);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);
  sub_21E141D34();
  v2 = swift_task_alloc();
  *(v2 + 16) = v9;
  *(v2 + 32) = v8;
  *(v2 + 48) = v1;
  sub_21E13F864();

  v3 = sub_21E142C94();
  v5 = v4;
  sub_21E142BB4();
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *v6 = v0;
  v6[1] = sub_21DFFDBBC;

  return sub_21E077260(v3, v5, 0, 0, 1);
}

uint64_t sub_21DFFDBBC()
{
  v2 = *v1;
  v2[24] = v0;

  v3 = v2[22];
  v4 = v2[13];
  v5 = v2[11];
  if (v0)
  {

    v3(v4, v5);
    v6 = v2[16];
    v7 = v2[17];
    v8 = sub_21DFFDE94;
  }

  else
  {
    v3(v4, v5);
    v6 = v2[16];
    v7 = v2[17];
    v8 = sub_21DFFDD70;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_21DFFDD70()
{
  v5 = *(v0 + 72);
  v7 = *(v0 + 56);

  *(v0 + 16) = v7;
  *(v0 + 32) = v5;
  type metadata accessor for MorphingContainer();
  if (sub_21DF44E38())
  {
    v1 = *(v0 + 48);
    v6 = *(v0 + 72);
    v8 = *(v0 + 56);
    sub_21E141D34();
    v2 = swift_task_alloc();
    *(v2 + 16) = v8;
    *(v2 + 32) = v6;
    *(v2 + 48) = v1;
    sub_21E13F864();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21DFFDE94()
{
  v5 = *(v0 + 72);
  v7 = *(v0 + 56);

  *(v0 + 16) = v7;
  *(v0 + 32) = v5;
  type metadata accessor for MorphingContainer();
  if (sub_21DF44E38())
  {
    v1 = *(v0 + 48);
    v6 = *(v0 + 72);
    v8 = *(v0 + 56);
    sub_21E141D34();
    v2 = swift_task_alloc();
    *(v2 + 16) = v8;
    *(v2 + 32) = v6;
    *(v2 + 48) = v1;
    sub_21E13F864();
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_21DFFDFB0(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a3;
  v26 = a7;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v12 = type metadata accessor for MorphingContainer();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v25 - v17;
  if (*a2 == 2 && !*a1)
  {
    v19 = sub_21E1423F4();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    (*(v13 + 16))(v15, v25, v12);
    sub_21E1423C4();
    v20 = sub_21E1423B4();
    v21 = (*(v13 + 80) + 64) & ~*(v13 + 80);
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    *(v22 + 2) = v20;
    *(v22 + 3) = v23;
    *(v22 + 4) = a4;
    *(v22 + 5) = a5;
    v24 = v26;
    *(v22 + 6) = a6;
    *(v22 + 7) = v24;
    (*(v13 + 32))(&v22[v21], v15, v12);
    sub_21E0C2E04(0, 0, v18, &unk_21E14D3C8, v22);
  }
}

void sub_21DFFE1E8(_BYTE *a1, _BYTE *a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for MorphingContainer() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  sub_21DFFDFB0(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t sub_21DFFE2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v9 = sub_21E142994();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  sub_21E1423C4();
  v8[15] = sub_21E1423B4();
  v11 = sub_21E142364();
  v8[16] = v11;
  v8[17] = v10;

  return MEMORY[0x2822009F8](sub_21DFFE3AC, v11, v10);
}

uint64_t sub_21DFFE3AC()
{
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = *(v0 + 72);
  type metadata accessor for MorphingContainer();
  if (sub_21DF44E38())
  {
    v1 = *(v0 + 48);
    v8 = *(v0 + 72);
    v9 = *(v0 + 56);
    sub_21E141D34();
    v2 = swift_task_alloc();
    *(v2 + 16) = v9;
    *(v2 + 32) = v8;
    *(v2 + 48) = v1;
    sub_21E13F864();
  }

  v3 = sub_21E142C94();
  v5 = v4;
  sub_21E142BB4();
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_21DFFE52C;

  return sub_21E077260(v3, v5, 0, 0, 1);
}

uint64_t sub_21DFFE52C()
{
  v2 = *v1;
  v2[19] = v0;

  v3 = v2[14];
  v4 = v2[12];
  v5 = v2[11];
  if (v0)
  {

    v6 = *(v4 + 8);
    v2[21] = v6;
    v6(v3, v5);
    v7 = v2[16];
    v8 = v2[17];
    v9 = sub_21DFFE834;
  }

  else
  {
    v10 = *(v4 + 8);
    v2[20] = v10;
    v10(v3, v5);
    v7 = v2[16];
    v8 = v2[17];
    v9 = sub_21DFFE6CC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21DFFE6CC()
{
  *(v0 + 176) = *(v0 + 160);
  v1 = *(v0 + 48);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);
  sub_21E141D34();
  v2 = swift_task_alloc();
  *(v2 + 16) = v9;
  *(v2 + 32) = v8;
  *(v2 + 48) = v1;
  sub_21E13F864();

  v3 = sub_21E142C94();
  v5 = v4;
  sub_21E142BB4();
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *v6 = v0;
  v6[1] = sub_21DFFE9A0;

  return sub_21E077260(v3, v5, 0, 0, 1);
}

uint64_t sub_21DFFE834()
{
  *(v0 + 176) = *(v0 + 168);
  v1 = *(v0 + 48);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);
  sub_21E141D34();
  v2 = swift_task_alloc();
  *(v2 + 16) = v9;
  *(v2 + 32) = v8;
  *(v2 + 48) = v1;
  sub_21E13F864();

  v3 = sub_21E142C94();
  v5 = v4;
  sub_21E142BB4();
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *v6 = v0;
  v6[1] = sub_21DFFE9A0;

  return sub_21E077260(v3, v5, 0, 0, 1);
}

uint64_t sub_21DFFE9A0()
{
  v2 = *v1;
  v2[24] = v0;

  v3 = v2[22];
  v4 = v2[13];
  v5 = v2[11];
  if (v0)
  {

    v3(v4, v5);
    v6 = v2[16];
    v7 = v2[17];
    v8 = sub_21DFFEC5C;
  }

  else
  {
    v3(v4, v5);
    v6 = v2[16];
    v7 = v2[17];
    v8 = sub_21DFFEB54;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_21DFFEB54()
{
  v1 = *(v0 + 48);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);

  sub_21E141D34();
  v2 = swift_task_alloc();
  *(v2 + 16) = v6;
  *(v2 + 32) = v5;
  *(v2 + 48) = v1;
  sub_21E13F864();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21DFFEC5C()
{
  v1 = *(v0 + 48);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);

  sub_21E141D34();
  v2 = swift_task_alloc();
  *(v2 + 16) = v6;
  *(v2 + 32) = v5;
  *(v2 + 48) = v1;
  sub_21E13F864();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t getEnumTagSinglePayload for PillAnalytics.VLUMaybeStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PillAnalytics.VLUMaybeStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_21DFFEF00()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_21DF37A78();
      if (v2 <= 0x3F)
      {
        sub_21DF3EF6C();
        if (v3 <= 0x3F)
        {
          sub_21DFD0620();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21DFFEFF0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v45 = *(a3 + 16);
  v4 = *(v45 - 8);
  v5 = *(v4 + 84);
  v44 = *(a3 + 24);
  v6 = *(v44 - 8);
  v7 = *(v6 + 84);
  if (v5 <= v7)
  {
    v8 = *(v6 + 84);
  }

  else
  {
    v8 = *(v4 + 84);
  }

  v9 = *(sub_21E13F444() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(sub_21E140634() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v4 + 80);
  v18 = *(v4 + 64);
  v19 = *(v6 + 80);
  v20 = *(v6 + 64);
  v21 = *(v11 + 80);
  v22 = *(v11 + 64);
  if (v13)
  {
    v23 = v22;
  }

  else
  {
    v23 = v22 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v24 = *(v9 + 80) & 0xF8 | 7;
  v25 = v10 + 8;
  v26 = v21 & 0xF8;
  v27 = v26 | 7;
  v28 = v26 + 23;
  if (a2 <= v16)
  {
    goto LABEL_34;
  }

  v29 = (((v23 & 0xFFFFFFFFFFFFFFF8) + 17 + v27 + ((v28 + ((((v25 + ((v20 + v24 + ((v18 + v19 + ((v17 + 4) & ~v17)) & ~v19)) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v27)) & ~v27) + (v23 & 0xFFFFFFFFFFFFFFF8) + 17;
  v30 = 8 * v29;
  if (v29 > 3)
  {
    goto LABEL_21;
  }

  v33 = ((a2 - v16 + ~(-1 << v30)) >> v30) + 1;
  if (HIWORD(v33))
  {
    v31 = *&a1[v29];
    if (v31)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v33 <= 0xFF)
    {
      if (v33 < 2)
      {
        goto LABEL_34;
      }

LABEL_21:
      v31 = a1[v29];
      if (!a1[v29])
      {
        goto LABEL_34;
      }

LABEL_29:
      v34 = (v31 - 1) << v30;
      if (v29 <= 3)
      {
        v35 = *a1;
      }

      else
      {
        v34 = 0;
        v35 = *a1;
      }

      return v16 + (v35 | v34) + 1;
    }

    v31 = *&a1[v29];
    if (*&a1[v29])
    {
      goto LABEL_29;
    }
  }

LABEL_34:
  v36 = &a1[v17 + 4] & ~v17;
  if (v5 == v16)
  {
    v37 = *(v4 + 48);
    v38 = v5;
    v39 = v45;
LABEL_38:

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v18 + v19) & ~v19;
  if (v7 == v16)
  {
    v37 = *(v6 + 48);
    v38 = v7;
    v39 = v44;
    goto LABEL_38;
  }

  v40 = (v25 + ((v36 + v20 + v24) & ~v24)) & 0xFFFFFFFFFFFFFFF8;
  if (v15 > 0x7FFFFFFE)
  {
    v43 = (*(v12 + 48))((v28 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v27);
    if (v43 >= 2)
    {
      return v43 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v41 = *(v40 + 8);
    if (v41 >= 0xFFFFFFFF)
    {
      LODWORD(v41) = -1;
    }

    v42 = v41 - 1;
    if (v42 < 0)
    {
      v42 = -1;
    }

    return (v42 + 1);
  }
}

void sub_21DFFF3C4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a4 + 24) - 8);
  v40 = v6;
  v7 = *(v6 + 84);
  if (v5 <= v7)
  {
    v8 = *(v6 + 84);
  }

  else
  {
    v8 = *(v4 + 84);
  }

  v9 = *(sub_21E13F444() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = 0;
  v12 = *(sub_21E140634() - 8);
  v13 = *(v12 + 84);
  v14 = *(v4 + 80);
  v15 = *(v4 + 64);
  v16 = *(v6 + 80);
  v17 = *(v6 + 64);
  v18 = *(v12 + 80);
  if (v13)
  {
    v19 = v13 - 1;
  }

  else
  {
    v19 = 0;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  if (v8 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v8;
  }

  v21 = *(v9 + 80) & 0xF8 | 7;
  v22 = v18 & 0xF8 | 7;
  v23 = (v18 & 0xF8) + 23;
  if (v13)
  {
    v24 = *(v12 + 64);
  }

  else
  {
    v24 = *(v12 + 64) + 1;
  }

  v25 = (((v24 & 0xFFFFFFFFFFFFFFF8) + 17 + v22 + ((v23 + ((((v10 + 8 + ((v17 + v21 + ((v15 + v16 + ((v14 + 4) & ~v14)) & ~v16)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v22)) & ~v22) + (v24 & 0xFFFFFFFFFFFFFFF8) + 17;
  if (a3 > v20)
  {
    if (v25 <= 3)
    {
      v26 = ((a3 - v20 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
      if (HIWORD(v26))
      {
        v11 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v11 = v27;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v20 >= a2)
  {
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v25] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_44;
      }

      *&a1[v25] = 0;
    }

    else if (v11)
    {
      a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    if (!a2)
    {
      return;
    }

LABEL_44:
    v30 = &a1[v14 + 4] & ~v14;
    if (v5 == v20)
    {
      v31 = *(v4 + 56);
    }

    else
    {
      v30 = (v30 + v15 + v16) & ~v16;
      if (v7 != v20)
      {
        v32 = (v10 + 8 + ((v30 + v17 + v21) & ~v21)) & 0xFFFFFFFFFFFFFFF8;
        if (v20 > 0x7FFFFFFE)
        {
          v33 = ((v23 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v22);
          if (v19 >= a2)
          {
            v36 = *(v12 + 56);

            v36((v23 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v22, a2 + 1);
          }

          else
          {
            v34 = (v24 & 0xFFFFFFF8) + 17;
            v35 = ~v19 + a2;
            bzero(v33, v34);
            if (v34 <= 3)
            {
              *v33 = v35;
            }

            else
            {
              *v33 = v35;
            }
          }
        }

        else
        {
          *(v32 + 8) = a2;
        }

        return;
      }

      v31 = *(v40 + 56);
    }

    v31(v30);
    return;
  }

  v28 = ~v20 + a2;
  if (v25 <= 3)
  {
    v29 = (v28 >> (8 * v25)) + 1;
    bzero(a1, v25);
    *a1 = v28 & ~(-1 << (8 * v25));
    if (v11 > 1)
    {
LABEL_32:
      if (v11 == 2)
      {
        *&a1[v25] = v29;
      }

      else
      {
        *&a1[v25] = v29;
      }

      return;
    }
  }

  else
  {
    bzero(a1, v25);
    *a1 = v28;
    v29 = 1;
    if (v11 > 1)
    {
      goto LABEL_32;
    }
  }

  if (v11)
  {
    a1[v25] = v29;
  }
}

uint64_t sub_21DFFF894@<X0>(char *a1@<X8>)
{
  v41 = a1;
  v1 = sub_21E140584();
  v39 = *(v1 - 8);
  v40 = v1;
  MEMORY[0x28223BE20](v1);
  v38 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v42 = &v33 - v4;
  v37 = sub_21E13F8E4();
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E140564();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA270);
  v35 = *(v12 - 8);
  v13 = v35;
  v36 = v12;
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  sub_21E140574();
  sub_21E13F8D4();
  sub_21E0008C8(&qword_27CEAA278, MEMORY[0x277CDE220]);
  v34 = v18;
  sub_21E140EF4();
  (*(v5 + 8))(v7, v37);
  (*(v9 + 8))(v11, v8);
  v19 = v42;
  sub_21E140594();
  v20 = *(v13 + 16);
  v33 = v15;
  v21 = v18;
  v22 = v36;
  v20(v15, v21, v36);
  v23 = v38;
  v24 = v39;
  v25 = *(v39 + 16);
  v26 = v19;
  v27 = v40;
  v25(v38, v26, v40);
  v28 = v41;
  v20(v41, v15, v22);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA280);
  v25(&v28[*(v29 + 48)], v23, v27);
  v30 = *(v24 + 8);
  v30(v42, v27);
  v31 = *(v35 + 8);
  v31(v34, v22);
  v30(v23, v27);
  return (v31)(v33, v22);
}

uint64_t sub_21DFFFCA8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21E13FFE4();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA268);
  return sub_21DFFF894((a1 + *(v2 + 44)));
}

uint64_t sub_21DFFFD18(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v2[2] = v5;
  v2[3] = v4;
  v2[4] = v6;
  v2[5] = v7;
  v8 = *(type metadata accessor for MorphingContainer() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  v2[6] = v12;
  *v12 = v2;
  v12[1] = sub_21DF95A5C;

  return sub_21DFFE2A4(a1, v10, v11, v1 + v9, v5, v4, v6, v7);
}

uint64_t sub_21DFFFE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_21E0018A8();

  return MEMORY[0x2821309F8](a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_21DFFFEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_21E0018A8();

  return MEMORY[0x282130A00](a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_21DFFFF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sin(*v2 * 3.14159265) * 0.16;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA410);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA418);
  *(a2 + *(result + 36)) = v5;
  return result;
}

double sub_21E000000@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double sub_21E00000C(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t sub_21E000018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_21E13FBC4())
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA3C0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA3C8);
  *(a2 + *(result + 36)) = v4;
  return result;
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 32);
  v13 = *(v0 + 40);
  v2 = type metadata accessor for MorphingContainer();
  v3 = *(*(v2 - 1) + 80);
  swift_unknownObjectRelease();
  v4 = v0 + ((v3 + 64) & ~v3);
  (*(*(v1 - 8) + 8))(v4 + v2[16], v1);
  (*(*(v13 - 8) + 8))(v4 + v2[17]);
  v5 = v2[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21E13F444();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v4 + v2[21];
  v8 = sub_21E140634();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9238);

  v11 = v4 + v2[22];
  if (!v10(v11, 1, v8))
  {
    (*(v9 + 8))(v11, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21E000424(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v2[2] = v5;
  v2[3] = v4;
  v2[4] = v6;
  v2[5] = v7;
  v8 = *(type metadata accessor for MorphingContainer() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  v2[6] = v12;
  *v12 = v2;
  v12[1] = sub_21E0019C4;

  return sub_21DFFD568(a1, v10, v11, v1 + v9, v5, v4, v6, v7);
}

uint64_t sub_21E0005EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13FC94();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E000650(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21E0006F0()
{
  result = qword_27CEAA2A8;
  if (!qword_27CEAA2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA2A8);
  }

  return result;
}

unint64_t sub_21E000758()
{
  result = qword_27CEAA2B8;
  if (!qword_27CEAA2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA2B0);
    sub_21E0007E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA2B8);
  }

  return result;
}

unint64_t sub_21E0007E4()
{
  result = qword_27CEAA2C0;
  if (!qword_27CEAA2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CEAA2C8);
    sub_21DFFCF94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA2C0);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21E0008C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E000938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = *(type metadata accessor for MorphingContainer() - 8);
  return sub_21DFFBCD8(v3 + ((*(v11 + 80) + 48) & ~*(v11 + 80)), v7, v8, v9, v10, a1, a2, a3);
}

uint64_t objectdestroyTm_12()
{
  v1 = *(v0 + 16);
  v12 = *(v0 + 24);
  v2 = type metadata accessor for MorphingContainer();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80));
  (*(*(v1 - 8) + 8))(v3 + v2[16], v1);
  (*(*(v12 - 8) + 8))(v3 + v2[17]);
  v4 = v2[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21E13F444();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v3 + v2[21];
  v7 = sub_21E140634();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9238);

  v10 = v3 + v2[22];
  if (!v9(v10, 1, v7))
  {
    (*(v8 + 8))(v10, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_21E000CCC(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for MorphingContainer() - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_21E000D94()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21E000E0C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xF9)
  {
    v7 = 249;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xF9)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 7)
      {
        return v15 - 6;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *sub_21E000F74(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xF9)
  {
    v7 = 249;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xF9)
      {
        *(result + v8) = a2 + 6;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaterialRecipe(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MaterialRecipe(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21E0012F0()
{
  result = qword_27CEAA360;
  if (!qword_27CEAA360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA360);
  }

  return result;
}

unint64_t sub_21E0013BC()
{
  result = qword_27CEAA380;
  if (!qword_27CEAA380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA378);
    sub_21E001448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA380);
  }

  return result;
}

unint64_t sub_21E001448()
{
  result = qword_27CEAA388;
  if (!qword_27CEAA388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA390);
    sub_21E0014D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA388);
  }

  return result;
}

unint64_t sub_21E0014D4()
{
  result = qword_27CEAA398;
  if (!qword_27CEAA398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA3A0);
    sub_21E001560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA398);
  }

  return result;
}

unint64_t sub_21E001560()
{
  result = qword_27CEAA3A8;
  if (!qword_27CEAA3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA3B0);
    sub_21E0015EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA3A8);
  }

  return result;
}

unint64_t sub_21E0015EC()
{
  result = qword_27CEAA3B8;
  if (!qword_27CEAA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA3B8);
  }

  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AnimatableLuminanceCurveModifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnimatableLuminanceCurveModifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

unint64_t sub_21E0016C0()
{
  result = qword_27CEAA3D0;
  if (!qword_27CEAA3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA3C8);
    sub_21DF23E5C(&qword_27CEAA3D8, &qword_27CEAA3C0);
    sub_21E001778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA3D0);
  }

  return result;
}

unint64_t sub_21E001778()
{
  result = qword_27CEAA3E0;
  if (!qword_27CEAA3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA3E0);
  }

  return result;
}

unint64_t sub_21E001854()
{
  result = qword_27CEAA408;
  if (!qword_27CEAA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA408);
  }

  return result;
}

unint64_t sub_21E0018A8()
{
  result = qword_27CEAA420;
  if (!qword_27CEAA420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA420);
  }

  return result;
}

unint64_t sub_21E0018FC()
{
  result = qword_27CEAA428;
  if (!qword_27CEAA428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA418);
    sub_21DF23E5C(&qword_27CEAA430, &qword_27CEAA410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA428);
  }

  return result;
}

uint64_t static Color.resultContentPlatterColor(for:)()
{
  v0 = sub_21E13F444();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277CDF3D0], v0, v2);
  v5 = sub_21E13F434();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    sub_21E141484();
  }

  else
  {
    _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  }

  v6 = sub_21E141514();

  return v6;
}

uint64_t sub_21E001B24(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_21E1427B4();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D530F0](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_21E001C44(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_21E00E3E8(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_21E001CD4@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21E00E49C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 16 * a1;
    *a2 = *(v9 + 32);
    result = memmove((v9 + 32), (v9 + 48), 16 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

id sub_21E001D60(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_21DF3ED18(0, &qword_280F68C10);
    v4 = sub_21E141FF4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t PillAnalytics.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_21E001EA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__engaged;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_21E001F9C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__engaged;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

uint64_t sub_21E002080(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__engaged;
  result = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
    sub_21E13D3B4();
  }

  return result;
}

void (*sub_21E0021A4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v4[7] = sub_21E001E40();
  return sub_21E0022DC;
}

void (*sub_21E0023C4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v4[7] = sub_21E0022E8();
  return sub_21E0024FC;
}

uint64_t sub_21E00257C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_21E002688()
{
  swift_getKeyPath();
  sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  swift_beginAccess();
}

uint64_t sub_21E002768(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();

  v6 = sub_21E00E4B0(v5, a1);

  if (v6)
  {
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
    sub_21E13D3B4();
  }
}

void (*sub_21E0028B0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v4[7] = sub_21E002508();
  return sub_21E0029E8;
}

uint64_t sub_21E002A54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__index;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_21E002B40()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__index;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_21E002BFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__index;
  result = swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
    sub_21E13D3B4();
  }

  return result;
}

void (*sub_21E002D1C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v4[7] = sub_21E0029F4();
  return sub_21E002E54;
}

uint64_t sub_21E002E60()
{
  swift_getKeyPath();
  sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  return *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__shutterCount);
}

uint64_t sub_21E002F08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  *a2 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__shutterCount);
  return result;
}

uint64_t sub_21E002FB8(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__shutterCount) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
    sub_21E13D3B4();
  }

  return result;
}

void (*sub_21E00319C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v4[7] = sub_21E0030C4();
  return sub_21E0032D4;
}

uint64_t sub_21E003354@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  v6 = *a2;
  swift_beginAccess();
  return sub_21DF236C0(v5 + v6, a3, &qword_27CEAA448);
}

uint64_t sub_21E00346C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  v5 = *a1;
  swift_beginAccess();
  return sub_21DF236C0(v2 + v5, a2, &qword_27CEAA448);
}

uint64_t sub_21E00356C(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = *a2;
  swift_beginAccess();
  sub_21DF236C0(v2 + v8, v7, &qword_27CEAA448);
  LOBYTE(a2) = sub_21E00F4BC(v7, a1);
  sub_21DF23614(v7, &qword_27CEAA448);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v2;
    v11[-1] = a1;
    v11[2] = v2;
    sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
    sub_21E13D3B4();
  }

  else
  {
    sub_21DF236C0(a1, v7, &qword_27CEAA448);
    swift_beginAccess();
    sub_21E00FF48(v7, v2 + v8, &qword_27CEAA448);
    swift_endAccess();
  }

  return sub_21DF23614(a1, &qword_27CEAA448);
}

uint64_t sub_21E003780(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - v10;
  sub_21DF236C0(a2, &v14 - v10, a3);
  v12 = *a5;
  swift_beginAccess();
  sub_21E00FF48(v11, a1 + v12, a3);
  return swift_endAccess();
}

void (*sub_21E003864(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v4[7] = sub_21E0032E0();
  return sub_21E00399C;
}

double sub_21E003A08@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__latencyDuration;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

double sub_21E003AF4()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__latencyDuration;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_21E003BB0(double a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__latencyDuration;
  result = swift_beginAccess();
  if (*(v1 + v3) == a1)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
    sub_21E13D3B4();
  }

  return result;
}

void (*sub_21E003CE4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v4[7] = sub_21E0039A8();
  return sub_21E003E1C;
}

uint64_t sub_21E003E28(uint64_t a1)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_21E13D304();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v33 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  swift_getKeyPath();
  v18 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics___observationRegistrar;
  v43 = v1;
  v19 = sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  v35 = v18;
  v37 = v19;
  sub_21E13D3C4();

  v20 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__startTime;
  swift_beginAccess();
  sub_21DF236C0(&v1[v20], v17, &qword_27CEAA448);
  v38 = *(v4 + 48);
  v21 = v38(v17, 1, v3);
  result = sub_21DF23614(v17, &qword_27CEAA448);
  if (v21 == 1)
  {
    sub_21E13D2F4();
    (*(v4 + 56))(v15, 0, 1, v3);
    sub_21E003174(v15);
    v23 = v39;
    sub_21DF236C0(v40, v39, &qword_27CEAA448);
    v24 = v38;
    if (v38(v23, 1, v3) == 1)
    {
      return sub_21DF23614(v23, &qword_27CEAA448);
    }

    else
    {
      v25 = v3;
      v26 = v36;
      (*(v4 + 32))(v36, v23, v3);
      swift_getKeyPath();
      v42 = v2;
      sub_21E13D3C4();

      v27 = v34;
      sub_21DF236C0(&v2[v20], v34, &qword_27CEAA448);
      if (v24(v27, 1, v25))
      {
        sub_21DF23614(v27, &qword_27CEAA448);
        v28 = 0.0;
      }

      else
      {
        v29 = v33;
        (*(v4 + 16))(v33, v27, v25);
        sub_21DF23614(v27, &qword_27CEAA448);
        sub_21E13D2B4();
        v28 = v30;
        (*(v4 + 8))(v29, v25);
      }

      v31 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__latencyDuration;
      swift_beginAccess();
      if (*&v2[v31] == v28)
      {
        result = (*(v4 + 8))(v26, v25);
        *&v2[v31] = v28;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v33 - 2) = v2;
        *(&v33 - 1) = v28;
        v41 = v2;
        sub_21E13D3B4();

        return (*(v4 + 8))(v26, v25);
      }
    }
  }

  return result;
}

uint64_t sub_21E004360()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  swift_getKeyPath();
  v13 = v0;
  sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  v7 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__endTime;
  swift_beginAccess();
  sub_21DF236C0(v0 + v7, v6, &qword_27CEAA448);
  v8 = sub_21E13D304();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  result = sub_21DF23614(v6, &qword_27CEAA448);
  if (v10 == 1)
  {
    sub_21E13D2F4();
    (*(v9 + 56))(v3, 0, 1, v8);
    return sub_21E003544(v3);
  }

  return result;
}

uint64_t sub_21E004558(char *a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v20 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__index;
  swift_beginAccess();
  if (*&v3[v11] != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v20 - 2) = v3;
    *(&v20 - 1) = a1;
    v21 = v3;
    sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
    sub_21E13D3B4();
  }

  if (*&v3[OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__shutterCount] != a2)
  {
    v13 = swift_getKeyPath();
    MEMORY[0x28223BE20](v13);
    *(&v20 - 2) = v3;
    *(&v20 - 1) = a2;
    v21 = v3;
    sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
    sub_21E13D3B4();
  }

  swift_getKeyPath();
  v21 = v3;
  sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  v14 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__endTime;
  swift_beginAccess();
  sub_21DF236C0(&v3[v14], v10, &qword_27CEAA448);
  v15 = sub_21E13D304();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v10, 1, v15);
  result = sub_21DF23614(v10, &qword_27CEAA448);
  if (v17 == 1)
  {
    v19 = v20;
    sub_21E13D2F4();
    (*(v16 + 56))(v19, 0, 1, v15);
    return sub_21E003544(v19);
  }

  return result;
}

uint64_t sub_21E004924()
{
  swift_getKeyPath();
  v6 = v0;
  sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__suggestionsOffered;
  swift_beginAccess();
  v2 = *(v6 + v1);

  v4 = sub_21E00FDEC(v3, v2);

  return sub_21E002740(v4);
}

uint64_t sub_21E004A14(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_21E0E2A20(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E004B18(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v11 = v2;
  sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__suggestionsEngaged;
  swift_beginAccess();
  v6 = *(v11 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E145380;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v8 = sub_21E00F310(inited);
  swift_setDeallocating();
  sub_21E00FE6C(inited + 32);
  v9 = sub_21E004A14(v8, v6);
  return sub_21E00239C(v9);
}

unint64_t sub_21E004C5C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v71 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v69 - v5;
  v7 = sub_21E13D304();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v70 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v72 = v69 - v11;
  v73 = sub_21DF26AE0(MEMORY[0x277D84F90]);
  swift_getKeyPath();
  v12 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics___observationRegistrar;
  v79 = v0;
  v13 = sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  v14 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__startTime;
  swift_beginAccess();
  sub_21DF236C0(v1 + v14, v6, &qword_27CEAA448);
  v15 = *(v8 + 48);
  v16 = v15(v6, 1, v7);
  v74 = v13;
  if (v16 == 1)
  {
    sub_21DF23614(v6, &qword_27CEAA448);
    v17 = v73;
  }

  else
  {
    v18 = v6;
    v19 = *(v8 + 32);
    v19(v72, v18, v7);
    swift_getKeyPath();
    v78 = v1;
    v69[1] = v12;
    sub_21E13D3C4();

    v20 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__endTime;
    swift_beginAccess();
    v21 = v1 + v20;
    v22 = v71;
    sub_21DF236C0(v21, v71, &qword_27CEAA448);
    if (v15(v22, 1, v7) == 1)
    {
      (*(v8 + 8))(v72, v7);
      sub_21DF23614(v22, &qword_27CEAA448);
      v17 = v73;
    }

    else
    {
      v23 = v70;
      v19(v70, v22, v7);
      v24 = v72;
      sub_21E13D2B4();
      sub_21DF3ED18(0, &qword_27CEAC960);
      v25 = sub_21E1426C4();
      v26 = v73;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = v26;
      sub_21E0E6CE4(v25, 0x6E6F697461727564, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      v17 = v78;
      v28 = *(v8 + 8);
      v28(v23, v7);
      v28(v24, v7);
    }
  }

  swift_getKeyPath();
  v78 = v1;
  sub_21E13D3C4();

  v29 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__latencyDuration;
  swift_beginAccess();
  v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v77 = v17;
  sub_21E0E6CE4(v30, 0xD000000000000010, 0x800000021E15CE60, v31);
  v32 = v77;
  v33 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v34 = sub_21E1420F4();
  v35 = [v33 initWithString_];

  v36 = swift_isUniquelyReferenced_nonNull_native();
  v77 = v32;
  sub_21E0E6CE4(v35, 0x4D65727574616566, 0xEC0000006C65646FLL, v36);
  v37 = v77;
  v38 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v77 = v37;
  sub_21E0E6CE4(v38, 0x79616D554C567369, 0xEA00000000006562, v39);
  v40 = v77;
  swift_getKeyPath();
  v77 = v1;
  sub_21E13D3C4();

  v41 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__engaged;
  swift_beginAccess();
  v42 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v76 = v40;
  sub_21E0E6CE4(v42, 0x61676E456C6C6970, 0xEB00000000646567, v43);
  v44 = v76;
  v45 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v76 = v44;
  sub_21E0E6CE4(v45, 0x776F68536C6C6970, 0xE90000000000006ELL, v46);
  v47 = v76;
  swift_getKeyPath();
  v76 = v1;
  sub_21E13D3C4();

  v48 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__index;
  swift_beginAccess();
  v49 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v47;
  sub_21E0E6CE4(v49, 0x776F68536C6C6970, 0xEE007865646E496ELL, v50);
  v51 = v75;
  sub_21E13D314();
  v52 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v53 = sub_21E1420F4();

  v54 = [v52 initWithString_];

  v55 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v51;
  sub_21E0E6CE4(v54, 0x496E6F6973736573, 0xE900000000000044, v55);
  v56 = v75;
  swift_getKeyPath();
  v75 = v1;
  sub_21E13D3C4();

  v57 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v58 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v56;
  sub_21E0E6CE4(v57, 0xD000000000000012, 0x800000021E15CE80, v58);
  v59 = v75;
  v60 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v59;
  sub_21E0E6CE4(v60, 0x5372657474756873, 0xED00007375746174, v61);
  v62 = v75;
  v63 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v62;
  sub_21E0E6CE4(v63, 0xD000000000000014, 0x800000021E15CEA0, v64);
  v65 = v75;
  v66 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v65;
  sub_21E0E6CE4(v66, 0xD000000000000014, 0x800000021E15CEC0, v67);
  return v75;
}

void sub_21E005610()
{
  v0 = sub_21E13F1B4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = sub_21E004C5C();
  if (*(v7 + 16))
  {
    sub_21E13EC34();

    v8 = sub_21E13F1A4();
    v9 = sub_21E142554();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v23 = v0;
      v11 = v10;
      v12 = swift_slowAlloc();
      aBlock[0] = v12;
      *v11 = 136315138;
      sub_21DF3ED18(0, &qword_280F68C10);
      v13 = sub_21E142004();
      v15 = sub_21E0E08C0(v13, v14, aBlock);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_21DF05000, v8, v9, "PillAnalytics: publishing %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x223D540B0](v12, -1, -1);
      MEMORY[0x223D540B0](v11, -1, -1);

      (*(v1 + 8))(v6, v23);
    }

    else
    {

      (*(v1 + 8))(v6, v0);
    }

    v19 = sub_21E1420F4();
    v20 = swift_allocObject();
    *(v20 + 16) = v7;
    aBlock[4] = sub_21E00FEC0;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21E001D60;
    aBlock[3] = &block_descriptor_5;
    v21 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v21);
  }

  else
  {

    sub_21E13EC34();
    v16 = sub_21E13F1A4();
    v17 = sub_21E142564();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21DF05000, v16, v17, "PillAnalytics: No event map to publish.", v18, 2u);
      MEMORY[0x223D540B0](v18, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
  }
}

BOOL sub_21E005980()
{
  if ((sub_21E0BE3B8(*(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_pillShown), *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_actionsWithSuggestionTracking)) & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__engaged;
  swift_beginAccess();
  return *(v0 + v1) == 2;
}

unint64_t sub_21E005A6C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21E010D68(*a1);
  *a2 = result;
  return result;
}

VisualIntelligenceUI::PillAnalytics::PillAction_optional __swiftcall PillAnalytics.PillAction.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t PillAnalytics.deinit()
{

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_sessionID;
  v2 = sub_21E13D344();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_entryPoint;
  v4 = sub_21E13D834();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__startTime, &qword_27CEAA448);
  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__endTime, &qword_27CEAA448);
  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics___observationRegistrar;
  v6 = sub_21E13D404();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t PillAnalytics.__deallocating_deinit()
{
  PillAnalytics.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21E005C88@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__entryPoint;
  swift_beginAccess();
  v4 = sub_21E13D834();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_21E005D80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__entryPoint;
  swift_beginAccess();
  v5 = sub_21E13D834();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21E005E78(uint64_t a1)
{
  v2 = sub_21E13D834();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_21E005F44(v5);
}

uint64_t sub_21E005F44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E13D834();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__entryPoint;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_21E00FEE0(&qword_280F690E0, MEMORY[0x277D78DD0]);
  v14[0] = a1;
  LOBYTE(a1) = sub_21E142074();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
    sub_21E13D3B4();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_21E0061E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13D834();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__entryPoint;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

uint64_t sub_21E006300()
{
  swift_getKeyPath();
  sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  sub_21E13D3C4();

  swift_beginAccess();
}

uint64_t sub_21E0063C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__pillAnalytics;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21E006488()
{
  swift_getKeyPath();
  sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  sub_21E13D3B4();
}

uint64_t sub_21E0065B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastHeroPill;
  swift_beginAccess();
  return sub_21DF236C0(v3 + v4, a2, &qword_27CEA6D48);
}

uint64_t sub_21E0066B4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastHeroPill;
  swift_beginAccess();
  return sub_21DF236C0(v5 + v3, a1, &qword_27CEA6D48);
}

uint64_t sub_21E0067B4(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = *a2;
  swift_beginAccess();
  sub_21DF236C0(v2 + v8, v7, &qword_27CEA6D48);
  LOBYTE(a2) = sub_21E00F85C(v7, a1);
  sub_21DF23614(v7, &qword_27CEA6D48);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v2;
    v11[-1] = a1;
    v11[2] = v2;
    sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
    sub_21E13D3B4();
  }

  else
  {
    sub_21DF236C0(a1, v7, &qword_27CEA6D48);
    swift_beginAccess();
    sub_21E00FF48(v7, v2 + v8, &qword_27CEA6D48);
    swift_endAccess();
  }

  return sub_21DF23614(a1, &qword_27CEA6D48);
}

void (*sub_21E0069C8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v4[7] = sub_21E006554();
  return sub_21E006B00;
}

void sub_21E006B0C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_21E13D3D4();

  free(v1);
}

uint64_t sub_21E006BA0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastEngagedPill;
  swift_beginAccess();
  return sub_21DF236C0(v5 + v3, a1, &qword_27CEA6D48);
}

uint64_t sub_21E006C78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastEngagedPill;
  swift_beginAccess();
  return sub_21DF236C0(v3 + v4, a2, &qword_27CEA6D48);
}

uint64_t sub_21E006D78@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastPillQueryTime;
  swift_beginAccess();
  return sub_21DF236C0(v5 + v3, a1, &qword_27CEAA448);
}

uint64_t sub_21E006E50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastPillQueryTime;
  swift_beginAccess();
  return sub_21DF236C0(v3 + v4, a2, &qword_27CEAA448);
}

uint64_t sub_21E006F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v14 - v11;
  sub_21DF236C0(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t sub_21E006FD4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastPillQueryTime;
  swift_beginAccess();
  sub_21DF236C0(v1 + v6, v5, &qword_27CEAA448);
  v7 = sub_21E00F4BC(v5, a1);
  sub_21DF23614(v5, &qword_27CEAA448);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
    sub_21E13D3B4();
  }

  else
  {
    sub_21DF236C0(a1, v5, &qword_27CEAA448);
    swift_beginAccess();
    sub_21E00FF48(v5, v1 + v6, &qword_27CEAA448);
    swift_endAccess();
  }

  return sub_21DF23614(a1, &qword_27CEAA448);
}

uint64_t PillAnalyticsManager.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__entryPoint;
  v2 = *MEMORY[0x277D78DC0];
  v3 = sub_21E13D834();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__pillAnalytics) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastHeroPill;
  v5 = sub_21E13EEE4();
  v6 = *(*(v5 - 8) + 56);
  v6(v0 + v4, 1, 1, v5);
  v6(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastEngagedPill, 1, 1, v5);
  v7 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastPillQueryTime;
  v8 = sub_21E13D304();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  sub_21E13D3F4();
  return v0;
}

uint64_t PillAnalyticsManager.init()()
{
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__entryPoint;
  v2 = *MEMORY[0x277D78DC0];
  v3 = sub_21E13D834();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__pillAnalytics) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastHeroPill;
  v5 = sub_21E13EEE4();
  v6 = *(*(v5 - 8) + 56);
  v6(v0 + v4, 1, 1, v5);
  v6(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastEngagedPill, 1, 1, v5);
  v7 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastPillQueryTime;
  v8 = sub_21E13D304();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  sub_21E13D3F4();
  return v0;
}

uint64_t sub_21E0074A8(uint64_t a1, char *a2, _BYTE *a3, char *a4, int a5, int a6)
{
  v54 = a6;
  LODWORD(v52) = a5;
  v51 = a4;
  v50 = a2;
  v53 = sub_21E13D304();
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  v16 = *a3;
  if (v16 <= 1 && *a3)
  {
    goto LABEL_7;
  }

  v17 = sub_21E142B14();

  if (v17)
  {
    goto LABEL_8;
  }

  if (v16 > 2)
  {
LABEL_7:
  }

  else
  {
    v18 = sub_21E142B14();

    if ((v18 & 1) == 0)
    {
      return result;
    }
  }

LABEL_8:
  swift_getKeyPath();
  v20 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager___observationRegistrar;
  v21 = v57;
  v60 = v57;
  v22 = sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  v56 = v20;
  sub_21E13D3C4();

  v23 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__pillAnalytics;
  v24 = swift_beginAccess();
  v25 = *(v21 + v23);
  MEMORY[0x28223BE20](v24);
  *(&v47 - 2) = a1;

  v26 = sub_21E001B24(sub_21DF5F770, (&v47 - 4), v25);
  LOBYTE(v21) = v27;

  if (v21)
  {
    return result;
  }

  v49 = 0;
  swift_getKeyPath();
  v28 = v57;
  v59 = v57;
  sub_21E13D3C4();

  v29 = *(v28 + v23);
  v48 = v23;
  if ((v29 & 0xC000000000000001) == 0)
  {
    v30 = v55;
    if ((v26 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v26 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v31 = *(v29 + 8 * v26 + 32);

      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_31;
  }

  v31 = MEMORY[0x223D530F0](v26, v29);

  v30 = v55;
LABEL_13:
  sub_21E004558(v50, v51);
  swift_getKeyPath();
  v32 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics___observationRegistrar;
  v59 = v31;
  v33 = sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  v55 = v32;
  v51 = v33;
  sub_21E13D3C4();

  v34 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__endTime;
  swift_beginAccess();
  sub_21DF236C0(v31 + v34, v15, &qword_27CEAA448);
  v35 = v53;
  LODWORD(v34) = (*(v30 + 48))(v15, 1, v53);
  sub_21DF23614(v15, &qword_27CEAA448);
  if (v34 == 1)
  {
    sub_21E13D2F4();
    (*(v30 + 56))(v12, 0, 1, v35);
    sub_21E003544(v12);
  }

  if ((v52 & 1) == 0)
  {
    sub_21E13D2F4();
    v36 = *(v30 + 16);
    v36(v12, v9, v35);
    v52 = v22;
    v37 = *(v30 + 56);
    v37(v12, 0, 1, v35);
    sub_21E003174(v12);
    v36(v12, v9, v35);
    v37(v12, 0, 1, v35);
    sub_21E003544(v12);
    (*(v30 + 8))(v9, v35);
  }

  if ((v54 & 1) == 0)
  {
    v38 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__latencyDuration;
    swift_beginAccess();
    if (*(v31 + v38) == 0.0)
    {
      *(v31 + v38) = 0;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v47 - 2) = v31;
      *(&v47 - 1) = 0;
      v58 = v31;
      v40 = v49;
      sub_21E13D3B4();
      v49 = v40;
    }
  }

  if (sub_21E0BE3B8(*(v31 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_pillShown), *(v31 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_actionsWithSuggestionTracking)))
  {
    swift_getKeyPath();
    v58 = v31;
    sub_21E13D3C4();

    v41 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__engaged;
    swift_beginAccess();
    if (*(v31 + v41) == 2)
    {
    }
  }

  sub_21E005610();
  swift_getKeyPath();
  v42 = v57;
  v58 = v57;

  sub_21E13D3C4();

  v58 = v42;
  swift_getKeyPath();
  sub_21E13D3E4();

  v43 = v48;
  swift_beginAccess();
  v30 = sub_21E00FB7C((v42 + v43), v31);

  v44 = *(v42 + v43);
  if (v44 >> 62)
  {
LABEL_31:
    result = sub_21E1427B4();
    v45 = result;
    if (result >= v30)
    {
      goto LABEL_25;
    }

LABEL_32:
    __break(1u);
    return result;
  }

  v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v45 < v30)
  {
    goto LABEL_32;
  }

LABEL_25:
  v46 = v57;
  sub_21DF60224(v30, v45);
  swift_endAccess();
  v58 = v46;
  swift_getKeyPath();
  sub_21E13D3D4();
}

uint64_t sub_21E007D9C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, char *a5)
{
  v6 = v5;
  v129 = a5;
  v130 = a3;
  v131 = a2;
  v119 = sub_21E13D934();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_21E13E1A4();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v122 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E13D384();
  MEMORY[0x28223BE20](v11 - 8);
  v121 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21E1420E4();
  MEMORY[0x28223BE20](v13 - 8);
  v120 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v15 - 8);
  v138 = &v109 - v16;
  v139 = sub_21E13D834();
  v137 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v135 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_21E13D344();
  v134 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v133 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21E13EEE4();
  v132 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v141 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v109 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v109 - v25;
  v128 = sub_21E13F1B4();
  v127 = *(v128 - 1);
  MEMORY[0x28223BE20](v128);
  v28 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a4;
  if (v29 > 1 || *a4)
  {
    v30 = sub_21E142B14();

    if ((v30 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
  }

  swift_getKeyPath();
  v32 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager___observationRegistrar;
  v147[4] = v6;
  v33 = sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  v126 = v32;
  v125 = v33;
  sub_21E13D3C4();

  v34 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__pillAnalytics;
  v35 = swift_beginAccess();
  v116 = v34;
  v36 = *(v6 + v34);
  MEMORY[0x28223BE20](v35);
  *(&v109 - 2) = a1;

  v140 = v19;
  sub_21E001B24(sub_21E010F3C, (&v109 - 4), v36);
  v37 = v140;
  LOBYTE(v32) = v38;

  if ((v32 & 1) == 0)
  {
    return result;
  }

  sub_21E13EC34();
  v39 = v132;
  v40 = *(v132 + 16);
  v40(v26, a1, v37);
  v114 = v40;
  v40(v24, a1, v37);
  v41 = sub_21E13F1A4();
  v113 = sub_21E142554();
  v42 = os_log_type_enabled(v41, v113);
  v115 = a1;
  if (v42)
  {
    v112 = v41;
    v43 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v147[0] = v111;
    *v43 = 136315650;
    ActionPin.Pill.analyticsAction()();
    v44 = ActionAnalytics.ActionType.rawValue.getter();
    v45 = v39;
    v47 = v46;
    v110 = *(v45 + 8);
    v110(v26, v37);
    v48 = sub_21E0E08C0(v44, v47, v147);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2080;
    v49 = 0xE800000000000000;
    v50 = 0x800000021E15AFD0;
    v51 = 0x72676B6361426E6FLL;
    if (v29 == 2)
    {
      v51 = 0xD00000000000001ALL;
    }

    else
    {
      v50 = 0xEC000000646E756FLL;
    }

    v52 = 0x7070617369446E6FLL;
    if (v29)
    {
      v49 = 0xEB00000000726165;
    }

    else
    {
      v52 = 0x7261657070416E6FLL;
    }

    if (v29 <= 1)
    {
      v53 = v52;
    }

    else
    {
      v53 = v51;
    }

    if (v29 <= 1)
    {
      v54 = v49;
    }

    else
    {
      v54 = v50;
    }

    v55 = sub_21E0E08C0(v53, v54, v147);

    *(v43 + 14) = v55;
    *(v43 + 22) = 2080;
    v56 = sub_21E13EE54();
    v58 = v57;
    v59 = v24;
    v60 = v140;
    v110(v59, v140);
    v61 = sub_21E0E08C0(v56, v58, v147);

    *(v43 + 24) = v61;
    v62 = v112;
    _os_log_impl(&dword_21DF05000, v112, v113, "SessionAnalytics: pill %s did appear for reason %s (%s)", v43, 0x20u);
    v63 = v111;
    swift_arrayDestroy();
    MEMORY[0x223D540B0](v63, -1, -1);
    MEMORY[0x223D540B0](v43, -1, -1);

    (*(v127 + 8))(v28, v128);
    a1 = v115;
    v37 = v60;
  }

  else
  {

    v64 = *(v39 + 8);
    v64(v24, v37);
    v64(v26, v37);
    (*(v127 + 8))(v28, v128);
  }

  v114(v141, a1, v37);
  v65 = *(v134 + 16);
  v66 = v129;
  v129 = (v134 + 16);
  v128 = v65;
  v65(v133, v66, v136);
  swift_getKeyPath();
  v147[0] = v6;
  sub_21E13D3C4();

  v67 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__entryPoint;
  swift_beginAccess();
  v127 = *(v137 + 16);
  (v127)(v135, v6 + v67, v139);
  LOBYTE(v67) = sub_21DFE49CC();
  swift_getKeyPath();
  v146 = v6;
  sub_21E13D3C4();

  v68 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastPillQueryTime;
  swift_beginAccess();
  sub_21DF236C0(v6 + v68, v138, &qword_27CEAA448);
  type metadata accessor for PillAnalytics(0);
  v69 = swift_allocObject();
  v69[4] = 0xD00000000000002CLL;
  v69[5] = 0x800000021E15CC60;
  *(v69 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__engaged) = 1;
  v70 = MEMORY[0x277D84FA0];
  *(v69 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__suggestionsEngaged) = MEMORY[0x277D84FA0];
  *(v69 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__suggestionsOffered) = v70;
  *(v69 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__shutterCount) = 0;
  v71 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_actionsWithSuggestionTracking;
  *(v69 + v71) = sub_21E0E7F54(&unk_282F3BBB0);
  v72 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__startTime;
  v73 = sub_21E13D304();
  v74 = *(*(v73 - 8) + 56);
  v74(v69 + v72, 1, 1, v73);
  v74(v69 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__endTime, 1, 1, v73);
  *(v69 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__latencyDuration) = 0;
  sub_21E13D3F4();
  v75 = sub_21E13D804();
  v76 = v75;
  if (v67)
  {
    v77 = 1;
  }

  else
  {
    v77 = 2;
  }

  if (v75)
  {
    v77 = 3;
  }

  LODWORD(v130) = v77;
  ActionPin.Pill.analyticsAction()();
  if (ActionAnalytics.ActionType.rawValue.getter() == 0x6F4C6C6175736956 && v78 == 0xEC00000070756B6FLL)
  {
  }

  else
  {
    v79 = sub_21E142B14();

    if ((v79 & 1) == 0)
    {
      v86 = v76 & 1;
      goto LABEL_34;
    }
  }

  sub_21E142084();
  sub_21E13D374();
  v80 = sub_21E142184();
  v82 = v81;
  sub_21E13EE34();
  v83 = sub_21E1421B4();
  v85 = v84;

  v144 = v83;
  v145 = v85;
  v142 = v80;
  v143 = v82;
  sub_21DF252E0();
  LOBYTE(v80) = sub_21E142744();

  if (v80)
  {
    v86 = 3;
  }

  else
  {
    v86 = 2;
  }

LABEL_34:
  LODWORD(v121) = v86;
  ActionPin.Pill.analyticsAction()();
  if (ActionAnalytics.ActionType.rawValue.getter() == 0x6165536567616D49 && v87 == 0xEB00000000686372)
  {

LABEL_38:
    v89 = v122;
    sub_21E13E154();
    v90 = sub_21E13E164();
    v92 = v91;
    (*(v123 + 8))(v89, v124);
    goto LABEL_39;
  }

  v88 = sub_21E142B14();

  if (v88)
  {
    goto LABEL_38;
  }

  ActionPin.Pill.analyticsAction()();
  if (ActionAnalytics.ActionType.rawValue.getter() == 7041857 && v105 == 0xE300000000000000)
  {
  }

  else
  {
    v106 = sub_21E142B14();

    if ((v106 & 1) == 0)
    {
      v90 = 0;
      v92 = 0xE000000000000000;
      goto LABEL_39;
    }
  }

  v107 = v117;
  sub_21E13D924();
  v90 = sub_21E13D914();
  v92 = v108;
  (*(v118 + 8))(v107, v119);
LABEL_39:
  v93 = v133;
  v94 = v136;
  v128(v69 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_sessionID, v133, v136);
  v95 = v135;
  v96 = v139;
  (v127)(v69 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_entryPoint, v135, v139);
  *(v69 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_shutterStatus) = v130;
  v97 = v141;
  ActionPin.Pill.analyticsAction()();
  *(v69 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_pillShown) = v144;
  v98 = (v69 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_featureModel);
  *v98 = v90;
  v98[1] = v92;
  *(v69 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_isVLUMaybe) = v121;
  v69[2] = sub_21E13EE54();
  v69[3] = v99;
  *(v69 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__index) = v131;
  v100 = v138;
  sub_21E003E28(v138);
  sub_21DF23614(v100, &qword_27CEAA448);
  (*(v137 + 8))(v95, v96);
  (*(v134 + 8))(v93, v94);
  (*(v132 + 8))(v97, v140);
  swift_getKeyPath();
  v144 = v6;
  sub_21E13D3C4();

  v144 = v6;
  swift_getKeyPath();
  sub_21E13D3E4();

  v101 = v116;
  v102 = swift_beginAccess();
  MEMORY[0x223D52AF0](v102);
  if (*((*(v6 + v101) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + v101) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21E1422F4();
  }

  sub_21E142324();
  swift_endAccess();
  v144 = v6;
  swift_getKeyPath();
  sub_21E13D3D4();

  ActionPin.Pill.analyticsAction()();
  if (ActionAnalytics.ActionType.rawValue.getter() == 0x6F4C6C6175736956 && v103 == 0xEC00000070756B6FLL)
  {
  }

  else
  {
    v104 = sub_21E142B14();

    if ((v104 & 1) == 0)
    {
      return result;
    }
  }

  sub_21E13E674();
  sub_21E13E664();
  sub_21E13EE54();
  sub_21E13E624();
}

uint64_t sub_21E008F8C(uint64_t a1, uint64_t a2, char *a3, char a4, char *a5)
{
  v6 = v5;
  v56 = a5;
  v11 = sub_21E13D304();
  v58 = *(v11 - 8);
  v59 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v14 - 8);
  v60 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v50 - v17;
  LOBYTE(v63[0]) = 0;
  sub_21E007D9C(a1, 0, a2, v63, a3);
  if (a4)
  {
    sub_21E00A99C(a1);
  }

  swift_getKeyPath();
  v18 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager___observationRegistrar;
  v63[0] = v6;
  v19 = sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  sub_21E13D3C4();

  v20 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__pillAnalytics;
  v21 = swift_beginAccess();
  v22 = *(v6 + v20);
  MEMORY[0x28223BE20](v21);
  *(&v50 - 2) = a1;

  v23 = 0;
  v24 = sub_21E001B24(sub_21E010F3C, (&v50 - 4), v22);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
    swift_getKeyPath();
    v62 = v6;
    v55 = v19;
    sub_21E13D3C4();

    v28 = *(v6 + v20);
    v51 = v20;
    if ((v28 & 0xC000000000000001) == 0)
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v24 < *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v29 = *(v28 + 8 * v24 + 32);

        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_23;
    }

    v29 = MEMORY[0x223D530F0](v24, v28);

LABEL_8:
    v53 = v6;
    v54 = v18;
    sub_21E004558(0, v56);
    swift_getKeyPath();
    v30 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics___observationRegistrar;
    v62 = v29;
    v31 = sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
    v56 = v30;
    v52 = v31;
    sub_21E13D3C4();

    v32 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__endTime;
    swift_beginAccess();
    v33 = v57;
    sub_21DF236C0(v29 + v32, v57, &qword_27CEAA448);
    v35 = v58;
    v34 = v59;
    LODWORD(v32) = (*(v58 + 48))(v33, 1, v59);
    sub_21DF23614(v33, &qword_27CEAA448);
    if (v32 == 1)
    {
      v36 = v60;
      sub_21E13D2F4();
      (*(v35 + 56))(v36, 0, 1, v34);
      sub_21E003544(v36);
    }

    sub_21E13D2F4();
    v37 = *(v35 + 16);
    v38 = v29;
    v39 = v60;
    v37(v60, v13, v34);
    v40 = v13;
    v41 = *(v35 + 56);
    v41(v39, 0, 1, v34);
    sub_21E003174(v39);
    v37(v39, v40, v34);
    v41(v39, 0, 1, v34);
    v42 = v39;
    v43 = v38;
    sub_21E003544(v42);
    (*(v35 + 8))(v40, v34);
    v44 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__latencyDuration;
    swift_beginAccess();
    if (*(v43 + v44) == 0.0)
    {
      *(v43 + v44) = 0;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v50 - 2) = v43;
      *(&v50 - 1) = 0;
      v61 = v43;
      sub_21E13D3B4();
    }

    v6 = v53;
    if (sub_21E0BE3B8(*(v43 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_pillShown), *(v43 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_actionsWithSuggestionTracking)))
    {
      swift_getKeyPath();
      v61 = v43;
      sub_21E13D3C4();

      v46 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__engaged;
      swift_beginAccess();
      if (*(v43 + v46) == 2)
      {
      }
    }

    sub_21E005610();
    swift_getKeyPath();
    v61 = v6;

    sub_21E13D3C4();

    v61 = v6;
    swift_getKeyPath();
    sub_21E13D3E4();

    v47 = v51;
    swift_beginAccess();
    v23 = sub_21E00FB7C((v6 + v47), v43);

    v48 = *(v6 + v47);
    if (!(v48 >> 62))
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v49 >= v23)
      {
LABEL_17:
        sub_21DF60224(v23, v49);
        swift_endAccess();
        v61 = v6;
        swift_getKeyPath();
        sub_21E13D3D4();
      }

LABEL_24:
      __break(1u);
      return result;
    }

LABEL_23:
    result = sub_21E1427B4();
    v49 = result;
    if (result >= v23)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  return result;
}

uint64_t sub_21E009724(uint64_t a1, char *a2)
{
  v3 = v2;
  v55 = a2;
  v61 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76B0);
  MEMORY[0x28223BE20](v56);
  v58 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v5 - 8);
  v60 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v54 = &v46 - v8;
  MEMORY[0x28223BE20](v9);
  v57 = &v46 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = sub_21E13EEE4();
  v62 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v53 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v59 = &v46 - v17;
  v18 = sub_21E13D834();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v66 = v2;
  sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  sub_21E13D3C4();

  v22 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__entryPoint;
  swift_beginAccess();
  (*(v19 + 16))(v21, v3 + v22, v18);
  LOBYTE(v22) = sub_21E13D7F4();
  result = (*(v19 + 8))(v21, v18);
  if (v22)
  {
    v24 = v61;
    if (!v61)
    {
LABEL_5:
      v27 = v60;
      (*(v62 + 56))(v60, 1, 1, v14);
      return sub_21E00678C(v27);
    }

    swift_getKeyPath();
    v65 = v24;
    sub_21E00FEE0(&qword_280F6B830, type metadata accessor for NewActionModel);

    sub_21E13D3C4();

    v25 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
    swift_beginAccess();
    sub_21DF236C0(v24 + v25, v13, &qword_27CEA6D48);
    v26 = v62;
    v52 = *(v62 + 48);
    if (v52(v13, 1, v14) == 1)
    {

      sub_21DF23614(v13, &qword_27CEA6D48);
      goto LABEL_5;
    }

    v28 = v26[4];
    v29 = v59;
    v48 = v26 + 4;
    v47 = v28;
    v28(v59, v13, v14);
    swift_getKeyPath();
    v64 = v3;
    sub_21E13D3C4();

    v30 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastHeroPill;
    swift_beginAccess();
    v31 = v26[2];
    v32 = v57;
    v51 = v26 + 2;
    v50 = v31;
    v31(v57, v29, v14);
    v49 = v26[7];
    v49(v32, 0, 1, v14);
    v33 = *(v56 + 48);
    v34 = v58;
    sub_21DF236C0(v3 + v30, v58, &qword_27CEA6D48);
    sub_21DF236C0(v32, v34 + v33, &qword_27CEA6D48);
    v35 = v52;
    if (v52(v34, 1, v14) == 1)
    {
      sub_21DF23614(v32, &qword_27CEA6D48);
      v36 = v35(v34 + v33, 1, v14);
      v37 = v62;
      if (v36 == 1)
      {

        sub_21DF23614(v34, &qword_27CEA6D48);
        return (*(v37 + 8))(v59, v14);
      }

      goto LABEL_11;
    }

    v38 = v54;
    sub_21DF236C0(v34, v54, &qword_27CEA6D48);
    if (v35(v34 + v33, 1, v14) == 1)
    {
      sub_21DF23614(v32, &qword_27CEA6D48);
      v37 = v62;
      (*(v62 + 8))(v38, v14);
LABEL_11:
      sub_21DF23614(v34, &qword_27CEA76B0);
      v39 = v61;
LABEL_12:
      v63 = 0;
      v40 = v59;
      sub_21E007D9C(v59, 0, v39, &v63, v55);
      v41 = v60;
      v50(v60, v40, v14);
      v49(v41, 0, 1, v14);
      sub_21E00678C(v41);

      return (*(v37 + 8))(v40, v14);
    }

    v42 = v53;
    v47(v53, v34 + v33, v14);
    sub_21E00FEE0(&qword_280F69080, MEMORY[0x277D79698]);
    v43 = v38;
    LODWORD(v56) = sub_21E142074();
    v44 = v32;
    v37 = v62;
    v45 = *(v62 + 8);
    v45(v42, v14);
    sub_21DF23614(v44, &qword_27CEA6D48);
    v45(v43, v14);
    sub_21DF23614(v34, &qword_27CEA6D48);
    v39 = v61;
    if ((v56 & 1) == 0)
    {
      goto LABEL_12;
    }

    return (v45)(v59, v14);
  }

  return result;
}

uint64_t sub_21E009FB4(char *a1)
{
  v2 = v1;
  v56 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v55 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v57 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v58 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - v10;
  v12 = sub_21E13EEE4();
  v60 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v59 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21E13D834();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v18 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager___observationRegistrar;
  v65 = v1;
  v19 = sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  sub_21E13D3C4();
  v20 = v1;

  v21 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__entryPoint;
  swift_beginAccess();
  (*(v15 + 16))(v17, v20 + v21, v14);
  LOBYTE(v21) = sub_21E13D7F4();
  result = (*(v15 + 8))(v17, v14);
  if (v21)
  {
    swift_getKeyPath();
    v64 = v2;
    sub_21E13D3C4();

    v23 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastHeroPill;
    swift_beginAccess();
    sub_21DF236C0(v2 + v23, v11, &qword_27CEA6D48);
    v24 = v60;
    if ((*(v60 + 48))(v11, 1, v12) == 1)
    {
      return sub_21DF23614(v11, &qword_27CEA6D48);
    }

    v25 = v59;
    (*(v24 + 32))(v59, v11, v12);
    swift_getKeyPath();
    v63 = v20;
    sub_21E13D3C4();

    v26 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__pillAnalytics;
    v27 = swift_beginAccess();
    v54 = v18;
    v53 = v19;
    v28 = *(v20 + v26);
    MEMORY[0x28223BE20](v27);
    *(&v50 - 2) = v25;

    v29 = 0;
    v30 = sub_21E001B24(sub_21E010F3C, (&v50 - 4), v28);
    v31 = v20;
    v33 = v32;
    v52 = 0;

    if (v33)
    {
      goto LABEL_20;
    }

    swift_getKeyPath();
    v62 = v31;
    sub_21E13D3C4();

    v50 = v26;
    v34 = *(v31 + v26);
    v51 = v31;
    if ((v34 & 0xC000000000000001) == 0)
    {
      if ((v30 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v30 < *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v35 = *(v34 + 8 * v30 + 32);

        goto LABEL_9;
      }

      __break(1u);
      goto LABEL_25;
    }

    v35 = MEMORY[0x223D530F0](v30, v34);

LABEL_9:
    sub_21E004558(0, v56);
    swift_getKeyPath();
    v62 = v35;
    sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
    sub_21E13D3C4();

    v36 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__endTime;
    swift_beginAccess();
    v37 = v57;
    sub_21DF236C0(v35 + v36, v57, &qword_27CEAA448);
    v38 = sub_21E13D304();
    v39 = *(v38 - 8);
    v40 = (*(v39 + 48))(v37, 1, v38);
    sub_21DF23614(v37, &qword_27CEAA448);
    if (v40 == 1)
    {
      v41 = v55;
      sub_21E13D2F4();
      (*(v39 + 56))(v41, 0, 1, v38);
      sub_21E003544(v41);
    }

    v42 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__latencyDuration;
    swift_beginAccess();
    if (*(v35 + v42) == 0.0)
    {
      *(v35 + v42) = 0;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v50 - 2) = v35;
      *(&v50 - 1) = 0;
      v61 = v35;
      sub_21E13D3B4();
    }

    if (sub_21E0BE3B8(*(v35 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_pillShown), *(v35 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_actionsWithSuggestionTracking)))
    {
      swift_getKeyPath();
      v61 = v35;
      sub_21E13D3C4();

      v44 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__engaged;
      swift_beginAccess();
      if (*(v35 + v44) == 2)
      {

        v24 = v60;
        v25 = v59;
LABEL_20:
        v49 = v58;
        (*(v24 + 56))(v58, 1, 1, v12);
        sub_21E00678C(v49);
        return (*(v24 + 8))(v25, v12);
      }
    }

    sub_21E005610();
    swift_getKeyPath();
    v45 = v51;
    v61 = v51;

    sub_21E13D3C4();

    v61 = v45;
    swift_getKeyPath();
    sub_21E13D3E4();

    v46 = v50;
    swift_beginAccess();
    v29 = sub_21E00FB7C((v45 + v46), v35);

    v31 = v45;
    v47 = *(v45 + v46);
    if (!(v47 >> 62))
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v48 >= v29)
      {
LABEL_19:
        sub_21DF60224(v29, v48);
        swift_endAccess();
        v61 = v31;
        swift_getKeyPath();
        sub_21E13D3D4();

        v24 = v60;
        v25 = v59;
        goto LABEL_20;
      }

LABEL_26:
      __break(1u);
      return result;
    }

LABEL_25:
    result = sub_21E1427B4();
    v48 = result;
    if (result >= v29)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

  return result;
}

uint64_t sub_21E00A99C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E13EEE4();
  v49 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76B0);
  MEMORY[0x28223BE20](v45);
  v46 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = &v39 - v10;
  MEMORY[0x28223BE20](v11);
  v48 = &v39 - v12;
  swift_getKeyPath();
  v55 = v1;
  sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  sub_21E13D3C4();

  v13 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__pillAnalytics;
  swift_beginAccess();
  v14 = *(v1 + v13);
  v50 = a1;
  v52 = a1;

  v15 = sub_21E001B24(sub_21E010F3C, v51, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    swift_getKeyPath();
    v54 = v2;
    sub_21E13D3C4();

    v19 = *(v2 + v13);
    if ((v19 & 0xC000000000000001) != 0)
    {

      v20 = MEMORY[0x223D530F0](v15, v19);
    }

    else
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (v15 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v20 = *(v19 + 8 * v15 + 32);
    }

    v21 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__engaged;
    swift_beginAccess();
    if (*(v20 + v21) != 2)
    {
      KeyPath = swift_getKeyPath();
      v42 = &v39;
      MEMORY[0x28223BE20](KeyPath);
      v41 = 0;
      *(&v39 - 2) = v20;
      *(&v39 - 8) = 2;
      v53 = v20;
      sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
      sub_21E13D3B4();
    }

    swift_getKeyPath();
    v53 = v2;

    sub_21E13D3C4();

    v53 = v2;
    swift_getKeyPath();
    sub_21E13D3E4();

    swift_beginAccess();
    v23 = *(v2 + v13);
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(v2 + v13) = v23;
    if (!result || (v23 & 0x8000000000000000) != 0 || (v23 & 0x4000000000000000) != 0)
    {
      result = sub_21E00E3E8(v23);
      v23 = result;
      *(v2 + v13) = result;
    }

    if ((v15 & 0x8000000000000000) == 0)
    {
      if (v15 < *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v42 = v20;
        *((v23 & 0xFFFFFFFFFFFFFF8) + 8 * v15 + 0x20) = v20;
        *(v2 + v13) = v23;
        swift_endAccess();

        v53 = v2;
        swift_getKeyPath();
        sub_21E13D3D4();

        swift_getKeyPath();
        v53 = v2;
        sub_21E13D3C4();

        v24 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastEngagedPill;
        swift_beginAccess();
        v26 = v48;
        v25 = v49;
        v41 = *(v49 + 16);
        v41(v48, v50, v4);
        v40 = *(v25 + 56);
        v40(v26, 0, 1, v4);
        v27 = *(v45 + 48);
        v28 = v2 + v24;
        v29 = v46;
        sub_21DF236C0(v28, v46, &qword_27CEA6D48);
        sub_21DF236C0(v26, v29 + v27, &qword_27CEA6D48);
        v30 = *(v25 + 48);
        if (v30(v29, 1, v4) == 1)
        {
          sub_21DF23614(v26, &qword_27CEA6D48);
          if (v30(v29 + v27, 1, v4) == 1)
          {
            sub_21DF23614(v29, &qword_27CEA6D48);
LABEL_21:
            v32 = v47;
            v41(v47, v50, v4);
            v40(v32, 0, 1, v4);
            sub_21E006D50(v32);
            ActionPin.Pill.analyticsAction()();
            if (ActionAnalytics.ActionType.rawValue.getter() == 0x6F4C6C6175736956 && v33 == 0xEC00000070756B6FLL)
            {
            }

            else
            {
              v34 = sub_21E142B14();

              if ((v34 & 1) == 0)
              {
              }
            }

            sub_21E13E674();
            sub_21E13E664();
            sub_21E13EE54();
            sub_21E13E634();
          }
        }

        else
        {
          v31 = v44;
          sub_21DF236C0(v29, v44, &qword_27CEA6D48);
          if (v30(v29 + v27, 1, v4) != 1)
          {
            v35 = v49;
            v36 = v29 + v27;
            v37 = v43;
            (*(v49 + 32))(v43, v36, v4);
            sub_21E00FEE0(&qword_280F69080, MEMORY[0x277D79698]);
            LODWORD(v45) = sub_21E142074();
            v38 = *(v35 + 8);
            v38(v37, v4);
            sub_21DF23614(v48, &qword_27CEA6D48);
            v38(v31, v4);
            sub_21DF23614(v29, &qword_27CEA6D48);
            if (v45)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

          sub_21DF23614(v48, &qword_27CEA6D48);
          (*(v49 + 8))(v31, v4);
        }

        sub_21DF23614(v29, &qword_27CEA76B0);
LABEL_20:
        sub_21E00BE88();
        goto LABEL_21;
      }

LABEL_34:
      __break(1u);
      return result;
    }

    goto LABEL_32;
  }

  return result;
}

uint64_t sub_21E00B2EC(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_21E13EEE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v35 = v1;
  sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  sub_21E13D3C4();

  v10 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastEngagedPill;
  swift_beginAccess();
  sub_21DF236C0(v2 + v10, v5, &qword_27CEA6D48);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_21DF23614(v5, &qword_27CEA6D48);
  }

  (*(v7 + 32))(v9, v5, v6);
  swift_getKeyPath();
  v34 = v2;
  v30 = v6;
  v12 = v7;
  sub_21E13D3C4();

  v13 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__pillAnalytics;
  v14 = swift_beginAccess();
  v15 = *(v2 + v13);
  MEMORY[0x28223BE20](v14);
  *(&v27 - 2) = v9;

  v16 = sub_21E001B24(sub_21E010F3C, (&v27 - 4), v15);
  v18 = v17;

  if (v18)
  {
    return (*(v12 + 8))(v9, v30);
  }

  v28 = v12;
  v29 = v9;
  swift_getKeyPath();
  v33 = v2;
  sub_21E13D3C4();

  v19 = *(v2 + v13);
  if ((v19 & 0xC000000000000001) != 0)
  {

    v20 = MEMORY[0x223D530F0](v16, v19);
  }

  else
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v16 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v20 = *(v19 + 8 * v16 + 32);
  }

  swift_getKeyPath();
  v33 = v20;
  sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  v21 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__suggestionsOffered;
  swift_beginAccess();
  v22 = *(v20 + v21);

  v24 = sub_21E00FDEC(v23, v22);

  sub_21E002740(v24);
  swift_getKeyPath();
  v32 = v2;

  sub_21E13D3C4();

  v32 = v2;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  v25 = *(v2 + v13);
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v2 + v13) = v25;
  if (!result || (v25 & 0x8000000000000000) != 0 || (v25 & 0x4000000000000000) != 0)
  {
    result = sub_21E00E3E8(v25);
    v25 = result;
    *(v2 + v13) = result;
  }

  v26 = v29;
  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (v16 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  *((v25 & 0xFFFFFFFFFFFFFF8) + 8 * v16 + 0x20) = v20;
  *(v2 + v13) = v25;
  swift_endAccess();

  v32 = v2;
  swift_getKeyPath();
  sub_21E13D3D4();

  return (*(v28 + 8))(v26, v30);
}

uint64_t sub_21E00B878(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a1;
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_21E13EEE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager___observationRegistrar;
  v42 = v2;
  v12 = sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  sub_21E13D3C4();

  v13 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastEngagedPill;
  swift_beginAccess();
  sub_21DF236C0(v3 + v13, v6, &qword_27CEA6D48);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_21DF23614(v6, &qword_27CEA6D48);
  }

  (*(v8 + 32))(v10, v6, v7);
  swift_getKeyPath();
  v41 = v3;
  v36 = v7;
  sub_21E13D3C4();

  v15 = v10;
  v16 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__pillAnalytics;
  v17 = swift_beginAccess();
  v18 = *(v3 + v16);
  MEMORY[0x28223BE20](v17);
  *(&v31 - 2) = v15;

  v19 = sub_21E001B24(sub_21E010F3C, (&v31 - 4), v18);
  v21 = v20;

  if (v21)
  {
    return (*(v8 + 8))(v15, v36);
  }

  v32 = v8;
  v33 = v15;
  swift_getKeyPath();
  v40 = v3;
  v34 = v12;
  sub_21E13D3C4();

  v22 = *(v3 + v16);
  v35 = v11;
  if ((v22 & 0xC000000000000001) != 0)
  {

    v23 = MEMORY[0x223D530F0](v19, v22);
  }

  else
  {
    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v19 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v23 = *(v22 + 8 * v19 + 32);
  }

  swift_getKeyPath();
  v40 = v23;
  sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  sub_21E13D3C4();

  v24 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__suggestionsEngaged;
  swift_beginAccess();
  v25 = *(v23 + v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E145380;
  v27 = v38;
  *(inited + 32) = v37;
  *(inited + 40) = v27;

  v28 = sub_21E00F310(inited);
  swift_setDeallocating();
  sub_21E00FE6C(inited + 32);
  v29 = sub_21E004A14(v28, v25);
  sub_21E00239C(v29);
  swift_getKeyPath();
  v39 = v3;

  sub_21E13D3C4();

  v39 = v3;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  v30 = *(v3 + v16);
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v3 + v16) = v30;
  if (!result || (v30 & 0x8000000000000000) != 0 || (v30 & 0x4000000000000000) != 0)
  {
    result = sub_21E00E3E8(v30);
    v30 = result;
    *(v3 + v16) = result;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (v19 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  *((v30 & 0xFFFFFFFFFFFFFF8) + 8 * v19 + 0x20) = v23;
  *(v3 + v16) = v30;
  swift_endAccess();

  v39 = v3;
  swift_getKeyPath();
  sub_21E13D3D4();

  return (*(v32 + 8))(v33, v36);
}

uint64_t sub_21E00BE88()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v25 - v3;
  v5 = sub_21E13EEE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v9 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager___observationRegistrar;
  v32 = v0;
  v10 = sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  sub_21E13D3C4();

  v11 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastEngagedPill;
  swift_beginAccess();
  sub_21DF236C0(v1 + v11, v4, &qword_27CEA6D48);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_21DF23614(v4, &qword_27CEA6D48);
  }

  (*(v6 + 32))(v8, v4, v5);
  swift_getKeyPath();
  v31 = v1;
  v28 = v5;
  v13 = v6;
  sub_21E13D3C4();

  v14 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__pillAnalytics;
  v15 = swift_beginAccess();
  v16 = *(v1 + v14);
  MEMORY[0x28223BE20](v15);
  v25[-2] = v8;

  v17 = sub_21E001B24(sub_21E010F3C, &v25[-4], v16);
  v19 = v18;

  if (v19)
  {
    return (*(v13 + 8))(v8, v28);
  }

  v26 = v13;
  v27 = v8;
  swift_getKeyPath();
  v30 = v1;
  sub_21E13D3C4();

  v20 = *(v1 + v14);
  if ((v20 & 0xC000000000000001) != 0)
  {

    v22 = MEMORY[0x223D530F0](v17, v20);

    v21 = v27;
    goto LABEL_9;
  }

  v21 = v27;
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v17 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = *(v20 + 8 * v17 + 32);

LABEL_9:
  if (sub_21E0BE3B8(*(v22 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_pillShown), *(v22 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_actionsWithSuggestionTracking)))
  {
    swift_getKeyPath();
    v30 = v22;
    sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
    sub_21E13D3C4();
    v21 = v27;

    v23 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__engaged;
    swift_beginAccess();
    if (*(v22 + v23) == 2)
    {
      swift_getKeyPath();
      v29 = v1;

      sub_21E13D3C4();

      v29 = v1;
      swift_getKeyPath();
      v25[0] = v10;
      v25[1] = v9;
      sub_21E13D3E4();

      swift_beginAccess();
      v24 = *(v1 + v14);
      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v1 + v14) = v24;
      if (!result || (v24 & 0x8000000000000000) != 0 || (v24 & 0x4000000000000000) != 0)
      {
        result = sub_21E00E3E8(v24);
        v24 = result;
        *(v1 + v14) = result;
      }

      if ((v17 & 0x8000000000000000) == 0)
      {
        if (v17 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          *((v24 & 0xFFFFFFFFFFFFFF8) + 8 * v17 + 0x20) = v22;
          *(v1 + v14) = v24;
          swift_endAccess();

          v29 = v1;
          swift_getKeyPath();
          sub_21E13D3D4();

          sub_21E005610();
          swift_getKeyPath();
          v29 = v1;
          sub_21E13D3C4();

          v29 = v1;
          swift_getKeyPath();
          sub_21E13D3E4();

          swift_beginAccess();
          sub_21E001C44(v17);
          swift_endAccess();

          v29 = v1;
          swift_getKeyPath();
          sub_21E13D3D4();

          return (*(v26 + 8))(v27, v28);
        }

        goto LABEL_24;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }
  }

  return (*(v26 + 8))(v21, v28);
}

uint64_t sub_21E00C4E0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_21E1423F4();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  sub_21E1423C4();

  v9 = sub_21E1423B4();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v1;
  v10[5] = a1;
  v12 = sub_21E0C2E04(0, 0, v6, &unk_21E14DB08, v10);
  v8(v6, 1, 1, v7);

  v13 = sub_21E1423B4();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v11;
  v14[4] = v12;
  v14[5] = v2;
  sub_21E0C2E04(0, 0, v6, &unk_21E14DB18, v14);
}

uint64_t sub_21E00C6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[47] = a4;
  v5[48] = a5;
  v6 = sub_21E13D304();
  v5[49] = v6;
  v5[50] = *(v6 - 8);
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA460);
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v5[67] = swift_task_alloc();
  v7 = sub_21E13EEE4();
  v5[68] = v7;
  v5[69] = *(v7 - 8);
  v5[70] = swift_task_alloc();
  v5[71] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  v5[72] = swift_task_alloc();
  sub_21E1423C4();
  v5[73] = sub_21E1423B4();
  v9 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E00C94C, v9, v8);
}

uint64_t sub_21E00C94C()
{
  v1 = v0[47];

  swift_getKeyPath();
  v0[35] = v1;
  sub_21E00FEE0(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  sub_21E13D3C4();

  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__pillAnalytics;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (v4 >> 62)
  {
    v102 = *(v1 + v2);
    result = sub_21E1427B4();
    v4 = v102;
    v5 = result;
    if (!result)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_59;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  v110 = v2;
  v6 = v0[47];
  v7 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastHeroPill;
  v8 = v0[69];
  v123 = v0[53];
  v116 = v4 & 0xC000000000000001;
  v9 = v0[50];
  v10 = v4;

  v117 = v7;
  v118 = v6;
  swift_beginAccess();
  v11 = v10;
  v12 = 0;
  v114 = v10;
  v115 = (v8 + 48);
  v106 = (v8 + 8);
  v107 = (v8 + 16);
  v124 = (v9 + 48);
  v105 = (v9 + 32);
  v121 = (v9 + 8);
  v122 = (v9 + 56);
  v119 = (v9 + 16);
  v120 = v1;
  v113 = v5;
  while (1)
  {
    v126 = v12;
    if (v116)
    {
      v13 = MEMORY[0x223D530F0]();
    }

    else
    {
      v13 = *(v11 + 8 * v12 + 32);
    }

    v14 = v0[72];
    v15 = v0[68];
    v16 = v0[47];
    v17 = *(v13 + 16);
    v18 = *(v13 + 24);
    swift_getKeyPath();
    v0[36] = v16;
    sub_21E13D3C4();

    sub_21DF236C0(v118 + v117, v14, &qword_27CEA6D48);
    v19 = (*v115)(v14, 1, v15);
    v20 = v0[72];
    if (v19)
    {
      sub_21DF23614(v0[72], &qword_27CEA6D48);
      v21 = 0;
      v22 = 0xE000000000000000;
    }

    else
    {
      v23 = v0[71];
      v24 = v0[70];
      v25 = v0[68];
      (*v107)(v23, v0[72], v25);
      sub_21DF23614(v20, &qword_27CEA6D48);
      sub_21E13EE64();
      v26 = *v106;
      (*v106)(v23, v25);
      v21 = sub_21E13EE54();
      v22 = v27;
      v26(v24, v25);
    }

    if (v17 == v21 && v18 == v22)
    {

      v132 = 0;
      v127 = 1;
    }

    else
    {
      v28 = sub_21E142B14();

      v127 = v28;
      v132 = v28 ^ 1;
    }

    v29 = v0[67];
    v31 = v0[48];
    v30 = v0[49];
    swift_getKeyPath();
    v0[37] = v13;
    sub_21E00FEE0(&qword_27CEAA438, type metadata accessor for PillAnalytics);
    sub_21E13D3C4();

    v32 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__index;
    swift_beginAccess();
    sub_21E004558(*(v13 + v32), v31);
    swift_getKeyPath();
    v0[38] = v13;
    sub_21E13D3C4();

    v33 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__endTime;
    swift_beginAccess();
    sub_21DF236C0(v13 + v33, v29, &qword_27CEAA448);
    v34 = *v124;
    LODWORD(v32) = (*v124)(v29, 1, v30);
    sub_21DF23614(v29, &qword_27CEAA448);
    v130 = v34;
    v125 = v33;
    if (v32 == 1)
    {
      v35 = v0[66];
      v36 = v0[65];
      v37 = v0[56];
      v38 = v0[49];
      sub_21E13D2F4();
      (*v122)(v35, 0, 1, v38);
      sub_21DF236C0(v13 + v33, v36, &qword_27CEAA448);
      v39 = *(v123 + 48);
      sub_21DF236C0(v36, v37, &qword_27CEAA448);
      sub_21DF236C0(v35, v37 + v39, &qword_27CEAA448);
      if (v34(v37, 1, v38) == 1)
      {
        v40 = v0[49];
        sub_21DF23614(v0[65], &qword_27CEAA448);
        if (v34(v37 + v39, 1, v40) == 1)
        {
          sub_21DF23614(v0[56], &qword_27CEAA448);
          v41 = v125;
LABEL_25:
          v52 = v0[63];
          sub_21DF236C0(v0[66], v52, &qword_27CEAA448);
          swift_beginAccess();
          sub_21E00FF48(v52, v13 + v41, &qword_27CEAA448);
          swift_endAccess();
          goto LABEL_26;
        }
      }

      else
      {
        v42 = v0[49];
        sub_21DF236C0(v0[56], v0[64], &qword_27CEAA448);
        v43 = v34(v37 + v39, 1, v42);
        v44 = v0[65];
        v45 = v0[64];
        if (v43 != 1)
        {
          v111 = v0[56];
          v49 = v0[52];
          v50 = v0[49];
          (*v105)(v49, v37 + v39, v50);
          sub_21E00FEE0(&qword_27CEAA468, MEMORY[0x277CC9578]);
          v108 = sub_21E142074();
          v51 = *v121;
          (*v121)(v49, v50);
          sub_21DF23614(v44, &qword_27CEAA448);
          v51(v45, v50);
          sub_21DF23614(v111, &qword_27CEAA448);
          v41 = v125;
          if (v108)
          {
            goto LABEL_25;
          }

LABEL_23:
          v47 = v0[66];
          swift_getKeyPath();
          v48 = swift_task_alloc();
          *(v48 + 16) = v13;
          *(v48 + 24) = v47;
          v0[39] = v13;
          sub_21E13D3B4();

LABEL_26:
          sub_21DF23614(v0[66], &qword_27CEAA448);
          goto LABEL_27;
        }

        v46 = v0[49];
        sub_21DF23614(v0[65], &qword_27CEAA448);
        (*v121)(v45, v46);
      }

      sub_21DF23614(v0[56], &qword_27CEAA460);
      goto LABEL_23;
    }

LABEL_27:
    if (v127)
    {
      goto LABEL_47;
    }

    v54 = v0[61];
    v53 = v0[62];
    v55 = v0[55];
    v56 = v0[51];
    v57 = v0[49];
    sub_21E13D2F4();
    v112 = *v119;
    (*v119)(v53, v56, v57);
    v128 = *v122;
    (*v122)(v53, 0, 1, v57);
    v58 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__startTime;
    swift_beginAccess();
    v109 = v58;
    sub_21DF236C0(v13 + v58, v54, &qword_27CEAA448);
    v59 = *(v123 + 48);
    sub_21DF236C0(v54, v55, &qword_27CEAA448);
    sub_21DF236C0(v53, v55 + v59, &qword_27CEAA448);
    if (v34(v55, 1, v57) == 1)
    {
      v60 = v0[49];
      sub_21DF23614(v0[61], &qword_27CEAA448);
      if (v34(v55 + v59, 1, v60) != 1)
      {
        goto LABEL_33;
      }

      sub_21DF23614(v0[55], &qword_27CEAA448);
    }

    else
    {
      v61 = v0[49];
      sub_21DF236C0(v0[55], v0[60], &qword_27CEAA448);
      v62 = v34(v55 + v59, 1, v61);
      v63 = v0[60];
      v64 = v0[61];
      if (v62 == 1)
      {
        v65 = v0[49];
        sub_21DF23614(v0[61], &qword_27CEAA448);
        (*v121)(v63, v65);
LABEL_33:
        sub_21DF23614(v0[55], &qword_27CEAA460);
LABEL_34:
        v66 = v0[62];
        swift_getKeyPath();
        v67 = swift_task_alloc();
        *(v67 + 16) = v13;
        *(v67 + 24) = v66;
        v0[40] = v13;
        sub_21E13D3B4();

        goto LABEL_37;
      }

      v104 = v0[55];
      v68 = v0[52];
      v69 = v0[49];
      (*v105)(v68, v55 + v59, v69);
      sub_21E00FEE0(&qword_27CEAA468, MEMORY[0x277CC9578]);
      v103 = sub_21E142074();
      v70 = *v121;
      (*v121)(v68, v69);
      sub_21DF23614(v64, &qword_27CEAA448);
      v70(v63, v69);
      sub_21DF23614(v104, &qword_27CEAA448);
      if ((v103 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    v71 = v0[63];
    sub_21DF236C0(v0[62], v71, &qword_27CEAA448);
    swift_beginAccess();
    sub_21E00FF48(v71, v13 + v109, &qword_27CEAA448);
    swift_endAccess();
LABEL_37:
    v73 = v0[58];
    v72 = v0[59];
    v74 = v0[54];
    v75 = v0[51];
    v76 = v0[49];
    sub_21DF23614(v0[62], &qword_27CEAA448);
    v112(v72, v75, v76);
    v128(v72, 0, 1, v76);
    sub_21DF236C0(v13 + v125, v73, &qword_27CEAA448);
    v77 = *(v123 + 48);
    sub_21DF236C0(v73, v74, &qword_27CEAA448);
    sub_21DF236C0(v72, v74 + v77, &qword_27CEAA448);
    if (v130(v74, 1, v76) == 1)
    {
      v78 = v0[49];
      sub_21DF23614(v0[58], &qword_27CEAA448);
      if (v130(v74 + v77, 1, v78) == 1)
      {
        sub_21DF23614(v0[54], &qword_27CEAA448);
        v79 = *v121;
LABEL_45:
        v91 = v0[63];
        v92 = v0[59];
        v79(v0[51], v0[49]);
        sub_21DF236C0(v92, v91, &qword_27CEAA448);
        swift_beginAccess();
        sub_21E00FF48(v91, v13 + v125, &qword_27CEAA448);
        swift_endAccess();
        goto LABEL_46;
      }

      goto LABEL_42;
    }

    v80 = v0[49];
    sub_21DF236C0(v0[54], v0[57], &qword_27CEAA448);
    v81 = v130(v74 + v77, 1, v80);
    v82 = v0[57];
    if (v81 == 1)
    {
      v83 = v0[49];
      sub_21DF23614(v0[58], &qword_27CEAA448);
      (*v121)(v82, v83);
LABEL_42:
      sub_21DF23614(v0[54], &qword_27CEAA460);
      goto LABEL_43;
    }

    v131 = v0[54];
    v88 = v0[52];
    v89 = v0[49];
    v129 = v0[58];
    (*v105)(v88, v74 + v77, v89);
    sub_21E00FEE0(&qword_27CEAA468, MEMORY[0x277CC9578]);
    v90 = sub_21E142074();
    v79 = *v121;
    (*v121)(v88, v89);
    sub_21DF23614(v129, &qword_27CEAA448);
    v79(v82, v89);
    sub_21DF23614(v131, &qword_27CEAA448);
    if (v90)
    {
      goto LABEL_45;
    }

LABEL_43:
    v84 = v0[59];
    v85 = v0[51];
    v86 = v0[49];
    swift_getKeyPath();
    v87 = swift_task_alloc();
    *(v87 + 16) = v13;
    *(v87 + 24) = v84;
    v0[41] = v13;
    sub_21E13D3B4();

    (*v121)(v85, v86);

LABEL_46:
    sub_21DF23614(v0[59], &qword_27CEAA448);
LABEL_47:
    if ((v132 & 1) == 0)
    {
      v93 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__latencyDuration;
      swift_beginAccess();
      if (*(v13 + v93) == 0.0)
      {
        *(v13 + v93) = 0;
      }

      else
      {
        swift_getKeyPath();
        v94 = swift_task_alloc();
        *(v94 + 16) = v13;
        *(v94 + 24) = 0;
        v0[42] = v13;
        sub_21E13D3B4();
      }
    }

    if (sub_21E0BE3B8(*(v13 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_pillShown), *(v13 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_actionsWithSuggestionTracking)))
    {
      swift_getKeyPath();
      v0[46] = v13;
      sub_21E13D3C4();

      v95 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__engaged;
      swift_beginAccess();
      if (*(v13 + v95) == 2)
      {
        goto LABEL_5;
      }
    }

    v96 = v0[47];
    sub_21E005610();
    swift_getKeyPath();
    v0[43] = v96;

    sub_21E13D3C4();

    v0[44] = v96;
    swift_getKeyPath();
    sub_21E13D3E4();

    swift_beginAccess();
    v97 = sub_21E00FB7C((v120 + v110), v13);

    v98 = *(v120 + v110);
    if (!(v98 >> 62))
    {
      v99 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v99 < v97)
      {
        break;
      }

      goto LABEL_55;
    }

    v99 = sub_21E1427B4();
    if (v99 < v97)
    {
      break;
    }

LABEL_55:
    v100 = v0[47];
    sub_21DF60224(v97, v99);
    swift_endAccess();
    v0[45] = v100;
    swift_getKeyPath();
    sub_21E13D3D4();

LABEL_5:

    v12 = v126 + 1;
    v11 = v114;
    if (v113 == v126 + 1)
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_58:

LABEL_59:

  v101 = v0[1];

  return v101();
}

uint64_t sub_21E00DC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v7 = sub_21E13F1B4();
  v5[3] = v7;
  v5[4] = *(v7 - 8);
  v5[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  v5[6] = swift_task_alloc();
  v5[7] = sub_21E1423C4();
  v5[8] = sub_21E1423B4();
  v8 = swift_task_alloc();
  v5[9] = v8;
  *v8 = v5;
  v8[1] = sub_21E00DD94;
  v9 = MEMORY[0x277D84A98];
  v10 = MEMORY[0x277D84AC0];
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200440](v5 + 10, a4, v11, v9, v10);
}

uint64_t sub_21E00DD94()
{

  v1 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E00DED0, v1, v0);
}

uint64_t sub_21E00DED0()
{

  if (*(v0 + 80))
  {
    sub_21E13F194();
    v1 = sub_21E13F1A4();
    v2 = sub_21E142564();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_allocError();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&dword_21DF05000, v1, v2, "PillAnalytics: failed to terminate all pills %@", v3, 0xCu);
      sub_21DF23614(v4, &unk_27CEAC540);
      MEMORY[0x223D540B0](v4, -1, -1);
      MEMORY[0x223D540B0](v3, -1, -1);
    }

    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = *(v0 + 24);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v9 = *(v0 + 48);
    v10 = sub_21E13EEE4();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    sub_21E00678C(v9);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_21E00E0A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_21E13D2F4();
  v3 = sub_21E13D304();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  return sub_21E006FD4(v2);
}

uint64_t PillAnalyticsManager.deinit()
{
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__entryPoint;
  v2 = sub_21E13D834();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastHeroPill, &qword_27CEA6D48);
  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastEngagedPill, &qword_27CEA6D48);
  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastPillQueryTime, &qword_27CEAA448);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager___observationRegistrar;
  v4 = sub_21E13D404();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t PillAnalyticsManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__entryPoint;
  v2 = sub_21E13D834();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastHeroPill, &qword_27CEA6D48);
  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastEngagedPill, &qword_27CEA6D48);
  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastPillQueryTime, &qword_27CEAA448);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager___observationRegistrar;
  v4 = sub_21E13D404();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_21E00E3E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_21E1427B4();
  }

  return sub_21E1428C4();
}

uint64_t sub_21E00E4B0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_21E142C14();

    sub_21E142204();
    v16 = sub_21E142C44();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_21E142B14() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E00E6FC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      a2 = a1;
    }

    else
    {
      a2 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (v2 < 0)
      {
        a1 = v2;
      }

      else
      {
        a1 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      return MEMORY[0x2821FCF40](a1, a2);
    }

    v6 = a2;
    v5 = v2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v8 = 0;
        v9 = *(a1 + 56);
        v28 = a1 + 56;
        v10 = 1 << *(a1 + 32);
        if (v10 < 64)
        {
          v11 = ~(-1 << v10);
        }

        else
        {
          v11 = -1;
        }

        v12 = v11 & v9;
        v13 = (v10 + 63) >> 6;
        v32 = a2 + 56;
        v29 = v13;
        v30 = a1;
        if (!v12)
        {
LABEL_27:
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
              return 1;
            }

            v16 = *(v28 + 8 * v8);
            ++v15;
            if (v16)
            {
              v14 = __clz(__rbit64(v16));
              v31 = (v16 - 1) & v16;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](a1, a2);
        }

        while (1)
        {
          v14 = __clz(__rbit64(v12));
          v31 = (v12 - 1) & v12;
LABEL_32:
          v17 = *(*(a1 + 48) + 8 * (v14 | (v8 << 6)));
          sub_21E142C14();
          v33[2] = v37;
          v33[3] = v38;
          v34 = v39;
          v33[0] = v35;
          v33[1] = v36;
          v18 = sub_21E1423C4();
          MEMORY[0x28223BE20](v18);
          v26 = v33;
          v27 = v17;

          sub_21E0C38E4(sub_21DFE8D14, v25);
          v19 = sub_21E142C44();
          v20 = -1 << *(v2 + 32);
          v21 = v19 & ~v20;
          if (((*(v32 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          while (1)
          {
            v23 = *(*(v2 + 48) + 8 * v21);
            MEMORY[0x28223BE20](v19);
            v26 = v23;
            v27 = v17;

            v24 = sub_21E0C372C(sub_21DF35578, v25, "VisualIntelligenceUI/NewActionModel.swift");

            if (v24)
            {
              break;
            }

            v21 = (v21 + 1) & v22;
            if (((*(v32 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          a1 = v30;
          v13 = v29;
          v12 = v31;
          if (!v31)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v4 = a2;
    }

    v5 = a1;
    v6 = v4;
  }

  return sub_21E00F20C(v6, v5);
}

uint64_t sub_21E00EA84(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 56);
  v31 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v35 = a2 + 56;
  v32 = v9;
  v33 = result;
  if ((v7 & v5) != 0)
  {
LABEL_7:
    v10 = __clz(__rbit64(v8));
    v11 = (v8 - 1) & v8;
    goto LABEL_13;
  }

LABEL_8:
  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v31 + 8 * v4);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
LABEL_13:
      v14 = *(*(v3 + 48) + (v10 | (v4 << 6)));
      sub_21E142C14();
      ActionAnalytics.ActionType.rawValue.getter();
      sub_21E142204();

      v15 = sub_21E142C44();
      v16 = -1 << *(a2 + 32);
      v17 = v15 & ~v16;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return 0;
      }

      v34 = v11;
      v18 = ~v16;
      while (2)
      {
        v19 = 0xEC00000070756B6FLL;
        v20 = 0x6F4C6C6175736956;
        switch(*(*(a2 + 48) + v17))
        {
          case 1:
            v19 = 0xEA00000000007075;
            v20 = 0x6B6F6F4C7370614DLL;
            break;
          case 2:
            v20 = 0x697463417370614DLL;
            v19 = 0xEA00000000006E6FLL;
            break;
          case 3:
            v19 = 0xE600000000000000;
            v20 = 0x65646F435251;
            break;
          case 4:
            v20 = 0x4370696C43707041;
            v21 = 6644847;
            goto LABEL_38;
          case 5:
            v20 = 0x6574654461746144;
            v19 = 0xEC000000726F7463;
            break;
          case 6:
            v20 = 0x7A6972616D6D7553;
            goto LABEL_33;
          case 7:
            v19 = 0xE900000000000064;
            v20 = 0x756F6C4164616552;
            break;
          case 8:
            v20 = 0x7261646E656C6143;
            v19 = 0xED0000746E657645;
            break;
          case 9:
            v20 = 0xD000000000000014;
            v19 = 0x800000021E15ADE0;
            break;
          case 0xA:
            v20 = 0x7261646E656C6143;
            v19 = 0xEC00000074696445;
            break;
          case 0xB:
            v19 = 0xE300000000000000;
            v20 = 7041857;
            break;
          case 0xC:
            v20 = 0x6165536567616D49;
            v21 = 6841202;
            goto LABEL_38;
          case 0xD:
            v20 = 0x74616C736E617254;
LABEL_33:
            v19 = 0xE900000000000065;
            break;
          case 0xE:
            v20 = 0x4172657474756853;
            v19 = 0xED00006E6F697463;
            break;
          case 0xF:
            v20 = 0x4E72657474756853;
            v19 = 0xEF6E6F697463416FLL;
            break;
          case 0x10:
            v19 = 0xEA00000000007265;
            v20 = 0x6B63697453646441;
            break;
          case 0x11:
            v20 = 0xD000000000000014;
            v19 = 0x800000021E15AE50;
            break;
          case 0x12:
            v19 = 0xE90000000000006FLL;
            v20 = 0x746F685065766153;
            break;
          case 0x13:
            v20 = 0x6974634174786554;
            v21 = 7564911;
            goto LABEL_38;
          case 0x14:
            v19 = 0xE800000000000000;
            v20 = 0x6B63616264656546;
            break;
          case 0x15:
            v20 = 0x6669636570736E55;
            v21 = 6579561;
LABEL_38:
            v19 = v21 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            break;
          default:
            break;
        }

        v22 = 0x6F4C6C6175736956;
        v23 = 0xEC00000070756B6FLL;
        switch(v14)
        {
          case 1:
            v23 = 0xEA00000000007075;
            if (v20 == 0x6B6F6F4C7370614DLL)
            {
              goto LABEL_77;
            }

            goto LABEL_78;
          case 2:
            v23 = 0xEA00000000006E6FLL;
            if (v20 != 0x697463417370614DLL)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 3:
            v23 = 0xE600000000000000;
            if (v20 != 0x65646F435251)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 4:
            v25 = 0x4370696C43707041;
            v26 = 6644847;
            goto LABEL_82;
          case 5:
            v27 = 0x6574654461746144;
            v28 = 1919906915;
            goto LABEL_73;
          case 6:
            v29 = 0x7A6972616D6D7553;
            goto LABEL_68;
          case 7:
            v23 = 0xE900000000000064;
            if (v20 != 0x756F6C4164616552)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 8:
            v22 = 0x7261646E656C6143;
            v23 = 0xED0000746E657645;
            goto LABEL_76;
          case 9:
            v23 = 0x800000021E15ADE0;
            if (v20 != 0xD000000000000014)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 10:
            v27 = 0x7261646E656C6143;
            v28 = 1953064005;
LABEL_73:
            v23 = v28 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v20 != v27)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 11:
            v23 = 0xE300000000000000;
            if (v20 != 7041857)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 12:
            v25 = 0x6165536567616D49;
            v26 = 6841202;
            goto LABEL_82;
          case 13:
            v29 = 0x74616C736E617254;
LABEL_68:
            v23 = 0xE900000000000065;
            if (v20 != v29)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 14:
            v23 = 0xED00006E6F697463;
            if (v20 != 0x4172657474756853)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 15:
            v23 = 0xEF6E6F697463416FLL;
            if (v20 != 0x4E72657474756853)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 16:
            v23 = 0xEA00000000007265;
            v24 = 0x697453646441;
            goto LABEL_62;
          case 17:
            v23 = 0x800000021E15AE50;
            if (v20 != 0xD000000000000014)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 18:
            v23 = 0xE90000000000006FLL;
            if (v20 != 0x746F685065766153)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 19:
            v25 = 0x6974634174786554;
            v26 = 7564911;
            goto LABEL_82;
          case 20:
            v23 = 0xE800000000000000;
            v24 = 0x616264656546;
LABEL_62:
            if (v20 != (v24 & 0xFFFFFFFFFFFFLL | 0x6B63000000000000))
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 21:
            v25 = 0x6669636570736E55;
            v26 = 6579561;
LABEL_82:
            v23 = v26 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v20 != v25)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          default:
LABEL_76:
            if (v20 != v22)
            {
              goto LABEL_78;
            }

LABEL_77:
            if (v19 != v23)
            {
LABEL_78:
              v30 = sub_21E142B14();

              if (v30)
              {
                goto LABEL_85;
              }

              v17 = (v17 + 1) & v18;
              if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
              {
                return 0;
              }

              continue;
            }

LABEL_85:
            v9 = v32;
            v3 = v33;
            v8 = v34;
            if (!v34)
            {
              goto LABEL_8;
            }

            goto LABEL_7;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E00F20C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_21E1427B4();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_21E1427F4();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E00F310(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223D52D00](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_21E0E2A20(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_21E00F3A8(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v5 = sub_21E1427B4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223D530F0](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    if (*(v7 + 16) == *(a2 + 16) && *(v7 + 24) == *(a2 + 24))
    {
      break;
    }

    v9 = sub_21E142B14();

    if (v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_21;
    }
  }

  return v6;
}

uint64_t sub_21E00F4BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13D304();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA460);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_21DF236C0(a1, &v21 - v13, &qword_27CEAA448);
  sub_21DF236C0(a2, &v14[v15], &qword_27CEAA448);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_21DF236C0(v14, v10, &qword_27CEAA448);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_21E00FEE0(&qword_27CEAA468, MEMORY[0x277CC9578]);
      v18 = sub_21E142074();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_21DF23614(v14, &qword_27CEAA448);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21DF23614(v14, &qword_27CEAA460);
    v17 = 1;
    return v17 & 1;
  }

  sub_21DF23614(v14, &qword_27CEAA448);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21E00F85C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13EEE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76B0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_21DF236C0(a1, &v21 - v13, &qword_27CEA6D48);
  sub_21DF236C0(a2, &v14[v15], &qword_27CEA6D48);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_21DF236C0(v14, v10, &qword_27CEA6D48);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_21E00FEE0(&qword_280F69080, MEMORY[0x277D79698]);
      v18 = sub_21E142074();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_21DF23614(v14, &qword_27CEA6D48);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21DF23614(v14, &qword_27CEA76B0);
    v17 = 1;
    return v17 & 1;
  }

  sub_21DF23614(v14, &qword_27CEA6D48);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21E00FB7C(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = sub_21E00F3A8(*a1, a2);
  v8 = v6;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return sub_21E1427B4();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == sub_21E1427B4())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x223D530F0](v9, v5);
      goto LABEL_16;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    v11 = *(v5 + 8 * v9 + 32);

LABEL_16:
    if (*(v11 + 16) == *(a2 + 16) && *(v11 + 24) == *(a2 + 24))
    {
LABEL_8:
    }

    else
    {
      v12 = sub_21E142B14();

      if ((v12 & 1) == 0)
      {
        if (v8 != v9)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x223D530F0](v8, v5);
            v14 = MEMORY[0x223D530F0](v9, v5);
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_50;
            }

            v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v15)
            {
              goto LABEL_51;
            }

            if (v9 >= v15)
            {
              goto LABEL_52;
            }

            v13 = *(v5 + 32 + 8 * v8);
            v14 = *(v5 + 32 + 8 * v9);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
          {
            v5 = sub_21E00E3E8(v5);
            v16 = (v5 >> 62) & 1;
          }

          else
          {
            LODWORD(v16) = 0;
          }

          v17 = v5 & 0xFFFFFFFFFFFFFF8;
          *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v14;

          if ((v5 & 0x8000000000000000) != 0 || v16)
          {
            v5 = sub_21E00E3E8(v5);
            v17 = v5 & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_43:
              __break(1u);
              return v8;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          if (v9 >= *(v17 + 16))
          {
            goto LABEL_49;
          }

          *(v17 + 8 * v9 + 32) = v13;

          *a1 = v5;
        }

        v10 = __OFADD__(v8++, 1);
        if (v10)
        {
          goto LABEL_48;
        }
      }
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_47;
    }
  }

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
LABEL_52:
  __break(1u);
  return sub_21E1427B4();
}

uint64_t sub_21E00FDEC(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_21E0E2A20(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21E00FEE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E00FF48(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E00FFE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__engaged;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_21E010040(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21E00C6A8(a1, v4, v5, v7, v6);
}

uint64_t sub_21E010100(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF4AA04;

  return sub_21E00DC28(a1, v4, v5, v7, v6);
}

unint64_t sub_21E0101C4()
{
  result = qword_27CEAA450;
  if (!qword_27CEAA450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA450);
  }

  return result;
}

void sub_21E010220()
{
  sub_21E13D344();
  if (v0 <= 0x3F)
  {
    sub_21E13D834();
    if (v1 <= 0x3F)
    {
      sub_21E010CAC(319, &qword_280F6C098, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        sub_21E13D404();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_21E01089C()
{
  sub_21E13D834();
  if (v0 <= 0x3F)
  {
    sub_21E010CAC(319, &qword_280F69078, MEMORY[0x277D79698]);
    if (v1 <= 0x3F)
    {
      sub_21E010CAC(319, &qword_280F6C098, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        sub_21E13D404();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_21E010CAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21E142724();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21E010D14()
{
  result = qword_27CEAA458;
  if (!qword_27CEAA458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA458);
  }

  return result;
}

unint64_t sub_21E010D68(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_21E010DDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__latencyDuration;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_21E010E74()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__index;
  result = swift_beginAccess();
  *(v2 + v3) = v1;
  return result;
}

uint64_t PartneredActionsManager.handlePartneredSearch(executionParameter:)()
{
  swift_getKeyPath();
  sub_21E012294(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  swift_beginAccess();
  swift_getKeyPath();
  sub_21E012294(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  swift_beginAccess();

  sub_21E141D64();
  sub_21E13F864();
}

uint64_t PartneredActionsManager.handlePartneredAsk(executionParameter:)(uint64_t a1)
{
  v20 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC550);
  v21 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = *v1;
  swift_getKeyPath();
  v25 = v8;
  sub_21E012294(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v9 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__bar;
  swift_beginAccess();
  v10 = *(v8 + v9);
  swift_getKeyPath();
  v24 = v10;
  sub_21E012294(&qword_280F6BEE0, type metadata accessor for NewBarModel);

  sub_21E13D3C4();

  v11 = *(v10 + OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__ask);

  swift_getKeyPath();
  v24 = v8;
  sub_21E13D3C4();

  v12 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
  swift_beginAccess();
  v13 = *(v8 + v12);
  swift_getKeyPath();
  v23 = v13;
  sub_21E012294(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  swift_beginAccess();
  v22 = 5;

  CardModel.onboardingExperience.setter(&v22);

  v14 = sub_21E1423F4();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  sub_21E011FE4(v20, v4);
  sub_21E1423C4();

  v15 = sub_21E1423B4();
  v16 = (*(v21 + 80) + 56) & ~*(v21 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v15;
  v17[3] = v18;
  v17[4] = v8;
  v17[5] = v11;
  v17[6] = v13;
  sub_21E012054(v4, v17 + v16);
  sub_21E0C2E04(0, 0, v7, &unk_21E14DF48, v17);
}

uint64_t sub_21E0115A0(uint64_t a1)
{
  LOBYTE(v6[0]) = 5;
  CardModel.onboardingExperience.setter(v6);
  v6[0] = 8;
  NewEntityModel.cardLayout.setter(v6);
  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
  swift_beginAccess();
  if (*(a1 + v2))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E012294(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3B4();
  }

  else
  {
    *(a1 + v2) = 0;
  }

  return NewSaliencyModel.presentedEntity.setter(v4);
}

uint64_t sub_21E01171C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 96) = a4;
  *(v7 + 104) = a6;
  *(v7 + 112) = sub_21E1423C4();
  *(v7 + 120) = sub_21E1423B4();
  *(v7 + 136) = 6;
  v11 = swift_task_alloc();
  *(v7 + 128) = v11;
  *v11 = v7;
  v11[1] = sub_21E01180C;

  return NewSaliencyModel.performAction(_:from:executionParameter:updatesPresentation:analyticsSource:)(a5, a6, a7, 0, (v7 + 136));
}

uint64_t sub_21E01180C()
{

  v1 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E011948, v1, v0);
}

uint64_t sub_21E011948()
{
  v1 = *(v0 + 104);

  swift_getKeyPath();
  *(v0 + 64) = v1;
  sub_21E012294(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_getKeyPath();
  *(v0 + 72) = v3;
  sub_21E012294(&qword_280F69240, type metadata accessor for CardModel);

  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience;
  swift_beginAccess();
  LODWORD(v4) = *(v3 + v4);

  v5 = (v4 < 6) & (0xDu >> v4);
  v6 = *(v0 + 104);
  swift_getKeyPath();
  *(v0 + 80) = v6;
  sub_21E13D3C4();

  v7 = *(v1 + v2);
  swift_getKeyPath();
  *(v0 + 88) = v7;

  sub_21E13D3C4();

  v8 = *(v7 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme);
  v9 = *(v7 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 8);
  v10 = *(v7 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 16);
  v11 = *(v7 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 24);
  v12 = *(v7 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 32);
  sub_21DF356CC(v8, v9, v10, v11, *(v7 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 32));

  if (v12 >> 8 > 0xFE)
  {
    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((v12 & 0x100) != 0)
  {
    sub_21DF346A0(v8, v9, v10, v11, v12);
    goto LABEL_8;
  }

  if (v5)
  {
LABEL_8:
    *(swift_task_alloc() + 16) = *(v0 + 96);
    sub_21E141D64();
    sub_21E13F864();
  }

LABEL_9:
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_21E011C64(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isAskingMontara;
  swift_beginAccess();
  if (*(a1 + v2))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E012294(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }

  else
  {
    *(a1 + v2) = 0;
    sub_21E0DDC20();
  }

  return NewSaliencyModel.presentedEntity.setter(v4);
}

uint64_t sub_21E011DBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E012294(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__bar;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21E011ED0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E012294(&qword_280F6BEE0, type metadata accessor for NewBarModel);
  sub_21E13D3C4();

  *a2 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__ask);
}

uint64_t sub_21E011FE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E012054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E0120C4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC550) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21DF4AA04;

  return sub_21E01171C(a1, v6, v7, v8, v9, v10, v1 + v5);
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_21E012294(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E012354@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a2;
  v65 = a3;
  v61 = a1;
  v68 = sub_21E13F1B4();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v57 - v9;
  v10 = sub_21E13D264();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v59 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v57 - v18;
  v20 = v11[7];
  v64 = a4;
  v58 = v20;
  (v20)(a4, 1, 1, v10, v17);
  v21 = [objc_opt_self() defaultManager];
  v22 = [v21 temporaryDirectory];

  sub_21E13D214();
  v23 = *(v4 + 24);
  v67[0] = *(v4 + 16);
  v67[1] = v23;

  MEMORY[0x223D52A60](45, 0xE100000000000000);
  v24 = sub_21E13D6A4();
  MEMORY[0x223D52A60](v24);

  sub_21E13D1E4();
  v25 = v19;

  v26 = v11[1];
  v65 = v11 + 1;
  v26(v15, v10);
  v27 = v63;
  sub_21E13D294();
  if (v27)
  {
    v28 = v10;
    v29 = v64;
    sub_21E13EC04();
    v30 = v27;
    v31 = sub_21E13F1A4();
    v32 = sub_21E142564();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v63 = v19;
      v34 = v33;
      v35 = v26;
      v36 = swift_slowAlloc();
      *v34 = 138412290;
      v37 = v27;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v38;
      *v36 = v38;
      _os_log_impl(&dword_21DF05000, v31, v32, "Failed to write file %@", v34, 0xCu);
      sub_21DF23614(v36, &unk_27CEAC540);
      v39 = v36;
      v26 = v35;
      MEMORY[0x223D540B0](v39, -1, -1);
      v40 = v34;
      v25 = v63;
      MEMORY[0x223D540B0](v40, -1, -1);
    }

    (*(v66 + 8))(v7, v68);
    swift_willThrow();
    v26(v25, v28);
    return sub_21DF23614(v29, &qword_27CEA9990);
  }

  else
  {
    v62 = v26;
    v42 = v64;
    sub_21DF23614(v64, &qword_27CEA9990);
    v43 = v11[2];
    v43(v42, v19, v10);
    v58(v42, 0, 1, v10);
    sub_21E13EC04();
    v44 = v59;
    v43(v59, v19, v10);
    v45 = sub_21E13F1A4();
    v46 = sub_21E142544();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v63 = v19;
      v48 = v47;
      v64 = swift_slowAlloc();
      v67[0] = v64;
      *v48 = 136315138;
      sub_21DF279CC();
      v49 = sub_21E142AB4();
      v51 = v50;
      v52 = v44;
      v53 = v62;
      v62(v52, v10);
      v54 = sub_21E0E08C0(v49, v51, v67);

      *(v48 + 4) = v54;
      _os_log_impl(&dword_21DF05000, v45, v46, "Wrote file to path %s", v48, 0xCu);
      v55 = v64;
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x223D540B0](v55, -1, -1);
      MEMORY[0x223D540B0](v48, -1, -1);

      (*(v66 + 8))(v60, v68);
      return v53(v63, v10);
    }

    else
    {

      v56 = v62;
      v62(v44, v10);
      (*(v66 + 8))(v60, v68);
      return v56(v19, v10);
    }
  }
}

uint64_t sub_21E012970()
{

  return swift_deallocClassInstance();
}

uint64_t Label<>.init(_:internalSystemName:)()
{
  sub_21E141684();
}

uint64_t sub_21E012A80@<X0>(uint64_t a1@<X8>)
{
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_21E140C64();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t Label<>.init<A>(_:internalSystemName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21E141684();

  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t sub_21E012C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = sub_21E140C94();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_21E012D28@<X0>(uint64_t *a1@<X8>)
{

  result = sub_21E141634();
  *a1 = result;
  return result;
}

uint64_t sub_21E012D74(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_21E141DD4();
}

uint64_t FloatingResultFooterView.init<>(_:bundleIdentifier:action:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD360);
  v11 = (a5 + v10[9]);
  *v11 = a1;
  v11[1] = a2;
  v12 = (a5 + v10[10]);
  *v12 = a3;
  v12[1] = a4;
  sub_21DF23B80();

  if (!sub_21E1426B4())
  {
    v13 = [objc_opt_self() mainBundle];
  }

  v14 = sub_21E140C64();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v22 = a5 + v10[11];
  *v22 = v14;
  *(v22 + 1) = v16;
  v22[16] = v18 & 1;
  *(v22 + 3) = v20;
  return result;
}

uint64_t sub_21E0130B8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CE00F0];
  v3 = sub_21E140034();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_21E01312C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21E13FF94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_21DF236C0(v2, &v14 - v9, &qword_27CEAD070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21E13F444();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_21E142574();
    v13 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t FloatingResultFooterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v55 = sub_21E13FC44();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9810);
  v50 = *(a1 + 16);
  v49 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75E0);
  v4 = sub_21E13FB54();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6DF8);
  v48 = *(a1 + 24);
  v6 = v48;
  v7 = sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
  v73 = v6;
  v74 = v7;
  WitnessTable = swift_getWitnessTable();
  v9 = sub_21DF23E5C(&qword_280F68BF8, &qword_27CEA6DF8);
  v69 = v4;
  v70 = v5;
  v71 = WitnessTable;
  v72 = v9;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9818);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8D48);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75D0);
  sub_21E13FB54();
  v47 = sub_21E1407F4();
  sub_21E13FB54();
  swift_getTupleTypeMetadata3();
  sub_21E141DC4();
  swift_getWitnessTable();
  v10 = sub_21E1417C4();
  v11 = swift_getWitnessTable();
  v69 = v10;
  v70 = v11;
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8B80);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CEA9820);
  sub_21E13FB54();
  v69 = v10;
  v70 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = MEMORY[0x277CDF918];
  v67 = OpaqueTypeConformance2;
  v68 = MEMORY[0x277CDF918];
  v65 = swift_getWitnessTable();
  v66 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_21DF23E5C(qword_27CEAA470, &qword_27CEA8B80);
  v63 = v14;
  v64 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_21DF23E5C(&qword_280F68E48, qword_27CEA9820);
  v61 = v16;
  v62 = v17;
  v45 = swift_getWitnessTable();
  v18 = sub_21E141794();
  v46 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  v21 = sub_21E13FB54();
  v47 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v44 = &v40 - v22;
  v23 = swift_getWitnessTable();
  v24 = sub_21E0157FC(&qword_27CEA9E80, MEMORY[0x277CDE470]);
  v59 = v23;
  v60 = v24;
  v25 = swift_getWitnessTable();
  v41 = v25;
  v40 = sub_21E0157FC(&qword_27CEA7000, MEMORY[0x277CDDB18]);
  v69 = v21;
  v70 = v55;
  v71 = v25;
  v72 = v40;
  v42 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v40 - v30;
  v56 = v50;
  v57 = v48;
  v58 = v51;

  sub_21E141764();
  v32 = v44;
  sub_21E141164();
  (*(v46 + 8))(v20, v18);
  v33 = v52;
  sub_21E13FC34();
  v34 = v55;
  v35 = v41;
  v36 = v40;
  sub_21E140DC4();
  (*(v53 + 8))(v33, v34);
  (*(v47 + 8))(v32, v21);
  v69 = v21;
  v70 = v34;
  v71 = v35;
  v72 = v36;
  v37 = swift_getOpaqueTypeConformance2();
  sub_21DFE2A0C(v28, OpaqueTypeMetadata2, v37);
  v38 = *(v43 + 8);
  v38(v28, OpaqueTypeMetadata2);
  sub_21DFE2A0C(v31, OpaqueTypeMetadata2, v37);
  return (v38)(v31, OpaqueTypeMetadata2);
}

uint64_t sub_21E013C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a3;
  v75 = a2;
  v80 = a1;
  v86 = a4;
  v82 = sub_21E13FCA4();
  MEMORY[0x28223BE20](v82);
  v83 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_21E141C64();
  v85 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_21E140034();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v76 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9810);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75E0);
  v8 = sub_21E13FB54();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6DF8);
  v10 = sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
  v102 = a3;
  v103 = v10;
  v78 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v12 = sub_21DF23E5C(&qword_280F68BF8, &qword_27CEA6DF8);
  v98 = v8;
  v99 = v9;
  v100 = WitnessTable;
  v101 = v12;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9818);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8D48);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75D0);
  sub_21E13FB54();
  sub_21E1407F4();
  sub_21E13FB54();
  swift_getTupleTypeMetadata3();
  sub_21E141DC4();
  swift_getWitnessTable();
  v13 = sub_21E1417C4();
  v62 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - v14;
  v16 = swift_getWitnessTable();
  v98 = v13;
  v99 = v16;
  v61 = MEMORY[0x277CE0C98];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v19 = &v59 - v18;
  v20 = sub_21E13FB54();
  v66 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - v21;
  v64 = sub_21E13FB54();
  v71 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v60 = &v59 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8B80);
  v68 = sub_21E13FB54();
  v72 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = &v59 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CEA9820);
  v69 = sub_21E13FB54();
  v73 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v70 = &v59 - v27;
  v87 = v75;
  v88 = v74;
  v89 = v80;
  sub_21E140004();
  sub_21E1417B4();
  v28 = v77;
  v29 = v76;
  v30 = v79;
  (*(v77 + 104))(v76, *MEMORY[0x277CE00F0], v79);
  sub_21E140E84();
  (*(v28 + 8))(v29, v30);
  (*(v62 + 8))(v15, v13);
  sub_21E140904();
  v98 = v13;
  v99 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21E1412F4();
  (*(v63 + 8))(v19, OpaqueTypeMetadata2);
  sub_21E140974();
  v32 = MEMORY[0x277CDF918];
  v96 = OpaqueTypeConformance2;
  v97 = MEMORY[0x277CDF918];
  v33 = swift_getWitnessTable();
  v34 = v60;
  sub_21E1412F4();
  (*(v66 + 8))(v22, v20);
  v35 = v81;
  sub_21E141BC4();
  v36 = *(v82 + 20);
  v37 = *MEMORY[0x277CE0118];
  v38 = sub_21E140144();
  v39 = v83;
  (*(*(v38 - 8) + 104))(&v83[v36], v37, v38);
  __asm { FMOV            V0.2D, #16.0 }

  *v39 = _Q0;
  v94 = v33;
  v95 = v32;
  v45 = v64;
  v46 = swift_getWitnessTable();
  sub_21E0157FC(&qword_27CEAA170, MEMORY[0x277CDFC08]);
  v47 = v65;
  v48 = v84;
  sub_21E140D54();
  sub_21E0157A0(v39);
  (*(v85 + 8))(v35, v48);
  (*(v71 + 8))(v34, v45);
  v49 = sub_21DF23E5C(qword_27CEAA470, &qword_27CEA8B80);
  v92 = v46;
  v93 = v49;
  v50 = v68;
  v51 = swift_getWitnessTable();
  sub_21DFE0D48();
  v52 = v67;
  sub_21E140E64();
  (*(v72 + 8))(v47, v50);
  v53 = sub_21DF23E5C(&qword_280F68E48, qword_27CEA9820);
  v90 = v51;
  v91 = v53;
  v54 = v69;
  v55 = swift_getWitnessTable();
  v56 = v70;
  sub_21DFE2A0C(v52, v54, v55);
  v57 = *(v73 + 8);
  v57(v52, v54);
  sub_21DFE2A0C(v56, v54, v55);
  return (v57)(v56, v54);
}

uint64_t sub_21E014884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v119 = a4;
  v120 = sub_21E13F444();
  v99 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v118 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v117 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DF8);
  MEMORY[0x28223BE20](v10);
  v124 = &v92 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75E0);
  v12 = sub_21E13FB54();
  v100 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v123 = &v92 - v13;
  v14 = sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
  v145 = a3;
  v146 = v14;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_21DF23E5C(&qword_280F68BF8, &qword_27CEA6DF8);
  v101 = v12;
  *&v126 = v12;
  *(&v126 + 1) = v10;
  v98 = WitnessTable;
  v127 = WitnessTable;
  v95 = v16;
  v128 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v96 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v94 = &v92 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9818);
  v97 = OpaqueTypeMetadata2;
  v19 = sub_21E13FB54();
  v105 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v102 = &v92 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8D48);
  v109 = v19;
  v21 = sub_21E13FB54();
  v110 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v104 = &v92 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75D0);
  v111 = v21;
  v23 = sub_21E13FB54();
  v112 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v107 = &v92 - v24;
  sub_21E1407F4();
  v113 = v23;
  v93 = sub_21E13FB54();
  v115 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v106 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v108 = &v92 - v27;
  MEMORY[0x28223BE20](v28);
  v116 = &v92 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA98B8);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v92 - v32;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9810);
  MEMORY[0x28223BE20](v103);
  v114 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v92 - v36;
  v121 = a2;
  v122 = a3;
  v38 = *(type metadata accessor for FloatingResultFooterView() + 36);
  v125 = a1;
  v39 = (a1 + v38);
  v40 = v39[1];
  if (v40)
  {
    v41 = *v39;
    KeyPath = swift_getKeyPath();
    v92 = v10;
    v43 = v37;
    v44 = KeyPath;
    v134[0] = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA98E0);
    sub_21E141704();
    v45 = v126;
    *&v126 = v41;
    *(&v126 + 1) = v40;
    v127 = 0x4034000000000000;
    v128 = v44;
    v129 = 0;
    v130 = v45;
    sub_21DFE0F24();
    sub_21E141164();
    v46 = v128;
    LOBYTE(v44) = v129;
    v47 = v130;

    v48 = v44;
    v37 = v43;
    v10 = v92;
    sub_21DFE0F78(v46, v48);

    sub_21DFE0F84(v33, v37);
    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  (*(v31 + 56))(v37, v49, 1, v30);
  sub_21E140994();
  sub_21E140A04();
  sub_21E140A54();

  v50 = v123;
  sub_21E141204();

  v51 = *MEMORY[0x277CDFA10];
  v52 = sub_21E13F9D4();
  v53 = v124;
  (*(*(v52 - 8) + 104))(v124, v51, v52);
  sub_21E0157FC(&unk_280F68FD8, MEMORY[0x277CDFA28]);
  result = sub_21E142074();
  if (result)
  {
    v55 = v94;
    v56 = v101;
    v57 = v98;
    v58 = v95;
    sub_21E140F74();
    sub_21DF23614(v53, &qword_27CEA6DF8);
    (*(v100 + 8))(v50, v56);
    *&v126 = v56;
    *(&v126 + 1) = v10;
    v127 = v57;
    v128 = v58;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v60 = v102;
    v61 = v97;
    sub_21E141034();
    (*(v96 + 8))(v55, v61);
    v124 = v37;
    v62 = v117;
    sub_21E01312C(v117);
    v63 = v99;
    v64 = v118;
    v65 = v120;
    (*(v99 + 104))(v118, *MEMORY[0x277CDF3C0], v120);
    v66 = sub_21E13F434();
    v67 = *(v63 + 8);
    v67(v64, v65);
    v67(v62, v65);
    v68 = objc_opt_self();
    v69 = &selRef_systemLightGrayColor;
    if ((v66 & 1) == 0)
    {
      v69 = &selRef_systemDarkGrayColor;
    }

    v70 = [v68 *v69];
    sub_21E141414();
    v71 = sub_21DF23E5C(&qword_27CEA98C0, &qword_27CEA9818);
    v143 = OpaqueTypeConformance2;
    v144 = v71;
    v72 = v109;
    v73 = swift_getWitnessTable();
    v74 = v104;
    sub_21E140F84();

    (*(v105 + 8))(v60, v72);
    v75 = sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48);
    v141 = v73;
    v142 = v75;
    v76 = v111;
    v77 = swift_getWitnessTable();
    v78 = v107;
    sub_21E1413B4();
    (*(v110 + 8))(v74, v76);
    v79 = sub_21DF23E5C(&qword_280F68DB0, &qword_27CEA75D0);
    v139 = v77;
    v140 = v79;
    v80 = v113;
    v81 = swift_getWitnessTable();
    v82 = v108;
    sub_21E141164();
    (*(v112 + 8))(v78, v80);
    v83 = sub_21E0157FC(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    v137 = v81;
    v138 = v83;
    v84 = v93;
    v85 = swift_getWitnessTable();
    v86 = v116;
    sub_21DFE2A0C(v82, v84, v85);
    v87 = v115;
    v88 = *(v115 + 8);
    v88(v82, v84);
    v89 = v124;
    v90 = v114;
    sub_21DF236C0(v124, v114, &qword_27CEA9810);
    *&v126 = v90;
    v91 = v106;
    (*(v87 + 16))(v106, v86, v84);
    v135 = 0;
    v136 = 0;
    *(&v126 + 1) = v91;
    v127 = &v135;
    v134[0] = v103;
    v134[1] = v84;
    v134[2] = MEMORY[0x277CE1180];
    v131 = sub_21DFE0DE4();
    v132 = v85;
    v133 = MEMORY[0x277CE1170];
    sub_21E012D74(&v126, 3uLL, v134);
    v88(v86, v84);
    sub_21DF23614(v89, &qword_27CEA9810);
    v88(v91, v84);
    return sub_21DF23614(v90, &qword_27CEA9810);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21E0157A0(uint64_t a1)
{
  v2 = sub_21E13FCA4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E0157FC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_21E0158FC()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ShiftingOverlayContainer();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = *(*&v0[qword_27CEAA500] + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
  swift_getKeyPath();
  sub_21DF4CFC8();

  sub_21E13D3C4();

  swift_beginAccess();
  v2 = *(v1 + 56);

  [v0 bounds];
  return [*&v0[qword_27CEAA4F8] setFrame_];
}

void sub_21E015A48(void *a1)
{
  v1 = a1;
  sub_21E0158FC();
}

uint64_t sub_21E015A90(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return sub_21E13F994();
}

id sub_21E015BA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShiftingOverlayContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21E015C18(uint64_t a1)
{
  v2 = *(a1 + qword_27CEAA500);
}

char *sub_21E015CD8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *((*MEMORY[0x277D85000] & *v3) + 0x50);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v17 - v8;
  sub_21E13F9A4();
  (*(v7 + 16))(v9, a1, v6);
  *(v3 + qword_27CEAA4F8) = sub_21E13F964();
  *(v3 + qword_27CEAA500) = a2;
  v10 = type metadata accessor for ShiftingOverlayContainer();
  v17.receiver = v3;
  v17.super_class = v10;
  v11 = a2;
  v12 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v13 = *&v12[qword_27CEAA500];
  v14 = *(v13 + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_trackingOverlayView);
  *(v13 + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_trackingOverlayView) = v12;
  v15 = v12;

  [v15 addSubview_];
  return v15;
}

uint64_t sub_21E015F18()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SheetTrackingAssistant();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21E015FA0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_21E0160DC(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_21E0162C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for ShiftingOverlayContainerWrapper();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_21E0163A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_21E016420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_21E01649C()
{
  swift_getWitnessTable();
  sub_21E1402A4();
  __break(1u);
}

char *sub_21E0164DC(uint64_t a1)
{
  type metadata accessor for ShiftingOverlayContainer();
  v3 = *(v1 + *(a1 + 36));
  v4 = sub_21E015E9C(v1, v3);

  return v4;
}

uint64_t sub_21E01656C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E017C38(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__corners;
  swift_beginAccess();
  v5 = sub_21E13ED04();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21E016664(uint64_t a1)
{
  v2 = sub_21E13ED04();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_21DF5041C(v5);
}

char *SalientBackgroundView.__allocating_init(contentView:saliencyModel:sheetAssistant:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_21E017AE8(a1, a2, a3);

  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v6;
}

char *SalientBackgroundView.init(contentView:saliencyModel:sheetAssistant:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v3;
  v7 = *MEMORY[0x277D85000];
  v8 = sub_21E017880(a1, a2, a3);

  (*(*(*((v7 & v6) + 0x50) - 8) + 8))(a1);
  return v8;
}

uint64_t sub_21E0168CC(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return sub_21E13F994();
}

void sub_21E0169A4()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for SalientBackgroundView();
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  v2 = [v0 window];
  if (v2)
  {
    v3 = v2;
    v4 = *&v0[qword_27CEAA588];
    [v1 bounds];
    [v4 setFrame_];
    v5 = [objc_opt_self() _isInAnimationBlockWithAnimationsEnabled];
    v6 = sub_21E016CC4(v3, v5, *&v1[qword_27CEAA5A8]);
    *&v1[qword_27CEAA5A8] = v6;
    v7 = *&v1[qword_27CEAA590];
    v8 = OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel;
    v9 = *(v7 + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
    swift_getKeyPath();
    sub_21E017C38(&qword_280F6C000, type metadata accessor for SheetModel);

    sub_21E13D3C4();

    v10 = *(v9 + 24);

    *&v1[qword_27CEAA5B0] = v10;
    v11 = *(v7 + v8);
    swift_beginAccess();
    if (*(v11 + 56) == v6)
    {
      *(v11 + 56) = v6;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);

      sub_21E13D3B4();
    }

    [v1 bounds];
    [*&v1[qword_27CEAA598] setFrame_];
  }
}

void sub_21E016C7C(void *a1)
{
  v1 = a1;
  sub_21E0169A4();
}

double sub_21E016CC4(void *a1, int a2, double a3)
{
  v7 = sub_21E13ED04();
  v72 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + qword_27CEAA5A0);
  swift_getKeyPath();
  v75 = v10;
  sub_21E017C38(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v11 = *(v10 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  if (!v11)
  {
    return 0.0;
  }

  v71 = v3;
  swift_getKeyPath();
  v75 = v10;

  sub_21E13D3C4();

  v12 = *(v10 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__fullscreenEntity);
  v13 = sub_21E1423C4();
  MEMORY[0x28223BE20](v13);
  *(&v64 - 2) = v11;
  *(&v64 - 1) = v12;

  v14 = sub_21E0C372C(sub_21DF23B64, (&v64 - 4), "VisualIntelligenceUI/NewEntityModel.swift");

  if (v14)
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  v75 = v11;
  v16 = sub_21E017C38(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  v70 = v15;
  v69 = v16;
  sub_21E13D3C4();

  v17 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v18 = *(v11 + v17);
  swift_getKeyPath();
  v74 = v18;
  sub_21E017C38(&qword_280F69240, type metadata accessor for CardModel);

  sub_21E13D3C4();

  v19 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience;
  swift_beginAccess();
  LOBYTE(v19) = *(v18 + v19);

  v20 = v71;
  if (((1 << v19) & 0x33) == 0)
  {
    goto LABEL_6;
  }

  v67 = a2;
  v68 = a1;
  [a1 bounds];
  Height = CGRectGetHeight(v76);
  v22 = *(v20 + qword_27CEAA590);
  v23 = OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel;
  v24 = *(v22 + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
  swift_getKeyPath();
  v73 = v24;
  sub_21E017C38(&qword_280F6C000, type metadata accessor for SheetModel);

  sub_21E13D3C4();

  v25 = *(v24 + 24);

  v26 = Height - v25;
  v27 = *(v22 + v23);
  swift_getKeyPath();
  v73 = v27;

  sub_21E13D3C4();

  v28 = *(v27 + 40);

  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = *(v28 + 32);
  }

  else
  {
    v30 = 0.0;
  }

  v65 = v30;
  v32 = Height * 0.5;
  v33 = v26 + v25 * 0.5;
  v66 = v26 * 0.5;

  swift_getKeyPath();
  v73 = v11;
  sub_21E13D3C4();

  v34 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__corners;
  swift_beginAccess();
  v35 = v72;
  (*(*&v72 + 16))(v9, v11 + v34, v7);
  sub_21E13ECD4();
  v37 = v36;
  (*(*&v35 + 8))(v9, v7);
  v38 = v68;
  [v68 bounds];
  v39 = Height * v37;
  v40 = v39 - a3;
  v41 = sub_21E141C74();
  v42 = v67;
  if (v41)
  {
    v43 = 28.0;
    if (v32 >= v26)
    {
      v44 = 28.0;
      if (v26 >= Height * 0.25)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v43 = 0.0;
    if (v32 >= v26)
    {
      v44 = 0.0;
      if (v26 >= Height * 0.25)
      {
        goto LABEL_38;
      }

LABEL_35:
      if (v25 * 0.25 + v33 < v40)
      {
        goto LABEL_63;
      }

      if (v67)
      {
        [v38 safeAreaInsets];
        v53 = v52;

        return v39 - v53 + -24.0;
      }

LABEL_38:
      if (v40 < v26)
      {
        if (a3 <= 0.0)
        {

          if (v39 - v66 > 0.0)
          {
            return v39 - v66;
          }
        }

        else
        {
          v54 = v25 - *(v71 + qword_27CEAA5B0);
          if (v66 < v39 - (v54 + a3) && v54 < 0.0)
          {
            v56 = a3;
          }

          else
          {
            v56 = v54 + a3;
          }

          [v38 safeAreaInsets];
          v58 = v57;

          if (v39 - v56 >= v58 + 24.0)
          {
            a3 = v56;
            if (v25 + v44 <= v56)
            {
              return v25 + v44 + -16.0;
            }
          }
        }

        return a3;
      }

      if (v40 < v25 * 0.25 + v33)
      {
        v61 = v66 + v39 - v26;
        [v38 safeAreaInsets];
        v63 = v62;

        if (v39 - v61 >= v63 + 24.0)
        {
          return v61;
        }

        return a3;
      }

LABEL_63:

      return a3;
    }
  }

  v45 = v25 - *(v71 + qword_27CEAA5B0);
  if (v40 < v26)
  {
    if (!v29 || v45 >= 0.0 || v25 >= v65 + v43 || a3 != 0.0)
    {
      v46 = v45 + a3;
      if ((v67 & 1) == 0 || v46 >= 16.0)
      {
        v47 = v43;
        if (v39 - v46 >= v66 || a3 <= 0.0)
        {
          v49 = v45 + a3;
        }

        else
        {
          v49 = a3;
        }

        [v38 safeAreaInsets];
        v51 = v50;

        if (v39 - v49 < v51 + 24.0)
        {
          return a3;
        }

        a3 = v25 - v47 > v49 ? v49 : v25 - v47;
        if (a3 > 0.0)
        {
          return a3;
        }

        return 0.0;
      }
    }

LABEL_6:

    return 0.0;
  }

  v72 = v43;

  if (v40 < v25 * 0.25 + v33)
  {
    if (!v29 || v45 >= 0.0 || v25 >= v65 + v72 || (v59 = a3 == 0.0, a3 = 0.0, !v59))
    {
      v60 = Height - v33 + v39 - v26;
      a3 = 0.0;
      if ((v42 & (v60 < 16.0)) == 0 && v25 >= v60)
      {
        if (v60 > 0.0)
        {
          return Height - v33 + v39 - v26;
        }

        else
        {
          return 0.0;
        }
      }
    }
  }

  return a3;
}

id SalientBackgroundView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SalientBackgroundView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SalientBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21E0176D0(uint64_t a1)
{

  v2 = *(a1 + qword_27CEAA590);
}

double sub_21E01773C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E017C38(&qword_280F6C000, type metadata accessor for SheetModel);
  sub_21E13D3C4();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

void sub_21E01780C()
{
  *(v0 + qword_27CEAA5A8) = 0;
  *(v0 + qword_27CEAA5B0) = 0;
  sub_21E1429C4();
  __break(1u);
}

char *sub_21E017880(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *((*MEMORY[0x277D85000] & *v4) + 0x50);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v24 - v10;
  *(v4 + qword_27CEAA5A8) = 0;
  *(v4 + qword_27CEAA5B0) = 0;
  sub_21E13F9A4();
  (*(v9 + 16))(v11, a1, v8);
  v12 = sub_21E13F964();
  v13 = qword_27CEAA598;
  *(v4 + qword_27CEAA598) = v12;
  *(v4 + qword_27CEAA5A0) = a2;
  *(v4 + qword_27CEAA590) = a3;
  v14 = objc_allocWithZone(MEMORY[0x277D75DF8]);

  v15 = a3;
  v16 = [v14 initWithFrame_];
  v17 = qword_27CEAA588;
  *(v4 + qword_27CEAA588) = v16;
  [v16 setContentView_];
  [*(v4 + v17) setDisableAutomaticLayout_];
  [*(v4 + v17) setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = type metadata accessor for SalientBackgroundView();
  v24.receiver = v4;
  v24.super_class = v18;
  v19 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v20 = *&v19[qword_27CEAA590];
  v21 = *(v20 + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_trackingBackgroundView);
  *(v20 + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_trackingBackgroundView) = v19;
  v22 = v19;

  [v22 addSubview_];
  return v22;
}

uint64_t sub_21E017C38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SalientBackgroundViewRepresentable.init(contentView:saliencyModel:sheetAssistant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for SalientBackgroundViewRepresentable();
  *(a5 + *(result + 36)) = a2;
  *(a5 + *(result + 40)) = a3;
  return result;
}

uint64_t sub_21E017D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_21E017DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_21E017E44()
{
  swift_getWitnessTable();
  sub_21E1402A4();
  __break(1u);
}

char *sub_21E017E84(uint64_t a1)
{
  type metadata accessor for SalientBackgroundView();
  v3 = *(a1 + 40);
  v4 = *(v1 + *(a1 + 36));
  v5 = *(v1 + v3);

  v6 = v5;
  v7 = sub_21E017AE8(v1, v4, v6);

  return v7;
}

uint64_t sub_21E017F48()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NewSaliencyModel();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for SheetTrackingAssistant();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21E017FE8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_21E01812C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}