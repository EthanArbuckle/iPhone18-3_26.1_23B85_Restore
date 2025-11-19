uint64_t sub_230DA23B0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      return 0xD000000000000012;
    }

    else if (v2 | v3)
    {
      return 0x20746E6572727563;
    }

    else
    {
      return 0x74756F6B726F77;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = 0x6E6F697461636F6CLL;
LABEL_8:
      v7 = v5;
      MEMORY[0x23191DA00](v2, v3);
      MEMORY[0x23191DA00](41, 0xE100000000000000);
      return v7;
    }

    if (v3)
    {
      v5 = 0x206574756D6D6F63;
      goto LABEL_8;
    }

    return 0x6574756D6D6F63;
  }
}

uint64_t sub_230DA24CC(uint64_t a1)
{
  v2 = sub_230E68910();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v41 - v10;
  v12 = type metadata accessor for TimeFrame();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = (&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_230DA29A0(a1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C1D8, &qword_230E752A0) + 48);
      v27 = v3[4];
      v27(v11, v16, v2);
      v27(v8, (v16 + v26), v2);
      v28 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      [v28 setDateStyle_];
      v43 = 0x206D6F7266;
      v44 = 0xE500000000000000;
      v29 = sub_230E688B0();
      v30 = [v28 stringFromDate_];

      v31 = sub_230E69060();
      v33 = v32;

      MEMORY[0x23191DA00](v31, v33);

      MEMORY[0x23191DA00](544175136, 0xE400000000000000);
      v34 = sub_230E688B0();
      v35 = [v28 stringFromDate_];

      v36 = sub_230E69060();
      v38 = v37;

      MEMORY[0x23191DA00](v36, v38);

      v39 = v43;
      v40 = v3[1];
      v40(v8, v2);
      v40(v11, v2);
      return v39;
    }

    v18 = *v16;
    v43 = 0x2074736170;
    v44 = 0xE500000000000000;
    v42 = v18;
    v19 = sub_230E69890();
    MEMORY[0x23191DA00](v19);

    v20 = 0x6B65657720;
    v21 = 0xE500000000000000;
  }

  else
  {
    v18 = *v16;
    v43 = 0x2074736170;
    v44 = 0xE500000000000000;
    v42 = v18;
    v22 = sub_230E69890();
    MEMORY[0x23191DA00](v22);

    v20 = 2036425760;
    v21 = 0xE400000000000000;
  }

  MEMORY[0x23191DA00](v20, v21);
  if (v18 == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = 115;
  }

  if (v18 == 1)
  {
    v24 = 0xE000000000000000;
  }

  else
  {
    v24 = 0xE100000000000000;
  }

  MEMORY[0x23191DA00](v23, v24);

  return v43;
}

double sub_230DA2890(_BYTE *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (a1[8])
  {
    if (v2)
    {
      if (v2 == 1)
      {
        v3 = 0;
        v4 = 0.0;
      }

      else
      {
        v3 = v2 & 0x7FFFFFFFFFFFFFFELL;
        v7 = (v1 + 104);
        v4 = 0.0;
        v8 = v2 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v9 = *(v7 - 5);
          v10 = *v7;
          v7 += 10;
          v4 = v4 + v9 + v10;
          v8 -= 2;
        }

        while (v8);
        if (v2 == v3)
        {
          goto LABEL_20;
        }
      }

      v11 = v2 - v3;
      v12 = (v1 + 40 * v3 + 64);
      do
      {
        v13 = *v12;
        v12 += 5;
        v4 = v4 + v13;
        --v11;
      }

      while (v11);
LABEL_20:
      v6 = v4 * 100.0;
      return round(v6) / 100.0;
    }
  }

  else if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0;
      v4 = 0.0;
    }

    else
    {
      v5 = v2 & 0x7FFFFFFFFFFFFFFELL;
      v14 = (v1 + 240);
      v4 = 0.0;
      v15 = v2 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v4 = v4 + *(v14 - 21) + *v14;
        v14 += 42;
        v15 -= 2;
      }

      while (v15);
      if (v2 == v5)
      {
        goto LABEL_20;
      }
    }

    v16 = v2 - v5;
    v17 = (v1 + 168 * v5 + 72);
    do
    {
      v18 = *v17;
      v17 += 21;
      v4 = v4 + v18;
      --v16;
    }

    while (v16);
    goto LABEL_20;
  }

  v6 = 0.0;
  return round(v6) / 100.0;
}

uint64_t sub_230DA29A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeFrame();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppUsage.bundleID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void __swiftcall AppUsage.init(startTime:endTime:bundleID:foregroundDuration:)(ServicesIntelligence::AppUsage *__return_ptr retstr, Swift::Double startTime, Swift::Double endTime, Swift::String bundleID, Swift::Double foregroundDuration)
{
  retstr->startTime = startTime;
  retstr->endTime = endTime;
  retstr->bundleID = bundleID;
  retstr->foregroundDuration = foregroundDuration;
}

uint64_t sub_230DA2A5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_230DA2AA4(uint64_t result, int a2, int a3)
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

uint64_t sub_230DA2B00()
{
  v0 = sub_230E68D80();
  __swift_allocate_value_buffer(v0, qword_27DB5C1E0);
  __swift_project_value_buffer(v0, qword_27DB5C1E0);
  return sub_230E68D70();
}

uint64_t sub_230DA2B80(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v75 = sub_230D0E9B4(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {
    v5 = v2;
LABEL_55:
    v68 = v5[2];
    if (v68)
    {
      *&v77 = MEMORY[0x277D84F90];
      sub_230D49090(0, v68, 0);
      v69 = 4;
      v70 = v77;
      do
      {
        v71 = v5[v69];
        *&v77 = v70;
        v72 = *(v70 + 16);
        v73 = *(v70 + 24);

        if (v72 >= v73 >> 1)
        {
          sub_230D49090((v73 > 1), v72 + 1, 1);
          v70 = v77;
        }

        *(v70 + 16) = v72 + 1;
        *(v70 + 8 * v72 + 32) = v71;
        ++v69;
        --v68;
      }

      while (v68);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v70;
  }

  v4 = (a1 + 32);
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    v6 = *v4;
    if (*(*v4 + 16))
    {
      v7 = *v4;

      v8 = sub_230DA41A0(0x6D6954746E657665, 0xEE00706D61747365);
      if (v9)
      {
        sub_230D82664(*(v6 + 56) + 32 * v8, &v77);
      }

      else
      {
        v77 = 0u;
        v78 = 0u;
      }
    }

    else
    {
      v77 = 0u;
      v78 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }

    v10 = *v76;
    if (*(v6 + 16) && (v11 = sub_230DA41A0(0x676E697472617473, 0xE800000000000000), (v12 & 1) != 0))
    {
      sub_230D82664(*(v6 + 56) + 32 * v11, &v77);
    }

    else
    {
      v77 = 0u;
      v78 = 0u;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }

    v13 = *&v76[0];
    if (*(v6 + 16) && (v14 = sub_230DA41A0(0x4449656C646E7562, 0xE800000000000000), (v15 & 1) != 0))
    {
      sub_230D82664(*(v6 + 56) + 32 * v14, &v77);
    }

    else
    {
      v77 = 0u;
      v78 = 0u;
    }

    if ((swift_dynamicCast() & 1) == 0 || (v16 = *(&v76[0] + 1)) == 0)
    {
LABEL_26:
      if (qword_27DB5A440 != -1)
      {
        swift_once();
      }

      v27 = sub_230E68D80();
      __swift_project_value_buffer(v27, qword_27DB5C1E0);

      v28 = sub_230E68D60();
      v29 = sub_230E69400();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *&v77 = v31;
        *v30 = 136315138;
        v32 = sub_230E68F60();
        v34 = v33;

        v35 = sub_230D7E620(v32, v34, &v77);

        *(v30 + 4) = v35;
        v36 = v29;
        v37 = v28;
        v38 = "[AppUsageConsolidator][consolidateAppUsageRows] Skipping row with invalid data: %s";
        goto LABEL_30;
      }

      goto LABEL_47;
    }

    v17 = *&v76[0];
    if (v13 != 1)
    {

      v39 = v75;
      v40 = sub_230DA41A0(v17, v16);
      v42 = v41;

      if (v42)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v77 = v75;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_230DBA998();
          v39 = v77;
        }

        v44 = *(*(v39 + 48) + 16 * v40 + 8);

        v45 = *(v39 + 56) + 16 * v40;
        v46 = *v45;
        v47 = *(v45 + 8);
        v75 = v39;
        sub_230E1B1F4(v40, v39);
        if (v10 - v47 > 0.0)
        {
          v48 = MEMORY[0x277D839F8];
          *(&v78 + 1) = MEMORY[0x277D839F8];
          *&v77 = v47;
          sub_230D0E394(&v77, v76);
          v49 = swift_isUniquelyReferenced_nonNull_native();
          sub_230E1BE84(v76, 0x6D69547472617473, 0xE900000000000065, v49);
          *(&v78 + 1) = v48;
          *&v77 = v10;
          sub_230D0E394(&v77, v76);
          v50 = swift_isUniquelyReferenced_nonNull_native();
          sub_230E1BE84(v76, 0x656D6954646E65, 0xE700000000000000, v50);
          *(&v78 + 1) = v48;
          *&v77 = v10 - v47;
          sub_230D0E394(&v77, v76);
          v51 = swift_isUniquelyReferenced_nonNull_native();
          sub_230E1BE84(v76, 0xD000000000000012, 0x8000000230E82A20, v51);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_230E4A5F8(0, v5[2] + 1, 1, v5);
          }

          v53 = v5[2];
          v52 = v5[3];
          if (v53 >= v52 >> 1)
          {
            v5 = sub_230E4A5F8((v52 > 1), v53 + 1, 1, v5);
          }

          v5[2] = v53 + 1;
          v5[v53 + 4] = v46;
          goto LABEL_49;
        }

        if (qword_27DB5A440 != -1)
        {
          swift_once();
        }

        v56 = sub_230E68D80();
        __swift_project_value_buffer(v56, qword_27DB5C1E0);

        v28 = sub_230E68D60();
        v57 = sub_230E69400();

        if (os_log_type_enabled(v28, v57))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *&v77 = v31;
          *v30 = 136315138;
          v58 = sub_230E68F60();
          v60 = v59;

          v61 = sub_230D7E620(v58, v60, &v77);

          *(v30 + 4) = v61;
          v36 = v57;
          v37 = v28;
          v38 = "[AppUsageConsolidator][consolidateAppUsageRows] negative duration for session, skipping: %s";
LABEL_30:
          _os_log_impl(&dword_230D02000, v37, v36, v38, v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v31);
          MEMORY[0x23191EAE0](v31, -1, -1);
          MEMORY[0x23191EAE0](v30, -1, -1);
LABEL_48:

          goto LABEL_49;
        }

LABEL_47:

        goto LABEL_48;
      }

      goto LABEL_49;
    }

    v18 = swift_isUniquelyReferenced_nonNull_native();
    *&v77 = v75;
    v20 = sub_230DA41A0(v17, v16);
    v21 = *(v75 + 16);
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      break;
    }

    v24 = v19;
    if (*(v75 + 24) >= v23)
    {
      if (v18)
      {
        if (v19)
        {
          goto LABEL_42;
        }
      }

      else
      {
        sub_230DBA998();
        if (v24)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      sub_230DB7ED0(v23, v18);
      v25 = sub_230DA41A0(v17, v16);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_65;
      }

      v20 = v25;
      if (v24)
      {
LABEL_42:

        v75 = v77;
        v54 = *(v77 + 56) + 16 * v20;
        v55 = *v54;
        *v54 = v6;
        *(v54 + 8) = v10;

        goto LABEL_49;
      }
    }

    v62 = v77;
    *(v77 + 8 * (v20 >> 6) + 64) |= 1 << v20;
    v63 = (v62[6] + 16 * v20);
    *v63 = v17;
    v63[1] = v16;
    v64 = v62[7] + 16 * v20;
    *v64 = v6;
    *(v64 + 8) = v10;
    v65 = v62[2];
    v66 = __OFADD__(v65, 1);
    v67 = v65 + 1;
    if (v66)
    {
      goto LABEL_64;
    }

    v75 = v62;
    v62[2] = v67;
LABEL_49:
    ++v4;
    if (!--v3)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = sub_230E69950();
  __break(1u);
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_230DA3484()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_230E69060();
    v4 = v3;

    if (v2 == 0xD00000000000001FLL && 0x8000000230E80090 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_230E698C0();
    }
  }

  return v1 & 1;
}

uint64_t sub_230DA3554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_230DA3574, 0, 0);
}

uint64_t sub_230DA3574()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A48] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_230DA3654;
  v5 = v0[2];
  v6 = MEMORY[0x277D84F78] + 8;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A8](v5, v6, 0, 0, &unk_230E74FB0, v2, v7);
}

uint64_t sub_230DA3654()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_230DA3790, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_230DA3790()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_230DA37F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230DA389C, 0, 0);
}

uint64_t sub_230DA389C()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v24 = **(v0 + 72);
    v3 = (v1 + 32);
    v4 = sub_230E69310();
    v5 = *(v4 - 8);
    v23 = *(v5 + 56);
    v22 = (v5 + 48);
    v21 = (v5 + 8);
    do
    {
      v9 = *(v0 + 88);
      v8 = *(v0 + 96);
      v25 = *v3;
      v23(v8, 1, 1, v4);
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      v11 = (v10 + 16);
      *(v10 + 24) = 0;
      *(v10 + 32) = v25;
      sub_230DA3F6C(v8, v9);
      LODWORD(v9) = (*v22)(v9, 1, v4);
      swift_retain_n();
      v12 = *(v0 + 88);
      if (v9 == 1)
      {
        sub_230D2D9F8(*(v0 + 88), &qword_27DB5B010, &unk_230E733F0);
        if (*v11)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_230E69300();
        (*v21)(v12, v4);
        if (*v11)
        {
LABEL_9:
          v15 = *(v10 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v13 = sub_230E692D0();
          v14 = v16;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v13 = 0;
      v14 = 0;
LABEL_10:

      if (v14 | v13)
      {
        v6 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v13;
        *(v0 + 40) = v14;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 96);
      *(v0 + 48) = 1;
      *(v0 + 56) = v6;
      *(v0 + 64) = v24;
      swift_task_create();

      sub_230D2D9F8(v7, &qword_27DB5B010, &unk_230E733F0);
      ++v3;
      --v2;
    }

    while (v2);
  }

  v18 = *(v0 + 88);
  v17 = *(v0 + 96);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_230DA3B70(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_230D1BF00;

  return sub_230DA37F4(a1, a2, v6);
}

uint64_t sub_230DA3C20(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 48) = v5;
  *v5 = v3;
  v5[1] = sub_230DA3D10;

  return v7(v3 + 16);
}

uint64_t sub_230DA3D10()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v6 = *v1;

  if (v0)
  {
    MEMORY[0x23191E910](v0);
    v4 = sub_230DA3E40;
  }

  else
  {
    sub_230D2D9F8(v2 + 16, &unk_27DB5D8D0, &qword_230E756A0);
    v4 = sub_230D63F54;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230DA3E40()
{
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  sub_230D2D9F8(v0 + 16, &unk_27DB5D8D0, &qword_230E756A0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230DA3EC0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_230D1D2F8;

  return sub_230DA3C20(v2, v3, v5);
}

uint64_t sub_230DA3F6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_230DA3FDC()
{
  v1 = sub_230E689F0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v4 = sub_230E68A10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_230E69030();
  v11 = [v0 containerURLForSecurityApplicationGroupIdentifier_];

  if (v11)
  {
    sub_230E68810();
  }

  else
  {
    sub_230E689E0();
    sub_230DA42D0(MEMORY[0x277D84F90]);
    sub_230DA43E0();
    sub_230E687D0();
    sub_230E68A00();
    (*(v5 + 8))(v9, v4);
    swift_willThrow();
  }
}

unint64_t sub_230DA41A0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_230E699B0();
  sub_230E69100();
  v6 = sub_230E699D0();

  return sub_230DA4218(a1, a2, v6);
}

unint64_t sub_230DA4218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_230E698C0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_230DA42D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A928, &unk_230E75CC0);
    v3 = sub_230E69640();
    v4 = a1 + 32;

    while (1)
    {
      sub_230DA4438(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_230DA41A0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_230D0E394(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_230DA43E0()
{
  result = qword_27DB5C1F8;
  if (!qword_27DB5C1F8)
  {
    sub_230E68A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C1F8);
  }

  return result;
}

uint64_t sub_230DA4438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A930, &unk_230E6B9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ContentResult.appUsage.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  v1 = *v0;
}

uint64_t ContentResult.mediaPlayback.getter()
{
  if (v0[1])
  {
    return 0;
  }

  v2 = *v0;
}

uint64_t MediaPlaybackType.rawValue.getter()
{
  v1 = 0x636973756DLL;
  v2 = 0x6F65646976;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x74736163646F70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

ServicesIntelligence::MediaPlaybackType_optional __swiftcall MediaPlaybackType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_230DA4608()
{
  result = qword_27DB5C200;
  if (!qword_27DB5C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C200);
  }

  return result;
}

uint64_t sub_230DA465C()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DA4714()
{
  *v0;
  *v0;
  *v0;
  sub_230E69100();
}

uint64_t sub_230DA47B8()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230DA4878(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x636973756DLL;
  v4 = 0xE500000000000000;
  v5 = 0x6F65646976;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x74736163646F70;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_230DA490C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_230DA4954(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t MediaPlayback.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MediaPlayback.bundleID.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t MediaPlayback.artist.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t MediaPlayback.album.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t MediaPlayback.genre.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t MediaPlayback.iTunesStoreIdentifier.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t MediaPlayback.iTunesArtistIdentifier.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t MediaPlayback.iTunesAlbumIdentifier.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return v1;
}

uint64_t MediaPlayback.firstParty.getter()
{
  v1 = *(v0 + 32);
  if (v1 <= 1 && !*(v0 + 32))
  {
    v2 = 1;
LABEL_12:

    return v2 & 1;
  }

  v3 = sub_230E698C0();

  if ((v3 & 1) == 0)
  {
    if (v1 == 1)
    {
      v2 = 1;
      goto LABEL_12;
    }

    v4 = sub_230E698C0();

    if ((v4 & 1) == 0)
    {
      if (v1 == 2)
      {
        v2 = 1;
      }

      else
      {
        v2 = sub_230E698C0();
      }

      goto LABEL_12;
    }
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t MediaPlayback.songTitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 32) > 1u || *(v0 + 32))
  {
    v3 = sub_230E698C0();

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  return v1;
}

uint64_t MediaPlayback.musicArtist.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v1)
  {
    v4 = sub_230E698C0();

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  return v2;
}

uint64_t MediaPlayback.songID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  if (v1)
  {
    v4 = sub_230E698C0();

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  return v2;
}

uint64_t MediaPlayback.artistID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  if (v1)
  {
    v4 = sub_230E698C0();

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  return v2;
}

uint64_t MediaPlayback.albumID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  if (v1)
  {
    v4 = sub_230E698C0();

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  return v2;
}

uint64_t MediaPlayback.episodeTitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 32) <= 1u && *(v0 + 32))
  {

    goto LABEL_6;
  }

  v3 = sub_230E698C0();

  if (v3)
  {
LABEL_6:

    return v1;
  }

  return 0;
}

uint64_t MediaPlayback.podcastName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v1 <= 1 && v1)
  {

    goto LABEL_6;
  }

  v4 = sub_230E698C0();

  if (v4)
  {
LABEL_6:

    return v2;
  }

  return 0;
}

uint64_t MediaPlayback.episodeID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  if (v1 <= 1 && v1)
  {

    goto LABEL_6;
  }

  v4 = sub_230E698C0();

  if (v4)
  {
LABEL_6:

    return v2;
  }

  return 0;
}

uint64_t MediaPlayback.podcastID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  if (v1 <= 1 && v1)
  {

    goto LABEL_6;
  }

  v4 = sub_230E698C0();

  if (v4)
  {
LABEL_6:

    return v2;
  }

  return 0;
}

uint64_t MediaPlayback.videoTitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 32) == 2)
  {
  }

  else
  {
    v3 = sub_230E698C0();

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  return v1;
}

double MediaPlayback.playProgress.getter()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    return fmin(*(v0 + 40) / v1 * 100.0, 100.0);
  }

  else
  {
    return 0.0;
  }
}

uint64_t MediaPlayback.formattedDuration.getter()
{
  v1 = *(v0 + 48) % 0x3Cu;
  v2 = MEMORY[0x277D83B88];
  v7 = sub_230E69890();
  MEMORY[0x23191DA00](58, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C208, &qword_230E75180);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_230E6B3B0;
  v4 = MEMORY[0x277D83C10];
  *(v3 + 56) = v2;
  *(v3 + 64) = v4;
  *(v3 + 32) = v1;
  v5 = sub_230E69090();
  MEMORY[0x23191DA00](v5);

  return v7;
}

