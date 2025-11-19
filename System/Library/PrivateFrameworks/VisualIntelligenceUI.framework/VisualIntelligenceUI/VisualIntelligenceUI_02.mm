uint64_t sub_21DF485E4@<X0>(uint64_t a1@<X8>)
{
  sub_21E141A44();
  v2 = sub_21E140914();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA74D8);
  *(a1 + *(result + 36)) = v2;
  return result;
}

uint64_t sub_21DF48654(uint64_t a1)
{
  v2 = sub_21E13F444();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_21E13FDA4();
}

void sub_21DF487D8()
{
  sub_21DF37A78();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_21DF48E78(319, &qword_280F68D70);
        if (v3 <= 0x3F)
        {
          sub_21DF48E78(319, &qword_280F68D48);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21DF488E0(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_21E13F444() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a3 + 24);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v8 - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  v15 = *(v11 + 80);
  if (v10 <= v12)
  {
    v16 = *(v11 + 84);
  }

  else
  {
    v16 = *(v9 + 84);
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(*(v8 - 8) + 64) + 7;
  if (v16 < a2)
  {
    v18 = ((((((v17 + ((v14 + v15 + (((v7 & 0xFFFFFFFFFFFFFFF8) + v13 + 42) & ~v13)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v19 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2 - v16 + 1;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *(a1 + v18);
        if (!v23)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v23 = *(a1 + v18);
        if (!v23)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      if (!v22)
      {
        goto LABEL_32;
      }

      v23 = *(a1 + v18);
      if (!v23)
      {
        goto LABEL_32;
      }
    }

    v25 = v23 - 1;
    if (v19)
    {
      v25 = 0;
      v26 = *a1;
    }

    else
    {
      v26 = 0;
    }

    v32 = v16 + (v26 | v25);
    return (v32 + 1);
  }

LABEL_32:
  v27 = (((a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8) + v13 + 34) & ~v13;
  if (v10 == v16)
  {
    v28 = *(v9 + 48);

    return v28(v27);
  }

  v29 = (v27 + v14 + v15) & ~v15;
  if (v12 != v16)
  {
    v31 = *(((v17 + v29) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v31 >= 0xFFFFFFFF)
    {
      LODWORD(v31) = -1;
    }

    v32 = v31 - 1;
    if (v32 < 0)
    {
      v32 = -1;
    }

    return (v32 + 1);
  }

  v30 = *(v11 + 48);

  return v30(v29, v12, v8);
}

void sub_21DF48B80(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_21E13F444() - 8) + 64);
  v9 = *(*(a4 + 16) - 8);
  if (v8 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v8;
  }

  v11 = *(*(a4 + 16) - 8);
  v12 = *(v9 + 84);
  v13 = *(a4 + 24);
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  v16 = *(v9 + 80);
  v17 = *(v9 + 64);
  v18 = *(v14 + 80);
  if (v12 <= v15)
  {
    v19 = *(v14 + 84);
  }

  else
  {
    v19 = v12;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  v20 = *(v14 + 64) + 7;
  v21 = ((((((v20 + ((v17 + v18 + (((v10 & 0xFFFFFFFFFFFFFFF8) + v16 + 42) & ~v16)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v19 >= a3)
  {
    v24 = 0;
    v25 = a2 - v19;
    if (a2 <= v19)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (((((((v20 + ((v17 + v18 + (((v10 & 0xFFFFFFF8) + v16 + 42) & ~v16)) & ~v18)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a3 - v19 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = a2 - v19;
    if (a2 <= v19)
    {
LABEL_22:
      if (v24 > 1)
      {
        if (v24 != 2)
        {
          *(a1 + v21) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *(a1 + v21) = 0;
      }

      else if (v24)
      {
        *(a1 + v21) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      if (!a2)
      {
        return;
      }

LABEL_38:
      v28 = (((a1 + v10 + 8) & 0xFFFFFFFFFFFFFFF8) + v16 + 34) & ~v16;
      if (v12 == v19)
      {
        v29 = *(v11 + 56);

        v29(v28, a2);
      }

      else
      {
        v30 = (v28 + v17 + v18) & ~v18;
        if (v15 == v19)
        {
          v31 = *(v14 + 56);

          v31(v30, a2, v15, v13);
        }

        else
        {
          v32 = ((v20 + v30) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v32 = (a2 - 0x7FFFFFFF);
            v32[1] = 0;
          }

          else
          {
            v32[1] = a2;
          }
        }
      }

      return;
    }
  }

  if (((((((v20 + ((v17 + v18 + (((v10 & 0xFFFFFFF8) + v16 + 42) & ~v16)) & ~v18)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v26 = v25;
  }

  else
  {
    v26 = 1;
  }

  if (((((((v20 + ((v17 + v18 + (((v10 & 0xFFFFFFF8) + v16 + 42) & ~v16)) & ~v18)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v27 = ~v19 + a2;
    bzero(a1, ((((((v20 + ((v17 + v18 + (((v10 & 0xFFFFFFFFFFFFFFF8) + v16 + 42) & ~v16)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    *a1 = v27;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      *(a1 + v21) = v26;
    }

    else
    {
      *(a1 + v21) = v26;
    }
  }

  else if (v24)
  {
    *(a1 + v21) = v26;
  }
}

void sub_21DF48E78(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21E141744();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_21DF48EDC()
{
  result = qword_27CEA7490;
  if (!qword_27CEA7490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7488);
    sub_21DF48F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7490);
  }

  return result;
}

unint64_t sub_21DF48F68()
{
  result = qword_27CEA7498;
  if (!qword_27CEA7498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA74A0);
    sub_21DF48FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7498);
  }

  return result;
}

unint64_t sub_21DF48FF4()
{
  result = qword_27CEA74A8;
  if (!qword_27CEA74A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA74B0);
    sub_21DF23E5C(&qword_27CEA74B8, &qword_27CEA74C0);
    sub_21DF23E5C(&qword_27CEA74C8, &qword_27CEA74D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA74A8);
  }

  return result;
}

unint64_t sub_21DF490D8()
{
  result = qword_27CEA74E0;
  if (!qword_27CEA74E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA74D8);
    sub_21DF49194(&qword_27CEA74E8, MEMORY[0x277CDF088]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA74E0);
  }

  return result;
}

uint64_t sub_21DF49194(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21DF491DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DF4927C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for AttributionContainer() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_21DF46938(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_21DF49338()
{
  type metadata accessor for AttributionContainer();
  sub_21E13F734();

  return sub_21DF46C7C();
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  v7 = *(v0 + 24);
  v2 = type metadata accessor for AttributionContainer();
  v3 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21E13F444();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v4 + *(v2 + 64), v1);
  (*(*(v7 - 8) + 8))(v4 + *(v2 + 68));

  return swift_deallocObject();
}

uint64_t sub_21DF49614()
{
  type metadata accessor for AttributionContainer();
  type metadata accessor for AttributionContainer();
  return sub_21DF46CF8();
}

unint64_t sub_21DF496C4()
{
  result = qword_27CEA70D0;
  if (!qword_27CEA70D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA70C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA70D0);
  }

  return result;
}

uint64_t (*EnvironmentValues.openPredictedAction.getter())()
{
  sub_21DF497E0();
  sub_21E13FFA4();
  *(swift_allocObject() + 16) = v1;
  return sub_21DF26868;
}

unint64_t sub_21DF497E0()
{
  result = qword_27CEA7528;
  if (!qword_27CEA7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7528);
  }

  return result;
}

uint64_t EnvironmentValues.openPredictedAction.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_21DF497E0();
  return sub_21E13FFB4();
}

void (*EnvironmentValues.openPredictedAction.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_21DF497E0();
  sub_21E13FFA4();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 16);
  *v4 = sub_21DF27C9C;
  *(v4 + 8) = v5;
  return sub_21DF49970;
}

void sub_21DF49970(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v2[2] = sub_21DF27CA0;
    v2[3] = v5;

    sub_21E13FFB4();
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v2[2] = sub_21DF27CA0;
    v2[3] = v6;
    sub_21E13FFB4();
  }

  free(v2);
}

uint64_t sub_21DF49A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v5 = sub_21E13EFC4();
  v25 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E13EEE4();
  v24 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  v15 = sub_21E1423F4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  (*(v6 + 16))(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v5);
  sub_21E1423C4();
  v16 = v28;

  v17 = v29;

  v18 = sub_21E1423B4();
  v19 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v20 = (v10 + *(v6 + 80) + v19) & ~*(v6 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 2) = v18;
  *(v21 + 3) = v22;
  *(v21 + 4) = v16;
  *(v21 + 5) = v17;
  (*(v9 + 32))(&v21[v19], v11, v24);
  (*(v6 + 32))(&v21[v20], v26, v25);
  sub_21E0C2E04(0, 0, v14, &unk_21E146C88, v21);
}

uint64_t sub_21DF49D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_21E13F1B4();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC550);
  v7[9] = swift_task_alloc();
  v7[10] = sub_21E1423C4();
  v7[11] = sub_21E1423B4();
  v9 = swift_task_alloc();
  v7[12] = v9;
  *v9 = v7;
  v9[1] = sub_21DF49ED4;
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v7 + 17, 0, 0, 0xD000000000000017, 0x800000021E15B6B0, sub_21DFF37E8, 0, v10);
}

uint64_t sub_21DF49ED4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_21DF4A2CC;
  }

  else
  {
    v2 = sub_21DF49FE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21DF49FE8()
{
  *(v0 + 137) = *(v0 + 136);
  v2 = sub_21E142364();
  *(v0 + 112) = v2;
  *(v0 + 120) = v1;

  return MEMORY[0x2822009F8](sub_21DF4A068, v2, v1);
}

uint64_t sub_21DF4A068()
{
  if (*(v0 + 137))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 40);
    v3 = sub_21E13EFC4();
    (*(*(v3 - 8) + 16))(v1, v2, v3);
    v4 = *MEMORY[0x277D792E8];
    v5 = sub_21E13DFD4();
    v6 = *(v5 - 8);
    (*(v6 + 104))(v1, v4, v5);
    (*(v6 + 56))(v1, 0, 1, v5);
    v7 = swift_task_alloc();
    *(v0 + 128) = v7;
    *v7 = v0;
    v7[1] = sub_21DF4A468;
    v8 = *(v0 + 72);
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);

    return sub_21E0BEE74(v10, v9, v8, 0);
  }

  else
  {

    sub_21E13EBE4();
    v12 = sub_21E13F1A4();
    v13 = sub_21E142564();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 56);
    v15 = *(v0 + 64);
    v17 = *(v0 + 48);
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21DF05000, v12, v13, "Failed to unlock to open a predicted action.", v18, 2u);
      MEMORY[0x223D540B0](v18, -1, -1);
    }

    (*(v16 + 8))(v15, v17);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_21DF4A2CC()
{
  v2 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21DF4A350, v2, v1);
}

uint64_t sub_21DF4A350()
{

  sub_21E13EBE4();
  v1 = sub_21E13F1A4();
  v2 = sub_21E142564();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21DF05000, v1, v2, "Failed to unlock to open a predicted action.", v7, 2u);
    MEMORY[0x223D540B0](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_21DF4A468()
{
  v1 = *v0;
  v2 = *(*v0 + 72);

  sub_21DF4AAF8(v2);
  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_21DF4A5AC, v4, v3);
}

uint64_t sub_21DF4A5AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21DF4A61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21DF4A898;
  *(v9 + 24) = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7538);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7540) + 36));
  *v11 = KeyPath;
  v11[1] = sub_21DF27CA0;
  v11[2] = v9;
}

uint64_t View.allowsOpeningPredictedActions(executor:entity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x223D51B40](v4, a3, &type metadata for OpenPredictedActionModifier);
}

unint64_t sub_21DF4A784()
{
  result = qword_27CEA7530;
  if (!qword_27CEA7530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7530);
  }

  return result;
}

uint64_t sub_21DF4A7D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21DF4A820(uint64_t result, int a2, int a3)
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

uint64_t sub_21DF4A8A0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_21E13EEE4() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_21E13EFC4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_21DF4AA04;

  return sub_21DF49D48(a1, v10, v11, v12, v13, v1 + v6, v1 + v9);
}

uint64_t sub_21DF4AA04()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21DF4AAF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DF4AB60()
{
  result = qword_27CEA7548;
  if (!qword_27CEA7548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7540);
    sub_21DF23E5C(&qword_27CEA7550, &qword_27CEA7538);
    sub_21DF23E5C(&qword_27CEA7558, &qword_27CEA7560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7548);
  }

  return result;
}

uint64_t sub_21DF4AC58(uint64_t a1)
{
  v3 = sub_21E13D834();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v1 + *(type metadata accessor for Omnibar() + 36)) + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
  swift_getKeyPath();
  v11[1] = v7;
  sub_21DF4CFC8();

  sub_21E13D3C4();

  (*(v4 + 16))(v6, a1, v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == *MEMORY[0x277D78DB0])
  {

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v10 = v8 == *MEMORY[0x277D78DC0] || v8 == *MEMORY[0x277D78DC8];
    if (v10 || v8 == *MEMORY[0x277D78DA8] || v8 == *MEMORY[0x277D78DB8])
    {
    }

    else
    {
      result = sub_21E142B04();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21DF4B2E4(uint64_t a1)
{
  v3 = sub_21E13D834();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v1 + *(type metadata accessor for Omnibar() + 36)) + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
  swift_getKeyPath();
  v11[1] = v7;
  sub_21DF4CFC8();

  sub_21E13D3C4();

  (*(v4 + 16))(v6, a1, v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == *MEMORY[0x277D78DB0])
  {

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v10 = v8 == *MEMORY[0x277D78DC0] || v8 == *MEMORY[0x277D78DC8];
    if (v10 || v8 == *MEMORY[0x277D78DA8] || v8 == *MEMORY[0x277D78DB8])
    {
    }

    else
    {
      result = sub_21E142B04();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21DF4BA24(uint64_t a1)
{
  v3 = sub_21E13D834();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v1 + *(type metadata accessor for Omnibar() + 36)) + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
  swift_getKeyPath();
  v11[1] = v7;
  sub_21DF4CFC8();

  sub_21E13D3C4();

  (*(v4 + 16))(v6, a1, v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == *MEMORY[0x277D78DB0])
  {

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v10 = v8 == *MEMORY[0x277D78DC0] || v8 == *MEMORY[0x277D78DC8];
    if (v10 || v8 == *MEMORY[0x277D78DA8] || v8 == *MEMORY[0x277D78DB8])
    {
    }

    else
    {
      result = sub_21E142B04();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21DF4C0AC(uint64_t a1)
{
  v2 = sub_21E13D834();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  result = (*(v3 + 88))(v6, v2);
  if (result == *MEMORY[0x277D78DB0])
  {
    return (*(v3 + 8))(v6, v2);
  }

  if (result != *MEMORY[0x277D78DC0] && result != *MEMORY[0x277D78DC8] && result != *MEMORY[0x277D78DA8] && result != *MEMORY[0x277D78DB8])
  {
    result = sub_21E142B04();
    __break(1u);
  }

  return result;
}

uint64_t sub_21DF4C2EC(uint64_t a1)
{
  v3 = sub_21E13D834();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v1 + *(type metadata accessor for Omnibar() + 36)) + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
  swift_getKeyPath();
  v11[1] = v7;
  sub_21DF4CFC8();

  sub_21E13D3C4();

  (*(v4 + 16))(v6, a1, v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == *MEMORY[0x277D78DB0])
  {

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v10 = v8 == *MEMORY[0x277D78DC0] || v8 == *MEMORY[0x277D78DC8];
    if (v10 || v8 == *MEMORY[0x277D78DA8] || v8 == *MEMORY[0x277D78DB8])
    {
    }

    else
    {
      result = sub_21E142B04();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21DF4C690(uint64_t a1)
{
  v3 = sub_21E13D834();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v1 + *(type metadata accessor for Omnibar() + 36)) + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
  swift_getKeyPath();
  v11[1] = v7;
  sub_21DF4CFC8();

  sub_21E13D3C4();

  (*(v4 + 16))(v6, a1, v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == *MEMORY[0x277D78DB0])
  {

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v10 = v8 == *MEMORY[0x277D78DC0] || v8 == *MEMORY[0x277D78DC8];
    if (v10 || v8 == *MEMORY[0x277D78DA8] || v8 == *MEMORY[0x277D78DB8])
    {
    }

    else
    {
      result = sub_21E142B04();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21DF4CCB0(uint64_t a1)
{
  v3 = sub_21E13D834();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v1 + *(type metadata accessor for Omnibar() + 36)) + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
  swift_getKeyPath();
  v10[1] = v7;
  sub_21DF4CFC8();

  sub_21E13D3C4();

  (*(v4 + 16))(v6, a1, v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == *MEMORY[0x277D78DB0])
  {

    return (*(v4 + 8))(v6, v3);
  }

  else if (v8 == *MEMORY[0x277D78DC0] || v8 == *MEMORY[0x277D78DC8] || v8 == *MEMORY[0x277D78DA8] || v8 == *MEMORY[0x277D78DB8])
  {
  }

  else
  {
    result = sub_21E142B04();
    __break(1u);
  }

  return result;
}

unint64_t sub_21DF4CFC8()
{
  result = qword_280F6C000;
  if (!qword_280F6C000)
  {
    type metadata accessor for SheetModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F6C000);
  }

  return result;
}

uint64_t type metadata accessor for CapsuleButtonStyle()
{
  result = qword_27CEA7568;
  if (!qword_27CEA7568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21DF4D094()
{
  sub_21DF37A78();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21DF4D124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v72 = sub_21E13F904();
  MEMORY[0x28223BE20](v72);
  v71[1] = v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_21E13F8E4();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v5 = v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E1405E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7578);
  MEMORY[0x28223BE20](v74);
  v11 = v71 - v10;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7580);
  MEMORY[0x28223BE20](v76);
  v13 = v71 - v12;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7588);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = v71 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7590);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = v71 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7598);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v73 = v71 - v21;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA75A0);
  MEMORY[0x28223BE20](v82);
  v87 = v71 - v22;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA75A8);
  MEMORY[0x28223BE20](v81);
  v85 = v71 - v23;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA75B0);
  MEMORY[0x28223BE20](v83);
  v86 = v71 - v24;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA75B8);
  MEMORY[0x28223BE20](v84);
  v88 = v71 - v25;
  v90 = a1;
  sub_21E1405F4();
  sub_21DF4DD08();
  sub_21DF4DD60();
  sub_21E140DA4();
  (*(v7 + 8))(v9, v6);
  KeyPath = swift_getKeyPath();
  v27 = &v11[*(v74 + 36)];
  *v27 = KeyPath;
  *(v27 + 1) = 1;
  v27[16] = 0;
  sub_21E13F8D4();
  sub_21DF4E09C();
  sub_21E140EF4();
  (*(v79 + 8))(v5, v80);
  sub_21DF23614(v11, &qword_27CEA7578);
  v28 = sub_21E140AC4();
  v29 = swift_getKeyPath();
  v30 = &v13[*(v76 + 36)];
  *v30 = v29;
  v30[1] = v28;
  sub_21E1409E4();
  sub_21DF4E1A0();
  v31 = v75;
  sub_21E140D84();
  v32 = v89;
  sub_21DF23614(v13, &qword_27CEA7580);
  sub_21E141CC4();
  v33 = v73;
  sub_21E13FCE4();
  (*(v77 + 32))(v18, v31, v78);
  v34 = &v18[*(v16 + 44)];
  v35 = v98;
  *(v34 + 4) = v97;
  *(v34 + 5) = v35;
  *(v34 + 6) = v99;
  v36 = v94;
  *v34 = v93;
  *(v34 + 1) = v36;
  v37 = v96;
  *(v34 + 2) = v95;
  *(v34 + 3) = v37;
  LOBYTE(v31) = sub_21E140914();
  sub_21E13F374();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_21DF3DE9C(v18, v33, &qword_27CEA7590);
  v46 = v33 + *(v20 + 44);
  *v46 = v31;
  *(v46 + 8) = v39;
  *(v46 + 16) = v41;
  *(v46 + 24) = v43;
  *(v46 + 32) = v45;
  *(v46 + 40) = 0;
  if (*(v32 + *(type metadata accessor for CapsuleButtonStyle() + 20)) == 1)
  {
    v92 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  }

  else
  {
    sub_21E13F8F4();
  }

  v47 = sub_21E13F674();
  v48 = v87;
  sub_21DF3DE9C(v33, v87, &qword_27CEA7598);
  *(v48 + *(v82 + 36)) = v47;
  sub_21DF4DAEC(&v92);
  v49 = v92;
  v50 = v85;
  v51 = &v85[*(v81 + 36)];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA75E8);
  v53 = *(v52 + 52);
  v54 = *MEMORY[0x277CE0128];
  v55 = sub_21E140144();
  (*(*(v55 - 8) + 104))(v51 + v53, v54, v55);
  *v51 = v49;
  *(v51 + *(v52 + 56)) = 256;
  sub_21DF3DE9C(v48, v50, &qword_27CEA75A0);
  if (sub_21E140604())
  {
    v56 = 0.8;
  }

  else
  {
    v56 = 1.0;
  }

  v57 = v86;
  sub_21DF3DE9C(v50, v86, &qword_27CEA75A8);
  *(v57 + *(v83 + 36)) = v56;
  if (sub_21E140604())
  {
    v58 = 0.95;
  }

  else
  {
    v58 = 1.0;
  }

  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v60 = v59;
  v62 = v61;
  v63 = v88;
  sub_21DF3DE9C(v57, v88, &qword_27CEA75B0);
  v64 = v63 + *(v84 + 36);
  *v64 = v58;
  *(v64 + 8) = v58;
  *(v64 + 16) = v60;
  *(v64 + 24) = v62;
  v65 = sub_21E141D74();
  v66 = sub_21E140604();
  v67 = v63;
  v68 = v91;
  sub_21DF3DE9C(v67, v91, &qword_27CEA75B8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA75F0);
  v70 = v68 + *(result + 36);
  *v70 = v65;
  *(v70 + 8) = v66 & 1;
  return result;
}

uint64_t sub_21DF4DAEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21E13F444();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v14 - v8;
  v10 = sub_21E13F904();
  MEMORY[0x28223BE20](v10);
  if (*(v1 + *(type metadata accessor for CapsuleButtonStyle() + 20)) == 1)
  {
    sub_21E13F8F4();
  }

  else
  {
    sub_21E021DE8(v9);
    (*(v4 + 104))(v6, *MEMORY[0x277CDF3C0], v3);
    sub_21E13F434();
    v11 = *(v4 + 8);
    v11(v6, v3);
    v11(v9, v3);
    sub_21E141524();
    v12 = sub_21E141514();

    v14[1] = v12;
  }

  result = sub_21E13F674();
  *a1 = result;
  return result;
}

unint64_t sub_21DF4DD08()
{
  result = qword_280F68E08;
  if (!qword_280F68E08)
  {
    sub_21E1405E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68E08);
  }

  return result;
}

unint64_t sub_21DF4DD60()
{
  result = qword_27CEA75C0;
  if (!qword_27CEA75C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA75C0);
  }

  return result;
}

uint64_t sub_21DF4DDB4@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_21E140584();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = sub_21E140564();
  v27 = *(v8 - 8);
  v9 = v27;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_21E140574();
  sub_21E140594();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7658) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_21DF4E044@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21E13FFE4();
  *(a1 + 8) = 0x4008000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7650);
  return sub_21DF4DDB4((a1 + *(v2 + 44)));
}

unint64_t sub_21DF4E09C()
{
  result = qword_27CEA75C8;
  if (!qword_27CEA75C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7578);
    sub_21E1405E4();
    sub_21DF4DD08();
    sub_21DF4DD60();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_280F68DB0, &qword_27CEA75D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA75C8);
  }

  return result;
}

unint64_t sub_21DF4E1A0()
{
  result = qword_27CEA75D8;
  if (!qword_27CEA75D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7580);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7578);
    sub_21DF4E09C();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA75D8);
  }

  return result;
}

unint64_t sub_21DF4E2A4()
{
  result = qword_27CEA75F8;
  if (!qword_27CEA75F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75F0);
    sub_21DF4E35C();
    sub_21DF23E5C(&qword_280F68E70, &qword_27CEA7648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA75F8);
  }

  return result;
}

unint64_t sub_21DF4E35C()
{
  result = qword_27CEA7600;
  if (!qword_27CEA7600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75B8);
    sub_21DF4E3E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7600);
  }

  return result;
}

unint64_t sub_21DF4E3E8()
{
  result = qword_27CEA7608;
  if (!qword_27CEA7608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75B0);
    sub_21DF4E474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7608);
  }

  return result;
}

unint64_t sub_21DF4E474()
{
  result = qword_27CEA7610;
  if (!qword_27CEA7610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75A8);
    sub_21DF4E52C();
    sub_21DF23E5C(&qword_27CEA7640, &qword_27CEA75E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7610);
  }

  return result;
}

unint64_t sub_21DF4E52C()
{
  result = qword_27CEA7618;
  if (!qword_27CEA7618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75A0);
    sub_21DF4E5E4();
    sub_21DF23E5C(&qword_27CEA7630, &qword_27CEA7638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7618);
  }

  return result;
}

unint64_t sub_21DF4E5E4()
{
  result = qword_27CEA7620;
  if (!qword_27CEA7620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7598);
    sub_21DF4E670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7620);
  }

  return result;
}