void MediaPlayback.formattedPlayDuration.getter()
{
  v1 = *(v0 + 40);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    sub_230E69890();
    MEMORY[0x23191DA00](8301, 0xE200000000000000);
    v2 = sub_230E69890();
    MEMORY[0x23191DA00](v2);

    MEMORY[0x23191DA00](115, 0xE100000000000000);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t MediaPlayback.init(startTime:endTime:title:type:playDuration:contentLength:bundleID:artist:album:genre:iTunesStoreIdentifier:iTunesArtistIdentifier:iTunesAlbumIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, __int128 a13, __int128 a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18)
{
  v18 = *a3;
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = result;
  *(a9 + 24) = a2;
  *(a9 + 32) = v18;
  *(a9 + 40) = a12;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  *(a9 + 88) = a13;
  *(a9 + 104) = a14;
  *(a9 + 120) = a15;
  *(a9 + 136) = a16;
  *(a9 + 152) = a17;
  *(a9 + 160) = a18;
  return result;
}

uint64_t sub_230DA57C4()
{
  v0 = sub_230E68D80();
  __swift_allocate_value_buffer(v0, qword_27DB5C210);
  __swift_project_value_buffer(v0, qword_27DB5C210);
  return sub_230E68D70();
}

uint64_t sub_230DA5844(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v3 = sub_230D0E890(MEMORY[0x277D84F90]);
  v226 = v3;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D839F8];
  if (!v4)
  {
    v146 = v3;
    goto LABEL_152;
  }

  v220 = 0;
  v6 = (a1 + 32);
  v216 = 0;
  do
  {
    v7 = *v6;
    if (*(*v6 + 16))
    {
      v8 = *v6;

      v9 = sub_230DA41A0(0x6D6954746E657665, 0xEE00706D61747365);
      if (v10)
      {
        sub_230D82664(*(v7 + 56) + 32 * v9, &v224);
      }

      else
      {
        v224 = 0u;
        v225 = 0u;
      }
    }

    else
    {
      v224 = 0u;
      v225 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_23;
    }

    v11 = *v223;
    if (*(v7 + 16) && (v12 = sub_230DA41A0(0x6B63616279616C70, 0xED00006574617453), (v13 & 1) != 0))
    {
      sub_230D82664(*(v7 + 56) + 32 * v12, &v224);
    }

    else
    {
      v224 = 0u;
      v225 = 0u;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_23;
    }

    v14 = *&v223[0];
    if (*(v7 + 16) && (v15 = sub_230DA41A0(0x4449656C646E7562, 0xE800000000000000), (v16 & 1) != 0))
    {
      sub_230D82664(*(v7 + 56) + 32 * v15, &v224);
    }

    else
    {
      v224 = 0u;
      v225 = 0u;
    }

    if ((swift_dynamicCast() & 1) == 0 || !*(&v223[0] + 1))
    {
LABEL_23:
      if (qword_27DB5A448 != -1)
      {
        swift_once();
      }

      v19 = sub_230E68D80();
      __swift_project_value_buffer(v19, qword_27DB5C210);

      v20 = sub_230E68D60();
      v21 = sub_230E69400();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = v2;
        v24 = swift_slowAlloc();
        *&v224 = v24;
        *v22 = 136315138;
        v25 = sub_230E68F60();
        v27 = v26;

        v28 = sub_230D7E620(v25, v27, &v224);

        *(v22 + 4) = v28;
        _os_log_impl(&dword_230D02000, v20, v21, "[MediaPlaybackConsolidator][consolidatePlaybackRows] Skipping row with invalid data: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        v29 = v24;
        v2 = v23;
        MEMORY[0x23191EAE0](v29, -1, -1);
        v30 = v22;
        v5 = MEMORY[0x277D839F8];
        MEMORY[0x23191EAE0](v30, -1, -1);
      }

      else
      {
      }

      goto LABEL_29;
    }

    if (*(v7 + 16) && (v17 = sub_230DA41A0(0xD000000000000015, 0x8000000230E82A90), (v18 & 1) != 0))
    {
      sub_230D82664(*(v7 + 56) + 32 * v17, &v224);
    }

    else
    {
      v224 = 0u;
      v225 = 0u;
    }

    if ((swift_dynamicCast() & 1) != 0 && (v31 = *(&v223[0] + 1)) != 0)
    {
      v32 = *&v223[0];
    }

    else
    {
      if (*(v7 + 16) && (v33 = sub_230DA41A0(0x656C746974, 0xE500000000000000), (v34 & 1) != 0))
      {
        sub_230D82664(*(v7 + 56) + 32 * v33, &v224);
      }

      else
      {
        v224 = 0u;
        v225 = 0u;
      }

      v35 = swift_dynamicCast();
      v37 = *(&v223[0] + 1);
      v36 = *&v223[0];
      if (!v35)
      {
        v37 = 0;
        v36 = 0;
      }

      if (v37)
      {
        v38 = v36;
      }

      else
      {
        v38 = 0x6E776F6E6B6E75;
      }

      if (v37)
      {
        v39 = v37;
      }

      else
      {
        v39 = 0xE700000000000000;
      }

      v217 = v2;
      if (*(v7 + 16) && (v40 = sub_230DA41A0(0x4449656C646E7562, 0xE800000000000000), (v41 & 1) != 0))
      {
        sub_230D82664(*(v7 + 56) + 32 * v40, &v224);
      }

      else
      {
        v224 = 0u;
        v225 = 0u;
      }

      v42 = swift_dynamicCast();
      v44 = *(&v223[0] + 1);
      v43 = *&v223[0];
      if (!v42)
      {
        v44 = 0;
        v43 = 0;
      }

      if (v44)
      {
        v45 = v43;
      }

      else
      {
        v45 = 0x6E776F6E6B6E75;
      }

      if (v44)
      {
        v46 = v44;
      }

      else
      {
        v46 = 0xE700000000000000;
      }

      *&v224 = v38;
      *(&v224 + 1) = v39;
      MEMORY[0x23191DA00](95, 0xE100000000000000);
      MEMORY[0x23191DA00](v45, v46);

      v31 = *(&v224 + 1);
      v32 = v224;
      v2 = v217;
      v5 = MEMORY[0x277D839F8];
    }

    v47 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v47 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (!v47)
    {
LABEL_113:

      goto LABEL_29;
    }

    v219 = v32;
    if (v14 > 2)
    {
      if (v14 != 5 && v14 != 4 && v14 != 3)
      {
LABEL_80:
        v48 = 0;
        LODWORD(v14) = 0;
        goto LABEL_73;
      }

      goto LABEL_72;
    }

    if (!v14)
    {
      goto LABEL_72;
    }

    if (v14 != 1)
    {
      if (v14 != 2)
      {
        goto LABEL_80;
      }

LABEL_72:
      v48 = 0;
      goto LABEL_73;
    }

    if (!v220 || v216 == v32 && v220 == v31)
    {
      v48 = 1;
      LODWORD(v14) = 1;
    }

    else
    {
      if (sub_230E698C0())
      {
        goto LABEL_146;
      }

      v117 = v226;
      if (!v226[2])
      {
        goto LABEL_146;
      }

      v118 = v2;

      v215 = sub_230DA41A0(v216, v220);
      v120 = v119;

      if (v120)
      {
        v121 = (v117[7] + 24 * v215);
        v122 = *v121;
        v123 = v121[1];
        v124 = v121[2];
        v222 = *v121;
        swift_bridgeObjectRetain_n();
        v125 = sub_230DB3F8C(0x6D6954746E657665, 0xEE00706D61747365, v122);
        if (v126)
        {
          sub_230E1A960(0x6D69547472617473, 0xE900000000000065, &v224);
          sub_230DA6F50(&v224);
          v127 = v222;
        }

        else
        {
          *(&v225 + 1) = v5;
          *&v224 = v125;
          sub_230D0E394(&v224, v223);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_230E1BE84(v223, 0x6D69547472617473, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
          v127 = v122;
        }

        *(&v225 + 1) = v5;
        *&v224 = v124;
        sub_230D0E394(&v224, v223);
        v135 = swift_isUniquelyReferenced_nonNull_native();
        sub_230E1BE84(v223, 0x656D6954646E65, 0xE700000000000000, v135);
        *(&v225 + 1) = v5;
        *&v224 = v123;
        sub_230D0E394(&v224, v223);
        v136 = swift_isUniquelyReferenced_nonNull_native();
        sub_230E1BE84(v223, 0x6172754479616C70, 0xEC0000006E6F6974, v136);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_230E4A5F8(0, v118[2] + 1, 1, v118);
        }

        v138 = v118[2];
        v137 = v118[3];
        v139 = v118;
        if (v138 >= v137 >> 1)
        {
          v139 = sub_230E4A5F8((v137 > 1), v138 + 1, 1, v118);
        }

        v139[2] = v138 + 1;
        v2 = v139;
        v139[v138 + 4] = v127;

        sub_230E1AA04(v216, v220, &v224);

LABEL_146:
        v48 = 1;
        LODWORD(v14) = 1;
        v32 = v219;
        goto LABEL_73;
      }

      v48 = 1;
      LODWORD(v14) = 1;
      v2 = v118;
      v32 = v219;
    }

LABEL_73:
    v49 = v226;
    if (v226[2])
    {
      v218 = v48;
      v50 = sub_230DA41A0(v32, v31);
      if ((v51 & 1) != 0 && (v52 = v49[7] + 24 * v50, v53 = *(v52 + 16), v11 - v53 > 3600.0))
      {
        v54 = v2;
        v55 = *v52;
        v56 = *(v52 + 8);
        v221 = *v52;
        if (*(*v52 + 16))
        {
          swift_bridgeObjectRetain_n();
          v57 = sub_230DA41A0(0x6D6954746E657665, 0xEE00706D61747365);
          if (v58)
          {
            sub_230D82664(*(v55 + 56) + 32 * v57, &v224);
          }

          else
          {
            v224 = 0u;
            v225 = 0u;
          }
        }

        else
        {
          v224 = 0u;
          v225 = 0u;
          swift_bridgeObjectRetain_n();
        }

        v59 = MEMORY[0x277D839F8];
        if (swift_dynamicCast())
        {
          *(&v225 + 1) = v59;
          *&v224 = *&v223[0];
          sub_230D0E394(&v224, v223);
          v60 = swift_isUniquelyReferenced_nonNull_native();
          sub_230E1BE84(v223, 0x6D69547472617473, 0xE900000000000065, v60);
          v61 = v55;
        }

        else
        {
          sub_230E1A960(0x6D69547472617473, 0xE900000000000065, &v224);
          sub_230DA6F50(&v224);
          v61 = v221;
        }

        *(&v225 + 1) = v59;
        *&v224 = v53;
        sub_230D0E394(&v224, v223);
        v62 = swift_isUniquelyReferenced_nonNull_native();
        sub_230E1BE84(v223, 0x656D6954646E65, 0xE700000000000000, v62);

        *(&v225 + 1) = v59;
        *&v224 = v56;
        sub_230D0E394(&v224, v223);
        v63 = swift_isUniquelyReferenced_nonNull_native();
        sub_230E1BE84(v223, 0x6172754479616C70, 0xEC0000006E6F6974, v63);
        v2 = v54;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_230E4A5F8(0, v54[2] + 1, 1, v54);
        }

        v65 = v2[2];
        v64 = v2[3];
        v66 = v219;
        if (v65 >= v64 >> 1)
        {
          v2 = sub_230E4A5F8((v64 > 1), v65 + 1, 1, v2);
          v66 = v219;
        }

        v2[2] = v65 + 1;
        v2[v65 + 4] = v61;
        sub_230E1AA04(v66, v31, &v224);

        v32 = v219;
        v5 = MEMORY[0x277D839F8];
      }

      else
      {
        v32 = v219;
      }

      v48 = v218;
    }

    if (v48)
    {

      v32 = v219;
      v216 = v219;
      v220 = v31;
    }

    if ((v14 - 2) < 2)
    {

      v67 = v226;
      if (!v226[2] || (v68 = sub_230DA41A0(v219, v31), (v69 & 1) == 0))
      {

        goto LABEL_29;
      }

      v70 = v2;
      v71 = v67[7] + 24 * v68;
      v72 = *v71;
      v73 = *(v71 + 8);
      v74 = *(v71 + 16);

      v75 = swift_isUniquelyReferenced_nonNull_native();
      *&v224 = v67;
      v76 = sub_230DA41A0(v219, v31);
      v78 = v67[2];
      v79 = (v77 & 1) == 0;
      v80 = __OFADD__(v78, v79);
      v81 = v78 + v79;
      if (v80)
      {
        goto LABEL_223;
      }

      v82 = v77;
      if (v67[3] >= v81)
      {
        if ((v75 & 1) == 0)
        {
          v144 = v76;
          sub_230DBA810();
          v76 = v144;
        }
      }

      else
      {
        sub_230DB7C08(v81, v75);
        v76 = sub_230DA41A0(v219, v31);
        if ((v82 & 1) != (v83 & 1))
        {
          goto LABEL_228;
        }
      }

      v2 = v70;
      v109 = v73 + v11 - v74;
      if ((v82 & 1) == 0)
      {
        v112 = v224;
        *(v224 + 8 * (v76 >> 6) + 64) |= 1 << v76;
        v113 = (v112[6] + 16 * v76);
        *v113 = v219;
        v113[1] = v31;
        v114 = v112[7] + 24 * v76;
        *v114 = v72;
        *(v114 + 8) = v109;
        *(v114 + 16) = v11;
        v115 = v112[2];
        v80 = __OFADD__(v115, 1);
        v116 = v115 + 1;
        if (v80)
        {
          goto LABEL_226;
        }

        goto LABEL_149;
      }

      v110 = v76;

      v106 = v224;
      v107 = *(v224 + 56) + 24 * v110;
      v111 = *v107;
      *v107 = v72;
      *(v107 + 8) = v109;
      goto LABEL_125;
    }

    if (v14 != 1)
    {
      goto LABEL_113;
    }

    v84 = v2;
    v85 = v226;
    v86 = v32;
    if (!v226[2] || (sub_230DA41A0(v32, v31), (v87 & 1) == 0))
    {

      v97 = swift_isUniquelyReferenced_nonNull_native();
      *&v224 = v85;
      v98 = sub_230DA41A0(v86, v31);
      v100 = v85[2];
      v101 = (v99 & 1) == 0;
      v80 = __OFADD__(v100, v101);
      v102 = v100 + v101;
      if (v80)
      {
        goto LABEL_222;
      }

      v103 = v99;
      if (v85[3] < v102)
      {
        sub_230DB7C08(v102, v97);
        v98 = sub_230DA41A0(v219, v31);
        if ((v103 & 1) != (v104 & 1))
        {
          goto LABEL_228;
        }

LABEL_119:
        v2 = v84;
        if (v103)
        {
          goto LABEL_120;
        }

LABEL_148:
        v112 = v224;
        *(v224 + 8 * (v98 >> 6) + 64) |= 1 << v98;
        v141 = (v112[6] + 16 * v98);
        *v141 = v219;
        v141[1] = v31;
        v142 = v112[7] + 24 * v98;
        *v142 = v7;
        *(v142 + 8) = 0;
        *(v142 + 16) = v11;
        v143 = v112[2];
        v80 = __OFADD__(v143, 1);
        v116 = v143 + 1;
        if (v80)
        {
          goto LABEL_224;
        }

LABEL_149:
        v112[2] = v116;
        v226 = v112;
LABEL_150:
        v5 = MEMORY[0x277D839F8];
        goto LABEL_29;
      }

      if (v97)
      {
        goto LABEL_119;
      }

      v140 = v98;
      sub_230DBA810();
      v98 = v140;
      v2 = v84;
      if ((v103 & 1) == 0)
      {
        goto LABEL_148;
      }

LABEL_120:
      v105 = v98;

      v106 = v224;
      v107 = *(v224 + 56) + 24 * v105;
      v108 = *v107;
      *v107 = v7;
      *(v107 + 8) = 0;
LABEL_125:
      *(v107 + 16) = v11;

      v226 = v106;
      goto LABEL_150;
    }

    v88 = swift_isUniquelyReferenced_nonNull_native();
    *&v224 = v85;
    v90 = sub_230DA41A0(v86, v31);
    v91 = v85[2];
    v92 = (v89 & 1) == 0;
    v93 = v91 + v92;
    if (__OFADD__(v91, v92))
    {
      goto LABEL_225;
    }

    v94 = v89;
    if (v85[3] >= v93)
    {
      if ((v88 & 1) == 0)
      {
        v145 = v90;
        sub_230DBA810();
        v90 = v145;
      }
    }

    else
    {
      sub_230DB7C08(v93, v88);
      v95 = sub_230DA41A0(v219, v31);
      if ((v94 & 1) != (v96 & 1))
      {
        goto LABEL_228;
      }

      v90 = v95;
    }

    v2 = v84;
    if ((v94 & 1) == 0)
    {
      goto LABEL_227;
    }

    v128 = v224;
    v129 = (*(v224 + 56) + 24 * v90);
    v130 = *v129;
    if (!*v129)
    {
      goto LABEL_227;
    }

    v131 = v129[1];
    v132 = v90;

    v133 = v128[7] + 24 * v132;
    *v133 = v130;
    *(v133 + 8) = v131;
    *(v133 + 16) = v11;

    v226 = v128;
LABEL_29:
    ++v6;
    --v4;
  }

  while (v4);
  v146 = v226;
LABEL_152:
  v147 = 1 << *(v146 + 32);
  v148 = -1;
  if (v147 < 64)
  {
    v148 = ~(-1 << v147);
  }

  v149 = v148 & *(v146 + 64);
  v150 = (v147 + 63) >> 6;

  v151 = 0;
  if (!v149)
  {
    while (1)
    {
LABEL_155:
      v152 = v151 + 1;
      if (__OFADD__(v151, 1))
      {
        __break(1u);
        goto LABEL_216;
      }

      if (v152 >= v150)
      {
        break;
      }

      v149 = *(v146 + 64 + 8 * v152);
      ++v151;
      if (v149)
      {
        v151 = v152;
        goto LABEL_159;
      }
    }

    v208 = v2[2];
    if (v208)
    {
      *&v224 = MEMORY[0x277D84F90];
      sub_230D49090(0, v208, 0);
      v209 = 4;
      v210 = v224;
      do
      {
        v211 = v2[v209];
        *&v224 = v210;
        v212 = *(v210 + 16);
        v213 = *(v210 + 24);

        if (v212 >= v213 >> 1)
        {
          sub_230D49090((v213 > 1), v212 + 1, 1);
          v210 = v224;
        }

        *(v210 + 16) = v212 + 1;
        *(v210 + 8 * v212 + 32) = v211;
        ++v209;
        --v208;
      }

      while (v208);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v210;
  }

LABEL_159:
  while (2)
  {
    v153 = (*(v146 + 56) + 24 * (__clz(__rbit64(v149)) | (v151 << 6)));
    v154 = *v153;
    v155 = v153[1];
    v156 = v153[2];
    if (*(*v153 + 16))
    {
      swift_bridgeObjectRetain_n();
      v157 = sub_230DA41A0(0x6D6954746E657665, 0xEE00706D61747365);
      if (v158)
      {
        sub_230D82664(v154[7] + 32 * v157, &v224);
      }

      else
      {
        v224 = 0u;
        v225 = 0u;
      }
    }

    else
    {
      v224 = 0u;
      v225 = 0u;
      swift_bridgeObjectRetain_n();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
    if (swift_dynamicCast())
    {
      v159 = v2;
      *(&v225 + 1) = v5;
      *&v224 = *&v223[0];
      sub_230D0E394(&v224, v223);
      v160 = swift_isUniquelyReferenced_nonNull_native();
      v161 = sub_230DA41A0(0x6D69547472617473, 0xE900000000000065);
      v163 = v154[2];
      v164 = (v162 & 1) == 0;
      v80 = __OFADD__(v163, v164);
      v165 = v163 + v164;
      if (v80)
      {
        goto LABEL_218;
      }

      v166 = v162;
      if (v154[3] >= v165)
      {
        if (v160)
        {
          goto LABEL_176;
        }

        v175 = v161;
        sub_230DBA17C();
        v161 = v175;
        v172 = v154;
        if ((v166 & 1) == 0)
        {
          goto LABEL_179;
        }

LABEL_177:
        v174 = (v172[7] + 32 * v161);
        __swift_destroy_boxed_opaque_existential_1(v174);
        sub_230D0E394(v223, v174);
      }

      else
      {
        sub_230DB7074(v165, v160);
        v161 = sub_230DA41A0(0x6D69547472617473, 0xE900000000000065);
        if ((v166 & 1) != (v167 & 1))
        {
          goto LABEL_228;
        }

LABEL_176:
        v172 = v154;
        if (v166)
        {
          goto LABEL_177;
        }

LABEL_179:
        v172[(v161 >> 6) + 8] |= 1 << v161;
        v176 = (v172[6] + 16 * v161);
        *v176 = 0x6D69547472617473;
        v176[1] = 0xE900000000000065;
        sub_230D0E394(v223, (v172[7] + 32 * v161));
        v177 = v172[2];
        v80 = __OFADD__(v177, 1);
        v178 = v177 + 1;
        if (v80)
        {
          goto LABEL_221;
        }

        v172[2] = v178;
      }
    }

    else
    {
      v168 = sub_230DA41A0(0x6D69547472617473, 0xE900000000000065);
      if (v169)
      {
        v170 = v168;
        v171 = swift_isUniquelyReferenced_nonNull_native();
        *&v223[0] = v154;
        v172 = v154;
        if ((v171 & 1) == 0)
        {
          sub_230DBA17C();
          v172 = *&v223[0];
        }

        v173 = *(v172[6] + 16 * v170 + 8);

        sub_230D0E394((v172[7] + 32 * v170), &v224);
        sub_230E1AE88(v170, v172);
      }

      else
      {
        v224 = 0u;
        v225 = 0u;
        v172 = v154;
      }

      v159 = v2;
      sub_230DA6F50(&v224);
    }

    *(&v225 + 1) = MEMORY[0x277D839F8];
    *&v224 = v156;
    sub_230D0E394(&v224, v223);
    v179 = swift_isUniquelyReferenced_nonNull_native();
    v180 = sub_230DA41A0(0x656D6954646E65, 0xE700000000000000);
    v182 = v172[2];
    v183 = (v181 & 1) == 0;
    v80 = __OFADD__(v182, v183);
    v184 = v182 + v183;
    if (!v80)
    {
      v185 = v181;
      if (v172[3] >= v184)
      {
        if ((v179 & 1) == 0)
        {
          v201 = v180;
          sub_230DBA17C();
          v180 = v201;
        }
      }

      else
      {
        sub_230DB7074(v184, v179);
        v180 = sub_230DA41A0(0x656D6954646E65, 0xE700000000000000);
        if ((v185 & 1) != (v186 & 1))
        {
          goto LABEL_228;
        }
      }

      v2 = v159;
      if (v185)
      {
        v187 = (v172[7] + 32 * v180);
        __swift_destroy_boxed_opaque_existential_1(v187);
        sub_230D0E394(v223, v187);
      }

      else
      {
        v172[(v180 >> 6) + 8] |= 1 << v180;
        v188 = (v172[6] + 16 * v180);
        *v188 = 0x656D6954646E65;
        v188[1] = 0xE700000000000000;
        sub_230D0E394(v223, (v172[7] + 32 * v180));
        v189 = v172[2];
        v80 = __OFADD__(v189, 1);
        v190 = v189 + 1;
        if (v80)
        {
          goto LABEL_219;
        }

        v172[2] = v190;
      }

      *(&v225 + 1) = MEMORY[0x277D839F8];
      *&v224 = v155;
      sub_230D0E394(&v224, v223);
      v191 = swift_isUniquelyReferenced_nonNull_native();
      v192 = sub_230DA41A0(0x6172754479616C70, 0xEC0000006E6F6974);
      v194 = v172[2];
      v195 = (v193 & 1) == 0;
      v80 = __OFADD__(v194, v195);
      v196 = v194 + v195;
      if (v80)
      {
        goto LABEL_217;
      }

      v197 = v193;
      if (v172[3] >= v196)
      {
        if (v191)
        {
          goto LABEL_196;
        }

        v202 = v192;
        sub_230DBA17C();
        v192 = v202;
        v199 = v172;
        if ((v197 & 1) == 0)
        {
          goto LABEL_199;
        }

LABEL_197:
        v200 = (v199[7] + 32 * v192);
        __swift_destroy_boxed_opaque_existential_1(v200);
        sub_230D0E394(v223, v200);
      }

      else
      {
        sub_230DB7074(v196, v191);
        v192 = sub_230DA41A0(0x6172754479616C70, 0xEC0000006E6F6974);
        if ((v197 & 1) != (v198 & 1))
        {
          goto LABEL_228;
        }

LABEL_196:
        v199 = v172;
        if (v197)
        {
          goto LABEL_197;
        }

LABEL_199:
        v199[(v192 >> 6) + 8] |= 1 << v192;
        v203 = v199[6] + 16 * v192;
        strcpy(v203, "playDuration");
        *(v203 + 13) = 0;
        *(v203 + 14) = -5120;
        sub_230D0E394(v223, (v199[7] + 32 * v192));
        v204 = v199[2];
        v80 = __OFADD__(v204, 1);
        v205 = v204 + 1;
        if (v80)
        {
          goto LABEL_220;
        }

        v199[2] = v205;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_230E4A5F8(0, v2[2] + 1, 1, v2);
      }

      v207 = v2[2];
      v206 = v2[3];
      if (v207 >= v206 >> 1)
      {
        v2 = sub_230E4A5F8((v206 > 1), v207 + 1, 1, v2);
      }

      v149 &= v149 - 1;
      v2[2] = v207 + 1;
      v2[v207 + 4] = v199;
      v5 = MEMORY[0x277D839F8];
      if (!v149)
      {
        goto LABEL_155;
      }

      continue;
    }

    break;
  }

LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  result = sub_230E69950();
  __break(1u);
  return result;
}

uint64_t sub_230DA6F50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230DA6FB8(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = type metadata accessor for TimeFrame();
  v2[31] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v5 = sub_230E68910();
  v2[33] = v5;
  v6 = *(v5 - 8);
  v2[34] = v6;
  v7 = *(v6 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230DA70B4, 0, 0);
}

void sub_230DA70B4()
{
  v48 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 232);
  sub_230DA8CE0(v1);
  sub_230E688D0();
  v7 = *(v3 + 8);
  v7(v1, v2);
  sub_230DA29A0(v6, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v0 + 280);
  if (EnumCaseMultiPayload >= 2)
  {
    v11 = *(v0 + 264);
    v12 = *(v0 + 272);
    v13 = *(v0 + 256);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C1D8, &qword_230E752A0);
    (*(v12 + 32))(v9, v13 + *(v14 + 48), v11);
    v7(v13, v11);
  }

  else
  {
    v10 = *(v0 + 280);
    sub_230E68900();
  }

  v15 = *(v0 + 280);
  v16 = *(v0 + 264);
  v17 = *(v0 + 240);
  sub_230E688D0();
  v7(v15, v16);
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  sub_230E69540();
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000055, 0x8000000230E82AE0);
  sub_230E69320();
  MEMORY[0x23191DA00](0xD000000000000017, 0x8000000230E82B40);
  sub_230E69320();
  MEMORY[0x23191DA00](0xD00000000000001CLL, 0x8000000230E82B60);
  v18 = *(v17 + 16);
  v19 = sub_230DB38E4(*(v0 + 216), *(v0 + 224));
  v20 = *(v0 + 240);

  v21 = sub_230E68D60();
  v22 = sub_230E693E0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = *(v19 + 2);

    _os_log_impl(&dword_230D02000, v21, v22, "[AppUsageProvider][getContents] Got %ld raw app focus events, consolidating usage sessions", v23, 0xCu);
    MEMORY[0x23191EAE0](v23, -1, -1);
  }

  else
  {
  }

  v24 = sub_230DA2B80(v19);

  v25 = sub_230E68D60();
  v26 = sub_230E693E0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    *(v27 + 4) = *(v24 + 16);

    _os_log_impl(&dword_230D02000, v25, v26, "[AppUsageProvider][getContents] Consolidated into %ld app usage sessions", v27, 0xCu);
    MEMORY[0x23191EAE0](v27, -1, -1);
  }

  else
  {
  }

  v28 = *(v24 + 16);
  if (v28)
  {
    v29 = 0;
    v30 = MEMORY[0x277D84F90];
    while (v29 < *(v24 + 16))
    {
      v31 = *(v0 + 240);
      v43 = *(v24 + 32 + 8 * v29);

      sub_230DA7674(&v43, &v44);
      v32 = v46;
      if (v46)
      {
        *(v0 + 200) = &type metadata for AppUsage;
        *(v0 + 208) = &off_2845AC928;
        v33 = swift_allocObject();
        *(v0 + 176) = v33;
        v34 = v45;
        v35 = v47;
        *(v33 + 16) = v44;
        *(v33 + 32) = v34;
        *(v33 + 40) = v32;
        *(v33 + 48) = v35;
        sub_230D1D080((v0 + 176), v0 + 96);
      }

      else
      {
        *(v0 + 128) = 0;
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
      }

      v36 = *(v0 + 112);
      *(v0 + 56) = *(v0 + 96);
      *(v0 + 72) = v36;
      *(v0 + 88) = *(v0 + 128);

      if (*(v0 + 80))
      {
        sub_230D1D080((v0 + 56), v0 + 16);
        sub_230D1D080((v0 + 16), v0 + 136);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_230E4A87C(0, v30[2] + 1, 1, v30);
        }

        v38 = v30[2];
        v37 = v30[3];
        if (v38 >= v37 >> 1)
        {
          v30 = sub_230E4A87C((v37 > 1), v38 + 1, 1, v30);
        }

        v30[2] = v38 + 1;
        sub_230D1D080((v0 + 136), &v30[5 * v38 + 4]);
      }

      else
      {
        sub_230DA7A24(v0 + 56);
      }

      if (v28 == ++v29)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
LABEL_25:
    v40 = *(v0 + 280);
    v39 = *(v0 + 288);
    v41 = *(v0 + 256);

    v42 = *(v0 + 8);

    v42(v30);
  }
}

void sub_230DA7674(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_230DB3F8C(0x6D69547472617473, 0xE900000000000065, *a1);
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    v7 = sub_230DB3F8C(0x656D6954646E65, 0xE700000000000000, v3);
    if ((v8 & 1) == 0)
    {
      v9 = v7;
      v10 = sub_230DB403C(0x4449656C646E7562, 0xE800000000000000, v3);
      if (v11)
      {
        v12 = v10;
        v13 = v11;
        v14 = sub_230DB3F8C(0xD000000000000012, 0x8000000230E82A20, v3);
        if ((v15 & 1) == 0)
        {
          *a2 = v6;
          a2[1] = v9;
          a2[2] = v12;
          a2[3] = v13;
          a2[4] = v14;
          return;
        }
      }
    }
  }

  v16 = sub_230E68D60();
  v17 = sub_230E69400();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 136315138;

    v20 = sub_230E68F60();
    v22 = v21;

    v23 = sub_230D7E620(v20, v22, &v24);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_230D02000, v16, v17, "[AppUsageProvider][getContents] Warning: Skipping app usage row with invalid data: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x23191EAE0](v19, -1, -1);
    MEMORY[0x23191EAE0](v18, -1, -1);
  }

  a2[4] = 0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
}

uint64_t sub_230DA788C()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC20ServicesIntelligence16AppUsageProvider_logger;
  v3 = sub_230E68D80();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppUsageProvider()
{
  result = qword_27DB5C230;
  if (!qword_27DB5C230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230DA7984()
{
  result = sub_230E68D80();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_230DA7A24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C240, &qword_230E752A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230DA7A8C(uint64_t a1, uint64_t a2)
{
  v3[48] = a2;
  v3[49] = v2;
  v3[47] = a1;
  v4 = type metadata accessor for TimeFrame();
  v3[50] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[51] = swift_task_alloc();
  v6 = sub_230E68910();
  v3[52] = v6;
  v7 = *(v6 - 8);
  v3[53] = v7;
  v8 = *(v7 + 64) + 15;
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230DA7B8C, 0, 0);
}

void sub_230DA7B8C()
{
  v107 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 416);
  v3 = *(v0 + 424);
  v5 = *(v0 + 400);
  v4 = *(v0 + 408);
  v6 = *(v0 + 384);
  sub_230DA8CE0(v1);
  sub_230E688D0();
  v7 = *(v3 + 8);
  v7(v1, v2);
  sub_230DA29A0(v6, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v0 + 432);
  if (EnumCaseMultiPayload >= 2)
  {
    v11 = *(v0 + 416);
    v12 = *(v0 + 424);
    v13 = *(v0 + 408);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C1D8, &qword_230E752A0);
    (*(v12 + 32))(v9, v13 + *(v14 + 48), v11);
    v7(v13, v11);
  }

  else
  {
    v10 = *(v0 + 432);
    sub_230E68900();
  }

  v15 = *(v0 + 432);
  v16 = *(v0 + 416);
  v17 = *(v0 + 376);
  sub_230E688D0();
  v7(v15, v16);
  *&v96 = 0;
  *(&v96 + 1) = 0xE000000000000000;
  sub_230E69540();
  *(v0 + 352) = 0;
  *(v0 + 360) = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD0000000000000D4, 0x8000000230E82BC0);
  sub_230E69320();
  MEMORY[0x23191DA00](0xD000000000000017, 0x8000000230E82B40);
  sub_230E69320();
  v82 = *(v0 + 352);
  v83 = *(v0 + 360);
  v18 = *(v17 + 16);
  v81 = v0;
  if (v18)
  {
    v19 = *(v0 + 376);
    v84 = MEMORY[0x277D84F90];
    sub_230D48880(0, v18, 0);
    v20 = v84;
    v21 = (v19 + 32);
    do
    {
      v23 = *v21++;
      v22 = v23;
      *&v96 = 39;
      *(&v96 + 1) = 0xE100000000000000;
      v24 = v23 == 2;
      if (v23 == 2)
      {
        v25 = 0x6C7070612E6D6F63;
      }

      else
      {
        v25 = 0;
      }

      v26 = 0xE000000000000000;
      if (v24)
      {
        v26 = 0xEC00000076742E65;
      }

      if (v22)
      {
        v27 = 0xD000000000000012;
      }

      else
      {
        v27 = 0x6C7070612E6D6F63;
      }

      v28 = 0xEF636973754D2E65;
      if (v22)
      {
        v28 = 0x8000000230E82CE0;
      }

      if (v22 <= 1)
      {
        v29 = v27;
      }

      else
      {
        v29 = v25;
      }

      if (v22 <= 1)
      {
        v30 = v28;
      }

      else
      {
        v30 = v26;
      }

      MEMORY[0x23191DA00](v29, v30);

      MEMORY[0x23191DA00](39, 0xE100000000000000);
      v31 = v96;
      v84 = v20;
      v33 = *(v20 + 16);
      v32 = *(v20 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_230D48880((v32 > 1), v33 + 1, 1);
        v20 = v84;
      }

      *(v20 + 16) = v33 + 1;
      *(v20 + 16 * v33 + 32) = v31;
      --v18;
    }

    while (v18);
    v0 = v81;
    *(v81 + 368) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
    sub_230D443B8();
    v34 = sub_230E68FF0();
    v36 = v35;

    sub_230E69540();

    *&v96 = 0xD000000000000012;
    *(&v96 + 1) = 0x8000000230E82CA0;
    MEMORY[0x23191DA00](v34, v36);

    MEMORY[0x23191DA00](41, 0xE100000000000000);
    MEMORY[0x23191DA00](0xD000000000000012, 0x8000000230E82CA0);
  }

  v37 = *(v0 + 392);
  MEMORY[0x23191DA00](0xD00000000000001CLL, 0x8000000230E82CC0);

  v38 = sub_230E68D60();
  v39 = sub_230E693E0();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v96 = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_230D7E620(v82, v83, &v96);
    _os_log_impl(&dword_230D02000, v38, v39, "[MediaProvider][getContents] Music query: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x23191EAE0](v41, -1, -1);
    MEMORY[0x23191EAE0](v40, -1, -1);
  }

  v42 = *(*(v0 + 392) + 16);
  v43 = sub_230DB38E4(v82, v83);

  v44 = sub_230E68D60();
  v45 = sub_230E693E0();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 134217984;
    *(v46 + 4) = *(v43 + 2);

    _os_log_impl(&dword_230D02000, v44, v45, "[MediaProvider][getContents] Got %ld media results, consolidating playback sessions", v46, 0xCu);
    MEMORY[0x23191EAE0](v46, -1, -1);
  }

  else
  {
  }

  v47 = sub_230DA5844(v43);

  v48 = sub_230E68D60();
  v49 = sub_230E693E0();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134217984;
    *(v50 + 4) = *(v47 + 16);

    _os_log_impl(&dword_230D02000, v48, v49, "[MediaProvider][getContents] Consolidated into %ld playback sessions", v50, 0xCu);
    MEMORY[0x23191EAE0](v50, -1, -1);
  }

  else
  {
  }

  v51 = *(v47 + 16);
  if (v51)
  {
    v52 = 0;
    v53 = v0 + 184;
    v54 = MEMORY[0x277D84F90];
    while (v52 < *(v47 + 16))
    {
      v60 = *(v0 + 392);
      v84 = *(v47 + 32 + 8 * v52);

      sub_230DA84C0(&v84, &v85);

      v61 = v92;
      v62 = v94;
      *(v0 + 144) = v93;
      *(v0 + 160) = v62;
      *(v0 + 176) = v95;
      v63 = v90;
      *(v0 + 80) = v89;
      *(v0 + 96) = v63;
      *(v0 + 112) = v91;
      *(v0 + 128) = v61;
      v64 = v86;
      *(v0 + 16) = v85;
      *(v0 + 32) = v64;
      v65 = v88;
      *(v0 + 48) = v87;
      *(v0 + 64) = v65;
      if (sub_230DA8AA0(v0 + 16) == 1)
      {
        v55 = v92;
        v56 = v94;
        *(v53 + 128) = v93;
        *(v53 + 144) = v56;
        *(v53 + 160) = v95;
        v57 = v90;
        *(v53 + 64) = v89;
        *(v53 + 80) = v57;
        *(v53 + 96) = v91;
        *(v53 + 112) = v55;
        v58 = v86;
        *v53 = v85;
        *(v53 + 16) = v58;
        v59 = v88;
        *(v53 + 32) = v87;
        *(v53 + 48) = v59;
        sub_230DA8AB8(v53);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_230E4A750(0, *(v54 + 2) + 1, 1, v54);
        }

        v67 = *(v54 + 2);
        v66 = *(v54 + 3);
        if (v67 >= v66 >> 1)
        {
          v54 = sub_230E4A750((v66 > 1), v67 + 1, 1, v54);
        }

        v100 = v89;
        v101 = v90;
        v98 = v87;
        v99 = v88;
        v106 = v95;
        v104 = v93;
        v105 = v94;
        v102 = v91;
        v103 = v92;
        v96 = v85;
        v97 = v86;
        *(v54 + 2) = v67 + 1;
        v68 = &v54[168 * v67];
        v69 = v96;
        v70 = v98;
        *(v68 + 3) = v97;
        *(v68 + 4) = v70;
        *(v68 + 2) = v69;
        v71 = v99;
        v72 = v100;
        v73 = v102;
        *(v68 + 7) = v101;
        *(v68 + 8) = v73;
        *(v68 + 5) = v71;
        *(v68 + 6) = v72;
        v74 = v103;
        v75 = v104;
        v76 = v105;
        *(v68 + 24) = v106;
        *(v68 + 10) = v75;
        *(v68 + 11) = v76;
        *(v68 + 9) = v74;
        v0 = v81;
      }

      if (v51 == ++v52)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
  }

  else
  {
    v54 = MEMORY[0x277D84F90];
LABEL_46:
    v78 = *(v0 + 432);
    v77 = *(v0 + 440);
    v79 = *(v0 + 408);

    v80 = *(v0 + 8);

    v80(v54);
  }
}

void sub_230DA84C0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_230DB3F8C(0x6D69547472617473, 0xE900000000000065, *a1);
  if (v5)
  {
    goto LABEL_11;
  }

  v6 = v4;
  v7 = sub_230DB3F8C(0x656D6954646E65, 0xE700000000000000, v3);
  if (v8)
  {
    goto LABEL_11;
  }

  v9 = v7;
  v10 = sub_230DB403C(0x656C746974, 0xE500000000000000, v3);
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v11;
  v58 = v10;
  v13 = sub_230DB3F8C(0x6172754479616C70, 0xEC0000006E6F6974, v3);
  if (v14 & 1) != 0 || (v15 = v13, v16 = sub_230DB3F98(0x6E6F697461727564, 0xE800000000000000, v3), (v17) || (v18 = v16, v19 = sub_230DB403C(0x4449656C646E7562, 0xE800000000000000, v3), !v20))
  {

LABEL_11:

    v23 = sub_230E68D60();
    v24 = sub_230E69400();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v47 = v26;
      *v25 = 136315138;

      v27 = sub_230E68F60();
      v29 = v28;

      v30 = sub_230D7E620(v27, v29, &v47);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_230D02000, v23, v24, "[MediaProvider][getContents] Warning: Skipping media playback row with invalid data: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x23191EAE0](v26, -1, -1);
      MEMORY[0x23191EAE0](v25, -1, -1);
    }

    sub_230DA8B20(&v47);
    goto LABEL_14;
  }

  v21 = v19;
  v46 = v20;
  if (v19 == 0x6C7070612E6D6F63 && v20 == 0xEF636973754D2E65)
  {
    v22 = 0;
    goto LABEL_21;
  }

  v36 = v19;
  if (sub_230E698C0())
  {
    v22 = 0;
LABEL_17:
    v21 = v36;
    goto LABEL_21;
  }

  v21 = v36;
  if (v36 == 0xD000000000000012 && 0x8000000230E82CE0 == v46)
  {
    v22 = 1;
  }

  else
  {
    if (sub_230E698C0())
    {
      v22 = 1;
      goto LABEL_17;
    }

    v22 = 2;
    v21 = v36;
    if (v36 != 0x6C7070612E6D6F63 || v46 != 0xEC00000076742E65)
    {
      v45 = sub_230E698C0();
      v21 = v36;
      if (v45)
      {
        v22 = 2;
      }

      else
      {
        v22 = 3;
      }
    }
  }

LABEL_21:
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v18))
  {
    *&v47 = v6;
    *(&v47 + 1) = v9;
    *&v48 = v58;
    *(&v48 + 1) = v12;
    LOBYTE(v49) = v22;
    *(&v49 + 1) = v15;
    LODWORD(v50) = v18;
    *(&v50 + 1) = v21;
    *&v51 = v46;
    *(&v51 + 1) = sub_230DB403C(0x747369747261, 0xE600000000000000, v3);
    *&v52 = v37;
    *(&v52 + 1) = sub_230DB403C(0x6D75626C61, 0xE500000000000000, v3);
    *&v53 = v38;
    *(&v53 + 1) = sub_230DB403C(0x65726E6567, 0xE500000000000000, v3);
    *&v54 = v39;
    *(&v54 + 1) = sub_230DB403C(0xD000000000000015, 0x8000000230E82A90, v3);
    *&v55 = v40;
    *(&v55 + 1) = sub_230DB403C(0xD000000000000016, 0x8000000230E82D00, v3);
    *&v56 = v41;
    *(&v56 + 1) = sub_230DB403C(0xD000000000000015, 0x8000000230E82D20, v3);
    v57 = v42;
    nullsub_1(&v47, v42, v43, v44);
LABEL_14:
    v31 = v56;
    *(a2 + 128) = v55;
    *(a2 + 144) = v31;
    *(a2 + 160) = v57;
    v32 = v52;
    *(a2 + 64) = v51;
    *(a2 + 80) = v32;
    v33 = v54;
    *(a2 + 96) = v53;
    *(a2 + 112) = v33;
    v34 = v48;
    *a2 = v47;
    *(a2 + 16) = v34;
    v35 = v50;
    *(a2 + 32) = v49;
    *(a2 + 48) = v35;
    return;
  }

  __break(1u);
}