unint64_t sub_21DF4E670()
{
  result = qword_27CEA7628;
  if (!qword_27CEA7628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7580);
    sub_21DF4E1A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7628);
  }

  return result;
}

uint64_t static AfterUnlock.perform(_:onFailure:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = MKBGetDeviceLockState();
  if (!v11 || v11 == 3)
  {
    return a1();
  }

  v13 = sub_21E1423F4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_21E1423C4();

  sub_21DF09028(a3);
  v14 = sub_21E1423B4();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = a4;
  sub_21E0C2E04(0, 0, v10, &unk_21E146EC0, v15);
}

uint64_t sub_21DF4E8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = sub_21E1423C4();
  v7[7] = sub_21E1423B4();
  v8 = swift_task_alloc();
  v7[8] = v8;
  *v8 = v7;
  v8[1] = sub_21DF4E9B8;
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v7 + 10, 0, 0, 0xD000000000000017, 0x800000021E15B6B0, sub_21DFF37E8, 0, v9);
}

uint64_t sub_21DF4E9B8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_21DF4EB4C;
  }

  else
  {
    v2 = sub_21DF4EACC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21DF4EACC()
{
  *(v0 + 81) = *(v0 + 80);
  v2 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21DF4EBD0, v2, v1);
}

uint64_t sub_21DF4EB4C()
{
  *(v0 + 81) = 0;
  v2 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21DF4EBD0, v2, v1);
}

uint64_t sub_21DF4EBD0()
{

  if ((sub_21E142434() & 1) == 0)
  {
    if (*(v0 + 81) == 1)
    {
      v1 = *(v0 + 16);
    }

    else
    {
      v1 = *(v0 + 32);
      if (!v1)
      {
        goto LABEL_6;
      }
    }

    v1();
  }

LABEL_6:
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21DF4EC60(uint64_t a1)
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
  v10[1] = sub_21DF4AA04;

  return sub_21DF4E8C0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t getEnumTagSinglePayload for NewActionModel.SpecialActionType(unsigned int *a1, int a2)
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

  return *a1;
}

_WORD *storeEnumTagSinglePayload for NewActionModel.SpecialActionType(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_21DF4EE28()
{
  result = qword_27CEA7668;
  if (!qword_27CEA7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7668);
  }

  return result;
}

void sub_21DF4EE7C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, int a6, uint64_t a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, double a12, double a13, double a14)
{
  v76 = a14;
  v78 = a6;
  v80 = a10;
  v81 = a11;
  v82 = a8;
  v83 = a9;
  v79 = a4;
  v85 = a1;
  v84 = sub_21E13F7B4();
  v20 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_21E13F934();
  v23 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v26 = INFINITY;
    v27 = a7;
  }

  else
  {
    v26 = INFINITY;
    v27 = a7;
    if (*&a2 != INFINITY)
    {
      v28 = (*&a2 + a13) / (a12 + a13);
      if (COERCE__INT64(fabs(v28)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      if (v28 <= -9.22337204e18)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v28 >= 9.22337204e18)
      {
LABEL_53:
        __break(1u);
        return;
      }

      v27 = v28;
      v26 = *&a2;
    }
  }

  if (v27 <= 1)
  {
    v27 = 1;
  }

  if (v27 >= a7)
  {
    v29 = a7;
  }

  else
  {
    v29 = v27;
  }

  if (__OFSUB__(v29, 1))
  {
    goto LABEL_48;
  }

  v30 = v29;
  v31 = v29 * a12;
  v32 = (v29 - 1) * a13;
  v33 = v31 + v32;
  if (v26 <= v33 || v26 == INFINITY)
  {
    v35 = v33;
  }

  else
  {
    v35 = v26;
  }

  if (a7 < 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (a7)
  {
    v36 = sub_21E142314();
    *(v36 + 16) = v29;
    bzero((v36 + 32), 8 * v29);
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  sub_21E13F884();
  sub_21DF4F6CC();
  sub_21E1424D4();
  sub_21E142504();
  v37 = v90;
  if (v89 < v90)
  {
    goto LABEL_50;
  }

  if (v90 != v89)
  {
    v73 = (v35 - v32) / v30 + a13;
    v75 = (v35 - v32) / v30;
    v38 = (v20 + 8);
    v39 = v23;
    v40 = (v36 + 32);
    v41 = (v39 + 8);
    v70 = (v36 + 40);
    v74 = a5 & 1;
    width = v80;
    height = v81;
    x = v82;
    y = v83;
    v72 = v89;
    do
    {
      sub_21E13F894();
      LOBYTE(v90) = 0;
      LOBYTE(v89) = v74;
      sub_21E13F774();
      v46 = *v38;
      (*v38)(v22, v84);
      sub_21E13F914();
      v88 = v47;
      sub_21E13F924();
      v49 = v48;
      v50 = *(v36 + 16);
      v86 = x;
      v87 = height;
      if (v50 == 1)
      {
        v51 = 0;
      }

      else
      {
        if (!v50)
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v51 = 0;
        v52 = 0;
        v53 = *v40;
        v54 = v70;
        for (i = 1; i != v50; ++i)
        {
          v56 = *v54++;
          v57 = v56;
          v58 = i < v52;
          v59 = v56 < v53;
          if (v56 != v53)
          {
            v58 = v59;
          }

          if (v58)
          {
            v51 = i;
            v53 = v57;
            v52 = i;
          }
        }
      }

      v60 = v82;
      v61 = v83;
      v91.origin.x = v82;
      v91.origin.y = v83;
      v62 = v80;
      v63 = v81;
      v91.size.width = v80;
      v91.size.height = v81;
      MinX = CGRectGetMinX(v91);
      v92.origin.x = v60;
      v92.origin.y = v61;
      v92.size.width = v62;
      v92.size.height = v63;
      MinY = CGRectGetMinY(v92);
      if ((v51 & 0x8000000000000000) != 0)
      {
        goto LABEL_45;
      }

      v66 = *(v36 + 16);
      if (v51 >= v66)
      {
        goto LABEL_46;
      }

      v67 = v87;
      v68 = MinX + v73 * v51;
      v69 = MinY + v40[v51];
      if (v78)
      {
        v71 = y;
        sub_21E13F894();
        _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
        LOBYTE(v90) = 0;
        LOBYTE(v89) = 0;
        y = v71;
        sub_21E13F794();
        v46(v22, v84);
        v66 = *(v36 + 16);
      }

      if (v51 >= v66)
      {
        goto LABEL_47;
      }

      ++v37;
      v40[v51] = v49 + v76 + v40[v51];
      v93.origin.x = v86;
      v93.origin.y = y;
      v93.size.width = width;
      v93.size.height = v67;
      v95.origin.x = v68;
      v95.origin.y = v69;
      v95.size.width = v88;
      v95.size.height = v49;
      v94 = CGRectUnion(v93, v95);
      x = v94.origin.x;
      y = v94.origin.y;
      width = v94.size.width;
      height = v94.size.height;
      (*v41)(v25, v77);
    }

    while (v37 != v72);
  }
}

void (*sub_21DF4F5A0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21E13F304();
  return sub_21DF4F628;
}

void sub_21DF4F628(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_21DF4F678()
{
  result = qword_27CEA7670;
  if (!qword_27CEA7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7670);
  }

  return result;
}

unint64_t sub_21DF4F6CC()
{
  result = qword_27CEA7678;
  if (!qword_27CEA7678)
  {
    sub_21E13F884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7678);
  }

  return result;
}

double sub_21DF4F724()
{
  swift_getKeyPath();
  sub_21DF50040();
  sub_21E13D3C4();

  return *(v0 + 16);
}

__n128 sub_21DF4F798@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF50040();
  sub_21E13D3C4();

  result = *(v3 + 16);
  v5 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_21DF4F810(double a1, double a2, double a3, double a4)
{
  result = sub_21E13F364();
  if (result)
  {
    v4[2] = a1;
    v4[3] = a2;
    v4[4] = a3;
    v4[5] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF50040();
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21DF4F928()
{
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI26SystemMinimumLayoutMargins___observationRegistrar;
  v2 = sub_21E13D404();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SystemMinimumLayoutMargins()
{
  result = qword_27CEA7688;
  if (!qword_27CEA7688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DF4FA18()
{
  result = sub_21E13D404();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21DF4FB7C()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for SystemMinimumLayoutMarginsReader.MarginsTrackingViewController();
  objc_msgSendSuper2(&v12, sel_viewLayoutMarginsDidChange);
  [v0 systemMinimumLayoutMargins];
  result = sub_21E13F384();
  v6 = *&v0[OBJC_IVAR____TtCV20VisualIntelligenceUI32SystemMinimumLayoutMarginsReader29MarginsTrackingViewController_minimumLayoutMargins];
  if (v6)
  {
    v7 = v2;
    v8 = v3;
    v9 = v4;
    v10 = v5;
    swift_getKeyPath();
    sub_21DF50040();

    sub_21E13D3C4();

    if (sub_21E13F364())
    {
    }

    if (sub_21E13F364())
    {
      v6[2] = v7;
      v6[3] = v8;
      v6[4] = v9;
      v6[5] = v10;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E13D3B4();
  }

  return result;
}

id sub_21DF4FDB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemMinimumLayoutMarginsReader.MarginsTrackingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_21DF4FE18(double *a1, double *a2)
{
  swift_getKeyPath();
  sub_21DF50040();
  sub_21E13D3C4();

  v4 = a1[3];
  swift_getKeyPath();
  sub_21E13D3C4();

  if (v4 != a2[3])
  {
    return 0;
  }

  swift_getKeyPath();
  sub_21E13D3C4();

  v5 = a1[5];
  swift_getKeyPath();
  sub_21E13D3C4();

  if (v5 != a2[5])
  {
    return 0;
  }

  swift_getKeyPath();
  sub_21E13D3C4();

  v6 = a1[2];
  swift_getKeyPath();
  sub_21E13D3C4();

  if (v6 != a2[2])
  {
    return 0;
  }

  swift_getKeyPath();
  sub_21E13D3C4();

  v7 = a1[4];
  swift_getKeyPath();
  sub_21E13D3C4();

  return v7 == a2[4];
}

unint64_t sub_21DF50040()
{
  result = qword_27CEA76A0;
  if (!qword_27CEA76A0)
  {
    type metadata accessor for SystemMinimumLayoutMargins();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA76A0);
  }

  return result;
}

__n128 sub_21DF50098()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 16) = result;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_21DF500C4()
{
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v1 = *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage);

  return v1;
}

uint64_t sub_21DF50180@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  *a1 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence);
  return result;
}

uint64_t NewEntityModel.__allocating_init(systemImage:centroid:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  NewEntityModel.init(systemImage:centroid:)(a1, a2);
  return v4;
}

uint64_t NewEntityModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id;
  v4 = sub_21E13D344();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21DF50324@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__corners;
  swift_beginAccess();
  v4 = sub_21E13ED04();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_21DF5041C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E13ED04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__corners;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_21DF606B8(&unk_280F69088, MEMORY[0x277D79618]);
  v9 = sub_21E142074();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
    sub_21E13D3B4();
  }

  return (v10)(a1, v4);
}

uint64_t sub_21DF5069C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__corners;
  swift_beginAccess();
  v5 = sub_21E13ED04();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_21DF50738(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage);
  v6 = *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage) == a1 && *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage + 8) == a2;
  if (v6 || (sub_21E142B14() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
    sub_21E13D3B4();
  }
}

unsigned __int8 *sub_21DF508A4(unsigned __int8 *result)
{
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
    sub_21E13D3B4();
  }

  return result;
}

unint64_t NewEntityModel.cardLayout.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v4 = *(v6 + v3);
  *a1 = v4;
  return sub_21DF5706C(v4);
}

unint64_t sub_21DF50A8C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;
  return sub_21DF5706C(v5);
}

unint64_t sub_21DF50B54(unint64_t *a1)
{
  v2 = *a1;
  sub_21DF5706C(v2);
  return NewEntityModel.cardLayout.setter(&v2);
}

unint64_t NewEntityModel.cardLayout.setter(unint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v8 = v2;
  v9 = v4;
  if (static CardLayout.== infix(_:_:)(&v9, &v8))
  {
    v5 = *(v1 + v3);
    *(v1 + v3) = v2;
    return sub_21DF5AF24(v5);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9 = v1;
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
    sub_21E13D3B4();
    sub_21DF5AF24(v2);
  }
}

unint64_t sub_21DF50CD4(uint64_t a1, unint64_t a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  sub_21DF5706C(a2);
  return sub_21DF5AF24(v5);
}

void (*NewEntityModel.cardLayout.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DF50E94;
}

uint64_t NewEntityModel.cardModel.getter()
{
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  swift_beginAccess();
}

uint64_t sub_21DF50F60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t NewEntityModel.cardModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
    sub_21E13D3B4();
  }
}

uint64_t sub_21DF51184(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void (*NewEntityModel.cardModel.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DF5133C;
}

uint64_t sub_21DF51348()
{
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();
}

uint64_t sub_21DF513F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  *a2 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__unfilteredActions);
}

uint64_t sub_21DF514A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__unfilteredActions;

  v5 = sub_21E0E022C(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
    sub_21E13D3B4();
  }
}

void (*NewEntityModel.actions.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DF517C8;
}

uint64_t sub_21DF517E8()
{
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  swift_beginAccess();
}

uint64_t sub_21DF518B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_21DF519D4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();

  v6 = sub_21E0E022C(v5, a1);

  if (v6)
  {
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
    sub_21E13D3B4();
  }
}

void (*NewEntityModel.preShutterActions.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DF51C64;
}

uint64_t sub_21DF51C70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v50 - v2;
  v69 = sub_21E13EEB4();
  KeyPath = *(v69 - 8);
  v5 = MEMORY[0x28223BE20](v69 - 8);
  v68 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v67 = v50 - v8;
  MEMORY[0x28223BE20](v7);
  v66 = v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98);
  MEMORY[0x28223BE20](v10 - 8);
  v75 = v50 - v11;
  v12 = sub_21E13D994();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v65 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = v50 - v16;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  v78 = v0;
  v50[1] = sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v18 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions;
  swift_beginAccess();
  v19 = *(v0 + v18);
  v51 = v0;
  v50[2] = v17;
  if (v19 >> 62)
  {
LABEL_28:
    v72 = v19 & 0xFFFFFFFFFFFFFF8;
    v74 = sub_21E1427B4();
  }

  else
  {
    v72 = v19 & 0xFFFFFFFFFFFFFF8;
    v74 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v19;
  v73 = v19 & 0xC000000000000001;
  v21 = (v13 + 56);
  v64 = (KeyPath + 32);
  v63 = (KeyPath + 88);
  v62 = *MEMORY[0x277D79680];
  v56 = (KeyPath + 8);
  v55 = (KeyPath + 96);
  v61 = (v13 + 32);
  v60 = (v13 + 48);
  v54 = (v13 + 88);
  v53 = *MEMORY[0x277D78F28];
  v52 = (v13 + 8);

  v13 = 0;
  v19 = 0;
  v22 = &unk_21E148070;
  v70 = v20;
  v71 = v12;
  v59 = v3;
  v58 = v21;
  while (v74 != v13)
  {
    if (v73)
    {
      v12 = MEMORY[0x223D530F0](v13, v20);
      if (__OFADD__(v13, 1))
      {
LABEL_22:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v13 >= *(v72 + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v12 = *(v20 + 8 * v13 + 32);

      if (__OFADD__(v13, 1))
      {
        goto LABEL_22;
      }
    }

    KeyPath = swift_getKeyPath();
    v25 = v22;
    v77 = v12;
    sub_21DF606B8(&qword_280F6B830, type metadata accessor for NewActionModel);
    sub_21E13D3C4();

    v26 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
    swift_beginAccess();
    v27 = v12 + v26;
    v22 = v25;
    sub_21DF236C0(v27, v3, &qword_27CEA6D48);
    v28 = sub_21E13EEE4();
    if ((*(*(v28 - 8) + 48))(v3, 1, v28))
    {

      sub_21DF23614(v3, &qword_27CEA6D48);
      (*v21)(v75, 1, 1, v71);
    }

    else
    {
      v29 = v75;
      v30 = v67;
      sub_21E13EEC4();

      sub_21DF23614(v3, &qword_27CEA6D48);
      v31 = *v64;
      v32 = v66;
      v33 = v30;
      v34 = v69;
      (*v64)(v66, v33, v69);
      v35 = v68;
      v31(v68, v32, v34);
      v36 = (*v63)(v35, v34);
      if (v36 == v62)
      {
        (*v55)(v35, v34);
        v37 = v29;
        v38 = v35;
        v12 = v71;
        (*v61)(v29, v38, v71);
        v21 = v58;
        (*v58)(v37, 0, 1, v12);
      }

      else
      {
        v39 = v29;
        v21 = v58;
        v40 = v71;
        (*v58)(v39, 1, 1, v71);
        v41 = v35;
        v12 = v40;
        (*v56)(v41, v34);
      }

      KeyPath = v65;
      v42 = (*v60)(v75, 1, v12);
      v20 = v70;
      v3 = v59;
      v22 = v25;
      if (v42 != 1)
      {
        v43 = *v61;
        v44 = v57;
        (*v61)(v57, v75, v12);
        v43(KeyPath, v44, v12);
        v45 = (*v54)(KeyPath, v12);
        if (v45 == v53)
        {
          v23 = 0;
        }

        else
        {
          (*v52)(KeyPath, v12);
          v23 = 1;
        }

        v20 = v70;
        v22 = v25;
        goto LABEL_6;
      }
    }

    sub_21DF23614(v75, &qword_27CEA6D98);
    v23 = 1;
LABEL_6:
    ++v13;
    v24 = __OFADD__(v19, v23);
    v19 += v23;
    if (v24)
    {
      goto LABEL_27;
    }
  }

  v46 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__isThirdPartySearchAvailable;
  v47 = v51;
  result = swift_beginAccess();
  if (((v19 != 0) ^ *(v47 + v46)))
  {
    v49 = swift_getKeyPath();
    MEMORY[0x28223BE20](v49);
    v50[-2] = v47;
    LOBYTE(v50[-1]) = v19 != 0;
    v76 = v47;
    sub_21E13D3B4();
  }

  else
  {
    *(v47 + v46) = v19 != 0;
  }

  return result;
}

uint64_t NewEntityModel.isThirdPartySearchAvailable.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__isThirdPartySearchAvailable;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t (*sub_21DF526A4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21DF52708;
}

uint64_t sub_21DF52708(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_21DF51C70();
  }

  return result;
}

uint64_t NewEntityModel.visualSearchActions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions;
  swift_beginAccess();

  v5 = sub_21E0E022C(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;

    return sub_21DF51C70();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
    sub_21E13D3B4();
  }
}

uint64_t sub_21DF528D0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions;
  swift_beginAccess();
  *(a1 + v4) = a2;

  return sub_21DF51C70();
}

void (*NewEntityModel.visualSearchActions.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v4[7] = sub_21DF526A4(v4);
  return sub_21DF52A80;
}

void sub_21DF52A80(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_21E13D3D4();

  free(v1);
}

uint64_t NewEntityModel.isThirdPartySearchAvailable.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__isThirdPartySearchAvailable;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_21DF52BD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__isThirdPartySearchAvailable;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void (*NewEntityModel.isThirdPartySearchAvailable.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DF52E04;
}

uint64_t NewEntityModel.textAction.getter()
{
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  swift_beginAccess();
}

uint64_t sub_21DF52ED0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__textAction;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t NewEntityModel.textAction.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__textAction;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    if (a1)
    {
      v6 = sub_21E1423C4();
      MEMORY[0x28223BE20](v6);
      v11 = v5;
      v12 = a1;

      v7 = sub_21E0C372C(sub_21DF35578, &v10, "VisualIntelligenceUI/NewActionModel.swift");

      if (v7)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11 = v2;
    v12 = a1;
    v13 = v2;
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
    sub_21E13D3B4();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + v4) = a1;
}

uint64_t sub_21DF53194(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__textAction;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void (*NewEntityModel.textAction.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DF5334C;
}

void (*NewEntityModel.dataDetectors.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DF5351C;
}

uint64_t NewEntityModel.pin.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin;
  swift_beginAccess();
  return sub_21DF236C0(v5 + v3, a1, &qword_27CEACB50);
}

uint64_t NewEntityModel.pin.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin;
  swift_beginAccess();
  sub_21DF236C0(v1 + v6, v5, &qword_27CEACB50);
  v7 = sub_21DF5F390(v5, a1);
  sub_21DF23614(v5, &qword_27CEACB50);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
    sub_21E13D3B4();
  }

  else
  {
    swift_beginAccess();
    sub_21DF5F6B0(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_21DF23614(a1, &qword_27CEACB50);
}

uint64_t sub_21DF537EC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin;
  swift_beginAccess();
  sub_21DF5F6B0(a2, a1 + v4);
  return swift_endAccess();
}

void (*NewEntityModel.pin.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DF539A0;
}

uint64_t NewEntityModel.__allocating_init(pin:)(uint64_t a1)
{
  v2 = swift_allocObject();
  NewEntityModel.init(pin:)(a1);
  return v2;
}

uint64_t NewEntityModel.init(pin:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E13EF04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21E13D344();
  v8 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E13ED04();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13ECE4();
  (*(v12 + 32))(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__corners, v14, v11);
  v15 = v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage;
  strcpy((v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage), "questionmark");
  *(v15 + 13) = 0;
  *(v15 + 14) = -5120;
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence) = 1;
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout) = 0;
  v16 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__unfilteredActions) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__actions) = v16;
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__preShutterActions) = v16;
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions) = v16;
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__isThirdPartySearchAvailable) = 0;
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__textAction) = 0;
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__dataDetectors) = v16;
  (*(v5 + 56))(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin, 1, 1, v4);
  sub_21E13D3F4();
  sub_21E13EE24();
  (*(v8 + 32))(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v10, v19);
  (*(v5 + 16))(v7, a1, v4);
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel) = sub_21DF338D4(v7, 0, 0, 8.0, 8.0);
  NewEntityModel.apply(pin:)(a1);
  (*(v5 + 8))(a1, v4);
  return v2;
}