uint64_t sub_230DA89A8()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC20ServicesIntelligence13MediaProvider_logger;
  v3 = sub_230E68D80();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MediaProvider()
{
  result = qword_27DB5C250;
  if (!qword_27DB5C250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230DA8AA0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_230DA8AB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C260, &unk_230E752F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_230DA8B20(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t type metadata accessor for ContextProviderOptions()
{
  result = qword_27DB5C268;
  if (!qword_27DB5C268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_230DA8BB4()
{
  type metadata accessor for TimeFrame();
  if (v0 <= 0x3F)
  {
    sub_230DA8C38();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_230DA8C38()
{
  if (!qword_27DB5C278)
  {
    v0 = sub_230E68FB0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DB5C278);
    }
  }
}

uint64_t sub_230DA8CE0@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v42 = sub_230E689B0();
  v1 = *(v42 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v42, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_230E689D0();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C330, &qword_230E75820);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v39 - v18;
  v20 = type metadata accessor for TimeFrame();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20, v22);
  v24 = (&v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_230E68910();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v39 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230E68900();
  sub_230DA29A0(v44, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v32 = *v24;
      sub_230E689A0();
      v33 = v42;
      result = (*(v1 + 104))(v5, *MEMORY[0x277CC9940], v42);
      if (!__OFSUB__(0, v32))
      {
        sub_230E68990();
        (*(v1 + 8))(v5, v33);
        (*(v40 + 8))(v10, v41);
        result = (*(v26 + 48))(v16, 1, v25);
        if (result != 1)
        {
          (*(v26 + 8))(v30, v25);
          return (*(v26 + 32))(v43, v16, v25);
        }

        goto LABEL_14;
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v37 = *(v26 + 8);
    v37(v30, v25);
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C1D8, &qword_230E752A0) + 48);
    (*(v26 + 32))(v43, v24, v25);
    return (v37)(v24 + v38, v25);
  }

  else
  {
    v35 = *v24;
    sub_230E689A0();
    v36 = v42;
    result = (*(v1 + 104))(v5, *MEMORY[0x277CC9968], v42);
    if (__OFSUB__(0, v35))
    {
      goto LABEL_13;
    }

    sub_230E68990();
    (*(v1 + 8))(v5, v36);
    (*(v40 + 8))(v10, v41);
    result = (*(v26 + 48))(v19, 1, v25);
    if (result == 1)
    {
LABEL_15:
      __break(1u);
      return result;
    }

    (*(v26 + 8))(v30, v25);
    return (*(v26 + 32))(v43, v19, v25);
  }
}

uint64_t TimeContextFilter.init(timeRanges:daysOfWeek:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

ServicesIntelligence::DayTimeRange __swiftcall DayTimeRange.init(startHour:startMinute:endHour:endMinute:)(Swift::Int startHour, Swift::Int startMinute, Swift::Int endHour, Swift::Int endMinute)
{
  *v4 = startHour;
  v4[1] = startMinute;
  v4[2] = endHour;
  v4[3] = endMinute;
  result.endMinute = endMinute;
  result.endHour = endHour;
  result.startMinute = startMinute;
  result.startHour = startHour;
  return result;
}

double sub_230DA91EC()
{
  *&result = 5;
  xmmword_27DB5C280 = xmmword_230E75410;
  *algn_27DB5C290 = xmmword_230E75420;
  return result;
}

double sub_230DA9234()
{
  *&result = 12;
  xmmword_27DB5C2A0 = xmmword_230E75420;
  *algn_27DB5C2B0 = xmmword_230E75430;
  return result;
}

double sub_230DA927C()
{
  *&result = 17;
  xmmword_27DB5C2C0 = xmmword_230E75430;
  *algn_27DB5C2D0 = xmmword_230E75440;
  return result;
}

double sub_230DA92C4()
{
  *&result = 22;
  xmmword_27DB5C2E0 = xmmword_230E75440;
  *algn_27DB5C2F0 = xmmword_230E75410;
  return result;
}

__n128 sub_230DA930C@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, _OWORD *a3@<X2>, __n128 *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    v8 = a4;
    swift_once();
    a2 = v6;
    a4 = v8;
    a3 = v7;
  }

  result = *a2;
  v5 = *a3;
  *a4 = *a2;
  a4[1] = v5;
  return result;
}

ServicesIntelligence::DayOfWeek_optional __swiftcall DayOfWeek.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x605040302010007uLL >> (8 * rawValue);
  if (rawValue >= 8)
  {
    LOBYTE(v2) = 7;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_230DA93D0()
{
  result = qword_27DB5C300;
  if (!qword_27DB5C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C300);
  }

  return result;
}

uint64_t sub_230DA9424()
{
  v1 = *v0;
  sub_230E699B0();
  MEMORY[0x23191E2B0](v1 + 1);
  return sub_230E699D0();
}

uint64_t sub_230DA949C()
{
  v1 = *v0;
  sub_230E699B0();
  MEMORY[0x23191E2B0](v1 + 1);
  return sub_230E699D0();
}

unint64_t sub_230DA94FC()
{
  result = qword_27DB5C308;
  if (!qword_27DB5C308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5C310, &qword_230E754F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C308);
  }

  return result;
}

uint64_t type metadata accessor for TimeFrame()
{
  result = qword_27DB5C318;
  if (!qword_27DB5C318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_230DA960C()
{
  sub_230DA9678();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_230DA9678()
{
  if (!qword_27DB5C328)
  {
    sub_230E68910();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DB5C328);
    }
  }
}

uint64_t sub_230DA96E0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_230DA973C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_230DA979C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_230DA97BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_230DA9808(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = 0;
    v5 = result + 32;
    v6 = (a2 + 40);
    v7 = MEMORY[0x277D84F90];
    while (v4 < v2)
    {
      v19 = v5 + 168 * v4;
      v20 = *(v19 + 144);
      v38 = *(v19 + 128);
      v39 = v20;
      v40 = *(v19 + 160);
      v21 = *(v19 + 80);
      v34 = *(v19 + 64);
      v35 = v21;
      v22 = *(v19 + 112);
      v36 = *(v19 + 96);
      v37 = v22;
      v23 = *(v19 + 16);
      v30 = *v19;
      v31 = v23;
      v24 = *(v19 + 48);
      v32 = *(v19 + 32);
      v33 = v24;
      if (__OFADD__(v4++, 1))
      {
        goto LABEL_23;
      }

      v26 = *(a2 + 16);
      if (v26)
      {
        v27 = v6;
        while (*(v27 - 1) > *&v30 || *&v30 > *v27)
        {
          v27 += 2;
          if (!--v26)
          {
            goto LABEL_6;
          }
        }

        sub_230D93514(&v30, v29);
        result = swift_isUniquelyReferenced_nonNull_native();
        v41 = v7;
        if ((result & 1) == 0)
        {
          result = sub_230D48F00(0, *(v7 + 16) + 1, 1);
          v7 = v41;
        }

        v9 = *(v7 + 16);
        v8 = *(v7 + 24);
        if (v9 >= v8 >> 1)
        {
          result = sub_230D48F00((v8 > 1), v9 + 1, 1);
          v7 = v41;
        }

        *(v7 + 16) = v9 + 1;
        v10 = v7 + 168 * v9;
        v11 = v30;
        v12 = v32;
        *(v10 + 48) = v31;
        *(v10 + 64) = v12;
        *(v10 + 32) = v11;
        v13 = v33;
        v14 = v34;
        v15 = v36;
        *(v10 + 112) = v35;
        *(v10 + 128) = v15;
        *(v10 + 80) = v13;
        *(v10 + 96) = v14;
        v16 = v37;
        v17 = v38;
        v18 = v39;
        *(v10 + 192) = v40;
        *(v10 + 160) = v17;
        *(v10 + 176) = v18;
        *(v10 + 144) = v16;
      }

LABEL_6:
      if (v4 == v2)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_230DA99B4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = result + 32;
  v6 = (a2 + 40);
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v4;
    while (1)
    {
      if (v8 >= v2)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }

      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_25;
      }

      v9 = *(a2 + 16);
      if (v9)
      {
        break;
      }

LABEL_4:
      v8 = v4;
      if (v4 == v2)
      {
        return v7;
      }
    }

    v10 = v5 + 40 * v8;
    v11 = *v10;
    v12 = v6;
    while (*(v12 - 1) > v11 || v11 > *v12)
    {
      v12 += 2;
      if (!--v9)
      {
        goto LABEL_4;
      }
    }

    v14 = *(v10 + 8);
    v16 = *(v10 + 16);
    v15 = *(v10 + 24);
    v17 = *(v10 + 32);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_230D490D0(0, *(v7 + 16) + 1, 1);
    }

    v19 = *(v7 + 16);
    v18 = *(v7 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_230D490D0((v18 > 1), v19 + 1, 1);
    }

    *(v7 + 16) = v19 + 1;
    v20 = v7 + 40 * v19;
    *(v20 + 32) = v11;
    *(v20 + 40) = v14;
    *(v20 + 48) = v16;
    *(v20 + 56) = v15;
    *(v20 + 64) = v17;
  }

  while (v4 != v2);
  return v7;
}

uint64_t getEnumTagSinglePayload for TimeRange(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimeRange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_230DA9B84(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = type metadata accessor for TimeFrame();
  v3[25] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v6 = sub_230E68910();
  v3[27] = v6;
  v7 = *(v6 - 8);
  v3[28] = v7;
  v8 = *(v7 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230DA9C84, 0, 0);
}

void sub_230DA9C84()
{
  v68 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 184);
  sub_230DA8CE0(v1);
  sub_230E688D0();
  v7 = *(v3 + 8);
  v7(v1, v2);
  sub_230DA29A0(v6, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v0 + 232);
  if (EnumCaseMultiPayload >= 2)
  {
    v11 = *(v0 + 216);
    v12 = *(v0 + 224);
    v13 = *(v0 + 208);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C1D8, &qword_230E752A0);
    (*(v12 + 32))(v9, v13 + *(v14 + 48), v11);
    v7(v13, v11);
  }

  else
  {
    v10 = *(v0 + 232);
    sub_230E68900();
  }

  v15 = *(v0 + 232);
  v16 = *(v0 + 216);
  v17 = *(v0 + 184);
  sub_230E688D0();
  v7(v15, v16);
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_230E69540();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000063, 0x8000000230E82D90);
  MEMORY[0x23191DA00](0x3232374253, 0xE500000000000000);
  MEMORY[0x23191DA00](0xD000000000000011, 0x8000000230E82E00);
  sub_230E69320();
  MEMORY[0x23191DA00](0xD000000000000012, 0x8000000230E82E20);
  sub_230E69320();
  v19 = *(v0 + 112);
  v18 = *(v0 + 120);
  v65 = v18;
  v20 = *(v17 + *(type metadata accessor for ContextProviderOptions() + 20));
  if (*(v20 + 16))
  {
    v21 = sub_230DA41A0(0x6F69746365726964, 0xE90000000000006ELL);
    if (v22)
    {
      sub_230D82664(*(v20 + 56) + 32 * v21, v0 + 16);
      if (swift_dynamicCast())
      {
        v23 = *(v0 + 128);
        v24 = *(v0 + 136);
        sub_230E69540();

        v66 = 0xD000000000000012;
        v67 = 0x8000000230E82E40;
        MEMORY[0x23191DA00](v23, v24);

        MEMORY[0x23191DA00](10021, 0xE200000000000000);
        MEMORY[0x23191DA00](0xD000000000000012, 0x8000000230E82E40);

        v18 = v65;
      }
    }
  }

  v25 = *(*(v0 + 192) + 16);

  v26 = sub_230DB38E4(v19, v18);
  v27 = *(v0 + 192);

  v28 = sub_230E68D60();
  v29 = sub_230E693E0();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v66 = v31;
    *v30 = 136315138;
    v32 = sub_230D7E620(v19, v18, &v66);

    *(v30 + 4) = v32;
    _os_log_impl(&dword_230D02000, v28, v29, "%s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x23191EAE0](v31, -1, -1);
    MEMORY[0x23191EAE0](v30, -1, -1);
  }

  else
  {
  }

  v33 = sub_230E68D60();
  v34 = sub_230E693E0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    *(v35 + 4) = *(v26 + 2);

    _os_log_impl(&dword_230D02000, v33, v34, "[CommuteProvider][getTimeRanges] Found %ld commute events", v35, 0xCu);
    MEMORY[0x23191EAE0](v35, -1, -1);
  }

  else
  {
  }

  v36 = *(v26 + 2);
  if (v36)
  {
    v37 = 0;
    v38 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v37 >= *(v26 + 2))
      {
        __break(1u);
        return;
      }

      v39 = *&v26[8 * v37 + 32];
      if (*(v39 + 16))
      {
        v40 = *&v26[8 * v37 + 32];

        v41 = sub_230DA41A0(0x6D69547472617473, 0xE900000000000065);
        if (v42)
        {
          sub_230D82664(*(v39 + 56) + 32 * v41, v0 + 48);
        }

        else
        {
          *(v0 + 48) = 0u;
          *(v0 + 64) = 0u;
        }
      }

      else
      {
        *(v0 + 48) = 0u;
        *(v0 + 64) = 0u;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
      if (!swift_dynamicCast())
      {
        break;
      }

      *(v0 + 152) = 0;
      v43 = *(v0 + 144);
      if (*(v39 + 16) && (v44 = sub_230DA41A0(0x656D6954646E65, 0xE700000000000000), (v45 & 1) != 0))
      {
        sub_230D82664(*(v39 + 56) + 32 * v44, v0 + 80);
      }

      else
      {
        *(v0 + 80) = 0u;
        *(v0 + 96) = 0u;
      }

      if (!swift_dynamicCast())
      {
        break;
      }

      *(v0 + 168) = 0;
      v46 = *(v0 + 160);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_230E4A3E8(0, *(v38 + 2) + 1, 1, v38);
      }

      v48 = *(v38 + 2);
      v47 = *(v38 + 3);
      if (v48 >= v47 >> 1)
      {
        v38 = sub_230E4A3E8((v47 > 1), v48 + 1, 1, v38);
      }

      ++v37;
      *(v38 + 2) = v48 + 1;
      v49 = &v38[16 * v48];
      *(v49 + 4) = v43 + 978307200.0;
      *(v49 + 5) = v46 + 978307200.0;
      if (v36 == v37)
      {
        goto LABEL_38;
      }
    }

    v50 = sub_230E68D60();
    v51 = sub_230E69400();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_230D02000, v50, v51, "[CommuteProvider][getTimeRanges] Invalid output from IPSQLManager, timestamps not found", v52, 2u);
      MEMORY[0x23191EAE0](v52, -1, -1);
    }

    sub_230DAA6D8();
    swift_allocError();
    *v53 = 3;
    swift_willThrow();

    v55 = *(v0 + 232);
    v54 = *(v0 + 240);
    v56 = *(v0 + 208);

    v57 = *(v0 + 8);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_38:

    v58 = sub_230E68D60();
    v59 = sub_230E693E0();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = *(v38 + 2);

      _os_log_impl(&dword_230D02000, v58, v59, "[CommuteProvider][getTimeRanges] Found %ld commute time ranges", v60, 0xCu);
      MEMORY[0x23191EAE0](v60, -1, -1);
    }

    else
    {
    }

    v62 = *(v0 + 232);
    v61 = *(v0 + 240);
    v63 = *(v0 + 208);
    v64 = *(v0 + 176);
    v64[3] = &type metadata for CommuteContext;
    v64[4] = &off_2845ACCD0;
    *v64 = v38;

    v57 = *(v0 + 8);
  }

  v57();
}

uint64_t sub_230DAA534()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC20ServicesIntelligence15CommuteProvider_logger;
  v3 = sub_230E68D80();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CommuteProvider()
{
  result = qword_27DB5C340;
  if (!qword_27DB5C340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230DAA62C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_230D1BF00;

  return sub_230DA9B84(a1, a2);
}

unint64_t sub_230DAA6D8()
{
  result = qword_27DB5C350;
  if (!qword_27DB5C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C350);
  }

  return result;
}

uint64_t sub_230DAA72C(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = type metadata accessor for TimeFrame();
  v3[25] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v6 = sub_230E68910();
  v3[27] = v6;
  v7 = *(v6 - 8);
  v3[28] = v7;
  v8 = *(v7 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230DAA82C, 0, 0);
}

uint64_t sub_230DAA82C()
{
  v66 = v0;
  v1 = *(v0 + 184);
  v2 = *(v1 + *(type metadata accessor for ContextProviderOptions() + 20));
  if (*(v2 + 16) && (v3 = sub_230DA41A0(0x6E6F697461636F6CLL, 0xEC00000065707954), (v4 & 1) != 0) && (sub_230D82664(*(v2 + 56) + 32 * v3, v0 + 16), (swift_dynamicCast() & 1) != 0))
  {
    v5 = *(v0 + 240);
    v6 = *(v0 + 216);
    v7 = *(v0 + 224);
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    v10 = *(v0 + 184);
    v63 = *(v0 + 120);
    v64 = *(v0 + 112);
    sub_230DA8CE0(v5);
    sub_230E688D0();
    v11 = *(v7 + 8);
    v11(v5, v6);
    sub_230DA29A0(v10, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v13 = *(v0 + 232);
    if (EnumCaseMultiPayload >= 2)
    {
      v25 = *(v0 + 216);
      v24 = *(v0 + 224);
      v26 = *(v0 + 208);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C1D8, &qword_230E752A0);
      (*(v24 + 32))(v13, v26 + *(v27 + 48), v25);
      v11(v26, v25);
    }

    else
    {
      v14 = *(v0 + 232);
      sub_230E68900();
    }

    v28 = *(v0 + 232);
    v29 = *(v0 + 216);
    v30 = *(v0 + 192);
    sub_230E688D0();
    v11(v28, v29);
    v65[0] = 0;
    v65[1] = 0xE000000000000000;
    sub_230E69540();
    *(v0 + 128) = 0;
    *(v0 + 136) = 0xE000000000000000;
    MEMORY[0x23191DA00](0xD00000000000004DLL, 0x8000000230E82E90);
    v31 = v64;
    MEMORY[0x23191DA00](v64, v63);
    MEMORY[0x23191DA00](0xD000000000000014, 0x8000000230E82EE0);
    MEMORY[0x23191DA00](0x3436374253, 0xE500000000000000);
    MEMORY[0x23191DA00](0xD000000000000011, 0x8000000230E82E00);
    sub_230E69320();
    MEMORY[0x23191DA00](0xD000000000000012, 0x8000000230E82E20);
    sub_230E69320();
    v32 = *(v30 + 16);
    v33 = sub_230DB38E4(*(v0 + 128), *(v0 + 136));

    v34 = *(v33 + 2);
    if (!v34)
    {
      v36 = MEMORY[0x277D84F90];
LABEL_38:
      v53 = *(v0 + 192);

      v54 = sub_230E68D60();
      v55 = sub_230E693E0();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v65[0] = v57;
        *v56 = 134218242;
        *(v56 + 4) = *(v36 + 16);

        *(v56 + 12) = 2080;
        v58 = sub_230D7E620(v31, v63, v65);

        *(v56 + 14) = v58;
        _os_log_impl(&dword_230D02000, v54, v55, "[LocationProvider][getTimeRanges] Found %ld time ranges for location type: %s", v56, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v57);
        MEMORY[0x23191EAE0](v57, -1, -1);
        MEMORY[0x23191EAE0](v56, -1, -1);
      }

      else
      {
      }

      v60 = *(v0 + 232);
      v59 = *(v0 + 240);
      v61 = *(v0 + 208);
      v62 = *(v0 + 176);
      v62[3] = &type metadata for LocationContext;
      v62[4] = &off_2845ACCE0;
      *v62 = v36;

      v22 = *(v0 + 8);
      goto LABEL_10;
    }

    v35 = 0;
    v36 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v35 >= *(v33 + 2))
      {
        __break(1u);
        return result;
      }

      v37 = *&v33[8 * v35 + 32];
      if (*(v37 + 16))
      {
        v38 = *&v33[8 * v35 + 32];

        v39 = sub_230DA41A0(0x6D69547472617473, 0xE900000000000065);
        if (v40)
        {
          sub_230D82664(*(v37 + 56) + 32 * v39, v0 + 48);
        }

        else
        {
          *(v0 + 48) = 0u;
          *(v0 + 64) = 0u;
        }
      }

      else
      {
        *(v0 + 48) = 0u;
        *(v0 + 64) = 0u;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
      if (!swift_dynamicCast())
      {
        break;
      }

      *(v0 + 152) = 0;
      v41 = *(v0 + 144);
      if (*(v37 + 16) && (v42 = sub_230DA41A0(0x656D6954646E65, 0xE700000000000000), (v43 & 1) != 0))
      {
        sub_230D82664(*(v37 + 56) + 32 * v42, v0 + 80);
      }

      else
      {
        *(v0 + 80) = 0u;
        *(v0 + 96) = 0u;
      }

      if (!swift_dynamicCast())
      {
        break;
      }

      *(v0 + 168) = 0;
      v44 = *(v0 + 160);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_230E4A3E8(0, *(v36 + 16) + 1, 1, v36);
        v36 = result;
      }

      v46 = *(v36 + 16);
      v45 = *(v36 + 24);
      if (v46 >= v45 >> 1)
      {
        result = sub_230E4A3E8((v45 > 1), v46 + 1, 1, v36);
        v36 = result;
      }

      ++v35;
      *(v36 + 16) = v46 + 1;
      v47 = v36 + 16 * v46;
      *(v47 + 32) = v41 + 978307200.0;
      *(v47 + 40) = v44 + 978307200.0;
      v31 = v64;
      if (v34 == v35)
      {
        goto LABEL_38;
      }
    }

    v48 = *(v0 + 192) + OBJC_IVAR____TtC20ServicesIntelligence16LocationProvider_logger;
    v49 = sub_230E68D60();
    v50 = sub_230E69400();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_230D02000, v49, v50, "[LocationProvider][getTimeRanges] Invalid output from IPSQLManager, timestamps not found", v51, 2u);
      MEMORY[0x23191EAE0](v51, -1, -1);
    }

    sub_230DAA6D8();
    swift_allocError();
    *v52 = 3;
    swift_willThrow();
  }

  else
  {
    v15 = *(v0 + 192) + OBJC_IVAR____TtC20ServicesIntelligence16LocationProvider_logger;
    v16 = sub_230E68D60();
    v17 = sub_230E69400();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_230D02000, v16, v17, "[LocationProvider][getTimeRanges] No locationType specified in context filters", v18, 2u);
      MEMORY[0x23191EAE0](v18, -1, -1);
    }

    sub_230DAB1D8();
    swift_allocError();
    swift_willThrow();
  }

  v20 = *(v0 + 232);
  v19 = *(v0 + 240);
  v21 = *(v0 + 208);

  v22 = *(v0 + 8);