uint64_t NewEntityModel.apply(pin:)(uint64_t a1)
{
  v277 = 0;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76B0);
  MEMORY[0x28223BE20](v239);
  v238 = &v220 - v2;
  v240 = sub_21E13EE04();
  v244 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v237 = &v220 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v225 = &v220 - v5;
  v272 = sub_21E13EE74();
  v227 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v271 = &v220 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = sub_21E13EE94();
  v226 = *(v270 - 8);
  MEMORY[0x28223BE20](v270);
  v269 = &v220 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = sub_21E13F1F4();
  v221 = *(v251 - 1);
  MEMORY[0x28223BE20](v251);
  v250 = &v220 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76B8);
  MEMORY[0x28223BE20](v9 - 8);
  v260 = (&v220 - v10);
  v276 = sub_21E13F274();
  v275 = *(v276 - 8);
  MEMORY[0x28223BE20](v276);
  v241 = &v220 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v223 = &v220 - v13;
  MEMORY[0x28223BE20](v14);
  v258 = &v220 - v15;
  MEMORY[0x28223BE20](v16);
  v279 = &v220 - v17;
  v255 = sub_21E13EEB4();
  v246 = *(v255 - 1);
  MEMORY[0x28223BE20](v255 - 1);
  v254 = (&v220 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v253 = &v220 - v20;
  MEMORY[0x28223BE20](v21);
  v252 = &v220 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98);
  MEMORY[0x28223BE20](v23 - 8);
  v262 = &v220 - v24;
  v25 = sub_21E13D994();
  v224 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v236 = &v220 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v235 = &v220 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v29 - 8);
  v228 = &v220 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v243 = &v220 - v32;
  MEMORY[0x28223BE20](v33);
  v242 = &v220 - v34;
  MEMORY[0x28223BE20](v35);
  v257 = &v220 - v36;
  MEMORY[0x28223BE20](v37);
  v263 = (&v220 - v38);
  MEMORY[0x28223BE20](v39);
  v259 = (&v220 - v40);
  MEMORY[0x28223BE20](v41);
  v43 = &v220 - v42;
  MEMORY[0x28223BE20](v44);
  v274 = &v220 - v45;
  v46 = sub_21E13EEE4();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v273 = &v220 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v51 = &v220 - v50;
  v52 = sub_21E13ED04();
  MEMORY[0x28223BE20](v52 - 8);
  v54 = &v220 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  MEMORY[0x28223BE20](v55 - 8);
  v57 = &v220 - v56;
  v58 = sub_21E13EF04();
  v59 = *(v58 - 8);
  (*(v59 + 16))(v57, a1, v58);
  (*(v59 + 56))(v57, 0, 1, v58);
  NewEntityModel.pin.setter(v57);
  sub_21E13EEF4();
  sub_21DF5041C(v54);
  v60 = sub_21E13EDE4();
  sub_21DF50738(v60, v61);
  v62 = sub_21E13EDD4();
  v63 = *(v62 + 16);
  v261 = v25;
  v229 = v47;
  v256 = v43;
  if (v63)
  {
    v281 = MEMORY[0x277D84F90];
    sub_21E142924();
    v268 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
    v66 = *(v47 + 16);
    v65 = v47 + 16;
    v64 = v66;
    v267 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__unfilteredActions;
    v67 = (*(v65 + 64) + 32) & ~*(v65 + 64);
    v249 = v62;
    v68 = v62 + v67;
    v266 = *(v65 + 56);
    v265 = v65 + 40;
    v264 = (v65 - 8);
    v66(v51, (v62 + v67), v46);
    while (1)
    {
      swift_getKeyPath();
      v70 = v46;
      v71 = v280;
      v286 = v280;
      sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
      sub_21E13D3C4();

      v73 = *(v71 + v267);
      MEMORY[0x28223BE20](v72);
      *(&v220 - 2) = v51;

      v74 = v277;
      v75 = sub_21DF57C30(sub_21DF5F770, (&v220 - 4), v73);
      v277 = v74;

      if (!v75)
      {
        v76 = v273;
        v64(v273, v51, v70);
        type metadata accessor for NewActionModel();
        swift_allocObject();
        NewActionModel.init(pill:)(v76);
      }

      v69 = v274;
      v64(v274, v51, v70);
      (*v265)(v69, 0, 1, v70);
      NewActionModel.pill.setter(v69);
      (*v264)(v51, v70);
      sub_21E1428F4();
      sub_21E142934();
      sub_21E142944();
      sub_21E142904();
      v68 += v266;
      --v63;
      v46 = v70;
      if (!v63)
      {
        break;
      }

      v64(v51, v68, v70);
    }

    v77 = v281;
    v25 = v261;
    v43 = v256;
  }

  else
  {

    v77 = MEMORY[0x277D84F90];
  }

  v287 = v77;
  swift_bridgeObjectRetain_n();
  sub_21DF514A8(v77);
  v222 = v77 >> 62;
  v274 = v77;
  if (v77 >> 62)
  {
LABEL_156:
    v78 = sub_21E1427B4();
  }

  else
  {
    v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v79 = v262;
  v80 = v25;
  v278 = v46;
  if (!v78)
  {
LABEL_30:

    v83 = 0;
    goto LABEL_31;
  }

  v81 = 0;
  v268 = v274 & 0xC000000000000001;
  v267 = v274 & 0xFFFFFFFFFFFFFF8;
  v266 = (v229 + 48);
  v265 = v224 + 56;
  v249 = (v246 + 4);
  v248 = (v246 + 11);
  LODWORD(v247) = *MEMORY[0x277D79680];
  v234 = (v246 + 1);
  v233 = (v246 + 12);
  v246 = (v224 + 32);
  v245 = (v224 + 48);
  v232 = (v224 + 88);
  v231 = *MEMORY[0x277D78F38];
  v230 = (v224 + 8);
  v264 = v78;
  while (1)
  {
    if (v268)
    {
      v83 = MEMORY[0x223D530F0](v81, v274);
      v84 = (v81 + 1);
      if (__OFADD__(v81, 1))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v81 >= *(v267 + 16))
      {
        goto LABEL_152;
      }

      v83 = *(v274 + 8 * v81 + 32);

      v84 = (v81 + 1);
      if (__OFADD__(v81, 1))
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    v25 = v79;
    swift_getKeyPath();
    v281 = v83;
    sub_21DF606B8(&qword_280F6B830, type metadata accessor for NewActionModel);
    sub_21E13D3C4();
    v46 = v278;

    v85 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
    swift_beginAccess();
    sub_21DF236C0(v83 + v85, v43, &qword_27CEA6D48);
    if (!(*v266)(v43, 1, v46))
    {
      break;
    }

    sub_21DF23614(v43, &qword_27CEA6D48);
    (*v265)(v79, 1, 1, v80);
    v82 = v264;
LABEL_14:
    sub_21DF23614(v79, &qword_27CEA6D98);
LABEL_15:
    ++v81;
    if (v84 == v82)
    {
      goto LABEL_30;
    }
  }

  v86 = v253;
  sub_21E13EEC4();
  sub_21DF23614(v43, &qword_27CEA6D48);
  v25 = v249;
  v87 = *v249;
  v88 = v252;
  v89 = v255;
  (*v249)(v252, v86, v255);
  v90 = v254;
  (v87)(v254, v88, v89);
  v91 = (*v248)(v90, v89);
  if (v91 == v247)
  {
    (*v233)(v90, v89);
    v79 = v262;
    v92 = v90;
    v80 = v261;
    (*v246)(v262, v92, v261);
    (*v265)(v79, 0, 1, v80);
  }

  else
  {
    v79 = v262;
    v25 = v261;
    (*v265)(v262, 1, 1, v261);
    v93 = v90;
    v80 = v25;
    (*v234)(v93, v89);
  }

  if ((*v245)(v79, 1, v80) == 1)
  {

    v43 = v256;
    v82 = v264;
    goto LABEL_14;
  }

  v94 = *v246;
  v43 = v235;
  (*v246)(v235);
  v25 = v236;
  (v94)(v236, v43, v80);
  v95 = (*v232)(v25, v80);
  if (v95 != v231)
  {

    (*v230)(v25, v80);
    v43 = v256;
    v82 = v264;
    v46 = v278;
    goto LABEL_15;
  }

  (*(v224 + 96))(v25, v80);
  v219 = sub_21E13E3F4();
  (*(*(v219 - 8) + 8))(v25, v219);
  v46 = v278;
LABEL_31:
  v96 = v280;
  NewEntityModel.textAction.setter(v83);
  swift_getKeyPath();
  v97 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  v281 = v96;
  v98 = sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  v262 = v97;
  v261 = v98;
  sub_21E13D3C4();

  v99 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__textAction;
  swift_beginAccess();
  v100 = v259;
  v101 = v260;
  if (!*(v96 + v99))
  {
LABEL_35:
    NewEntityModel.dataDetectors.setter(MEMORY[0x277D84F90]);
    v109 = MEMORY[0x277D84F90];
    goto LABEL_91;
  }

  v102 = sub_21DFE4554();
  v103 = v102;
  v104 = *(v102 + 16);
  if (v104)
  {
    v105 = MEMORY[0x277D796D0];
    v106 = sub_21DF5BE28(*(v102 + 16), 0, &qword_27CEA7738, &unk_21E147750, MEMORY[0x277D796D0]);
    v107 = v275;
    v108 = sub_21DF5ECEC(&v281, (v106 + ((*(v275 + 80) + 32) & ~*(v275 + 80))), v104, v103, v105);
    sub_21DF5F790();
    if (v108 != v104)
    {
      __break(1u);
      goto LABEL_35;
    }
  }

  else
  {

    v106 = MEMORY[0x277D84F90];
    v107 = v275;
  }

  v110 = MEMORY[0x277D84F90];
  v268 = *(v106 + 16);
  if (v268)
  {
    v46 = 0;
    v267 = v107 + 16;
    v264 = (v221 + 8);
    v266 = (v107 + 32);
    v111 = (v107 + 8);
    while (v46 < *(v106 + 16))
    {
      v43 = (*(v275 + 80) + 32) & ~*(v275 + 80);
      v25 = *(v275 + 72);
      (*(v275 + 16))(v279, v106 + v43 + v25 * v46, v276);
      sub_21E13F244();
      v112 = sub_21E13F1D4();
      v113 = *(v112 - 8);
      if ((*(v113 + 48))(v101, 1, v112) == 1)
      {
        sub_21DF23614(v101, &qword_27CEA76B8);
        v114 = 1;
      }

      else
      {
        v115 = sub_21E13F1C4();
        v116 = (*(v113 + 8))(v101, v112);
        v117 = v250;
        MEMORY[0x223D52DD0](v116);

        LODWORD(v115) = sub_21E13F1E4();
        (*v264)(v117, v251);
        v114 = v115 ^ 1;
      }

      v118 = sub_21E13F224();
      if (v119)
      {
        v120 = v118;
        v121 = v119;

        v122 = HIBYTE(v121) & 0xF;
        if ((v121 & 0x2000000000000000) == 0)
        {
          v122 = v120 & 0xFFFFFFFFFFFFLL;
        }

        v123 = v122 == 0;
      }

      else
      {
        v123 = 1;
      }

      v124 = sub_21E13F254();
      if (!v125)
      {
        goto LABEL_39;
      }

      v126 = v124;
      v127 = v125;

      v128 = HIBYTE(v127) & 0xF;
      v156 = (v127 & 0x2000000000000000) == 0;
      v101 = v260;
      if (v156)
      {
        v128 = v126 & 0xFFFFFFFFFFFFLL;
      }

      if (((v114 | v123) & 1) == 0 && v128)
      {
        v129 = *v266;
        (*v266)(v258, v279, v276);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v281 = v110;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21DF5BF68(0, v110[2] + 1, 1);
          v110 = v281;
        }

        v132 = v110[2];
        v131 = v110[3];
        if (v132 >= v131 >> 1)
        {
          sub_21DF5BF68(v131 > 1, v132 + 1, 1);
          v110 = v281;
        }

        v110[2] = v132 + 1;
        v129(v110 + v43 + v132 * v25, v258, v276);
        v101 = v260;
      }

      else
      {
LABEL_39:
        (*v111)(v279, v276);
      }

      if (v268 == ++v46)
      {
        goto LABEL_60;
      }
    }

LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

LABEL_60:

  v281 = v110;

  v133 = v277;
  sub_21DF5D0D4(&v281);
  if (v133)
  {
    goto LABEL_159;
  }

  v134 = v281;
  v281 = MEMORY[0x277D84F90];
  v135 = v134[2];
  v136 = v276;
  v137 = v275;
  v138 = v223;
  if (v135)
  {
    v139 = (*(v275 + 80) + 32) & ~*(v275 + 80);
    v266 = v134;
    v140 = v134 + v139;
    v279 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__dataDetectors;
    swift_beginAccess();
    v143 = *(v137 + 16);
    v141 = v137 + 16;
    v142 = v143;
    v268 = *(v141 + 56);
    v267 = v141 - 8;
    v277 = v143;
    v275 = v141;
    do
    {
      v142(v138, v140, v136);
      swift_getKeyPath();
      v144 = v280;
      v285 = v280;
      sub_21E13D3C4();

      v146 = v136;
      v147 = *&v279[v144];
      MEMORY[0x28223BE20](v145);
      *(&v220 - 2) = v138;

      v43 = sub_21DF57C30(sub_21DF5F798, (&v220 - 4), v147);

      if (!v43)
      {
        v148 = v241;
        v142(v241, v138, v146);
        type metadata accessor for NewActionModel();
        swift_allocObject();
        v43 = NewActionModel.init(dataDetector:)(v148);
        v136 = v146;
      }

      v149 = (*v267)(v138, v136);
      MEMORY[0x223D52AF0](v149);
      if (*((v281 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v281 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v276 = *((v281 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21E1422F4();
      }

      sub_21E142324();
      v140 += v268;
      v135 = (v135 - 1);
      v142 = v277;
    }

    while (v135);
    v150 = v281;
  }

  else
  {

    v150 = MEMORY[0x277D84F90];
  }

  v46 = v278;
  v151 = v274;
  v25 = v274 & 0xFFFFFFFFFFFFFF8;
  if (v222)
  {
    v152 = sub_21E1427B4();
  }

  else
  {
    v152 = *((v274 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v153 = 0;
  v154 = v151 & 0xC000000000000001;
  while (1)
  {
    if (v152 == v153)
    {
      goto LABEL_90;
    }

    if (v154)
    {
      v155 = MEMORY[0x223D530F0](v153, v151);
    }

    else
    {
      if (v153 >= *(v25 + 16))
      {
        goto LABEL_154;
      }

      v155 = *(v151 + 8 * v153 + 32);
    }

    v156 = *(v155 + 16) == *(v265 + 16) && *(v155 + 24) == *(v265 + 24);
    if (v156)
    {
      break;
    }

    v43 = sub_21E142B14();

    if (v43)
    {
      goto LABEL_88;
    }

    v157 = __OFADD__(v153++, 1);
    v151 = v274;
    if (v157)
    {
      goto LABEL_155;
    }
  }

LABEL_88:
  v133 = (v153 + 1);
  if (__OFADD__(v153, 1))
  {
    __break(1u);
LABEL_159:

    __break(1u);
    return result;
  }

  sub_21DF5F950(v153, v153 + 1, v150);

LABEL_90:
  NewEntityModel.dataDetectors.setter(v150);

  v109 = MEMORY[0x277D84F90];
  v100 = v259;
LABEL_91:
  v158 = v287;
  v285 = v109;
  if (v287 >> 62)
  {
    v43 = sub_21E1427B4();
  }

  else
  {
    v43 = *((v287 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v277 = v158;
  v279 = v43;
  if (!v43)
  {
    v180 = MEMORY[0x277D84F90];
    v181 = v280;
    NewEntityModel.actions.setter(MEMORY[0x277D84F90]);
    goto LABEL_122;
  }

  v159 = 0;
  v276 = v158 & 0xC000000000000001;
  v275 = v158 & 0xFFFFFFFFFFFFFF8;
  v274 = v229 + 48;
  v268 = v229 + 16;
  v267 = v229 + 8;
  LODWORD(v260) = *MEMORY[0x277D79678];
  v266 = (v227 + 104);
  v265 = v227 + 8;
  v264 = (v226 + 8);
  while (2)
  {
    if (v276)
    {
      v43 = MEMORY[0x223D530F0](v159, v158);
    }

    else
    {
      if (v159 >= *(v275 + 16))
      {
        goto LABEL_148;
      }

      v43 = *(v158 + 8 * v159 + 32);
    }

    v160 = (v159 + 1);
    if (__OFADD__(v159, 1))
    {
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    swift_getKeyPath();
    v284 = v43;
    sub_21DF606B8(&qword_280F6B830, type metadata accessor for NewActionModel);
    sub_21E13D3C4();

    v161 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
    swift_beginAccess();
    sub_21DF236C0(v43 + v161, v100, &qword_27CEA6D48);
    v25 = *v274;
    if ((*v274)(v100, 1, v46))
    {
      sub_21DF23614(v100, &qword_27CEA6D48);
LABEL_96:
      sub_21E1428F4();
      sub_21E142934();
      sub_21E142944();
      sub_21E142904();
      goto LABEL_97;
    }

    v162 = v273;
    (*v268)(v273, v100, v46);
    sub_21DF23614(v100, &qword_27CEA6D48);
    v163 = v269;
    sub_21E13EEA4();
    (*v267)(v162, v46);
    v164 = v271;
    v165 = v272;
    (*v266)(v271, v260, v272);
    LOBYTE(v162) = sub_21E13EE84();
    v166 = v164;
    v46 = v278;
    (*v265)(v166, v165);
    v167 = v163;
    v100 = v259;
    (*v264)(v167, v270);
    if ((v162 & 1) == 0)
    {
      goto LABEL_96;
    }

LABEL_97:
    v158 = v277;
    ++v159;
    if (v160 != v279)
    {
      continue;
    }

    break;
  }

  NewEntityModel.actions.setter(v285);
  v168 = 0;
  v284 = MEMORY[0x277D84F90];
  LODWORD(v260) = *MEMORY[0x277D79670];
  while (2)
  {
    if (v276)
    {
      v169 = MEMORY[0x223D530F0](v168, v158);
      v170 = (v168 + 1);
      if (__OFADD__(v168, 1))
      {
        break;
      }

      goto LABEL_112;
    }

    if (v168 >= *(v275 + 16))
    {
      goto LABEL_149;
    }

    v169 = *(v158 + 8 * v168 + 32);

    v170 = (v168 + 1);
    if (!__OFADD__(v168, 1))
    {
LABEL_112:
      swift_getKeyPath();
      v283 = v169;
      sub_21E13D3C4();

      v171 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
      swift_beginAccess();
      v172 = v169 + v171;
      v173 = v263;
      sub_21DF236C0(v172, v263, &qword_27CEA6D48);
      if ((v25)(v173, 1, v46))
      {

        sub_21DF23614(v173, &qword_27CEA6D48);
      }

      else
      {
        v174 = v173;
        v175 = v273;
        (*v268)(v273, v174, v46);
        sub_21DF23614(v174, &qword_27CEA6D48);
        v176 = v46;
        v177 = v269;
        sub_21E13EEA4();
        (*v267)(v175, v176);
        v178 = v271;
        v179 = v272;
        (*v266)(v271, v260, v272);
        LOBYTE(v175) = sub_21E13EE84();
        (*v265)(v178, v179);
        (*v264)(v177, v270);
        if (v175)
        {
          sub_21E1428F4();
          sub_21E142934();
          sub_21E142944();
          sub_21E142904();
        }

        else
        {
        }

        v46 = v278;
        v158 = v277;
      }

      ++v168;
      v43 = v279;
      if (v170 == v279)
      {
        goto LABEL_120;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_120:
  v180 = v284;
  v181 = v280;
LABEL_122:
  NewEntityModel.preShutterActions.setter(v180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA6858);
  v182 = swift_allocObject();
  *(v182 + 16) = xmmword_21E144A20;
  v183 = v244;
  v184 = *(v244 + 104);
  v185 = v225;
  LODWORD(v253) = *MEMORY[0x277D79658];
  v186 = v240;
  v252 = (v244 + 104);
  v251 = v184;
  v184(v225);
  v187 = v273;
  sub_21E13EDF4();
  v188 = *(v183 + 8);
  v244 = v183 + 8;
  v250 = v188;
  (v188)(v185, v186);
  type metadata accessor for NewActionModel();
  swift_allocObject();
  v189 = NewActionModel.init(pill:)(v187);
  v248 = v182;
  *(v182 + 32) = v189;
  v190 = MEMORY[0x277D84F90];
  v283 = MEMORY[0x277D84F90];
  if (v43)
  {
    v25 = 0;
    v268 = v158 & 0xC000000000000001;
    v267 = v158 & 0xFFFFFFFFFFFFFF8;
    v274 = v229 + 48;
    v259 = (v229 + 16);
    v263 = (v229 + 8);
    LODWORD(v258) = *MEMORY[0x277D79678];
    v256 = (v227 + 104);
    v255 = (v227 + 8);
    v254 = (v226 + 8);
    v249 = (v229 + 56);
    v247 = (v229 + 32);
    v191 = &qword_27CEA6D48;
    v192 = v257;
    while (1)
    {
      if (v268)
      {
        v195 = MEMORY[0x223D530F0](v25, v158);
      }

      else
      {
        if (v25 >= *(v267 + 16))
        {
          goto LABEL_151;
        }

        v195 = *(v158 + 8 * v25 + 32);
      }

      v196 = v274;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_150;
      }

      v275 = v25;
      v276 = v25 + 1;
      swift_getKeyPath();
      v197 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel___observationRegistrar;
      v282 = v195;
      v43 = sub_21DF606B8(&qword_280F6B830, type metadata accessor for NewActionModel);
      sub_21E13D3C4();
      v46 = v278;

      v198 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
      swift_beginAccess();
      sub_21DF236C0(v195 + v198, v192, v191);
      v199 = v191;
      v200 = *v196;
      if ((*v196)(v192, 1, v46))
      {

        v191 = v199;
        sub_21DF23614(v192, v199);
      }

      else
      {
        v264 = v43;
        v265 = v197;
        v266 = v200;
        v201 = v273;
        (*v259)(v273, v192, v46);
        v191 = v199;
        sub_21DF23614(v192, v199);
        v202 = v269;
        sub_21E13EEA4();
        v260 = *v263;
        v260(v201, v46);
        v203 = v271;
        v43 = v46;
        v46 = v272;
        (*v256)(v271, v258, v272);
        LOBYTE(v201) = sub_21E13EE84();
        (*v255)(v203, v46);
        (*v254)(v202, v270);
        if (v201)
        {
          swift_getKeyPath();
          v282 = v195;
          sub_21E13D3C4();

          v204 = v242;
          sub_21DF236C0(v195 + v198, v242, v191);
          v205 = v237;
          v206 = v240;
          (v251)(v237, v253, v240);
          v207 = v243;
          sub_21E13EDF4();
          (v250)(v205, v206);
          (*v249)(v207, 0, 1, v43);
          v208 = *(v239 + 48);
          v209 = v238;
          sub_21DF236C0(v204, v238, v191);
          sub_21DF236C0(v207, v209 + v208, v191);
          v210 = v266;
          v46 = v43;
          if ((v266)(v209, 1, v43) == 1)
          {
            sub_21DF23614(v207, v191);
            sub_21DF23614(v204, v191);
            v211 = (v210)(v209 + v208, 1, v43);
            v193 = v276;
            v194 = v275;
            if (v211 == 1)
            {
              sub_21DF23614(v209, v191);
              v192 = v257;
              v158 = v277;
LABEL_142:

              goto LABEL_126;
            }

LABEL_139:
            sub_21DF23614(v209, &qword_27CEA76B0);
            v192 = v257;
            v158 = v277;
          }

          else
          {
            v212 = v228;
            v43 = &unk_21E148070;
            sub_21DF236C0(v209, v228, v191);
            if ((v210)(v209 + v208, 1, v46) == 1)
            {
              sub_21DF23614(v243, v191);
              sub_21DF23614(v242, v191);
              v260(v212, v46);
              v193 = v276;
              v194 = v275;
              goto LABEL_139;
            }

            v213 = v273;
            (*v247)(v273, v209 + v208, v46);
            sub_21DF606B8(&qword_280F69080, MEMORY[0x277D79698]);
            v214 = sub_21E142074();
            v215 = v213;
            v216 = v260;
            v260(v215, v46);
            sub_21DF23614(v243, v191);
            sub_21DF23614(v242, v191);
            v216(v212, v46);
            sub_21DF23614(v209, v191);
            v192 = v257;
            v158 = v277;
            v193 = v276;
            v194 = v275;
            if (v214)
            {
              goto LABEL_142;
            }
          }

          sub_21E1428F4();
          sub_21E142934();
          sub_21E142944();
          sub_21E142904();
          goto LABEL_126;
        }

        v192 = v257;
      }

      v158 = v277;
      v193 = v276;
      v194 = v275;
LABEL_126:
      v25 = v194 + 1;
      v156 = v193 == v279;
      v181 = v280;
      if (v156)
      {
        v190 = v283;
        break;
      }
    }
  }

  v283 = v248;
  sub_21DF5B174(v190);
  NewEntityModel.visualSearchActions.setter(v283);
  swift_getKeyPath();
  v283 = v181;
  sub_21E13D3C4();

  swift_beginAccess();
  swift_getKeyPath();
  v282 = v181;

  sub_21E13D3C4();

  swift_beginAccess();

  sub_21DF2B578(v217);
}

uint64_t NewEntityModel.init(systemImage:centroid:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a1;
  v39 = a2;
  v4 = sub_21E13D344();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E13ED04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13ECE4();
  (*(v9 + 32))(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__corners, v11, v8);
  v12 = v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage;
  strcpy((v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage), "questionmark");
  *(v12 + 13) = 0;
  *(v12 + 14) = -5120;
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence) = 1;
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout) = 0;
  v13 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__unfilteredActions) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__actions) = v13;
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__preShutterActions) = v13;
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions) = v13;
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__isThirdPartySearchAvailable) = 0;
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__textAction) = 0;
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__dataDetectors) = v13;
  v14 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin;
  v15 = sub_21E13EF04();
  (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
  sub_21E13D3F4();
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  (*(v5 + 32))(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v7, v4);
  v37 = *(v5 + 16);
  v37(v7, v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v4);
  type metadata accessor for CardModel(0);
  v16 = swift_allocObject();
  *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__carouselActions) = v13;
  v17 = (v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executeAction);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__selectedActionID);
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualLookup;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C88);
  (*(*(v20 - 8) + 56))(v16 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__barcode;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C90);
  (*(*(v22 - 8) + 56))(v16 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__summarization;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C98);
  (*(*(v24 - 8) + 56))(v16 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__readAloud;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA0);
  (*(*(v26 - 8) + 56))(v16 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__eventExtraction;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA8);
  (*(*(v28 - 8) + 56))(v16 + v27, 1, 1, v28);
  v29 = v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 0u;
  *(v29 + 80) = -1;
  v30 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__geoLookup;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CB0);
  (*(*(v31 - 8) + 56))(v16 + v30, 1, 1, v31);
  v32 = v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = -256;
  *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualSearch) = sub_21DF26084(v13);
  *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executionFailures) = sub_21DF26264(v13);
  v33 = v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text;
  *v33 = 0;
  *(v33 + 8) = 0;
  *(v33 + 16) = -1;
  v34 = v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback;
  *v34 = 0;
  *(v34 + 8) = -1;
  *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience) = 5;
  *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed) = 1;
  sub_21E13D3F4();
  v37((v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_id), v7, v4);
  *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding) = 0x4020000000000000;
  *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding) = 0x4020000000000000;
  swift_getKeyPath();
  v41 = 0;
  v42 = 0;
  v40 = v16;
  v43 = v16;
  sub_21DF606B8(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3B4();

  (*(v5 + 8))(v7, v4);
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel) = v16;
  sub_21DF50738(v38, v39);
  sub_21E13ECE4();
  sub_21DF5041C(v11);
  return v3;
}

uint64_t type metadata accessor for NewEntityModel()
{
  result = qword_280F6B670;
  if (!qword_280F6B670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21DF5706C(unint64_t result)
{
  if (result >= 9)
  {
  }

  return result;
}

uint64_t NewEntityModel.__allocating_init(actions:searchActions:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  NewEntityModel.init(actions:searchActions:)(a1, a2);
  return v4;
}

uint64_t NewEntityModel.init(actions:searchActions:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a1;
  v39 = a2;
  v4 = sub_21E13D344();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E13ED04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13ECE4();
  (*(v9 + 32))(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__corners, v11, v8);
  v12 = v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage;
  strcpy((v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage), "questionmark");
  *(v12 + 13) = 0;
  *(v12 + 14) = -5120;
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence) = 1;
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout) = 0;
  v13 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__unfilteredActions) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__actions) = v13;
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__preShutterActions) = v13;
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions) = v13;
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__isThirdPartySearchAvailable) = 0;
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__textAction) = 0;
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__dataDetectors) = v13;
  v14 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin;
  v15 = sub_21E13EF04();
  (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
  sub_21E13D3F4();
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  (*(v5 + 32))(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v7, v4);
  v37 = *(v5 + 16);
  v37(v7, v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v4);
  type metadata accessor for CardModel(0);
  v16 = swift_allocObject();
  *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__carouselActions) = v13;
  v17 = (v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executeAction);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__selectedActionID);
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualLookup;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C88);
  (*(*(v20 - 8) + 56))(v16 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__barcode;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C90);
  (*(*(v22 - 8) + 56))(v16 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__summarization;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C98);
  (*(*(v24 - 8) + 56))(v16 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__readAloud;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA0);
  (*(*(v26 - 8) + 56))(v16 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__eventExtraction;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA8);
  (*(*(v28 - 8) + 56))(v16 + v27, 1, 1, v28);
  v29 = v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 0u;
  *(v29 + 80) = -1;
  v30 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__geoLookup;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CB0);
  (*(*(v31 - 8) + 56))(v16 + v30, 1, 1, v31);
  v32 = v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = -256;
  *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualSearch) = sub_21DF26084(v13);
  *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executionFailures) = sub_21DF26264(v13);
  v33 = v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text;
  *v33 = 0;
  *(v33 + 8) = 0;
  *(v33 + 16) = -1;
  v34 = v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback;
  *v34 = 0;
  *(v34 + 8) = -1;
  *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience) = 5;
  *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed) = 1;
  sub_21E13D3F4();
  v37((v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_id), v7, v4);
  *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding) = 0x4020000000000000;
  *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding) = 0x4020000000000000;
  swift_getKeyPath();
  v41 = 0;
  v42 = 0;
  v40 = v16;
  v43 = v16;
  sub_21DF606B8(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3B4();

  (*(v5 + 8))(v7, v4);
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel) = v16;
  sub_21DF50738(0x6E6F697473657571, 0xEC0000006B72616DLL);
  sub_21E13ECE4();
  sub_21DF5041C(v11);
  NewEntityModel.actions.setter(v38);
  NewEntityModel.visualSearchActions.setter(v39);
  return v3;
}

uint64_t sub_21DF57814(uint64_t a1)
{
  v1 = *(*a1 + 16);
  v2 = *(*a1 + 24);
  if (v1 == sub_21E13EE54() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21E142B14();
  }

  return v5 & 1;
}

uint64_t sub_21DF57890@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_21E13EDA4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6, v8);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_21DF57A64@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7778);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v19 - v11;
  v13 = *(a2 + 16);
  if (v13)
  {
    v19 = v9;
    v20 = v8;
    v21 = a3;
    v14 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    while (1)
    {
      sub_21DF236C0(v14, v12, &qword_27CEA7778);
      v16 = a1(v12);
      if (v3)
      {
        return sub_21DF23614(v12, &qword_27CEA7778);
      }

      if (v16)
      {
        break;
      }

      sub_21DF23614(v12, &qword_27CEA7778);
      v14 += v15;
      if (!--v13)
      {
        v17 = 1;
        a3 = v21;
        goto LABEL_10;
      }
    }

    a3 = v21;
    sub_21DF3DE9C(v12, v21, &qword_27CEA7778);
    v17 = 0;
LABEL_10:
    v9 = v19;
    v8 = v20;
  }

  else
  {
    v17 = 1;
  }

  return (*(v9 + 56))(a3, v17, 1, v8, v10);
}