LABEL_10:

  return v22();
}

uint64_t sub_230DAB034()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC20ServicesIntelligence16LocationProvider_logger;
  v3 = sub_230E68D80();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocationProvider()
{
  result = qword_27DB5C360;
  if (!qword_27DB5C360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230DAB12C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_230D1BF00;

  return sub_230DAA72C(a1, a2);
}

unint64_t sub_230DAB1D8()
{
  result = qword_27DB5C370;
  if (!qword_27DB5C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C370);
  }

  return result;
}

unint64_t sub_230DAB240()
{
  result = qword_27DB5C378;
  if (!qword_27DB5C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C378);
  }

  return result;
}

uint64_t sub_230DAB294(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for TimeFrame();
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v6 = sub_230E68910();
  v3[13] = v6;
  v7 = *(v6 - 8);
  v3[14] = v7;
  v8 = *(v7 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230DAB394, 0, 0);
}

uint64_t sub_230DAB394()
{
  v35 = v0;
  v1 = v0[9];
  v2 = *(v1 + *(type metadata accessor for ContextProviderOptions() + 20));
  if (*(v2 + 16) && (v3 = sub_230DA41A0(0x746E6F43656D6974, 0xEB00000000747865), (v4 & 1) != 0) && (sub_230D82664(*(v2 + 56) + 32 * v3, (v0 + 2)), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[9];
    v9 = v0[6];
    v8 = v0[7];
    sub_230DA8CE0(v0[16]);
    sub_230DA29A0(v7, v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v11 = v0[15];
    if (EnumCaseMultiPayload >= 2)
    {
      v22 = v0[13];
      v23 = v0[14];
      v24 = v0[12];
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C1D8, &qword_230E752A0);
      (*(v23 + 32))(v11, v24 + *(v25 + 48), v22);
      (*(v23 + 8))(v24, v22);
    }

    else
    {
      v12 = v0[15];
      sub_230E68900();
    }

    v27 = v0[15];
    v26 = v0[16];
    v28 = v0[13];
    v29 = v0[14];
    v30 = v0[12];
    v31 = v0[8];
    v34[0] = v9;
    v34[1] = v8;
    v32 = sub_230DAB908(v26, v27, v34);

    v31[3] = &type metadata for TimeContext;
    v31[4] = &off_2845ACCF0;
    *v31 = v32;
    v33 = *(v29 + 8);
    v33(v27, v28);
    v33(v26, v28);

    v20 = v0[1];
  }

  else
  {
    v13 = v0[10] + OBJC_IVAR____TtC20ServicesIntelligence12TimeProvider_logger;
    v14 = sub_230E68D60();
    v15 = sub_230E69400();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_230D02000, v14, v15, "[TimeProvider][getTimeRanges] No timeContext specified in context filters", v16, 2u);
      MEMORY[0x23191EAE0](v16, -1, -1);
    }

    v18 = v0[15];
    v17 = v0[16];
    v19 = v0[12];

    sub_230DAB8B4();
    swift_allocError();
    swift_willThrow();

    v20 = v0[1];
  }

  return v20();
}

uint64_t sub_230DAB688()
{
  v1 = OBJC_IVAR____TtC20ServicesIntelligence12TimeProvider_logger;
  v2 = sub_230E68D80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TimeProvider()
{
  result = qword_27DB5C388;
  if (!qword_27DB5C388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230DAB778()
{
  result = sub_230E68D80();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_230DAB808(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_230D1BF00;

  return sub_230DAB294(a1, a2);
}

unint64_t sub_230DAB8B4()
{
  result = qword_27DB5C398;
  if (!qword_27DB5C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C398);
  }

  return result;
}

uint64_t sub_230DAB908(char *a1, char *a2, uint64_t *a3)
{
  v239 = sub_230E68790();
  v259 = *(v239 - 8);
  v6 = *(v259 + 8);
  v8 = MEMORY[0x28223BE20](v239, v7);
  v226 = &v196 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v261 = &v196 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v196 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C330, &qword_230E75820);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  v204 = &v196 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v202 = &v196 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v221 = &v196 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v250 = &v196 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v227 = &v196 - v32;
  MEMORY[0x28223BE20](v31, v33);
  v199 = &v196 - v34;
  v244 = sub_230E689B0();
  v234 = *(v244 - 8);
  v35 = *(v234 + 64);
  MEMORY[0x28223BE20](v244, v36);
  v229 = &v196 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_230E68910();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v42 = MEMORY[0x28223BE20](v38, v41);
  v205 = &v196 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42, v44);
  v211 = &v196 - v46;
  v48 = MEMORY[0x28223BE20](v45, v47);
  v210 = &v196 - v49;
  v51 = MEMORY[0x28223BE20](v48, v50);
  v216 = &v196 - v52;
  v54 = MEMORY[0x28223BE20](v51, v53);
  v207 = &v196 - v55;
  v57 = MEMORY[0x28223BE20](v54, v56);
  v206 = &v196 - v58;
  v60 = MEMORY[0x28223BE20](v57, v59);
  v209 = &v196 - v61;
  v63 = MEMORY[0x28223BE20](v60, v62);
  v215 = &v196 - v64;
  v66 = MEMORY[0x28223BE20](v63, v65);
  v223 = &v196 - v67;
  v69 = MEMORY[0x28223BE20](v66, v68);
  v220 = &v196 - v70;
  MEMORY[0x28223BE20](v69, v71);
  v73 = &v196 - v72;
  v74 = sub_230E689D0();
  v198 = *(v74 - 8);
  v75 = *(v198 + 64);
  MEMORY[0x28223BE20](v74, v76);
  v78 = *a3;
  v79 = a3[1];
  v260 = &v196 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230E689A0();
  v80 = *(v39 + 16);
  v217 = v39 + 16;
  v214 = v80;
  v80(v73, a1, v38);
  v222 = sub_230DACFC8();
  result = sub_230E69000();
  if (result)
  {
    v82 = MEMORY[0x277D84F90];
    (*(v39 + 8))(v73, v38);
LABEL_55:
    (*(v198 + 8))(v260, v74);
    return v82;
  }

  v197 = v74;
  v203 = *MEMORY[0x277CC99B8];
  v243 = v234 + 104;
  v228 = (v234 + 8);
  v200 = (v79 + 32);
  v257 = *MEMORY[0x277CC9968];
  v241 = v39 + 48;
  v235 = (v39 + 8);
  v224 = (v39 + 32);
  v256 = *MEMORY[0x277CC9988];
  v255 = *MEMORY[0x277CC9998];
  v238 = (v259 + 8);
  v225 = (v259 + 32);
  v233 = v78;
  v201 = (v78 + 56);
  v219 = MEMORY[0x277D84F90];
  v254 = xmmword_230E6C060;
  v83 = v216;
  v218 = a2;
  v231 = a1;
  v230 = v15;
  v240 = v38;
  v258 = v73;
  v208 = v79;
  while (1)
  {
    if (v79)
    {
      v90 = *v243;
      v91 = v229;
      v92 = v244;
      (*v243)(v229, v203, v244);
      v93 = sub_230E689C0();
      v94 = *v228;
      v95 = v91;
      v83 = v216;
      result = (*v228)(v95, v92);
      if ((v93 - 1) <= 6)
      {
        v96 = *(v208 + 16);
        v97 = v200;
        while (v96)
        {
          v98 = *v97++;
          --v96;
          if (v98 + 1 == v93)
          {
            goto LABEL_12;
          }
        }

        v193 = v229;
        v194 = v244;
        v90(v229, v257, v244);
        v195 = v199;
        v88 = v258;
        sub_230E68990();
        v94(v193, v194);
        result = (*v241)(v195, 1, v38);
        v87 = v195;
        if (result == 1)
        {
          goto LABEL_60;
        }

        goto LABEL_6;
      }
    }

LABEL_12:
    v212 = v243 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v99 = v241;
    v213 = v241 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v100 = v233;
    if (v233)
    {
      v232 = *(v233 + 16);
      if (v232)
      {
        break;
      }
    }

    sub_230E68960();
    v166 = v99;
    v167 = v83;
    v168 = v229;
    v169 = v244;
    v242 = *v243;
    v242(v229, v257, v244);
    v170 = v202;
    sub_230E68990();
    (*v228)(v168, v169);
    v84 = *v166;
    result = (*v166)(v170, 1, v38);
    if (result == 1)
    {
      goto LABEL_59;
    }

    (*v224)(v210, v170, v38);
    v171 = sub_230E69010();
    v172 = v205;
    v173 = v214;
    if (v171)
    {
      v174 = v211;
      v175 = a1;
    }

    else
    {
      v174 = v211;
      v175 = v167;
    }

    v214(v174, v175, v38);
    v176 = v218;
    v177 = v210;
    if (sub_230E69000())
    {
      v178 = v172;
      v179 = v176;
    }

    else
    {
      v178 = v172;
      v179 = v177;
    }

    v173(v178, v179, v38);
    v180 = v173;
    v181 = v206;
    v180(v206, v211, v38);
    v182 = v207;
    v180(v207, v172, v38);
    sub_230E688D0();
    v184 = v183;
    sub_230E688D0();
    v186 = v185;
    v187 = *v235;
    (*v235)(v182, v38);
    v187(v181, v38);
    v188 = v219;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v188 = sub_230E4A3E8(0, *(v188 + 2) + 1, 1, v188);
    }

    v219 = v188;
    v190 = *(v188 + 2);
    v189 = *(v188 + 3);
    if (v190 >= v189 >> 1)
    {
      v219 = sub_230E4A3E8((v189 > 1), v190 + 1, 1, v219);
    }

    v187(v205, v38);
    v187(v211, v38);
    v187(v210, v38);
    v187(v216, v38);
    v191 = v219;
    *(v219 + 2) = v190 + 1;
    v192 = &v191[16 * v190];
    *(v192 + 4) = v184;
    *(v192 + 5) = v186;
LABEL_5:
    v85 = v229;
    v86 = v244;
    v242(v229, v257, v244);
    v87 = v204;
    v88 = v258;
    sub_230E68990();
    (*v228)(v85, v86);
    result = v84(v87, 1, v38);
    if (result == 1)
    {
      goto LABEL_58;
    }

LABEL_6:
    v89 = *v235;
    (*v235)(v88, v38);
    (*v224)(v88, v87, v38);
    result = sub_230E69000();
    v83 = v216;
    v79 = v208;
    if (result)
    {
      v74 = v197;
      v82 = v219;
      v89(v88, v38);
      goto LABEL_55;
    }
  }

  v101 = 0;
  v102 = v201;
  v103 = v234;
  while (v101 < *(v100 + 16))
  {
    v245 = v102;
    v246 = v101;
    v107 = *(v102 - 2);
    v259 = *(v102 - 3);
    v251 = v107;
    v108 = *v102;
    v248 = *(v102 - 1);
    v249 = v108;
    v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C3A8, &qword_230E75828);
    v109 = *(v103 + 72);
    v110 = *(v103 + 80);
    v111 = (v110 + 32) & ~v110;
    v252 = 3 * v109;
    v253 = 2 * v109;
    v112 = swift_allocObject();
    *(v112 + 16) = v254;
    v113 = *(v103 + 104);
    v114 = v244;
    v113((v112 + v111), v256, v244);
    v113((v112 + v111 + v109), v255, v114);
    v113((v112 + v111 + 2 * v109), v257, v114);
    sub_230E1D398(v112);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_230E68970();

    sub_230E68770();
    sub_230E68780();
    v236 = v110;
    v115 = swift_allocObject();
    *(v115 + 16) = v254;
    v113((v115 + v111), v256, v114);
    v237 = v109;
    v113((v115 + v111 + v109), v255, v114);
    v242 = v113;
    v113((v115 + v111 + v253), v257, v114);
    sub_230E1D398(v115);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v116 = v248;
    sub_230E68970();
    v117 = v249;

    sub_230E68770();
    sub_230E68780();
    if (v116 < v259 || v259 == v116 && v117 < v251)
    {
      v118 = swift_allocObject();
      *(v118 + 16) = v254;
      v119 = v244;
      v120 = v242;
      v242((v118 + v111), v256, v244);
      v120(v118 + v111 + v237, v255, v119);
      v121 = v257;
      v120(v118 + v111 + v253, v257, v119);
      sub_230E1D398(v118);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v122 = v229;
      v120(v229, v121, v119);
      v123 = v227;
      sub_230E68990();
      (*v228)(v122, v119);
      v124 = v240;
      result = (*v241)(v123, 1, v240);
      if (result == 1)
      {
        goto LABEL_57;
      }

      v125 = v226;
      sub_230E68970();

      v126 = v261;
      v127 = v239;
      (*v238)(v261, v239);
      (*v235)(v123, v124);
      (*v225)(v126, v125, v127);
      sub_230E68770();
      sub_230E68780();
    }

    v128 = v250;
    v129 = v230;
    sub_230E68980();
    v130 = *v241;
    v38 = v240;
    v131 = (*v241)(v128, 1, v240);
    v103 = v234;
    v259 = v130;
    if (v131 == 1)
    {
      v104 = *v238;
      v105 = v239;
      (*v238)(v261, v239);
      v104(v129, v105);
      result = sub_230DAD020(v250);
      v106 = v231;
    }

    else
    {
      v132 = *v224;
      v133 = v220;
      (*v224)(v220, v250, v38);
      v134 = v221;
      sub_230E68980();
      v135 = (v130)(v134, 1, v38);
      v106 = v231;
      if (v135 == 1)
      {
        (*v235)(v133, v38);
        v136 = *v238;
        v137 = v239;
        (*v238)(v261, v239);
        v136(v129, v137);
        result = sub_230DAD020(v134);
      }

      else
      {
        v132(v223, v134, v38);
        if (sub_230E69000() & 1) != 0 || (sub_230E69000())
        {
          v138 = *v235;
          (*v235)(v223, v38);
          v138(v133, v38);
          v139 = *v238;
          v140 = v239;
          (*v238)(v261, v239);
          result = (v139)(v129, v140);
        }

        else
        {
          if (sub_230E69010())
          {
            v141 = v215;
            v142 = v106;
          }

          else
          {
            v141 = v215;
            v142 = v133;
          }

          v214(v141, v142, v38);
          v143 = v223;
          v144 = v218;
          v145 = v106;
          if (sub_230E69000())
          {
            v146 = v209;
            v147 = v209;
            v148 = v144;
          }

          else
          {
            v146 = v209;
            v147 = v209;
            v148 = v143;
          }

          v149 = v214;
          v214(v147, v148, v38);
          v150 = v206;
          v149(v206, v215, v38);
          v151 = v149;
          v152 = v207;
          v151(v207, v146, v38);
          sub_230E688D0();
          v154 = v153;
          sub_230E688D0();
          v156 = v155;
          v157 = *v235;
          (*v235)(v152, v38);
          v157(v150, v38);
          v158 = v219;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v158 = sub_230E4A3E8(0, *(v158 + 2) + 1, 1, v158);
          }

          v219 = v158;
          v160 = *(v158 + 2);
          v159 = *(v158 + 3);
          if (v160 >= v159 >> 1)
          {
            v219 = sub_230E4A3E8((v159 > 1), v160 + 1, 1, v219);
          }

          v157(v209, v38);
          v157(v215, v38);
          v157(v223, v38);
          v157(v133, v38);
          v161 = *v238;
          v162 = v239;
          (*v238)(v261, v239);
          v163 = v162;
          v38 = v240;
          result = (v161)(v129, v163);
          v164 = v219;
          *(v219 + 2) = v160 + 1;
          v165 = &v164[16 * v160];
          *(v165 + 4) = v154;
          *(v165 + 5) = v156;
          v103 = v234;
          v106 = v145;
        }
      }
    }

    v101 = v246 + 1;
    v102 = v245 + 4;
    v100 = v233;
    if (v232 == v246 + 1)
    {
      a1 = v106;
      v84 = v259;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

unint64_t sub_230DACFC8()
{
  result = qword_27DB5C3A0;
  if (!qword_27DB5C3A0)
  {
    sub_230E68910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C3A0);
  }

  return result;
}

uint64_t sub_230DAD020(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C330, &qword_230E75820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_230DAD09C()
{
  result = qword_27DB5C3B0;
  if (!qword_27DB5C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C3B0);
  }

  return result;
}

uint64_t sub_230DAD0F0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_230DAD180;

  return sub_230DAD680();
}

uint64_t sub_230DAD180(uint64_t a1)
{
  v3 = *(*v2 + 32);
  v4 = *v2;
  v4[5] = a1;
  v4[6] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_230DAD2B4, 0, 0);
  }
}

void sub_230DAD2B4()
{
  v16 = v0;
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[6];
    v5 = MEMORY[0x277D84F90];
    while (v3 < *(v1 + 16))
    {
      v6 = v0[3];
      v13 = *(v1 + 32 + 8 * v3);

      sub_230DAD44C(&v13, &v14);

      if ((v15 & 1) == 0)
      {
        v12 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_230E4A3E8(0, *(v5 + 2) + 1, 1, v5);
        }

        v8 = *(v5 + 2);
        v7 = *(v5 + 3);
        if (v8 >= v7 >> 1)
        {
          v5 = sub_230E4A3E8((v7 > 1), v8 + 1, 1, v5);
        }

        *(v5 + 2) = v8 + 1;
        *&v5[16 * v8 + 32] = v12;
      }

      if (v2 == ++v3)
      {
        v9 = v0[5];
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
LABEL_13:
    v10 = v0[2];

    v10[3] = &type metadata for WorkoutContext;
    v10[4] = &off_2845ACD00;
    *v10 = v5;
    v11 = v0[1];

    v11();
  }
}

void sub_230DAD44C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16) && (v4 = sub_230DA41A0(0x7461447472617473, 0xE900000000000065), (v5 & 1) != 0) && (sub_230D82664(*(v3 + 56) + 32 * v4, v17), (swift_dynamicCast() & 1) != 0) && *(v3 + 16) && (v6 = v18, v7 = sub_230DA41A0(0x6E6F697461727564, 0xE800000000000000), (v8 & 1) != 0) && (sub_230D82664(*(v3 + 56) + 32 * v7, v17), (swift_dynamicCast() & 1) != 0))
  {
    v9 = v6 + v18;
    *a2 = v6;
    *(a2 + 8) = v9;
    *(a2 + 16) = 0;
  }

  else
  {

    v10 = sub_230E68D60();
    v11 = sub_230E69400();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17[0] = v13;
      *v12 = 136315138;
      v14 = sub_230E68F60();
      v16 = sub_230D7E620(v14, v15, v17);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_230D02000, v10, v11, "[WorkoutProvider][getTimeRanges] Warning: Invalid types for startDate or duration in workout data (workout: %s)", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x23191EAE0](v13, -1, -1);
      MEMORY[0x23191EAE0](v12, -1, -1);
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }
}

uint64_t sub_230DAD680()
{
  v1[37] = v0;
  v2 = sub_230E68910();
  v1[38] = v2;
  v3 = *(v2 - 8);
  v1[39] = v3;
  v4 = *(v3 + 64) + 15;
  v1[40] = swift_task_alloc();
  v5 = sub_230E68A60();
  v1[41] = v5;
  v6 = *(v5 - 8);
  v1[42] = v6;
  v7 = *(v6 + 64) + 15;
  v1[43] = swift_task_alloc();
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  v1[44] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C3D0, &qword_230E75940);
  *v9 = v1;
  v9[1] = sub_230DAD82C;

  return MEMORY[0x2822008A0](v1 + 36, 0, 0, 0x726F576863746566, 0xEF29287374756F6BLL, sub_230DAE00C, 0, v10);
}