uint64_t sub_21DF57C30(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_21E1427B4();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x223D530F0](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_21DF57D54(uint64_t *a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_21E13F274();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v24 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B8);
  MEMORY[0x28223BE20](v10 - 8);
  v25 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = *a1;
  swift_getKeyPath();
  v27 = v15;
  sub_21DF606B8(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  v16 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__semanticDataDetectorActionable;
  swift_beginAccess();
  (*(v4 + 16))(v14, v26, v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v17 = *(v7 + 56);
  sub_21DF236C0(v15 + v16, v9, &qword_27CEA77B8);
  sub_21DF236C0(v14, &v9[v17], &qword_27CEA77B8);
  v18 = *(v4 + 48);
  if (v18(v9, 1, v3) != 1)
  {
    v20 = v25;
    sub_21DF236C0(v9, v25, &qword_27CEA77B8);
    if (v18(&v9[v17], 1, v3) != 1)
    {
      v21 = v24;
      (*(v4 + 32))(v24, &v9[v17], v3);
      sub_21DF606B8(&qword_27CEA77C0, MEMORY[0x277D796D0]);
      v19 = sub_21E142074();
      v22 = *(v4 + 8);
      v22(v21, v3);
      sub_21DF23614(v14, &qword_27CEA77B8);
      v22(v20, v3);
      sub_21DF23614(v9, &qword_27CEA77B8);
      return v19 & 1;
    }

    sub_21DF23614(v14, &qword_27CEA77B8);
    (*(v4 + 8))(v20, v3);
    goto LABEL_6;
  }

  sub_21DF23614(v14, &qword_27CEA77B8);
  if (v18(&v9[v17], 1, v3) != 1)
  {
LABEL_6:
    sub_21DF23614(v9, &qword_27CEA77B0);
    v19 = 0;
    return v19 & 1;
  }

  sub_21DF23614(v9, &qword_27CEA77B8);
  v19 = 1;
  return v19 & 1;
}

uint64_t NewEntityModel.apply(executionState:for:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v41 = a2;
  v5 = sub_21E13DAE4();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = sub_21E13E224();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21E13DF64();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v37 - v20;
  v22 = *(v11 + 16);
  v40 = a1;
  v22(v13, a1, v10, v19);
  if ((*(v11 + 88))(v13, v10) == *MEMORY[0x277D793B0])
  {
    (*(v11 + 96))(v13, v10);
    v23 = *(v15 + 32);
    v23(v21, v13, v14);
    v23(v17, v21, v14);
    if ((*(v15 + 88))(v17, v14) == *MEMORY[0x277D79278])
    {
      (*(v15 + 96))(v17, v14);
      v25 = v38;
      v24 = v39;
      v26 = *(v38 + 32);
      v26(v9, v17, v39);
      v27 = v37;
      v26(v37, v9, v24);
      v28 = (*(v25 + 88))(v27, v24);
      LODWORD(v26) = *MEMORY[0x277D79048];
      (*(v25 + 8))(v27, v24);
      v30 = v40;
      v29 = v41;
      if (v28 == v26)
      {
        swift_getKeyPath();
        v43[0] = v3;
        sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
        sub_21E13D3C4();

        v31 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
        swift_beginAccess();
        v32 = *(v3 + v31);
        v43[0] = v32;
        v42[0] = 8;
        sub_21DF5706C(v32);
        v33 = static CardLayout.== infix(_:_:)(v43, v42);
        sub_21DF5AF24(v32);
        if ((v33 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_9;
    }

    (*(v15 + 8))(v17, v14);
  }

  else
  {
    (*(v11 + 8))(v13, v10);
  }

  v30 = v40;
  v29 = v41;
LABEL_9:
  if (!sub_21DFE4D84())
  {
    sub_21DF58960(v30, v43);
    NewEntityModel.cardLayout.setter(v43);
  }

LABEL_11:
  swift_getKeyPath();
  v43[0] = v3;
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  swift_beginAccess();
  swift_getKeyPath();
  v42[0] = v3;

  sub_21E13D3C4();

  v34 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__actions;
  swift_beginAccess();
  v35 = *(v3 + v34);

  sub_21DF2BCDC(v30, v29, v35);
}

uint64_t static CardLayout.== infix(_:_:)(int64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 3)
  {
    if (v2 <= 5)
    {
      if (v2 == 4)
      {
        if (v3 == 4)
        {
          sub_21DF5AF24(4uLL);
          v4 = 4;
          goto LABEL_31;
        }

        goto LABEL_33;
      }

      if (v2 == 5)
      {
        if (v3 == 5)
        {
          sub_21DF5AF24(5uLL);
          v4 = 5;
          goto LABEL_31;
        }

        goto LABEL_33;
      }
    }

    else
    {
      switch(v2)
      {
        case 6:
          if (v3 == 6)
          {
            sub_21DF5AF24(6uLL);
            v4 = 6;
            goto LABEL_31;
          }

          goto LABEL_33;
        case 7:
          if (v3 == 7)
          {
            sub_21DF5AF24(7uLL);
            v4 = 7;
            goto LABEL_31;
          }

          goto LABEL_33;
        case 8:
          if (v3 == 8)
          {
            sub_21DF5AF24(8uLL);
            v4 = 8;
LABEL_31:
            sub_21DF5AF24(v4);
            v5 = 1;
            return v5 & 1;
          }

          goto LABEL_33;
      }
    }

    goto LABEL_32;
  }

  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        sub_21DF5AF24(2uLL);
        v4 = 2;
        goto LABEL_31;
      }

      goto LABEL_33;
    }

    if (v2 == 3)
    {
      if (v3 == 3)
      {
        sub_21DF5AF24(3uLL);
        v4 = 3;
        goto LABEL_31;
      }

LABEL_33:
      sub_21DF5706C(*a2);
      sub_21DF5706C(v2);
      sub_21DF5AF24(v2);
      sub_21DF5AF24(v3);
      v5 = 0;
      return v5 & 1;
    }

LABEL_32:
    if (v3 >= 9)
    {
      v7 = *(v2 + 16);
      v8 = *(v3 + 16);
      v9 = v7;
      sub_21DF5706C(v3);
      sub_21DF5706C(v2);
      v5 = static CardLayout.== infix(_:_:)(&v9, &v8);
      sub_21DF5AF24(v2);
      sub_21DF5AF24(v3);
      return v5 & 1;
    }

    goto LABEL_33;
  }

  if (!v2)
  {
    if (!v3)
    {
      sub_21DF5AF24(0);
      v4 = 0;
      goto LABEL_31;
    }

    goto LABEL_33;
  }

  if (v2 != 1)
  {
    goto LABEL_32;
  }

  if (v3 != 1)
  {
    goto LABEL_33;
  }

  v5 = 1;
  sub_21DF5AF24(1uLL);
  sub_21DF5AF24(1uLL);
  return v5 & 1;
}

uint64_t sub_21DF58960@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v84 = a2;
  v3 = sub_21E13F0B4();
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v75 = &v72 - v6;
  v7 = sub_21E13D994();
  v8 = *(v7 - 8);
  v80 = v7;
  v81 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v79 = &v72 - v12;
  v13 = sub_21E13F1B4();
  v82 = *(v13 - 8);
  v83 = v13;
  MEMORY[0x28223BE20](v13);
  v74 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v73 = &v72 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v72 - v18;
  v20 = sub_21E13DF64();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v26 = &v72 - v25;
  v27 = sub_21E13E224();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = (&v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v31, a1, v27, v29);
  v32 = (*(v28 + 88))(v31, v27);
  if (v32 == *MEMORY[0x277D793B0])
  {
    (*(v28 + 96))(v31, v27);
    (*(v21 + 4))(v26, v31, v20);
    (*(v21 + 2))(v23, v26, v20);
    v33 = (*(v21 + 11))(v23, v20);
    if (v33 == *MEMORY[0x277D79268])
    {
      (*(v21 + 12))(v23, v20);
      v35 = *v23;
      v34 = v23[1];
      sub_21E13EBE4();

      v36 = sub_21E13F1A4();
      v37 = sub_21E142564();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = v35;
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v85 = v40;
        *v39 = 136315138;
        v41 = sub_21E0E08C0(v38, v34, &v85);

        *(v39 + 4) = v41;
        _os_log_impl(&dword_21DF05000, v36, v37, "Layout was requested for an error state, returning .text for error: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x223D540B0](v40, -1, -1);
        MEMORY[0x223D540B0](v39, -1, -1);
      }

      else
      {
      }

      (*(v82 + 8))(v19, v83);
      result = (*(v21 + 1))(v26, v20);
LABEL_33:
      v46 = 2;
      goto LABEL_34;
    }

    if (v33 == *MEMORY[0x277D79270])
    {
      v47 = *(v21 + 1);
      v47(v26, v20);
      v48 = 5;
LABEL_10:
      *v84 = v48;
      v49 = v23;
      return (v47)(v49, v20);
    }

    if (v33 != *MEMORY[0x277D79280])
    {
      if (v33 == *MEMORY[0x277D79220])
      {
        v47 = *(v21 + 1);
        v47(v26, v20);
        v48 = 7;
        goto LABEL_10;
      }

      if (v33 != *MEMORY[0x277D79230])
      {
        if (v33 == *MEMORY[0x277D79260])
        {
LABEL_42:
          v67 = *(v21 + 1);
          v67(v26, v20);
          result = (v67)(v23, v20);
          v46 = 1;
          goto LABEL_34;
        }

        if (v33 == *MEMORY[0x277D79248])
        {
          v47 = *(v21 + 1);
          v47(v26, v20);
          v48 = 3;
          goto LABEL_10;
        }

        if (v33 == *MEMORY[0x277D79288])
        {
          v47 = *(v21 + 1);
          v47(v26, v20);
          v48 = 4;
          goto LABEL_10;
        }

        if (v33 == *MEMORY[0x277D79228])
        {
          v47 = *(v21 + 1);
          v47(v26, v20);
          v48 = 6;
          goto LABEL_10;
        }

        if (v33 == *MEMORY[0x277D79240])
        {
          v47 = *(v21 + 1);
          v47(v26, v20);
          v48 = 8;
          goto LABEL_10;
        }

        if (v33 != *MEMORY[0x277D79290] && v33 != *MEMORY[0x277D79258] && v33 != *MEMORY[0x277D79238])
        {
          if (v33 == *MEMORY[0x277D79278])
          {
            goto LABEL_42;
          }

          if (v33 != *MEMORY[0x277D79250])
          {
            v43 = sub_21E142B04();
            __break(1u);
            goto LABEL_76;
          }
        }
      }
    }

    v56 = *(v21 + 1);
    v56(v26, v20);
    result = (v56)(v23, v20);
    goto LABEL_47;
  }

  if (v32 != *MEMORY[0x277D793A0])
  {
    if (v32 != *MEMORY[0x277D793B8])
    {
      if (v32 == *MEMORY[0x277D793A8])
      {
        (*(v28 + 96))(v31, v27);
        v58 = *v31;
        v57 = v31[1];
        v59 = v74;
        sub_21E13EBE4();

        v60 = sub_21E13F1A4();
        v61 = sub_21E142564();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v85 = v63;
          *v62 = 136315138;
          v64 = sub_21E0E08C0(v58, v57, &v85);

          *(v62 + 4) = v64;
          _os_log_impl(&dword_21DF05000, v60, v61, "Layout was requested for an error state, returning .text for error: %s", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v63);
          MEMORY[0x223D540B0](v63, -1, -1);
          MEMORY[0x223D540B0](v62, -1, -1);
        }

        else
        {
        }

        result = (*(v82 + 8))(v59, v83);
        goto LABEL_33;
      }

      goto LABEL_85;
    }

    (*(v28 + 96))(v31, v27);
    v50 = v77;
    v20 = v78;
    v51 = v75;
    (*(v77 + 32))(v75, v31, v78);
    v52 = v76;
    (*(v50 + 16))(v76, v51, v20);
    v53 = (*(v50 + 88))(v52, v20);
    if (v53 != *MEMORY[0x277D78A38])
    {
      if (v53 == *MEMORY[0x277D78A30])
      {
        (*(v50 + 8))(v51, v20);
        (*(v50 + 96))(v52, v20);
        *v84 = 8;
        v65 = sub_21E13F0A4();
        return (*(*(v65 - 8) + 8))(v52, v65);
      }

      if (v53 == *MEMORY[0x277D78A40])
      {
        v47 = *(v50 + 8);
        v47(v51, v20);
        *v84 = 1;
      }

      else
      {
        if (v53 == *MEMORY[0x277D78A48])
        {
          result = (*(v50 + 8))(v51, v20);
          v46 = 8;
          goto LABEL_34;
        }

        v68 = v73;
        sub_21E13EBF4();
        v69 = sub_21E13F1A4();
        v70 = sub_21E142564();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&dword_21DF05000, v69, v70, "Layout requested for an external action result state we don't know about; defaulting to basic", v71, 2u);
          MEMORY[0x223D540B0](v71, -1, -1);
        }

        (*(v82 + 8))(v68, v83);
        v47 = *(v50 + 8);
        v47(v51, v20);
        *v84 = 0;
      }

      v49 = v52;
      return (v47)(v49, v20);
    }

    v54 = *(v50 + 8);
    v54(v51, v20);
    result = (v54)(v52, v20);
    v46 = 8;
LABEL_34:
    *v84 = v46;
    return result;
  }

  (*(v28 + 96))(v31, v27);
  v20 = v81;
  v21 = v79;
  v42 = v31;
  v31 = v80;
  (*(v81 + 32))(v79, v42, v80);
  (*(v20 + 16))(v10, v21, v31);
  v43 = (*(v20 + 88))(v10, v31);
  if (v43 == *MEMORY[0x277D78F80])
  {
    v44 = *(v20 + 8);
    v44(v21, v31);
    result = (v44)(v10, v31);
    v46 = 7;
    goto LABEL_34;
  }

  if (v43 != *MEMORY[0x277D78F30])
  {
    if (v43 == *MEMORY[0x277D78F38])
    {
      (*(v20 + 8))(v21, v31);
      (*(v20 + 96))(v10, v31);
      v66 = sub_21E13E3F4();
      result = (*(*(v66 - 8) + 8))(v10, v66);
      goto LABEL_47;
    }

    if (v43 == *MEMORY[0x277D78F68])
    {
      (*(v20 + 96))(v10, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D20);

      sub_21DF23614(v10, &qword_27CEA6D28);
LABEL_84:
      __break(1u);
LABEL_85:
      sub_21E142B04();
      __break(1u);
      goto LABEL_86;
    }

    if (v43 == *MEMORY[0x277D78F70])
    {
      result = (*(v20 + 8))(v21, v31);
      v46 = 5;
      goto LABEL_34;
    }

    if (v43 == *MEMORY[0x277D78F78])
    {
      goto LABEL_46;
    }

    if (v43 == *MEMORY[0x277D78F28])
    {
      result = (*(v20 + 8))(v21, v31);
      v46 = 8;
      goto LABEL_34;
    }

    if (v43 == *MEMORY[0x277D78F98] || v43 == *MEMORY[0x277D78F20])
    {
      result = (*(v20 + 8))(v21, v31);
      v46 = 3;
      goto LABEL_34;
    }

    if (v43 == *MEMORY[0x277D78F88])
    {
      result = (*(v20 + 8))(v21, v31);
      v46 = 4;
      goto LABEL_34;
    }

    if (v43 == *MEMORY[0x277D78F60])
    {
      result = (*(v20 + 8))(v21, v31);
      v46 = 6;
      goto LABEL_34;
    }

LABEL_76:
    if (v43 != *MEMORY[0x277D78F58] && v43 != *MEMORY[0x277D78F48])
    {
      if (v43 != *MEMORY[0x277D78F90] && v43 != *MEMORY[0x277D78F50] && v43 != *MEMORY[0x277D78FA0])
      {
        if (v43 == *MEMORY[0x277D78F40])
        {
          result = (*(v81 + 8))(v79, v80);
          goto LABEL_47;
        }

LABEL_86:
        result = sub_21E142B04();
        __break(1u);
        return result;
      }

      goto LABEL_84;
    }

LABEL_46:
    result = (*(v20 + 8))(v21, v31);
    goto LABEL_47;
  }

  v55 = *(v20 + 8);
  v55(v21, v31);
  result = (v55)(v10, v31);
LABEL_47:
  *v84 = 0;
  return result;
}

unint64_t NewEntityModel.prepareForPresentationOfAction(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v11 - v3;
  v5 = sub_21E13EEE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v11[1] = a1;
  sub_21DF606B8(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  v9 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
  swift_beginAccess();
  sub_21DF236C0(a1 + v9, v4, &qword_27CEA6D48);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21DF23614(v4, &qword_27CEA6D48);
    v11[0] = 0;
    return NewEntityModel.cardLayout.setter(v11);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    static CardLayout.expectedLayout(for:)(v11);
    NewEntityModel.cardLayout.setter(v11);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t static CardLayout.expectedLayout(for:)@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v1 = sub_21E13EE74();
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E13EE94();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E13D994();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = sub_21E13EEB4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13EEC4();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x277D79680])
  {
    (*(v15 + 96))(v17, v14);
    (*(v8 + 32))(v13, v17, v7);
    (*(v8 + 16))(v10, v13, v7);
    v19 = (*(v8 + 88))(v10, v7);
    if (v19 == *MEMORY[0x277D78F80])
    {
      v20 = *(v8 + 8);
      v20(v13, v7);
      result = (v20)(v10, v7);
LABEL_4:
      v22 = 7;
LABEL_8:
      *v33 = v22;
      return result;
    }

    if (v19 == *MEMORY[0x277D78F30])
    {
      v26 = *(v8 + 8);
      v26(v13, v7);
      result = (v26)(v10, v7);
      goto LABEL_13;
    }

    if (v19 == *MEMORY[0x277D78F38])
    {
      (*(v8 + 8))(v13, v7);
      (*(v8 + 96))(v10, v7);
      v27 = sub_21E13E3F4();
      result = (*(*(v27 - 8) + 8))(v10, v27);
      goto LABEL_13;
    }

    if (v19 == *MEMORY[0x277D78F68])
    {
      (*(v8 + 8))(v13, v7);
      (*(v8 + 96))(v10, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D20);

      *v33 = 1;
      return sub_21DF23614(v10, &qword_27CEA6D28);
    }

    if (v19 == *MEMORY[0x277D78F70])
    {
      result = (*(v8 + 8))(v13, v7);
      v22 = 5;
      goto LABEL_8;
    }

    if (v19 == *MEMORY[0x277D78F78])
    {
      result = (*(v8 + 8))(v13, v7);
      goto LABEL_4;
    }

    if (v19 == *MEMORY[0x277D78F28])
    {
      result = (*(v8 + 8))(v13, v7);
      goto LABEL_7;
    }

    if (v19 == *MEMORY[0x277D78F98] || v19 == *MEMORY[0x277D78F20])
    {
      result = (*(v8 + 8))(v13, v7);
      v22 = 3;
      goto LABEL_8;
    }

    if (v19 == *MEMORY[0x277D78F88])
    {
      result = (*(v8 + 8))(v13, v7);
      v22 = 4;
      goto LABEL_8;
    }

    if (v19 == *MEMORY[0x277D78F60])
    {
      result = (*(v8 + 8))(v13, v7);
      v22 = 6;
      goto LABEL_8;
    }

    if (v19 == *MEMORY[0x277D78F58] || v19 == *MEMORY[0x277D78F48])
    {
      result = (*(v8 + 8))(v13, v7);
      v22 = 1;
      goto LABEL_8;
    }

    if (v19 == *MEMORY[0x277D78F90] || v19 == *MEMORY[0x277D78F50] || v19 == *MEMORY[0x277D78FA0] || v19 == *MEMORY[0x277D78F40])
    {
      result = (*(v8 + 8))(v13, v7);
      goto LABEL_13;
    }

LABEL_39:
    result = sub_21E142B04();
    __break(1u);
    return result;
  }

  if (v18 != *MEMORY[0x277D79688])
  {
    sub_21E142B04();
    __break(1u);
    goto LABEL_39;
  }

  sub_21E13EEA4();
  v24 = v31;
  v23 = v32;
  (*(v31 + 104))(v3, *MEMORY[0x277D79678], v32);
  v25 = sub_21E13EE84();
  (*(v24 + 8))(v3, v23);
  result = (*(v29 + 8))(v6, v30);
  if (v25)
  {
LABEL_7:
    v22 = 8;
    goto LABEL_8;
  }

LABEL_13:
  *v33 = 0;
  return result;
}

Swift::Void __swiftcall NewEntityModel.reset()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v22 - v3;
  v5 = sub_21E13F1B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13EBF4();

  v9 = sub_21E13F1A4();
  v10 = sub_21E142554();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22[0] = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v24[0] = v13;
    *v12 = 136315138;
    sub_21E13D344();
    sub_21DF606B8(&qword_27CEA6CF0, MEMORY[0x277CC95F0]);
    v14 = sub_21E142AB4();
    v16 = sub_21E0E08C0(v14, v15, v24);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_21DF05000, v9, v10, "Reset entity %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x223D540B0](v13, -1, -1);
    v17 = v12;
    v4 = v22[0];
    MEMORY[0x223D540B0](v17, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v18 = MEMORY[0x277D84F90];
  sub_21DF514A8(MEMORY[0x277D84F90]);
  NewEntityModel.actions.setter(v18);
  NewEntityModel.preShutterActions.setter(v18);
  NewEntityModel.visualSearchActions.setter(v18);
  v19 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__textAction;
  swift_beginAccess();
  if (*(v1 + v19))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v22[-2] = v1;
    v22[-1] = 0;
    v23[0] = v1;
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
    sub_21E13D3B4();
  }

  NewEntityModel.dataDetectors.setter(MEMORY[0x277D84F90]);
  v21 = sub_21E13EF04();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  NewEntityModel.pin.setter(v4);
  v23[0] = 0;
  NewEntityModel.cardLayout.setter(v23);
  swift_getKeyPath();
  v23[0] = v1;
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  swift_beginAccess();

  CardModel.reset()();
}

uint64_t NewEntityModel.Prominence.hashValue.getter()
{
  v1 = *v0;
  sub_21E142C14();
  MEMORY[0x223D53460](v1);
  return sub_21E142C44();
}

uint64_t NewEntityModel.deinit()
{
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id;
  v2 = sub_21E13D344();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__corners;
  v4 = sub_21E13ED04();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_21DF5AF24(*(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout));

  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin, &qword_27CEACB50);
  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  v6 = sub_21E13D404();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t NewEntityModel.__deallocating_deinit()
{
  NewEntityModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21DF5A974@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id;
  v5 = sub_21E13D344();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t static NewEntityModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_21E1423C4();
  v5[2] = a1;
  v5[3] = a2;
  return sub_21E0C372C(sub_21DF23B64, v5, "VisualIntelligenceUI/NewEntityModel.swift") & 1;
}

uint64_t sub_21DF5AA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  result = sub_21E13D324();
  if (result)
  {
    swift_getKeyPath();
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
    sub_21E13D3C4();

    v7 = *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence);
    swift_getKeyPath();
    sub_21E13D3C4();

    v8 = v7 == *(a2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence);
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21DF5ABA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21E1423C4();
  v5[2] = v2;
  v5[3] = v3;
  return sub_21E0C372C(sub_21DF6078C, v5, "VisualIntelligenceUI/NewEntityModel.swift") & 1;
}

uint64_t NewEntityModel.hash(into:)()
{
  sub_21E13D344();
  sub_21DF606B8(&qword_280F6C090, MEMORY[0x277CC95F0]);
  return sub_21E142024();
}

uint64_t NewEntityModel.hashValue.getter()
{
  sub_21E142C14();
  sub_21E13D344();
  sub_21DF606B8(&qword_280F6C090, MEMORY[0x277CC95F0]);
  sub_21E142024();
  return sub_21E142C44();
}

uint64_t sub_21DF5AD40()
{
  sub_21E142C14();
  sub_21E13D344();
  sub_21DF606B8(&qword_280F6C090, MEMORY[0x277CC95F0]);
  sub_21E142024();
  return sub_21E142C44();
}

uint64_t sub_21DF5ADE0()
{
  sub_21E13D344();
  sub_21DF606B8(&qword_280F6C090, MEMORY[0x277CC95F0]);
  return sub_21E142024();
}

uint64_t sub_21DF5AE68()
{
  sub_21E142C14();
  sub_21E13D344();
  sub_21DF606B8(&qword_280F6C090, MEMORY[0x277CC95F0]);
  sub_21E142024();
  return sub_21E142C44();
}

unint64_t sub_21DF5AF24(unint64_t result)
{
  if (result >= 9)
  {
  }

  return result;
}