uint64_t sub_230DAD82C()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_230DADF9C;
  }

  else
  {
    v3 = sub_230DAD940;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

unint64_t sub_230DAD940()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);

  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v2 + 16);

    _os_log_impl(&dword_230D02000, v3, v4, "[WorkoutProvider][fetchWorkouts] Found %ld total workouts", v5, 0xCu);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  else
  {
  }

  v6 = v2 + 56;
  v7 = -1;
  v8 = -1 << *(v2 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v2 + 56);
  v10 = (63 - v8) >> 6;
  v60 = (*(v0 + 312) + 8);
  v61 = *(v0 + 336);
  v62 = v2;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  if (v9)
  {
    while (1)
    {
      v63 = v13;
LABEL_12:
      v15 = *(v0 + 320);
      v16 = *(v0 + 304);
      (*(v61 + 16))(*(v0 + 344), *(v62 + 48) + *(v61 + 72) * (__clz(__rbit64(v9)) | (v12 << 6)), *(v0 + 328));
      *(v0 + 48) = 0x6E6F697461727564;
      *(v0 + 56) = 0xE800000000000000;
      sub_230E68A40();
      *(v0 + 64) = v17;
      v18 = MEMORY[0x277D839F8];
      *(v0 + 88) = MEMORY[0x277D839F8];
      *(v0 + 96) = 0x7461447472617473;
      *(v0 + 104) = 0xE900000000000065;
      sub_230E68A50();
      sub_230E688D0();
      v20 = v19;
      (*v60)(v15, v16);
      *(v0 + 112) = v20;
      *(v0 + 136) = v18;
      *(v0 + 144) = 0x696669746E656469;
      *(v0 + 152) = 0xEA00000000007265;
      *(v0 + 160) = sub_230E68A20();
      *(v0 + 168) = v21;
      *(v0 + 184) = MEMORY[0x277D837D0];
      *(v0 + 192) = 0xD000000000000013;
      *(v0 + 200) = 0x8000000230E82F70;
      v22 = sub_230E68A30();
      *(v0 + 232) = MEMORY[0x277D83E88];
      *(v0 + 208) = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A928, &unk_230E75CC0);
      v23 = sub_230E69640();

      sub_230DA4438(v0 + 48, v0 + 240);
      v24 = *(v0 + 240);
      v25 = *(v0 + 248);
      result = sub_230DA41A0(v24, v25);
      if (v26)
      {
        break;
      }

      v27 = v23 + 8;
      *(v23 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v28 = (v23[6] + 16 * result);
      *v28 = v24;
      v28[1] = v25;
      result = sub_230D0E394((v0 + 256), (v23[7] + 32 * result));
      v29 = v23[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_34;
      }

      v23[2] = v31;
      sub_230DA4438(v0 + 96, v0 + 240);
      v32 = *(v0 + 240);
      v33 = *(v0 + 248);
      result = sub_230DA41A0(v32, v33);
      if (v34)
      {
        break;
      }

      *(v27 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v35 = (v23[6] + 16 * result);
      *v35 = v32;
      v35[1] = v33;
      result = sub_230D0E394((v0 + 256), (v23[7] + 32 * result));
      v36 = v23[2];
      v30 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v30)
      {
        goto LABEL_34;
      }

      v23[2] = v37;
      sub_230DA4438(v0 + 144, v0 + 240);
      v38 = *(v0 + 240);
      v39 = *(v0 + 248);
      result = sub_230DA41A0(v38, v39);
      if (v40)
      {
        break;
      }

      *(v27 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v41 = (v23[6] + 16 * result);
      *v41 = v38;
      v41[1] = v39;
      result = sub_230D0E394((v0 + 256), (v23[7] + 32 * result));
      v42 = v23[2];
      v30 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v30)
      {
        goto LABEL_34;
      }

      v23[2] = v43;
      sub_230DA4438(v0 + 192, v0 + 240);
      v44 = *(v0 + 240);
      v45 = *(v0 + 248);
      result = sub_230DA41A0(v44, v45);
      if (v46)
      {
        break;
      }

      *(v27 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v47 = (v23[6] + 16 * result);
      *v47 = v44;
      v47[1] = v45;
      result = sub_230D0E394((v0 + 256), (v23[7] + 32 * result));
      v48 = v23[2];
      v30 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v30)
      {
        goto LABEL_34;
      }

      v50 = *(v0 + 344);
      v51 = *(v0 + 328);
      v23[2] = v49;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A930, &unk_230E6B9D0);
      swift_arrayDestroy();
      (*(v61 + 8))(v50, v51);
      v13 = v63;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_230E4A5F8(0, v63[2] + 1, 1, v63);
        v13 = result;
      }

      v53 = v13[2];
      v52 = v13[3];
      if (v53 >= v52 >> 1)
      {
        result = sub_230E4A5F8((v52 > 1), v53 + 1, 1, v13);
        v13 = result;
      }

      v9 &= v9 - 1;
      v13[2] = v53 + 1;
      v13[v53 + 4] = v23;
      if (!v9)
      {
        goto LABEL_8;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_8:
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v14 >= v10)
      {
        break;
      }

      v9 = *(v6 + 8 * v14);
      ++v12;
      if (v9)
      {
        v63 = v13;
        v12 = v14;
        goto LABEL_12;
      }
    }

    v54 = sub_230E68D60();
    v55 = sub_230E693E0();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 134217984;
      *(v56 + 4) = v13[2];

      _os_log_impl(&dword_230D02000, v54, v55, "[WorkoutProvider][fetchWorkouts] Returning %ld workouts after filtering", v56, 0xCu);
      MEMORY[0x23191EAE0](v56, -1, -1);
    }

    else
    {
    }

    v57 = *(v0 + 344);
    v58 = *(v0 + 320);

    v59 = *(v0 + 8);

    return v59(v13);
  }

  return result;
}

uint64_t sub_230DADF9C()
{
  v1 = v0[43];
  v2 = v0[40];

  v3 = v0[1];
  v4 = v0[45];

  return v3();
}

uint64_t sub_230DAE00C(uint64_t a1)
{
  v29 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C3D8, &qword_230E75948);
  v1 = *(v28 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v28, v3);
  v5 = &v26 - v4;
  v6 = sub_230E68BE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C3E0, &unk_230E75950);
  v30 = *(v27 - 8);
  v12 = *(v30 + 64);
  MEMORY[0x28223BE20](v27, v13);
  v15 = &v26 - v14;
  sub_230E68BB0();
  sub_230DAE5B8();
  sub_230E69410();
  (*(v7 + 104))(v11, *MEMORY[0x277D4F368], v6);
  v31[3] = sub_230E68BD0();
  v31[4] = MEMORY[0x277D4F358];
  __swift_allocate_boxed_opaque_existential_0(v31);
  sub_230E68BC0();
  v16 = sub_230E68C00();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_230E68BF0();
  sub_230E69410();
  sub_230E68BA0();
  sub_230E68B90();

  v19 = v28;
  (*(v1 + 16))(v5, v29, v28);
  v20 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v21 = swift_allocObject();
  (*(v1 + 32))(v21 + v20, v5, v19);
  v22 = v27;
  v23 = sub_230E68A70();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_230DAE604;
  *(v24 + 24) = v21;

  v23(sub_230DAE680, v24);

  return (*(v30 + 8))(v15, v22);
}

uint64_t sub_230DAE3A0(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C3D8, &qword_230E75948);
    return sub_230E692E0();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C3D8, &qword_230E75948);
    return sub_230E692F0();
  }
}

uint64_t sub_230DAE42C()
{
  v1 = OBJC_IVAR____TtC20ServicesIntelligence15WorkoutProvider_logger;
  v2 = sub_230E68D80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutProvider()
{
  result = qword_27DB5C3C0;
  if (!qword_27DB5C3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230DAE51C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_230D1BF00;

  return sub_230DAD0F0(a1);
}

unint64_t sub_230DAE5B8()
{
  result = qword_27DB5C3E8;
  if (!qword_27DB5C3E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DB5C3E8);
  }

  return result;
}

uint64_t sub_230DAE604(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C3D8, &qword_230E75948) - 8) + 80);

  return sub_230DAE3A0(a1);
}

uint64_t sub_230DAE680(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(result + 8);
  v5 = *result;
  v6 = v4;
  if (v2)
  {
    return v2(&v5);
  }

  return result;
}

uint64_t sub_230DAE6C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v33 = MEMORY[0x277D84F90];
    sub_230D490B0(0, v1, 0);
    v2 = v33;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[9];
      v30 = v4[8];
      v31 = v5;
      v32 = *(v4 + 20);
      v6 = v4[5];
      v26 = v4[4];
      v27 = v6;
      v7 = v4[7];
      v28 = v4[6];
      v29 = v7;
      v8 = v4[1];
      v22 = *v4;
      v23 = v8;
      v9 = v4[3];
      v24 = v4[2];
      v25 = v9;
      sub_230D93514(&v22, &v19);
      v33 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_230D490B0((v10 > 1), v11 + 1, 1);
        v2 = v33;
      }

      v20 = &type metadata for MediaPlayback;
      v21 = &off_2845ACB18;
      v12 = swift_allocObject();
      *&v19 = v12;
      v13 = v31;
      *(v12 + 144) = v30;
      *(v12 + 160) = v13;
      *(v12 + 176) = v32;
      v14 = v27;
      *(v12 + 80) = v26;
      *(v12 + 96) = v14;
      v15 = v29;
      *(v12 + 112) = v28;
      *(v12 + 128) = v15;
      v16 = v23;
      *(v12 + 16) = v22;
      *(v12 + 32) = v16;
      v17 = v25;
      *(v12 + 48) = v24;
      *(v12 + 64) = v17;
      *(v2 + 16) = v11 + 1;
      sub_230D1D080(&v19, v2 + 40 * v11 + 32);
      v4 = (v4 + 168);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_230DAE840(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v39 = MEMORY[0x277D84F90];
    sub_230D48F00(0, v1, 0);
    v2 = v39;
    v4 = a1 + 32;
    do
    {
      sub_230D1D01C(v4, &v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B308, &qword_230E6F688);
      swift_dynamicCast();
      v32 = v21;
      v33 = v22;
      v29 = v18;
      v30 = v19;
      v31 = v20;
      v36 = v25;
      v37 = v26;
      v34 = v23;
      v35 = v24;
      v38 = v27;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      v28 = v17;
      v39 = v2;
      if (v6 >= v5 >> 1)
      {
        sub_230D48F00((v5 > 1), v6 + 1, 1);
        v2 = v39;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 168 * v6;
      v8 = v28;
      v9 = v30;
      *(v7 + 48) = v29;
      *(v7 + 64) = v9;
      *(v7 + 32) = v8;
      v10 = v31;
      v11 = v32;
      v12 = v34;
      *(v7 + 112) = v33;
      *(v7 + 128) = v12;
      *(v7 + 80) = v10;
      *(v7 + 96) = v11;
      v13 = v35;
      v14 = v36;
      v15 = v37;
      *(v7 + 192) = v38;
      *(v7 + 160) = v14;
      *(v7 + 176) = v15;
      *(v7 + 144) = v13;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_230DAE9D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v19 = MEMORY[0x277D84F90];
    sub_230D490D0(0, v1, 0);
    v2 = v19;
    v4 = a1 + 32;
    do
    {
      sub_230D1D01C(v4, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B308, &qword_230E6F688);
      swift_dynamicCast();
      v5 = v15;
      v6 = v16;
      v7 = v17;
      v8 = v18;
      v19 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        v13 = v15;
        sub_230D490D0((v9 > 1), v10 + 1, 1);
        v5 = v13;
        v2 = v19;
      }

      *(v2 + 16) = v10 + 1;
      v11 = v2 + 40 * v10;
      *(v11 + 32) = v5;
      *(v11 + 48) = v6;
      *(v11 + 56) = v7;
      *(v11 + 64) = v8;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t ContextualContentRetrieval.LocationFilter.locationType.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ContextualContentRetrieval.CommuteFilter.direction.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ContextualContentRetrieval.__allocating_init(useCase:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  ContextualContentRetrieval.init(useCase:)(a1, a2);
  return v7;
}

uint64_t ContextualContentRetrieval.init(useCase:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_230E68D70();
  v6 = type metadata accessor for IPSQLManager();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v9[4] = 0;
  sub_230E68D70();
  v9[2] = a1;
  v9[3] = a2;
  *(v3 + 16) = v9;
  v10 = type metadata accessor for PersonalContextCoordinator();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  *(v3 + 24) = sub_230DBBAA8(v13);
  return v3;
}

uint64_t sub_230DAECF0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 160) = a4;
  *(v5 + 168) = v4;
  *(v5 + 152) = a1;
  v8 = type metadata accessor for ContextProviderOptions();
  *(v5 + 176) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v5 + 184) = swift_task_alloc();
  v10 = type metadata accessor for TimeFrame();
  *(v5 + 192) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  v12 = swift_task_alloc();
  v13 = *a2;
  *(v5 + 208) = v12;
  *(v5 + 216) = v13;
  *(v5 + 224) = *a3;
  *(v5 + 113) = *(a3 + 16);

  return MEMORY[0x2822009F8](sub_230DAEDE8, 0, 0);
}

uint64_t sub_230DAEDE8()
{
  v54 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 168);
  v5 = *(v0 + 113);
  sub_230DA29A0(*(v0 + 160), *(v0 + 208));

  sub_230DB314C(v2, v1, v5);
  v6 = sub_230E68D60();
  v7 = sub_230E693E0();

  sub_230DB31B0(v2, v1, v5);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 224);
    v9 = *(v0 + 232);
    v10 = *(v0 + 216);
    v47 = *(v0 + 200);
    v48 = *(v0 + 208);
    v49 = *(v0 + 192);
    v11 = *(v0 + 113);
    v12 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52[0] = v51;
    *v12 = 136315650;
    *(v0 + 144) = v10;

    v13 = sub_230E690C0();
    v15 = sub_230D7E620(v13, v14, v52);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v0 + 120) = v8;
    *(v0 + 128) = v9;
    *(v0 + 136) = v11;
    sub_230DB314C(v8, v9, v11);
    v16 = sub_230E690C0();
    v18 = sub_230D7E620(v16, v17, v52);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2080;
    sub_230DA29A0(v48, v47);
    v19 = sub_230E690C0();
    v21 = v20;
    sub_230DB3200(v48, type metadata accessor for TimeFrame);
    v22 = sub_230D7E620(v19, v21, v52);

    *(v12 + 24) = v22;
    _os_log_impl(&dword_230D02000, v6, v7, "[ContextualContentRetrieval][retrieveUsageHistory] Discovering %s in %s for %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v51, -1, -1);
    MEMORY[0x23191EAE0](v12, -1, -1);
  }

  else
  {
    v23 = *(v0 + 208);

    sub_230DB3200(v23, type metadata accessor for TimeFrame);
  }

  v24 = *(v0 + 113);
  v25 = *(v0 + 224);
  v26 = *(v0 + 232);
  if (v24 == 3 && !v26 && v25 == 1)
  {
    v27 = swift_task_alloc();
    *(v0 + 240) = v27;
    *v27 = v0;
    v27[1] = sub_230DAF2E8;
    v28 = *(v0 + 168);

    return sub_230DB06A8(v0 + 96);
  }

  else
  {
    sub_230DB314C(v25, v26, v24);
    v30 = *(v0 + 113);
    v31 = *(v0 + 232);
    v33 = *(v0 + 168);
    v52[0] = *(v0 + 224);
    v32 = v52[0];
    v52[1] = v31;
    v53 = v30;
    v34 = sub_230DB03E4((v0 + 16), v52);
    *(v0 + 256) = v34;
    v36 = *(v0 + 176);
    v35 = *(v0 + 184);
    v37 = *(v0 + 160);
    v38 = *(v0 + 168);
    v39 = v34;
    sub_230DB31B0(v32, v31, v30);
    *(v0 + 264) = *(v38 + 24);
    v40 = *(v0 + 40);
    v41 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v40);
    sub_230DA29A0(v37, v35);
    *(v35 + *(v36 + 20)) = v39;
    v42 = *(v41 + 8);
    v43 = *(v42 + 8);

    v50 = (v43 + *v43);
    v44 = v43[1];
    v45 = swift_task_alloc();
    *(v0 + 272) = v45;
    *v45 = v0;
    v45[1] = sub_230DAF62C;
    v46 = *(v0 + 184);

    return v50(v0 + 56, v46, v40, v42);
  }
}

uint64_t sub_230DAF2E8()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_230DB0340;
  }

  else
  {
    v3 = sub_230DAF3FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230DAF3FC()
{
  v27 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 248);
  v5 = *(v0 + 168);
  v25[0] = v1;
  v25[1] = v2;
  v26 = v3;
  v6 = sub_230DB03E4((v0 + 16), v25);
  *(v0 + 256) = v6;
  if (v4)
  {
    sub_230DB31B0(v1, v2, v3);
    v8 = *(v0 + 200);
    v7 = *(v0 + 208);
    v9 = *(v0 + 184);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v13 = *(v0 + 176);
    v12 = *(v0 + 184);
    v14 = *(v0 + 160);
    v15 = *(v0 + 168);
    v16 = v6;
    sub_230DB31B0(v1, v2, v3);
    *(v0 + 264) = *(v15 + 24);
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
    sub_230DA29A0(v14, v12);
    *(v12 + *(v13 + 20)) = v16;
    v19 = *(v18 + 8);
    v20 = *(v19 + 8);

    v24 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    *(v0 + 272) = v22;
    *v22 = v0;
    v22[1] = sub_230DAF62C;
    v23 = *(v0 + 184);

    return v24(v0 + 56, v23, v17, v19);
  }
}

uint64_t sub_230DAF62C()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  sub_230DB3200(*(v2 + 184), type metadata accessor for ContextProviderOptions);
  if (v0)
  {
    v5 = sub_230DAFA44;
  }

  else
  {
    v5 = sub_230DAF774;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_230DAF774()
{
  v1 = v0[33];
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v0[36] = v4;
  v5 = sub_230E68D60();
  v6 = sub_230E693E0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v4 + 16);
    _os_log_impl(&dword_230D02000, v5, v6, "[ContextManager][getContentForContext] Got %ld context time ranges", v7, 0xCu);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  if (*(v4 + 16))
  {
    v8 = v0[27];
    v9 = v0[33];
    if (v8)
    {
      v10 = *(v8 + 16);
      v0[37] = sub_230DBB980();
      v11 = swift_task_alloc();
      v0[38] = v11;
      *v11 = v0;
      if (v10)
      {
        v12 = v0[27];
        v11[1] = sub_230DAFD2C;
        v13 = v0[20];
      }

      else
      {
        v11[1] = sub_230DAFC04;
        v13 = v0[20];
        v12 = MEMORY[0x277D84F90];
      }

      return sub_230DA7A8C(v12, v13);
    }

    else
    {
      v0[39] = sub_230DBB9A8();
      v23 = swift_task_alloc();
      v0[40] = v23;
      *v23 = v0;
      v23[1] = sub_230DAFAD4;
      v24 = v0[20];

      return sub_230DA6FB8(v24);
    }
  }

  else
  {
    v14 = v0[27];
    v15 = v0[19];

    v16 = v14 == 0;
    *v15 = MEMORY[0x277D84F90];
    v17 = v0[32];
    v19 = v0[25];
    v18 = v0[26];
    v20 = v0[23];
    *(v0[19] + 8) = v16;
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_230DAFA44()
{
  v1 = v0[35];
  v2 = v0[32];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];

  v6 = v0[1];

  return v6();
}

uint64_t sub_230DAFAD4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v7 = sub_230DB0294;
  }

  else
  {
    v8 = *(v4 + 312);

    *(v4 + 368) = a1;
    v7 = sub_230DB01A4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_230DAFC04(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v7 = sub_230DAFF8C;
  }

  else
  {
    *(v4 + 352) = a1;
    v7 = sub_230DAFE80;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_230DAFD2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  v4[43] = v1;

  v7 = v4[37];
  if (v1)
  {
    v8 = v4[36];

    v9 = sub_230DB010C;
  }

  else
  {

    v4[45] = a1;
    v9 = sub_230DB0034;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_230DAFE80()
{
  v1 = v0[37];
  v2 = sub_230DAE6C8(v0[44]);

  v3 = sub_230DAE840(v2);

  v4 = v0[19];
  v5 = sub_230DA9808(v3, v0[36]);

  *v4 = v5;
  v6 = v0[32];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[23];
  *(v0[19] + 8) = 0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_230DAFF8C()
{
  v2 = v0[36];
  v1 = v0[37];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v3 = v0[42];
  v4 = v0[32];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[23];

  v8 = v0[1];

  return v8();
}

uint64_t sub_230DB0034()
{
  v1 = v0[19];
  v2 = sub_230DA9808(v0[45], v0[36]);

  *v1 = v2;
  v3 = v0[32];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[23];
  *(v0[19] + 8) = 0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_230DB010C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[43];
  v2 = v0[32];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];

  v6 = v0[1];

  return v6();
}

uint64_t sub_230DB01A4()
{
  v1 = v0[36];
  v2 = v0[19];
  v3 = sub_230DAE9D8(v0[46]);

  v4 = sub_230DA99B4(v3, v1);

  *v2 = v4;
  v5 = v0[32];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[23];
  *(v0[19] + 8) = 1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_230DB0294()
{
  v1 = v0[39];
  v2 = v0[36];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v3 = v0[41];
  v4 = v0[32];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[23];

  v8 = v0[1];

  return v8();
}

uint64_t sub_230DB0340()
{
  v1 = v0[31];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[23];

  v5 = v0[1];

  return v5();
}

unint64_t sub_230DB03E4(uint64_t *a1, uint64_t *a2)
{
  v6 = *a2;
  v5 = a2[1];
  if (*(a2 + 16) <= 1u)
  {
    if (*(a2 + 16))
    {
      v17 = a2[1];

      v3 = sub_230D0E264(MEMORY[0x277D84F90]);
      if (v5)
      {
        v27 = MEMORY[0x277D837D0];
        *&v26 = v6;
        *(&v26 + 1) = v5;
        sub_230D0E394(&v26, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v3;
        sub_230E1BE84(v25, 0x6F69746365726964, 0xE90000000000006ELL, isUniquelyReferenced_nonNull_native);
        v3 = v28;
      }

      v19 = *(v2 + 24);
      v20 = sub_230DBB850();
      a1[3] = type metadata accessor for CommuteProvider();
      a1[4] = &off_2845ACF38;
      *a1 = v20;
      return v3;
    }

    v7 = *(v2 + 24);
    v8 = a2[1];

    v9 = sub_230DBB828();
    a1[3] = type metadata accessor for LocationProvider();
    a1[4] = &off_2845ACF58;
    *a1 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C428, &unk_230E75B60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_230E6B3B0;
    *(inited + 32) = 0x6E6F697461636F6CLL;
    v11 = inited + 32;
    v12 = 0xEC00000065707954;
    v13 = MEMORY[0x277D837D0];
    goto LABEL_6;
  }

  if (*(a2 + 16) == 2)
  {
    v14 = *(v2 + 24);
    v15 = a2[1];

    v16 = sub_230DBB8A0();
    a1[3] = type metadata accessor for TimeProvider();
    a1[4] = &off_2845AD008;
    *a1 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C428, &unk_230E75B60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_230E6B3B0;
    *(inited + 32) = 0x746E6F43656D6974;
    v11 = inited + 32;
    v12 = 0xEB00000000747865;
    v13 = &type metadata for TimeContextFilter;
LABEL_6:
    *(inited + 72) = v13;
    *(inited + 40) = v12;
    *(inited + 48) = v6;
    *(inited + 56) = v5;
    v3 = sub_230D0E264(inited);
    swift_setDeallocating();
    sub_230D2D9F8(v11, &qword_27DB5A930, &unk_230E6B9D0);
    return v3;
  }

  if (v6 | v5)
  {
    sub_230DB35C8();
    swift_allocError();
    *v21 = xmmword_230E6E730;
    swift_willThrow();
    return v3;
  }

  v23 = *(v2 + 24);
  v24 = sub_230DBB878();
  a1[3] = type metadata accessor for WorkoutProvider();
  a1[4] = &off_2845AD0B8;
  *a1 = v24;
  return sub_230D0E264(MEMORY[0x277D84F90]);
}

uint64_t sub_230DB06A8(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_230DB06C8, 0, 0);
}

uint64_t sub_230DB06C8()
{
  v1 = sub_230E68D50();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[10] = sub_230E68D40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C420, &unk_230E75B50);
  v4 = sub_230E68CF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  v0[11] = v8;
  *(v8 + 16) = xmmword_230E6C070;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, *MEMORY[0x277D1EAB0], v4);
  v10(v9 + v6, *MEMORY[0x277D1EA60], v4);
  v11 = *(MEMORY[0x277D1D2D8] + 4);
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_230DB0878;

  return MEMORY[0x2821761F0](v8);
}

uint64_t sub_230DB0878(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  v4[13] = a1;
  v4[14] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_230DB0C18, 0, 0);
  }

  else
  {
    v7 = v4[11];

    v8 = swift_task_alloc();
    v4[15] = v8;
    *v8 = v6;
    v8[1] = sub_230DB0A08;
    v9 = v4[9];

    return sub_230DB0ED8((v4 + 2), a1);
  }
}

uint64_t sub_230DB0A08()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;

  if (v0)
  {
    MEMORY[0x23191E910](v0);
    v4 = sub_230DB0C84;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_230DB0B28;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230DB0B28()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  v3 = *(v0 + 32);
  *v2 = *(v0 + 16);
  *(v2 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_230DB0BA0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  v3 = *(v0 + 56);
  *v2 = *(v0 + 40);
  *(v2 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_230DB0C18()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_230DB0C84()
{
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_230DB0D20;
  v2 = v0[13];
  v3 = v0[9];

  return sub_230DB1BF8((v0 + 5), v2);
}

uint64_t sub_230DB0D20()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  v5 = *(v2 + 104);
  if (v0)
  {
    MEMORY[0x23191E910](v0);

    v6 = sub_230DB0E68;
  }

  else
  {

    v6 = sub_230DB0BA0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_230DB0E68()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  sub_230DB2AA8(*(v0 + 64));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_230DB0ED8(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_230E68710();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = sub_230E68EC0();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C408, &qword_230E75B48) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v11 = sub_230E68ED0();
  v3[18] = v11;
  v12 = *(v11 - 8);
  v3[19] = v12;
  v13 = *(v12 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v14 = sub_230E68CF0();
  v3[22] = v14;
  v15 = *(v14 - 8);
  v3[23] = v15;
  v16 = *(v15 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v17 = sub_230E68D20();
  v3[26] = v17;
  v18 = *(v17 - 8);
  v3[27] = v18;
  v19 = *(v18 + 64) + 15;
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230DB115C, 0, 0);
}

uint64_t sub_230DB115C()
{
  v117 = v0;
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_17:
    sub_230DB35C8();
    swift_allocError();
    *v38 = 0;
    v38[1] = 0;
    swift_willThrow();
LABEL_18:
    v39 = v115[28];
    v41 = v115[24];
    v40 = v115[25];
    v43 = v115[20];
    v42 = v115[21];
    v45 = v115[16];
    v44 = v115[17];
    v46 = v115[13];

    v47 = v115[1];
    goto LABEL_19;
  }

  v3 = v0[27];
  v4 = v0[23];
  v5 = v0[19];
  v6 = v0[15];
  v104 = v0[10];
  v7 = *(v3 + 16);
  v3 += 16;
  v111 = v7;
  v8 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
  v109 = *MEMORY[0x277D1EAB0];
  v108 = (v4 + 104);
  v107 = (v4 + 8);
  v114 = (v3 - 8);
  v103 = (v5 + 48);
  v100 = (v5 + 16);
  v101 = (v5 + 32);
  v99 = (v5 + 88);
  v98 = *MEMORY[0x277D72A58];
  v102 = (v5 + 8);
  v96 = (v6 + 16);
  v97 = (v5 + 96);
  v95 = (v6 + 88);
  v94 = *MEMORY[0x277D729B8];
  v93 = (v6 + 8);
  v106 = *(v3 + 56);
  while (1)
  {
    v9 = v0[25];
    v10 = v0[24];
    v11 = v0[22];
    v111(v0[28], v8, v0[26]);
    sub_230E68D10();
    (*v108)(v10, v109, v11);
    sub_230DB3570();
    sub_230E691A0();
    sub_230E691A0();
    v12 = v0[24];
    v13 = v0[25];
    v14 = v0[22];
    if (v0[2] == v0[4] && v0[3] == v0[5])
    {
      break;
    }

    v16 = v0[3];
    v17 = v0[5];
    v105 = sub_230E698C0();
    v18 = *v107;
    (*v107)(v12, v14);
    v18(v13, v14);

    v0 = v115;
    if (v105)
    {
      goto LABEL_9;
    }

LABEL_4:
    (*v114)(v0[28], v0[26]);
    v8 += v106;
    if (!--v2)
    {
      goto LABEL_17;
    }
  }

  v15 = *v107;
  (*v107)(v0[24], v0[22]);
  v15(v13, v14);

  v0 = v115;
LABEL_9:
  v19 = v0[28];
  v21 = v0[17];
  v20 = v0[18];
  sub_230E68D00();
  if ((*v103)(v21, 1, v20) == 1)
  {
    sub_230D2D9F8(v0[17], &qword_27DB5C408, &qword_230E75B48);
LABEL_15:
    v35 = sub_230E68D60();
    v36 = sub_230E693F0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_230D02000, v35, v36, "", v37, 2u);
      MEMORY[0x23191EAE0](v37, -1, -1);
    }

    goto LABEL_4;
  }

  v23 = v0[20];
  v22 = v0[21];
  v24 = v0[18];
  (*v101)(v22, v0[17], v24);
  (*v100)(v23, v22, v24);
  if ((*v99)(v23, v24) != v98)
  {
    v32 = v0[20];
    v33 = v0[18];
    v34 = *v102;
    (*v102)(v0[21], v33);
    v34(v32, v33);
    v0 = v115;
    goto LABEL_15;
  }

  v25 = v0[20];
  v26 = v0[16];
  v27 = v0[14];
  (*v97)(v25, v0[18]);
  v28 = *v25;
  v29 = swift_projectBox();
  (*v96)(v26, v29, v27);
  if ((*v95)(v26, v27) != v94)
  {
    v30 = v0[16];
    v31 = v0[14];
    (*v102)(v0[21], v0[18]);
    (*v93)(v30, v31);

    goto LABEL_15;
  }

  v49 = v0[16];
  (*(v0[15] + 96))(v49, v0[14]);
  v51 = *v49;
  v50 = v49[1];

  v52 = sub_230E68D60();
  v53 = sub_230E693F0();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_230D02000, v52, v53, "---------- 1. Location check ----------", v54, 2u);
    MEMORY[0x23191EAE0](v54, -1, -1);
  }

  v55 = sub_230E68D60();
  v56 = sub_230E693F0();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v116 = v58;
    *v57 = 136315138;
    *(v57 + 4) = sub_230D7E620(v51, v50, &v116);
    _os_log_impl(&dword_230D02000, v55, v56, "Semantic Location: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x23191EAE0](v58, -1, -1);
    MEMORY[0x23191EAE0](v57, -1, -1);
  }

  v59 = 1701670760;
  v61 = v115[12];
  v60 = v115[13];
  v62 = v115[11];
  v115[6] = v51;
  v115[7] = v50;
  sub_230E68700();
  sub_230D0D278();
  v63 = sub_230E69470();
  v65 = v64;
  (*(v61 + 8))(v60, v62);

  v67 = sub_230E690D0();
  v68 = v66;
  if (v67 == 1701670760 && v66 == 0xE400000000000000 || (sub_230E698C0() & 1) != 0)
  {

    v69 = sub_230E68D60();
    v70 = sub_230E693F0();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = "location is home!";
      goto LABEL_31;
    }

    v73 = 1701670760;
LABEL_33:
    v113 = v73;
    goto LABEL_34;
  }

  v59 = 1802661751;
  if (v67 != 1802661751 || v68 != 0xE400000000000000)
  {
    v84 = sub_230E698C0();

    if (v84)
    {
      goto LABEL_39;
    }

    v85 = sub_230E68D60();
    v86 = sub_230E693F0();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_230D02000, v85, v86, "no significant location found!", v87, 2u);
      MEMORY[0x23191EAE0](v87, -1, -1);
    }

    v88 = v115[28];
    v89 = v115[26];
    v90 = v115[21];
    v91 = v115[18];

    sub_230DB35C8();
    swift_allocError();
    *v92 = v63;
    v92[1] = v65;
    swift_willThrow();
    (*v102)(v90, v91);
    (*v114)(v88, v89);
    goto LABEL_18;
  }

LABEL_39:

  v69 = sub_230E68D60();
  v70 = sub_230E693F0();
  if (!os_log_type_enabled(v69, v70))
  {
    v73 = 1802661751;
    goto LABEL_33;
  }

  v71 = "location is work!";
LABEL_31:
  v113 = v59;
  v72 = swift_slowAlloc();
  *v72 = 0;
  _os_log_impl(&dword_230D02000, v69, v70, v71, v72, 2u);
  MEMORY[0x23191EAE0](v72, -1, -1);
LABEL_34:
  v74 = v69;
  v75 = v115[28];
  v77 = v115[25];
  v76 = v115[26];
  v78 = v115[24];
  v79 = v115[20];
  v80 = v115[21];
  v82 = v115[17];
  v81 = v115[18];
  v110 = v115[16];
  v112 = v115[13];
  v83 = v115[8];

  (*v102)(v80, v81);
  (*v114)(v75, v76);
  *v83 = v113;
  *(v83 + 8) = 0xE400000000000000;
  *(v83 + 16) = 0;

  v47 = v115[1];
LABEL_19:

  return v47();
}

uint64_t sub_230DB1BF8(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_230E68910();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = sub_230E689B0();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v10 = sub_230E689D0();
  v3[17] = v10;
  v11 = *(v10 - 8);
  v3[18] = v11;
  v12 = *(v11 + 64) + 15;
  v3[19] = swift_task_alloc();
  v13 = sub_230E68710();
  v3[20] = v13;
  v14 = *(v13 - 8);
  v3[21] = v14;
  v15 = *(v14 + 64) + 15;
  v3[22] = swift_task_alloc();
  v16 = sub_230E68EC0();
  v3[23] = v16;
  v17 = *(v16 - 8);
  v3[24] = v17;
  v18 = *(v17 + 64) + 15;
  v3[25] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C408, &qword_230E75B48) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v20 = sub_230E68ED0();
  v3[27] = v20;
  v21 = *(v20 - 8);
  v3[28] = v21;
  v22 = *(v21 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v23 = sub_230E68CF0();
  v3[31] = v23;
  v24 = *(v23 - 8);
  v3[32] = v24;
  v25 = *(v24 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v26 = sub_230E68D20();
  v3[35] = v26;
  v27 = *(v26 - 8);
  v3[36] = v27;
  v28 = *(v27 + 64) + 15;
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230DB1F90, 0, 0);
}

uint64_t sub_230DB1F90()
{
  v133 = v0;
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_26:
    v65 = v0[37];
    v67 = v0[33];
    v66 = v0[34];
    v69 = v0[29];
    v68 = v0[30];
    v70 = v0[25];
    v71 = v0[26];
    v124 = v0[22];
    v126 = v0[19];
    v127 = v0[16];
    v129 = v0[13];
    sub_230DB35C8();
    swift_allocError();
    *v72 = 0;
    v72[1] = 0;
    swift_willThrow();

    v73 = v0[1];
    goto LABEL_27;
  }

  v3 = v0[36];
  v4 = v0[32];
  v5 = v0[28];
  v107 = v0[25];
  v6 = v0[24];
  v112 = v0[10];
  v7 = *(v3 + 16);
  v3 += 16;
  v125 = v7;
  v8 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
  v123 = *MEMORY[0x277D1EA60];
  v122 = (v4 + 104);
  v121 = (v4 + 8);
  v120 = (v3 - 8);
  v118 = (v5 + 48);
  v115 = (v5 + 16);
  v116 = (v5 + 32);
  v114 = (v5 + 88);
  v113 = *MEMORY[0x277D72A58];
  v117 = (v5 + 8);
  v110 = (v6 + 16);
  v111 = (v5 + 96);
  v109 = (v6 + 88);
  v108 = *MEMORY[0x277D729B8];
  v105 = (v6 + 96);
  v106 = (v6 + 8);
  v104 = (v0[21] + 8);
  v119 = *(v3 + 56);
  while (1)
  {
    v128 = v2;
    v10 = v0[34];
    v11 = v0[33];
    v12 = v0[31];
    v125(v0[37], v8, v0[35]);
    sub_230E68D10();
    (*v122)(v11, v123, v12);
    sub_230DB3570();
    sub_230E691A0();
    sub_230E691A0();
    v14 = v0[33];
    v13 = v0[34];
    v15 = v0[31];
    if (v0[2] == v0[4] && v0[3] == v0[5])
    {
      v16 = *v121;
      (*v121)(v0[33], v0[31]);
      v16(v13, v15);
    }

    else
    {
      v17 = v0[3];
      v18 = v0[5];
      v19 = sub_230E698C0();
      v20 = *v121;
      (*v121)(v14, v15);
      v20(v13, v15);

      if ((v19 & 1) == 0)
      {
        (*v120)(v0[37], v0[35]);
        goto LABEL_4;
      }
    }

    v21 = v0[37];
    v23 = v0[26];
    v22 = v0[27];
    sub_230E68D00();
    if ((*v118)(v23, 1, v22) == 1)
    {
      v9 = v0[26];
      (*v120)(v0[37], v0[35]);
      sub_230D2D9F8(v9, &qword_27DB5C408, &qword_230E75B48);
      goto LABEL_4;
    }

    v24 = v0[29];
    v25 = v0[30];
    v26 = v0[27];
    (*v116)(v25, v0[26], v26);
    (*v115)(v24, v25, v26);
    if ((*v114)(v24, v26) != v113)
    {
      v56 = v0[37];
      v57 = v0[35];
      v58 = v0[29];
      v59 = v0[27];
      v60 = *v117;
      (*v117)(v0[30], v59);
      (*v120)(v56, v57);
      v60(v58, v59);
      goto LABEL_4;
    }

    v27 = v0[29];
    v28 = v0[25];
    v29 = v0[23];
    (*v111)(v27, v0[27]);
    v30 = *v27;
    v31 = swift_projectBox();
    (*v110)(v28, v31, v29);
    if ((*v109)(v28, v29) != v108)
    {
      v61 = v0[37];
      v62 = v0[35];
      v63 = v0[25];
      v64 = v0[23];
      (*v117)(v0[30], v0[27]);
      (*v120)(v61, v62);
      (*v106)(v63, v64);

      goto LABEL_4;
    }

    v32 = v0[25];
    (*v105)(v32, v0[23]);
    v33 = *v32;
    v34 = *(v107 + 8);

    v35 = sub_230E68D60();
    v36 = sub_230E693F0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_230D02000, v35, v36, "---------- 2. Commute check ----------", v37, 2u);
      MEMORY[0x23191EAE0](v37, -1, -1);
    }

    v38 = sub_230E68D60();
    v39 = sub_230E693F0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v132 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_230D7E620(v33, v34, &v132);
      _os_log_impl(&dword_230D02000, v38, v39, "Current Motion State: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x23191EAE0](v41, -1, -1);
      MEMORY[0x23191EAE0](v40, -1, -1);
    }

    v42 = v0[22];
    v43 = v0[20];
    v0[6] = v33;
    v0[7] = v34;
    sub_230E68700();
    sub_230D0D278();
    sub_230E69470();
    (*v104)(v42, v43);

    v44 = sub_230E690D0();
    v46 = v45;

    if (v44 == 0x69746F6D6F747561 && v46 == 0xEA00000000006576)
    {
      break;
    }

    v47 = sub_230E698C0();

    if (v47)
    {
      goto LABEL_31;
    }

    v48 = sub_230E68D60();
    v49 = sub_230E693F0();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v0[37];
    v52 = v0[35];
    v53 = v0[30];
    v54 = v0[27];
    if (v50)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_230D02000, v48, v49, "no commute context identified.\n", v55, 2u);
      MEMORY[0x23191EAE0](v55, -1, -1);
    }

    (*v117)(v53, v54);
    (*v120)(v51, v52);
LABEL_4:
    v8 += v119;
    v2 = v128 - 1;
    if (v128 == 1)
    {
      goto LABEL_26;
    }
  }

LABEL_31:
  v75 = sub_230E68D60();
  v76 = sub_230E693F0();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_230D02000, v75, v76, "commute identified as current context.\n", v77, 2u);
    MEMORY[0x23191EAE0](v77, -1, -1);
  }

  v79 = v0[18];
  v78 = v0[19];
  v80 = v0[16];
  v130 = v0[17];
  v81 = v0[14];
  v82 = v0[15];
  v83 = v0[12];
  v84 = v0[13];
  v85 = v0[11];

  sub_230E689A0();
  (*(v82 + 104))(v80, *MEMORY[0x277CC9980], v81);
  sub_230E68900();
  v86 = sub_230E689C0();
  (*(v83 + 8))(v84, v85);
  (*(v82 + 8))(v80, v81);
  (*(v79 + 8))(v78, v130);
  v87 = v0[37];
  v88 = v0[35];
  v89 = v0[30];
  v90 = v0[27];
  v91 = *v117;
  if ((v86 - 11) >= 0xFFFFFFFFFFFFFFFALL)
  {
    v93 = v0[8];
    v91(v89, v90);
    (*v120)(v87, v88);
    *v93 = xmmword_230E75960;
  }

  else
  {
    v91(v89, v90);
    (*v120)(v87, v88);
    v92 = v0[8];
    if ((v86 - 21) >= 0xFFFFFFFFFFFFFFFALL)
    {
      *v92 = xmmword_230E75970;
    }

    else
    {
      *v92 = 0;
      *(v92 + 8) = 0;
    }
  }

  v94 = v0[37];
  v95 = v0[33];
  v96 = v0[34];
  v98 = v0[29];
  v97 = v0[30];
  v100 = v0[25];
  v99 = v0[26];
  v101 = v0[22];
  v102 = v0[19];
  v103 = v0[16];
  v131 = v0[13];
  *(v0[8] + 16) = 1;

  v73 = v0[1];
LABEL_27:

  return v73();
}

uint64_t sub_230DB2AA8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v54 = sub_230E689B0();
  v3 = *(v54 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v54, v5);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_230E689D0();
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_230E68910();
  v49 = *(v13 - 8);
  v50 = v13;
  v14 = *(v49 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC20ServicesIntelligence26ContextualContentRetrieval_logger;
  v19 = sub_230E68D60();
  v20 = sub_230E693F0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_230D02000, v19, v20, "---------- 3. Time-based filtering ----------", v21, 2u);
    MEMORY[0x23191EAE0](v21, -1, -1);
  }

  v48[1] = v18;
  v48[2] = v2;
  v22 = sub_230E68D60();
  v23 = sub_230E693F0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_230D02000, v22, v23, "Leveraging the current time / day of week and using a 1 hr time radius", v24, 2u);
    MEMORY[0x23191EAE0](v24, -1, -1);
  }

  sub_230E68900();
  sub_230E689A0();
  v25 = v3[13];
  v26 = v54;
  v25(v7, *MEMORY[0x277CC9980], v54);
  v27 = sub_230E689C0();
  v28 = v3[1];
  v28(v7, v26);
  v25(v7, *MEMORY[0x277CC99A0], v26);
  v29 = v17;
  v30 = sub_230E689C0();
  result = (v28)(v7, v26);
  if (__OFSUB__(v27, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  if (__OFADD__(v27, 1))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v48[0] = (v27 - 1) & ~((v27 - 1) >> 63);
  if (v27 + 1 >= 23)
  {
    v32 = 23;
  }

  else
  {
    v32 = v27 + 1;
  }

  v33 = v54;
  v25(v7, *MEMORY[0x277CC99B8], v54);
  v34 = v30;
  v35 = sub_230E689C0();
  v28(v7, v33);
  if (v35 == 7 || v35 == 1)
  {
    v37 = &unk_2845A57C8;
  }

  else
  {
    v37 = &unk_2845A57F0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C400, &qword_230E75B40);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_230E6B3B0;
  *(v38 + 32) = v48[0];
  *(v38 + 40) = v34;
  *(v38 + 48) = v32;
  *(v38 + 56) = v34;

  v39 = sub_230E68D60();
  v40 = sub_230E693F0();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v56 = v37;
    v57 = v42;
    *v41 = 136315138;
    v55 = v38;

    v43 = sub_230E690C0();
    v45 = v12;
    v46 = sub_230D7E620(v43, v44, &v57);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_230D02000, v39, v40, "Time range which will be used to filter content: %s\n", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x23191EAE0](v42, -1, -1);
    MEMORY[0x23191EAE0](v41, -1, -1);

    (*(v51 + 8))(v45, v52);
  }

  else
  {

    (*(v51 + 8))(v12, v52);
  }

  result = (*(v49 + 8))(v29, v50);
  v47 = v53;
  *v53 = v38;
  v47[1] = v37;
  *(v47 + 16) = 2;
  return result;
}