uint64_t ResolvedAction.id.getter()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t static ResolvedAction.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  sub_21E1423C4();
  v11 = v3;
  v12 = v5;
  v6 = sub_21E0C372C(sub_21DF60774, v10, "VisualIntelligenceUI/NewActionModel.swift");
  if (v6)
  {
    MEMORY[0x28223BE20](v6);
    v9[2] = v2;
    v9[3] = v4;
    v7 = sub_21E0C372C(sub_21DF6078C, v9, "VisualIntelligenceUI/NewEntityModel.swift");
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21DF5B07C@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_21DF5B08C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  sub_21E1423C4();
  v11 = v3;
  v12 = v5;
  v6 = sub_21E0C372C(sub_21DF60774, v10, "VisualIntelligenceUI/NewActionModel.swift");
  if (v6)
  {
    MEMORY[0x28223BE20](v6);
    v9[2] = v2;
    v9[3] = v4;
    v7 = sub_21E0C372C(sub_21DF6078C, v9, "VisualIntelligenceUI/NewEntityModel.swift");
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21DF5B174(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_21E1427B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_21E1427B4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_21DF5D238(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_21DF5EA1C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21DF5B264(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21E06A5D0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21DF5B350(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_21E06AA0C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7740);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21DF5B488(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21E06AE50(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21DF5B574(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21E06ABFC(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21DF5B668(uint64_t a1)
{
  v62 = sub_21E13EF04();
  v3 = *(v62 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v62);
  v57 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58 = &v50 - v8;
  MEMORY[0x28223BE20](v9);
  v60 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7700);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7708);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v50 - v15;
  v63 = v1;
  v17 = *v1;
  v18 = *(*v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v20 = v17[3] >> 1, v20 <= v18))
  {
    v17 = sub_21E06A808(isUniquelyReferenced_nonNull_native, v18 + 1, 1, v17);
    v20 = v17[3] >> 1;
  }

  v21 = v17[2];
  v22 = (v3[80] + 32) & ~v3[80];
  v23 = v3;
  v24 = *(v3 + 9);
  v25 = v20 - v21;
  v56 = v22;
  v59 = v24;
  v26 = v17 + v22 + v24 * v21;
  v27 = &qword_27CEA7700;
  sub_21DF236C0(a1, v13, &qword_27CEA7700);
  v28 = sub_21DF5EF94(v16, v26, v25);
  sub_21DF23614(a1, &qword_27CEA7700);
  if (v28 < 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v29 = v17[2];
  v27 = (v29 + v28);
  if (__OFADD__(v29, v28))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17[2] = v27;
  if (v28 != v25)
  {
    v30 = &qword_27CEA7708;
    v31 = v16;
    goto LABEL_8;
  }

LABEL_11:
  v33 = v60;
  sub_21DF3DE9C(v16, v60, &qword_27CEACB50);
  v34 = v62;
  v51 = *(v23 + 7);
  v52 = v23 + 56;
  v51(v16, 1, 1, v62);
  v35 = v33;
  v36 = v58;
  sub_21DF236C0(v35, v58, &qword_27CEACB50);
  v37 = v23 + 48;
  v54 = *(v23 + 6);
  if (v54(v36, 1, v34) != 1)
  {
    v38 = (v55 + 32);
    v50 = (v55 + 8);
    v39 = v61;
    v53 = v37;
    do
    {
      sub_21DF23614(v36, &qword_27CEACB50);
      v41 = v17[3];
      v42 = v41 >> 1;
      if ((v41 >> 1) < v27 + 1)
      {
        v17 = sub_21E06A808(v41 > 1, v27 + 1, 1, v17);
        v42 = v17[3] >> 1;
      }

      sub_21DF236C0(v60, v39, &qword_27CEACB50);
      v43 = v62;
      if (v54(v39, 1, v62) == 1)
      {
LABEL_14:
        sub_21DF23614(v39, &qword_27CEACB50);
        v40 = v27;
      }

      else
      {
        v55 = *v38;
        if (v27 <= v42)
        {
          v40 = v42;
        }

        else
        {
          v40 = v27;
        }

        v44 = v57;
        v45 = v17 + v56 + v59 * v27;
        while (1)
        {
          (v55)(v44, v39, v43);
          if (v40 == v27)
          {
            break;
          }

          v46 = v38;
          v47 = v60;
          sub_21DF23614(v60, &qword_27CEACB50);
          (v55)(v45, v44, v62);
          v27 = (v27 + 1);
          sub_21DF3DE9C(v16, v47, &qword_27CEACB50);
          v51(v16, 1, 1, v62);
          v48 = v47;
          v38 = v46;
          v39 = v61;
          v43 = v62;
          sub_21DF236C0(v48, v61, &qword_27CEACB50);
          v49 = v54(v39, 1, v43);
          v45 += v59;
          if (v49 == 1)
          {
            goto LABEL_14;
          }
        }

        (*v50)(v44, v43);
        v27 = v40;
      }

      v17[2] = v40;
      v36 = v58;
      sub_21DF236C0(v60, v58, &qword_27CEACB50);
    }

    while (v54(v36, 1, v62) != 1);
  }

  sub_21DF23614(v60, &qword_27CEACB50);
  sub_21DF23614(v16, &qword_27CEA7708);
  v31 = v36;
  v30 = &qword_27CEACB50;
LABEL_8:
  result = sub_21DF23614(v31, v30);
  *v63 = v17;
  return result;
}

void *sub_21DF5BD50(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA6858);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

size_t sub_21DF5BE28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_21DF5BF24(size_t a1, int64_t a2, char a3)
{
  result = sub_21DF5CEF8(a1, a2, a3, *v3, &qword_27CEA77E0, &unk_21E147860, type metadata accessor for WaypointLayout.Element);
  *v3 = result;
  return result;
}

size_t sub_21DF5BF68(size_t a1, int64_t a2, char a3)
{
  result = sub_21DF5CEF8(a1, a2, a3, *v3, &qword_27CEA7738, &unk_21E147750, MEMORY[0x277D796D0]);
  *v3 = result;
  return result;
}

char *sub_21DF5BFAC(char *a1, int64_t a2, char a3)
{
  result = sub_21DF5C430(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21DF5BFCC(size_t a1, int64_t a2, char a3)
{
  result = sub_21DF5CEF8(a1, a2, a3, *v3, &qword_27CEA77A8, &unk_21E1477E8, MEMORY[0x277D78D90]);
  *v3 = result;
  return result;
}

size_t sub_21DF5C010(size_t a1, int64_t a2, char a3)
{
  result = sub_21DF5CEF8(a1, a2, a3, *v3, &qword_27CEA76E0, &unk_21E1476C0, MEMORY[0x277D79630]);
  *v3 = result;
  return result;
}

size_t sub_21DF5C054(size_t a1, int64_t a2, char a3)
{
  result = sub_21DF5CEF8(a1, a2, a3, *v3, &qword_27CEA76D8, &unk_21E1476B8, type metadata accessor for WaypointLayout.WaypointFrame);
  *v3 = result;
  return result;
}

char *sub_21DF5C098(char *a1, int64_t a2, char a3)
{
  result = sub_21DF5C53C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21DF5C0B8(char *a1, int64_t a2, char a3)
{
  result = sub_21DF5C668(a1, a2, a3, *v3, &qword_27CEA77E8);
  *v3 = result;
  return result;
}

char *sub_21DF5C0E8(char *a1, int64_t a2, char a3)
{
  result = sub_21DF5C668(a1, a2, a3, *v3, &qword_27CEA7780);
  *v3 = result;
  return result;
}

size_t sub_21DF5C118(size_t a1, int64_t a2, char a3)
{
  result = sub_21DF5CEF8(a1, a2, a3, *v3, &qword_27CEA7770, &unk_21E147788, MEMORY[0x277CDFA60]);
  *v3 = result;
  return result;
}

size_t sub_21DF5C15C(size_t a1, int64_t a2, char a3)
{
  result = sub_21DF5C9FC(a1, a2, a3, *v3, &qword_27CEA7750, &unk_21E147768, &qword_27CEA7758);
  *v3 = result;
  return result;
}

size_t sub_21DF5C19C(size_t a1, int64_t a2, char a3)
{
  result = sub_21DF5C9FC(a1, a2, a3, *v3, &qword_27CEA7788, &unk_21E1477A0, &qword_27CEA7790);
  *v3 = result;
  return result;
}

size_t sub_21DF5C1DC(size_t a1, int64_t a2, char a3)
{
  result = sub_21DF5C9FC(a1, a2, a3, *v3, &qword_27CEA7798, &unk_21E1477B0, &qword_27CEA7778);
  *v3 = result;
  return result;
}

size_t sub_21DF5C21C(size_t a1, int64_t a2, char a3)
{
  result = sub_21DF5C9FC(a1, a2, a3, *v3, &qword_27CEA7748, &unk_21E147760, &qword_27CEA7740);
  *v3 = result;
  return result;
}

void *sub_21DF5C25C(void *a1, int64_t a2, char a3)
{
  result = sub_21DF5C7B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21DF5C27C(char *a1, int64_t a2, char a3)
{
  result = sub_21DF5C8F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21DF5C29C(size_t a1, int64_t a2, char a3)
{
  result = sub_21DF5CEF8(a1, a2, a3, *v3, &qword_27CEA76C8, &unk_21E1476A8, type metadata accessor for MapsDisambiguationViewItem);
  *v3 = result;
  return result;
}

size_t sub_21DF5C2E0(size_t a1, int64_t a2, char a3)
{
  result = sub_21DF5C9FC(a1, a2, a3, *v3, &qword_27CEA7718, &unk_21E147728, &unk_27CEACFB0);
  *v3 = result;
  return result;
}

char *sub_21DF5C320(char *a1, int64_t a2, char a3)
{
  result = sub_21DF5CBE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21DF5C340(char *a1, int64_t a2, char a3)
{
  result = sub_21DF5CCE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21DF5C360(size_t a1, int64_t a2, char a3)
{
  result = sub_21DF5CEF8(a1, a2, a3, *v3, &qword_27CEA7710, &unk_21E147720, MEMORY[0x277D794F8]);
  *v3 = result;
  return result;
}

char *sub_21DF5C3A4(char *a1, int64_t a2, char a3)
{
  result = sub_21DF5CDEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21DF5C3C4(size_t a1, int64_t a2, char a3)
{
  result = sub_21DF5CEF8(a1, a2, a3, *v3, &qword_27CEA76F8, &unk_21E147708, MEMORY[0x277D796B8]);
  *v3 = result;
  return result;
}

char *sub_21DF5C430(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21DF5C53C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7728);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_21DF5C668(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

void *sub_21DF5C7B0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7730);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21DF5C8F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7720);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

size_t sub_21DF5C9FC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_21DF5CBE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_21DF5CCE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD2C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_21DF5CDEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_21DF5CEF8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_21DF5D0D4(void **a1)
{
  v2 = *(sub_21E13F274() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21E101928(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_21DF5D2D8(v5);
  *a1 = v3;
}

uint64_t sub_21DF5D17C(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_21E1427B4();
    }

    result = sub_21E1428C4();
    *v1 = result;
  }

  return result;
}

uint64_t sub_21DF5D238(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_21E1427B4();
LABEL_9:
  result = sub_21E1428C4();
  *v1 = result;
  return result;
}

void sub_21DF5D2D8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21E142AA4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21E13F274();
        v6 = sub_21E142314();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_21E13F274() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21DF5D6AC(v8, v9, a1, v4);
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
    sub_21DF5D404(0, v2, 1, a1);
  }
}

void sub_21DF5D404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_21E13F274();
  MEMORY[0x28223BE20](v8);
  v43 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v33 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v47 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v13 + 16);
    v17 = v13 + 16;
    v19 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    v46 = v17;
    v41 = (v17 + 16);
    v42 = v16;
    v20 = (v16 + v19 * (a3 - 1));
    v40 = -v19;
    v21 = a1 - a3;
    v34 = v19;
    v22 = v16 + v19 * a3;
LABEL_5:
    v38 = v20;
    v39 = a3;
    v36 = v22;
    v37 = v21;
    v49 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v47;
      v25 = v45;
      (v45)(v47, v22, v8, v14);
      v26 = v48;
      v25(v48, v23, v8);
      v27 = sub_21E13F264();
      v28 = sub_21E13F264();
      v29 = *v44;
      (*v44)(v26, v8);
      v29(v24, v8);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v39 + 1;
        v20 = &v38[v34];
        v21 = v37 - 1;
        v22 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v30(v23, v31, v8);
      v23 += v40;
      v22 += v40;
      if (__CFADD__(v49++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21DF5D6AC(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = sub_21E13F274();
  MEMORY[0x28223BE20](v9);
  v122 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v115 - v12;
  MEMORY[0x28223BE20](v13);
  v138 = &v115 - v14;
  v17 = MEMORY[0x28223BE20](v15);
  v137 = &v115 - v18;
  v19 = a3[1];
  v127 = v16;
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v127;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v21 = sub_21E101914(v21);
    }

    v140 = v21;
    v111 = *(v21 + 2);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = *&v21[16 * v111];
        v113 = *&v21[16 * v111 + 24];
        sub_21DF5E090(*a3 + *(v9 + 72) * v112, *a3 + *(v9 + 72) * *&v21[16 * v111 + 16], *a3 + *(v9 + 72) * v113, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_21E101914(v21);
        }

        if (v111 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v21[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v140 = v21;
        sub_21E101888(v111 - 1);
        v21 = v140;
        v111 = *(v140 + 2);
        if (v111 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v116 = a4;
  v20 = 0;
  v135 = (v16 + 8);
  v136 = v16 + 16;
  v134 = (v16 + 32);
  v21 = MEMORY[0x277D84F90];
  v120 = a3;
  v139 = v9;
  while (1)
  {
    v128 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v129 = v19;
      v117 = v6;
      v22 = *a3;
      v119 = v20;
      v23 = v127[9];
      v5 = &v22[v23 * (v20 + 1)];
      v24 = v22;
      v133 = v22;
      v25 = v9;
      v26 = v127[2];
      v27 = v137;
      v26(v137, v5, v25, v17);
      v28 = &v24[v23 * v20];
      v29 = v138;
      v125 = v26;
      (v26)(v138, v28, v25);
      v130 = sub_21E13F264();
      v126 = sub_21E13F264();
      v30 = v127[1];
      v30(v29, v25);
      v124 = v30;
      v30(v27, v25);
      v31 = v119 + 2;
      v131 = v23;
      v32 = &v133[v23 * (v119 + 2)];
      while (1)
      {
        v33 = v129;
        if (v129 == v31)
        {
          break;
        }

        v34 = v125;
        LODWORD(v133) = v130 < v126;
        v35 = v137;
        v36 = v139;
        (v125)(v137, v32, v139);
        v37 = v138;
        v34(v138, v5, v36);
        v38 = sub_21E13F264();
        v39 = sub_21E13F264();
        v40 = v124;
        (v124)(v37, v36);
        v40(v35, v36);
        v21 = v128;
        ++v31;
        v32 += v131;
        v5 += v131;
        if (((v133 ^ (v38 >= v39)) & 1) == 0)
        {
          v33 = v31 - 1;
          break;
        }
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v9 = v139;
      if (v130 < v126)
      {
        if (v33 < v119)
        {
          goto LABEL_123;
        }

        if (v119 < v33)
        {
          v41 = v131 * (v33 - 1);
          v5 = v33 * v131;
          v129 = v33;
          v42 = v33;
          v43 = v119;
          v44 = v119 * v131;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!v45)
              {
                goto LABEL_129;
              }

              v46 = *v134;
              (*v134)(v122, &v45[v44], v9);
              if (v44 < v41 || &v45[v44] >= &v45[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v46(&v45[v41], v122, v9);
              a3 = v120;
              v21 = v128;
            }

            ++v43;
            v41 -= v131;
            v5 -= v131;
            v44 += v131;
          }

          while (v43 < v42);
          v6 = v117;
          v20 = v119;
          v33 = v129;
        }
      }
    }

    v47 = a3[1];
    if (v33 < v47)
    {
      if (__OFSUB__(v33, v20))
      {
        goto LABEL_122;
      }

      if (v33 - v20 < v116)
      {
        if (__OFADD__(v20, v116))
        {
          goto LABEL_124;
        }

        if (v20 + v116 >= v47)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v20 + v116;
        }

        if (v5 < v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v33 != v5)
        {
          break;
        }
      }
    }

    v5 = v33;
    if (v33 < v20)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_21E06A15C(0, *(v21 + 2) + 1, 1, v21);
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v21 = sub_21E06A15C((v48 > 1), v49 + 1, 1, v21);
    }

    *(v21 + 2) = v50;
    v51 = &v21[16 * v49];
    *(v51 + 4) = v20;
    *(v51 + 5) = v5;
    v52 = *v118;
    if (!*v118)
    {
      goto LABEL_131;
    }

    v123 = v5;
    if (v49)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v21 + 4);
          v54 = *(v21 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_52:
          if (v56)
          {
            goto LABEL_110;
          }

          v69 = &v21[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_113;
          }

          v75 = &v21[16 * v5 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_117;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v79 = &v21[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_66:
        if (v74)
        {
          goto LABEL_112;
        }

        v82 = &v21[16 * v5];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_73:
        v90 = v5 - 1;
        if (v5 - 1 >= v50)
        {
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v91 = *&v21[16 * v90 + 32];
        v92 = *&v21[16 * v5 + 40];
        sub_21DF5E090(*a3 + v127[9] * v91, *a3 + v127[9] * *&v21[16 * v5 + 32], *a3 + v127[9] * v92, v52);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v92 < v91)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_21E101914(v21);
        }

        if (v90 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v93 = &v21[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v140 = v21;
        sub_21E101888(v5);
        v21 = v140;
        v50 = *(v140 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v21[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_108;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_109;
      }

      v64 = &v21[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_111;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_114;
      }

      if (v68 >= v60)
      {
        v86 = &v21[16 * v5 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v123;
    if (v123 >= v19)
    {
      goto LABEL_94;
    }
  }

  v117 = v6;
  v94 = *a3;
  v95 = v127[9];
  v133 = v127[2];
  v96 = &v94[v95 * (v33 - 1)];
  v130 = -v95;
  v131 = v94;
  v119 = v20;
  v97 = (v20 - v33);
  v121 = v95;
  v98 = &v94[v33 * v95];
  v123 = v5;
LABEL_85:
  v129 = v33;
  v124 = v98;
  v125 = v97;
  v126 = v96;
  v99 = v96;
  while (1)
  {
    v100 = v137;
    v101 = v133;
    (v133)(v137, v98, v9);
    v102 = v138;
    v101(v138, v99, v139);
    v103 = sub_21E13F264();
    v104 = sub_21E13F264();
    v105 = *v135;
    v106 = v102;
    v9 = v139;
    (*v135)(v106, v139);
    v105(v100, v9);
    if (v103 >= v104)
    {
LABEL_84:
      v33 = v129 + 1;
      v96 = v126 + v121;
      v97 = v125 - 1;
      v5 = v123;
      v98 = &v124[v121];
      if (v129 + 1 != v123)
      {
        goto LABEL_85;
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v21 = v128;
      if (v123 < v119)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    v107 = *v134;
    v108 = v132;
    (*v134)(v132, v98, v9);
    swift_arrayInitWithTakeFrontToBack();
    v107(v99, v108, v9);
    v99 += v130;
    v98 += v130;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_21DF5E090(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = sub_21E13F274();
  v8 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v47 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v64 = a1;
  v63 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v17;
    if (v17 >= 1)
    {
      v32 = -v13;
      v51 = a4;
      v52 = (v8 + 16);
      v50 = (v8 + 8);
      v33 = v31;
      v60 = a1;
      v53 = v32;
      do
      {
        v48 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v36 = a3;
        v54 = v34;
        v55 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v64 = v34;
            v62 = v48;
            goto LABEL_58;
          }

          v37 = v36;
          v49 = v31;
          v59 = v36 + v32;
          v38 = v33 + v32;
          v39 = *v52;
          v40 = v57;
          v41 = v33 + v32;
          v42 = v33;
          v43 = v61;
          (*v52)(v57, v41, v61);
          v44 = v58;
          (v39)(v58, v35, v43);
          v56 = sub_21E13F264();
          v45 = sub_21E13F264();
          v46 = *v50;
          (*v50)(v44, v43);
          v46(v40, v43);
          if (v56 < v45)
          {
            break;
          }

          v31 = v38;
          v36 = v59;
          if (v37 < v42 || v59 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v55;
            a1 = v60;
          }

          else
          {
            v35 = v55;
            a1 = v60;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v38;
          v32 = v53;
          v34 = v54;
          if (v38 <= v51)
          {
            a2 = v54;
            goto LABEL_57;
          }
        }

        v33 = v42;
        if (v37 < v54 || v59 >= v54)
        {
          a3 = v59;
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v60;
          v31 = v49;
          v32 = v53;
        }

        else
        {
          a3 = v59;
          a2 = v55;
          a1 = v60;
          v31 = v49;
          v32 = v53;
          if (v37 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v51);
    }

LABEL_57:
    v64 = a2;
    v62 = v31;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4 + v16;
    v62 = a4 + v16;
    v59 = a3;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v54 = v13;
      v55 = v8 + 16;
      v52 = (v8 + 8);
      v53 = v19;
      do
      {
        v60 = a1;
        v20 = v57;
        v21 = v61;
        v22 = v53;
        v53(v57, a2, v61);
        v23 = v58;
        v22(v58, a4, v21);
        v24 = a2;
        v25 = sub_21E13F264();
        v26 = sub_21E13F264();
        v27 = *v52;
        (*v52)(v23, v21);
        v27(v20, v21);
        if (v25 >= v26)
        {
          v28 = v54;
          v30 = a4 + v54;
          v29 = v60;
          if (v60 < a4 || v60 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (v60 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v63 = v30;
          a4 += v28;
        }

        else
        {
          v28 = v54;
          a2 = v24 + v54;
          v29 = v60;
          if (v60 < v24 || v60 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v60 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v29 + v28;
        v64 = a1;
      }

      while (a4 < v56 && a2 < v59);
    }
  }

LABEL_58:
  sub_21E06C5A8(&v64, &v63, &v62);
}

char *sub_21DF5E648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v15 = *v7;
  v16 = (v15 + 32 + 32 * a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7768);
  result = swift_arrayDestroy();
  v18 = __OFSUB__(a3, v8);
  v19 = a3 - v8;
  if (v18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = *(v15 + 16);
  v18 = __OFSUB__(v20, a2);
  v21 = v20 - a2;
  if (v18)
  {
    goto LABEL_21;
  }

  result = &v16[4 * a3];
  v22 = (v15 + 32 + 32 * a2);
  if (result != v22 || result >= &v22[32 * v21])
  {
    result = memmove(result, v22, 32 * v21);
  }

  v24 = *(v15 + 16);
  v18 = __OFADD__(v24, v19);
  v25 = v24 + v19;
  if (v18)
  {
    goto LABEL_22;
  }

  *(v15 + 16) = v25;
LABEL_13:
  if (a3 > 0)
  {
    *v16 = a4;
    v16[1] = a5;
    v16[2] = a6;
    v16[3] = a7;
    if (a3 == 1)
    {
      return result;
    }

LABEL_23:

    __break(1u);
    return result;
  }
}

unint64_t sub_21DF5E790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_21E13EF04();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_21DF23614(v25, &qword_27CEA7700);
  }

  if (v18 < 1)
  {
    return sub_21DF23614(v25, &qword_27CEA7700);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_21DF23614(v25, &qword_27CEA7700);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_21DF5E92C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for NewActionModel();
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_21DF5E994(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D530F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_21DF5EA14;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DF5EA1C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21E1427B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21E1427B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21DF605A8();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77C8);
            v9 = sub_21DF5E994(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NewActionModel();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21DF5EB9C(int64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  v3 = sub_21DF5EC00(a1);
  v4 = v3[2];

  return a2(v3 + 4, v4);
}

void *sub_21DF5EC00(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_21E0AC7DC(a1);

      objc_setAssociatedObject(v2, MEMORY[0x277D84F90], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_21DF5ECEC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  v9 = (MEMORY[0x28223BE20])();
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_21DF5EF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v27 = a1;
  v5 = sub_21E13EF04();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7708);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  v19 = *(v6 + 32);
  v19(v14, v3, v5, v16);
  v29 = v6;
  v20 = *(v6 + 56);
  v20(v14, 0, 1, v5);
  v28 = v20;
  v20(v18, 1, 1, v5);
  result = sub_21DF6051C(v14, v18);
  if (!a2)
  {
LABEL_10:
    v22 = 0;
    goto LABEL_12;
  }

  v22 = v30;
  if (!v30)
  {
LABEL_12:
    v26 = v27;
LABEL_13:
    sub_21DF3DE9C(v18, v26, &qword_27CEA7708);
    return v22;
  }

  if ((v30 & 0x8000000000000000) == 0)
  {
    v23 = (v29 + 48);
    v24 = 1;
    while (1)
    {
      sub_21DF3DE9C(v18, v11, &qword_27CEACB50);
      v28(v18, 1, 1, v5);
      if ((*v23)(v11, 1, v5) == 1)
      {
        sub_21DF23614(v11, &qword_27CEACB50);
        v22 = v24 - 1;
        goto LABEL_12;
      }

      (v19)(v8, v11, v5);
      (v19)(a2, v8, v5);
      if (v30 == v24)
      {
        break;
      }

      a2 += *(v29 + 72);
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v26 = v27;
    v22 = v30;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DF5F2B0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_21E1427B4();
  if (result < v2)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6)
  {
    v9 = sub_21E1427B4();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (!v10)
  {
    sub_21DF5D17C(result);
    return sub_21DF60120(v4, v2, 0, type metadata accessor for NewEntityModel);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_21DF5F390(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13EF04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77D8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_21DF236C0(a1, &v21 - v12, &qword_27CEACB50);
  sub_21DF236C0(a2, &v13[v15], &qword_27CEACB50);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21DF236C0(v13, v10, &qword_27CEACB50);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_21DF606B8(&qword_280F69070, MEMORY[0x277D796B8]);
      v18 = sub_21E142074();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_21DF23614(v13, &qword_27CEACB50);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21DF23614(v13, &qword_27CEA77D8);
    v17 = 1;
    return v17 & 1;
  }

  sub_21DF23614(v13, &qword_27CEACB50);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21DF5F6B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_21DF5F7B8(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for NewActionModel();
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    v16 = v15 - v7;
    if (!__OFSUB__(v15, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v20 = sub_21E1427B4();
  v16 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || v17 >= &v18[8 * v16])
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    v13 = sub_21E1427B4();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x28223BE20](v13);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    sub_21DF5EB9C(v4, sub_21DF6058C);
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

void sub_21DF5F950(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  if (sub_21E1427B4() < v5)
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v3 >> 62))
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFSUB__(v10, v9);
    v12 = v10 - v9;
    if (!v11)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

LABEL_18:
  v10 = sub_21E1427B4();
  v11 = __OFSUB__(v10, v9);
  v12 = v10 - v9;
  if (v11)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v8)
  {
    v13 = sub_21E1427B4();
  }

  else
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (v11)
  {
    goto LABEL_21;
  }

  sub_21DF5D238(v14);

  sub_21DF5F7B8(v6, v5, v10, v3);
}

unint64_t sub_21DF5FA88()
{
  result = qword_27CEA76C0;
  if (!qword_27CEA76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA76C0);
  }

  return result;
}

void sub_21DF5FB80()
{
  sub_21E13D344();
  if (v0 <= 0x3F)
  {
    sub_21E13ED04();
    if (v1 <= 0x3F)
    {
      sub_21DF5FD68();
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

void sub_21DF5FD68()
{
  if (!qword_280F69068)
  {
    sub_21E13EF04();
    v0 = sub_21E142724();
    if (!v1)
    {
      atomic_store(v0, &qword_280F69068);
    }
  }
}

uint64_t getEnumTagSinglePayload for NewEntityModel.Prominence(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}