uint64_t ContextualContentRetrieval.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC20ServicesIntelligence26ContextualContentRetrieval_logger;
  v4 = sub_230E68D80();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ContextualContentRetrieval.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = OBJC_IVAR____TtC20ServicesIntelligence26ContextualContentRetrieval_logger;
  v4 = sub_230E68D80();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_230DB314C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 < 2u)
  {
  }

  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_230DB31B0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_230DB3200(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ContextualContentRetrieval()
{
  result = qword_27DB5C3F0;
  if (!qword_27DB5C3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230DB32B4()
{
  result = sub_230E68D80();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ContextualContentRetrieval.retrieveUsageHistory(content:context:timeFrame:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 112);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_230D1BF00;

  return v14(a1, a2, a3, a4);
}

uint64_t get_enum_tag_for_layout_string_20ServicesIntelligence26ContextualContentRetrievalC11ContextTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_230DB3528(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_230DB3570()
{
  result = qword_27DB5C410;
  if (!qword_27DB5C410)
  {
    sub_230E68CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C410);
  }

  return result;
}

unint64_t sub_230DB35C8()
{
  result = qword_27DB5C418;
  if (!qword_27DB5C418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C418);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20ServicesIntelligence26ContextualContentRetrievalC12ContextErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_230DB3634(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_230DB3688(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_230DB36E4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

Swift::Double_optional __swiftcall ResultRow.double(for:)(Swift::String a1)
{
  v1 = sub_230DB3734(a1._countAndFlagsBits, a1._object);
  result.value = v2;
  result.is_nil = v1;
  return result;
}

Swift::Int_optional __swiftcall ResultRow.int(for:)(Swift::String a1)
{
  v1 = sub_230DB3734(a1._countAndFlagsBits, a1._object);
  result.value = v1;
  result.is_nil = v2;
  return result;
}

uint64_t sub_230DB3734(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*(v3 + 16) && (v4 = sub_230DA41A0(a1, a2), (v5 & 1) != 0))
  {
    sub_230D82664(*(v3 + 56) + 32 * v4, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
  v6 = swift_dynamicCast();
  v7 = v10;
  if (!v6)
  {
    return 0;
  }

  return v7;
}

Swift::String_optional __swiftcall ResultRow.string(for:)(Swift::String a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = sub_230DA41A0(a1._countAndFlagsBits, a1._object), (v4 & 1) != 0))
  {
    sub_230D82664(*(v2 + 56) + 32 * v3, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
  v5 = swift_dynamicCast();
  if (v5)
  {
    v6 = v11;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  result.value._object = v6;
  result.value._countAndFlagsBits = v7;
  return result;
}

id sub_230DB3860()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[4];
  }

  else
  {
    sub_230D90038(0, &qword_27DB5C448, 0x277D21238);
    v3 = v0[2];
    v4 = v0[3];
    sub_230E69030();
    v5 = v0;
    v6 = sub_230E693D0();
    v7 = v0[4];
    v5[4] = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

char *sub_230DB38E4(uint64_t a1, char *a2)
{
  v5 = sub_230DB3860();
  v6 = sub_230E693C0();
  if (v2)
  {
    MEMORY[0x23191E910](v2);

LABEL_3:

    v7 = sub_230E68D60();
    v8 = sub_230E69400();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v26 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_230D7E620(a1, a2, &v26);
      _os_log_impl(&dword_230D02000, v7, v8, "[IPSQLManager][executeQuery] Query execution failed: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x23191EAE0](v10, -1, -1);
      MEMORY[0x23191EAE0](v9, -1, -1);
    }

    sub_230DAA6D8();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return a2;
  }

  v12 = v6;

  if (!v12)
  {
    goto LABEL_3;
  }

  v13 = [v12 next];
  a2 = MEMORY[0x277D84F90];
  if (v13)
  {
    do
    {
      v14 = [v12 row];
      if (v14)
      {
        v15 = v14;
        v16 = sub_230E68F50();

        v17 = sub_230DB3C24(v16);

        if (v17)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a2 = sub_230E4A4EC(0, *(a2 + 2) + 1, 1, a2);
          }

          v19 = *(a2 + 2);
          v18 = *(a2 + 3);
          v20 = v19 + 1;
          if (v19 >= v18 >> 1)
          {
            v21 = sub_230E4A4EC((v18 > 1), v19 + 1, 1, a2);
            v20 = v19 + 1;
            a2 = v21;
          }

          *(a2 + 2) = v20;
          *&a2[8 * v19 + 32] = v17;
        }
      }
    }

    while (([v12 next] & 1) != 0);
  }

  v22 = sub_230E68D60();
  v23 = sub_230E693E0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = *(a2 + 2);

    _os_log_impl(&dword_230D02000, v22, v23, "[IPSQLManager][executeQuery] Query returned %ld results", v24, 0xCu);
    MEMORY[0x23191EAE0](v24, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_230DB3C24(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A928, &unk_230E75CC0);
    v2 = sub_230E69640();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_230D8FF88(*(a1 + 48) + 40 * v14, v29);
        sub_230D82664(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_230D8FF88(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_230D82664(v27 + 8, v22);
        sub_230DBB758(v26);
        v23 = v20;
        sub_230D0E394(v22, v24);
        v15 = v23;
        sub_230D0E394(v24, v25);
        sub_230D0E394(v25, &v23);
        result = sub_230DA41A0(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_230D0E394(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_230D0E394(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_230DBB758(v26);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_230DB3EE0()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC20ServicesIntelligence12IPSQLManager_logger;
  v3 = sub_230E68D80();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_230DB3FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_230DA41A0(a1, a2), (v5 & 1) != 0))
  {
    sub_230D82664(*(a3 + 56) + 32 * v4, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
  v6 = swift_dynamicCast();
  v7 = v10;
  if (!v6)
  {
    return 0;
  }

  return v7;
}

uint64_t sub_230DB403C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_230DA41A0(a1, a2), (v5 & 1) != 0))
  {
    sub_230D82664(*(a3 + 56) + 32 * v4, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t ResultRow.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *v4;
  if (*(v7 + 16) && (v8 = sub_230DA41A0(a1, a2), (v9 & 1) != 0))
  {
    sub_230D82664(*(v7 + 56) + 32 * v8, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
  v10 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v10 ^ 1u, 1, a3);
}

Swift::Bool_optional __swiftcall ResultRow.BOOL(for:)(Swift::String a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = sub_230DA41A0(a1._countAndFlagsBits, a1._object), (v4 & 1) != 0))
  {
    sub_230D82664(*(v2 + 56) + 32 * v3, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 2;
  }
}

uint64_t ResultRow.stringDictionary()()
{
  v1 = *v0;
  v2 = sub_230D0EBD4(MEMORY[0x277D84F90]);
  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  v41 = v1;

  v8 = 0;
  v40 = v1 + 64;
  while (v6)
  {
    v12 = v8;
LABEL_15:
    v15 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v41 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_230D82664(*(v41 + 56) + 32 * v16, v43);
    *&v44 = v19;
    *(&v44 + 1) = v18;
    sub_230D0E394(v43, &v45);

    v14 = v12;
LABEL_16:
    v47 = v44;
    v48[0] = v45;
    v48[1] = v46;
    v20 = *(&v44 + 1);
    if (!*(&v44 + 1))
    {

      return v2;
    }

    v42 = v14;
    v21 = v47;
    sub_230D0E394(v48, &v44);
    *&v43[0] = v41;
    v22 = sub_230DB4500(&v44);
    v24 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v43[0] = v2;
    v26 = sub_230DA41A0(v21, v20);
    v28 = v2[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_30;
    }

    v32 = v27;
    if (v2[3] < v31)
    {
      sub_230DB843C(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_230DA41A0(v21, v20);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_32;
      }

LABEL_22:
      if (v32)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    v38 = v26;
    sub_230DBAC80();
    v26 = v38;
    if (v32)
    {
LABEL_4:
      v9 = v26;

      v2 = *&v43[0];
      v10 = (*(*&v43[0] + 56) + 16 * v9);
      v11 = v10[1];
      *v10 = v22;
      v10[1] = v24;

      __swift_destroy_boxed_opaque_existential_1(&v44);
      goto LABEL_5;
    }

LABEL_23:
    v2 = *&v43[0];
    *(*&v43[0] + 8 * (v26 >> 6) + 64) |= 1 << v26;
    v34 = (v2[6] + 16 * v26);
    *v34 = v21;
    v34[1] = v20;
    v35 = (v2[7] + 16 * v26);
    *v35 = v22;
    v35[1] = v24;
    __swift_destroy_boxed_opaque_existential_1(&v44);
    v36 = v2[2];
    v30 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v30)
    {
      goto LABEL_31;
    }

    v2[2] = v37;
LABEL_5:
    v8 = v42;
    v3 = v40;
  }

  if (v7 <= v8 + 1)
  {
    v13 = v8 + 1;
  }

  else
  {
    v13 = v7;
  }

  v14 = v13 - 1;
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v7)
    {
      v6 = 0;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      goto LABEL_16;
    }

    v6 = *(v3 + 8 * v12);
    ++v8;
    if (v6)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_230E69950();
  __break(1u);
  return result;
}

uint64_t sub_230DB4500(uint64_t a1)
{
  v2 = sub_230E68910();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v31 - v10;
  sub_230D82664(a1, v37);
  if (swift_dynamicCast())
  {
    (*(v3 + 32))(v8, v11, v2);
    v12 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v12 setDateStyle_];
    [v12 setTimeStyle_];
    v13 = sub_230E688B0();
    v14 = [v12 stringFromDate_];

    v15 = sub_230E69060();
    (*(v3 + 8))(v8, v2);
LABEL_28:
    __swift_destroy_boxed_opaque_existential_1(v37);
    return v15;
  }

  sub_230D90038(0, &qword_27DB5BD10, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    v16 = v35;
    v17 = [v35 description];
    v15 = sub_230E69060();

    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
LABEL_6:
    v15 = v35;
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    if (v35)
    {
      v15 = 1702195828;
    }

    else
    {
      v15 = 0x65736C6166;
    }

    goto LABEL_28;
  }

  result = swift_dynamicCast();
  if (!result)
  {
    sub_230D90038(0, &qword_27DB5BD08, 0x277CBEB68);
    if (swift_dynamicCast())
    {
      v15 = 1280070990;
      v22 = v35;
      goto LABEL_17;
    }

LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BD18, &qword_230E734C8);
    if (swift_dynamicCast())
    {
      v35 = 91;
      v36 = 0xE100000000000000;
      v26 = *(v32 + 16);

      v34 = v26;
      v27 = sub_230E69890();
      MEMORY[0x23191DA00](v27);

      MEMORY[0x23191DA00](0x5D736D65746920, 0xE700000000000000);
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BD20, &qword_230E75CF0);
    if (swift_dynamicCast())
    {
      v35 = 123;
      v36 = 0xE100000000000000;
      v29 = *(v32 + 16);

      v34 = v29;
      v30 = sub_230E69890();
      MEMORY[0x23191DA00](v30);

      MEMORY[0x23191DA00](0x7D7379656B20, 0xE600000000000000);
      goto LABEL_6;
    }

    sub_230D82664(a1, &v35);
    if (!swift_dynamicCast())
    {
      v35 = 0;
      v36 = 0xE000000000000000;
      sub_230E695F0();
      goto LABEL_6;
    }

    v15 = 1280070990;
    v22 = v32;
LABEL_17:

    goto LABEL_28;
  }

  a1 = v35;
  v19 = v36;
  v32 = 60;
  v33 = 0xE100000000000000;
  v20 = v36 >> 62;
  if ((v36 >> 62) > 1)
  {
    if (v20 != 2)
    {
      v21 = 0;
      goto LABEL_27;
    }

    v24 = *(v35 + 16);
    v23 = *(v35 + 24);
    v25 = __OFSUB__(v23, v24);
    v21 = v23 - v24;
    if (!v25)
    {
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (!v20)
  {
    v21 = BYTE6(v36);
LABEL_27:
    v34 = v21;
    v28 = sub_230E69890();
    MEMORY[0x23191DA00](v28);

    MEMORY[0x23191DA00](0x3E736574796220, 0xE700000000000000);
    sub_230D0F4A8(a1, v19);
    v15 = v32;
    goto LABEL_28;
  }

  LODWORD(v21) = HIDWORD(v35) - v35;
  if (!__OFSUB__(HIDWORD(v35), v35))
  {
    v21 = v21;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

unint64_t sub_230DB4A68(char a1)
{
  v3 = *(v1 + 40);
  sub_230E699B0();
  sub_230E69100();

  v4 = sub_230E699D0();

  return sub_230DB4F18(a1, v4);
}

unint64_t sub_230DB4B4C(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 40);
  sub_230E699B0();
  sub_230D55C8C();
  sub_230E69100();
  sub_230E69100();

  v10 = sub_230E699D0();

  return sub_230DB50D8(a1, a2, a3, a4, v10);
}

unint64_t sub_230DB4C38(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_230E699B0();
  sub_230E69100();

  v4 = sub_230E699D0();

  return sub_230DB551C(a1, v4);
}

unint64_t sub_230DB4D18(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_230E69060();
  sub_230E699B0();
  sub_230E69100();
  v4 = sub_230E699D0();

  return sub_230DB56B8(a1, v4);
}

unint64_t sub_230DB4DAC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_230E699B0();
  sub_230E69100();

  v4 = sub_230E699D0();

  return sub_230DB57BC(a1, v4);
}

unint64_t sub_230DB4E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_230E699B0();
  sub_230E69100();
  sub_230E69100();
  v10 = sub_230E699D0();

  return sub_230DB5954(a1, a2, a3, a4, v10);
}

unint64_t sub_230DB4F18(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v6 = 0xD00000000000001FLL;
          v7 = 0x8000000230E802F0;
        }

        else
        {
          v6 = 0xD000000000000012;
          v7 = 0x8000000230E80310;
        }
      }

      else
      {
        v6 = 0x6F5F706D615F7078;
        v7 = 0xEE00676F6C5F7064;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          v8 = 0xD00000000000001FLL;
        }

        else
        {
          v8 = 0xD000000000000012;
        }

        if (a1 == 1)
        {
          v9 = 0x8000000230E802F0;
        }

        else
        {
          v9 = 0x8000000230E80310;
        }

        if (v6 != v8)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v9 = 0xEE00676F6C5F7064;
        if (v6 != 0x6F5F706D615F7078)
        {
          goto LABEL_19;
        }
      }

      if (v7 == v9)
      {

        return v4;
      }

LABEL_19:
      v10 = sub_230E698C0();

      if ((v10 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_230DB50D8(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v37 = ~v6;
    v8 = a1;
    do
    {
      v9 = (*(v39 + 48) + 32 * v7);
      v10 = *v9;
      if (v10 > 4)
      {
        if (*v9 <= 6u)
        {
          if (v10 == 5)
          {
            v15 = 0x7374736163646F70;
          }

          else
          {
            v15 = 0x6F65646976;
          }

          if (v10 == 5)
          {
            v16 = 0xE800000000000000;
          }

          else
          {
            v16 = 0xE500000000000000;
          }
        }

        else if (v10 == 7)
        {
          v16 = 0xE600000000000000;
          v15 = 0x6E6F6D6D6F63;
        }

        else
        {
          v16 = 0xE800000000000000;
          if (v10 == 8)
          {
            v15 = 0x65676175676E616CLL;
          }

          else
          {
            v15 = 0x7974697275636573;
          }
        }
      }

      else
      {
        if (v10 == 3)
        {
          v11 = 0x7373656E746966;
        }

        else
        {
          v11 = 0x636973756DLL;
        }

        if (v10 == 3)
        {
          v12 = 0xE700000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v10 == 2)
        {
          v11 = 0x736B6F6F62;
          v12 = 0xE500000000000000;
        }

        if (*v9)
        {
          v13 = 1936748641;
        }

        else
        {
          v13 = 0x6C616E7265746E69;
        }

        if (*v9)
        {
          v14 = 0xE400000000000000;
        }

        else
        {
          v14 = 0xE800000000000000;
        }

        if (*v9 <= 1u)
        {
          v15 = v13;
        }

        else
        {
          v15 = v11;
        }

        if (*v9 <= 1u)
        {
          v16 = v14;
        }

        else
        {
          v16 = v12;
        }
      }

      v18 = *(v9 + 1);
      v17 = *(v9 + 2);
      v19 = v9[24];
      v20 = 0x7974697275636573;
      if (v8 == 8)
      {
        v20 = 0x65676175676E616CLL;
      }

      v21 = 0xE800000000000000;
      if (v8 == 7)
      {
        v20 = 0x6E6F6D6D6F63;
        v21 = 0xE600000000000000;
      }

      v22 = 0x7374736163646F70;
      if (v8 == 5)
      {
        v23 = 0xE800000000000000;
      }

      else
      {
        v22 = 0x6F65646976;
        v23 = 0xE500000000000000;
      }

      if (v8 <= 6)
      {
        v20 = v22;
        v21 = v23;
      }

      if (v8 == 3)
      {
        v24 = 0x7373656E746966;
      }

      else
      {
        v24 = 0x636973756DLL;
      }

      if (v8 == 3)
      {
        v25 = 0xE700000000000000;
      }

      else
      {
        v25 = 0xE500000000000000;
      }

      if (v8 == 2)
      {
        v24 = 0x736B6F6F62;
        v25 = 0xE500000000000000;
      }

      if (v8)
      {
        v26 = 1936748641;
      }

      else
      {
        v26 = 0x6C616E7265746E69;
      }

      if (v8)
      {
        v27 = 0xE400000000000000;
      }

      else
      {
        v27 = 0xE800000000000000;
      }

      if (v8 <= 1)
      {
        v24 = v26;
        v25 = v27;
      }

      if (v8 <= 4)
      {
        v28 = v24;
      }

      else
      {
        v28 = v20;
      }

      if (v8 <= 4)
      {
        v29 = v25;
      }

      else
      {
        v29 = v21;
      }

      if (v15 == v28 && v16 == v29)
      {
      }

      else
      {
        v30 = sub_230E698C0();

        if ((v30 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ((v18 != a2 || v17 != a3) && (sub_230E698C0() & 1) == 0)
      {
LABEL_3:

        goto LABEL_4;
      }

      if (v19)
      {
        if (v19 == 1)
        {
          v31 = 0xE600000000000000;
          v32 = 0x524F54434556;
        }

        else
        {
          v31 = 0xE200000000000000;
          v32 = 22091;
        }
      }

      else
      {
        v31 = 0xE300000000000000;
        v32 = 5001555;
      }

      if (a4)
      {
        if (a4 == 1)
        {
          v33 = 0xE600000000000000;
          if (v32 == 0x524F54434556)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v33 = 0xE200000000000000;
          if (v32 == 22091)
          {
LABEL_88:
            if (v31 == v33)
            {

              return v7;
            }
          }
        }
      }

      else
      {
        v33 = 0xE300000000000000;
        if (v32 == 5001555)
        {
          goto LABEL_88;
        }
      }

      v34 = sub_230E698C0();

      if (v34)
      {
        return v7;
      }

LABEL_4:
      v7 = (v7 + 1) & v37;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_230DB551C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v22 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v24 + 48) + v4);
      v7 = 0xD00000000000001ALL;
      v8 = 0xD00000000000001ELL;
      v9 = v6 == 2 ? 0xD00000000000001ELL : 0xD000000000000012;
      v10 = v6 == 2 ? "com.apple.servicesintelligenced" : "com.apple.SIDInferenceProvider";
      v11 = *(*(v24 + 48) + v4) ? 0xD00000000000001FLL : 0xD00000000000001ALL;
      v12 = *(*(v24 + 48) + v4) ? "com.apple.internal.sidtool" : &unk_230E80070;
      v13 = *(*(v24 + 48) + v4) <= 1u ? v11 : v9;
      v14 = *(*(v24 + 48) + v4) <= 1u ? v12 : v10;
      v15 = v14 | 0x8000000000000000;
      if (v5 == 2)
      {
        v16 = "com.apple.servicesintelligenced";
      }

      else
      {
        v8 = 0xD000000000000012;
        v16 = "com.apple.SIDInferenceProvider";
      }

      if (v5)
      {
        v7 = 0xD00000000000001FLL;
        v17 = "com.apple.internal.sidtool";
      }

      else
      {
        v17 = &unk_230E80070;
      }

      v18 = v5 <= 1 ? v7 : v8;
      v19 = v5 <= 1 ? v17 : v16;
      if (v13 == v18 && v15 == (v19 | 0x8000000000000000))
      {
        break;
      }

      v20 = sub_230E698C0();

      if ((v20 & 1) == 0)
      {
        v4 = (v4 + 1) & v22;
        if ((*(v23 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_230DB56B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_230E69060();
      v9 = v8;
      if (v7 == sub_230E69060() && v9 == v10)
      {
        break;
      }

      v12 = sub_230E698C0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_230DB57BC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE700000000000000;
          v8 = 0x7373656E746966;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE800000000000000;
          v8 = 0x7374736163646F70;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE900000000000065;
            if (v8 != 0x726F74735F707061)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0x726F74735F707061;
        v7 = 0xE900000000000065;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x7373656E746966;
      }

      else
      {
        v10 = 0x7374736163646F70;
      }

      if (v9 == 1)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xE800000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_230E698C0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}