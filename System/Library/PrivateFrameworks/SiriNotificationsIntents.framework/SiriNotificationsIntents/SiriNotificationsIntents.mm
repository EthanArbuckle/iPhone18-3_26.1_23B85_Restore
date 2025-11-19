uint64_t sub_2684CC238()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A20, &qword_268569C58);
  return sub_268568B70();
}

void *sub_2684CC29C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = a1;
  sub_2684CC878(a2, (v2 + 5));
  sub_2684CC878(a2, v10);
  type metadata accessor for ANReadUnsupportedFollowupAction();
  swift_allocObject();

  v6 = sub_2684DECAC(v5, v10);
  sub_2684CC8D4(a2);
  v7 = sub_2684CC928(&qword_280282A08, 255, type metadata accessor for ANReadUnsupportedFollowupAction);
  v8 = v3[2];
  v3[2] = v6;
  v3[3] = v7;
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_2684CC378@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  sub_2684CC878(v1 + 40, __src);
  type metadata accessor for ANFollowupReturnGroup();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  memcpy((v4 + 24), __src, 0x80uLL);
  sub_2684CC878(v1 + 40, __src);
  v5 = type metadata accessor for ANFollowupFlow();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  __src[0] = ANFollowupFlow.init(notificationManager:sharedObjects:)();
  v8 = sub_2685677B0();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_2684CC928(&qword_280282A10, 255, type metadata accessor for ANFollowupFlow);
  sub_2684CC928(&qword_280282A18, 255, type metadata accessor for ANFollowupReturnGroup);
  swift_retain_n();
  *a1 = sub_2685677A0();
  v11 = *MEMORY[0x277D5B898];
  v12 = sub_268567960();
  (*(*(v12 - 8) + 104))(a1, v11, v12);
  v13 = *MEMORY[0x277D5BF50];
  v14 = sub_268567E80();
  (*(*(v14 - 8) + 104))(a1, v13, v14);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v14);
}

uint64_t sub_2684CC594()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_2684CC8D4(v0 + 40);
  return v0;
}

uint64_t sub_2684CC5C4()
{
  sub_2684CC594();

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

uint64_t sub_2684CC5F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t variable initialization expression of ANFollowupFlow.input@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_268568040();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_2684CC760@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2684D1054();
  *a1 = result;
  return result;
}

uint64_t sub_2684CC788(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2684E7BAC();
}

uint64_t sub_2684CC794()
{
  v1 = OUTLINED_FUNCTION_0();
  result = sub_2684E12C0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_2684CC7C8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_268503104();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_2684CC7FC()
{
  v1 = OUTLINED_FUNCTION_0();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_2684CC928(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_2684CC9CC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2684CCA24()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A40, &qword_268569D40);
  return sub_268568B70();
}

uint64_t sub_2684CCA88@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  sub_2684CC878(v1 + 40, v11);
  v4 = *(v1 + 168);
  type metadata accessor for RNReadAppNotificationsActionGroup();
  swift_allocObject();

  v6 = sub_26850CF38(v5, v11, v4);
  v7 = sub_2684CCC64(&qword_280282A38, 255, type metadata accessor for RNReadAppNotificationsActionGroup);
  *a1 = v6;
  a1[1] = v7;
  v8 = *MEMORY[0x277D5BF58];
  v9 = sub_268567E80();
  (*(*(v9 - 8) + 104))(a1, v8, v9);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v9);
}

uint64_t sub_2684CCB9C()
{
  sub_2684CC594();

  return MEMORY[0x2821FE8D8](v0, 169, 7);
}

uint64_t sub_2684CCC64(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2684CCCAC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

uint64_t sub_2684CCCD4(int a1)
{
  sub_268568FD0();
  MEMORY[0x26D61BDA0](0xD00000000000002BLL, 0x8000000268571550);
  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x26D61BDA0](v2, v3);

  MEMORY[0x26D61BDA0](0xD000000000000014, 0x8000000268571580);
  if ((a1 & 0x100) != 0)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x26D61BDA0](v4, v5);

  MEMORY[0x26D61BDA0](0xD000000000000018, 0x80000002685715A0);
  if ((a1 & 0x10000) != 0)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if ((a1 & 0x10000) != 0)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x26D61BDA0](v6, v7);

  MEMORY[0x26D61BDA0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2684CCE20(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v77 = a4;
  v78 = a6;
  v82 = a3;
  v83 = a2;
  LODWORD(v9) = a1;
  v10 = sub_2685689F0();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v68 - v22;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v24 = __swift_project_value_buffer(v10, qword_28028B348);
  v25 = *(v13 + 16);
  v80 = v24;
  v81 = v25;
  v79 = v13 + 16;
  (v25)(v23);

  v26 = sub_2685689E0();
  v27 = sub_268568DD0();

  v74 = v27;
  if (!os_log_type_enabled(v26, v27))
  {

    v33 = *(v13 + 8);
    v33(v23, v10);
    if (!a7)
    {
      goto LABEL_44;
    }

LABEL_12:
    if (a5)
    {
      if (v77 == v78 && a5 == a7)
      {
        v36 = v9 != 1 || v83 == 1;
        if (v36 && v9)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v35 = sub_2685691C0() & (v83 != 1);
        if (v9 != 1)
        {
          LOBYTE(v35) = 0;
        }

        if ((v35 & 1) == 0 && v9)
        {
          if ((sub_2685691C0() & 1) == 0)
          {
            goto LABEL_45;
          }

LABEL_31:
          v37 = 0;
          v38 = 0;
          v39 = 0;
          goto LABEL_47;
        }
      }
    }

    else if (v9)
    {
      goto LABEL_46;
    }

    v81(v21, v80, v10);
    v40 = sub_2685689E0();
    v41 = sub_268568DD0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2684CA000, v40, v41, "#HeadGesturesHintsExperimentProvider failed to create HeadGesturesHintExperimentPolicy with invalid arguments", v42, 2u);
      OUTLINED_FUNCTION_2();
    }

    v33(v21, v10);
    v43 = 0;
    v39 = 0;
    goto LABEL_60;
  }

  v69 = v26;
  v72 = v21;
  v73 = v10;
  v75 = v18;
  v28 = swift_slowAlloc();
  v70 = swift_slowAlloc();
  v86 = v70;
  *v28 = 136316162;
  v29 = v9;
  v9 = 0xD000000000000018;
  v30 = "TrialLevelBool.enabled";
  v71 = v29;
  v76 = v13;
  if (v29)
  {
    if (v29 == 1)
    {
      v31 = 0xD000000000000016;
    }

    else
    {
      v31 = 0xD000000000000017;
    }

    if (v29 == 1)
    {
      v32 = "TrialLevelBool.disabled";
    }

    else
    {
      v32 = "vel";
    }
  }

  else
  {
    v31 = 0xD000000000000018;
    v32 = "TrialLevelBool.enabled";
  }

  v44 = sub_2684EABEC(v31, v32 | 0x8000000000000000, &v86);

  *(v28 + 4) = v44;
  *(v28 + 12) = 2080;
  if (v83)
  {
    if (v83 == 1)
    {
      v9 = 0xD000000000000016;
    }

    else
    {
      v9 = 0xD000000000000017;
    }

    if (v83 == 1)
    {
      v30 = "TrialLevelBool.disabled";
    }

    else
    {
      v30 = "vel";
    }
  }

  v45 = sub_2684EABEC(v9, v30 | 0x8000000000000000, &v86);

  *(v28 + 14) = v45;
  *(v28 + 22) = 1024;
  *(v28 + 24) = v82 & 1;
  *(v28 + 28) = 2080;
  v84 = v77;
  v85 = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A50, &unk_268569F80);
  v46 = sub_268568B70();
  v48 = sub_2684EABEC(v46, v47, &v86);

  *(v28 + 30) = v48;
  *(v28 + 38) = 2080;
  v84 = v78;
  v85 = a7;

  v49 = sub_268568B70();
  v51 = sub_2684EABEC(v49, v50, &v86);

  *(v28 + 40) = v51;
  v52 = v69;
  _os_log_impl(&dword_2684CA000, v69, v74, "#HeadGesturesHintsExperimentProvider creating HeadGesturesHintExperimentPolicy with lastTriggeredTrialLevel: %s, currentTrialLevel: %s, hintHasPlayed: %{BOOL}d, currentExperimentId: %s, lastTriggeredExperimentId: %s", v28, 0x30u);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2();

  v13 = v76;
  v33 = *(v76 + 8);
  v10 = v73;
  v33(v23, v73);
  v18 = v75;
  v21 = v72;
  LOBYTE(v9) = v71;
  if (a7)
  {
    goto LABEL_12;
  }

LABEL_44:
  if (a5)
  {
LABEL_45:
    v53 = v9;
    v39 = v83 == 1;
    v37 = v82 | (v53 != 0);
    v38 = 1;
    goto LABEL_47;
  }

LABEL_46:
  v37 = 0;
  v38 = 0;
  v39 = (v83 == 1) & ~v82;
LABEL_47:
  v81(v18, v80, v10);
  v54 = sub_2685689E0();
  v55 = sub_268568DD0();
  if (!os_log_type_enabled(v54, v55))
  {

    v33(v18, v10);
    if ((v37 & 1) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_58;
  }

  v56 = OUTLINED_FUNCTION_4();
  v75 = v18;
  v57 = v56;
  v58 = swift_slowAlloc();
  v76 = v13;
  v59 = v58;
  v84 = v58;
  *v57 = 136315138;
  v83 = v37 & 1;
  if (v37)
  {
    v60 = 0x10000;
  }

  else
  {
    v60 = 0;
  }

  if (v38)
  {
    v61 = 256;
  }

  else
  {
    v61 = 0;
  }

  v62 = sub_2684CCCD4(v61 | v39 | v60);
  v64 = v10;
  v65 = sub_2684EABEC(v62, v63, &v84);

  *(v57 + 4) = v65;
  _os_log_impl(&dword_2684CA000, v54, v55, "#HeadGesturesHintsExperimentProvider created %s", v57, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v59);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2();

  v33(v75, v64);
  if (v83)
  {
LABEL_58:
    v43 = 0x10000;
    if (v38)
    {
      goto LABEL_59;
    }

LABEL_60:
    v66 = 0;
    return v66 | v43 | v39;
  }

LABEL_55:
  v43 = 0;
  if (v38)
  {
LABEL_59:
    v66 = 256;
    return v66 | v43 | v39;
  }

  v66 = 0;
  return v66 | v43 | v39;
}

unint64_t sub_2684CD53C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000018;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0xD000000000000017;
}

uint64_t sub_2684CD59C()
{
  if (v0[2])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_2684CCCD4(v2 | *v0 | v1);
}

uint64_t sub_2684CD5F4(unsigned __int8 a1)
{
  sub_268569260();
  MEMORY[0x26D61C3F0](a1);
  return sub_268569280();
}

uint64_t sub_2684CD64C()
{
  v1 = *v0;
  sub_268569260();
  MEMORY[0x26D61C3F0](v1);
  return sub_268569280();
}

uint64_t sub_2684CD6A4()
{
  v2 = sub_2685689F0();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = [objc_opt_self() clientWithIdentifier_];
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v11 = sub_268568B10();
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);
  v14 = sub_268568B10();
  v15 = [v8 levelForFactor:v11 withNamespaceName:v14];

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v16 = __swift_project_value_buffer(v2, qword_28028B348);
  (*(v5 + 16))(v1, v16, v2);
  v17 = v15;
  v18 = sub_2685689E0();
  v19 = sub_268568DC0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_4();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v15;
    v22 = v17;
    _os_log_impl(&dword_2684CA000, v18, v19, "#HeadGesturesHintsExperimentProvider loaded factor with level: %@", v20, 0xCu);
    sub_2684CECB8(v21);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  (*(v5 + 8))(v1, v2);
  if (v17)
  {
    v23 = [v17 BOOLeanValue];

    if (v23)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return 0;
  }
}

id sub_2684CD8F0()
{
  v1 = [objc_opt_self() clientWithIdentifier_];
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = sub_268568B10();
  v5 = [v1 experimentIdentifiersWithNamespaceName_];

  if (v5)
  {
    v6 = [v5 experimentId];

    v5 = sub_268568B20();
  }

  return v5;
}

void sub_2684CD9C0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v36 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32 - v8;
  v10 = sub_2685689F0();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  sub_2685685F0();
  if (!sub_2685685D0())
  {
    goto LABEL_9;
  }

  sub_2685685B0();

  v16 = sub_268568920();
  v18 = v17;

  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = v13;
  sub_2684CEC74();

  v20 = sub_2684CDD30();
  if (!v20)
  {

LABEL_9:
    v21 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    goto LABEL_12;
  }

  v21 = v20;
  v34 = v16;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v22 = __swift_project_value_buffer(v10, qword_28028B348);
  (*(v19 + 16))(v3, v22, v10);

  v23 = sub_2685689E0();
  v24 = sub_268568DC0();

  v35 = v24;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_4();
    v33 = v23;
    v26 = v25;
    v32 = swift_slowAlloc();
    v37 = v32;
    *v26 = 136315138;
    v27 = sub_2684EABEC(v34, v18, &v37);

    *(v26 + 4) = v27;
    v28 = v33;
    _os_log_impl(&dword_2684CA000, v33, v35, "#HeadGesturesHintsExperimentProvider trigger log for requestId: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  else
  {
  }

  (*(v19 + 8))(v3, v10);
LABEL_12:
  v29 = v21;
  sub_268568D50();
  v30 = sub_268568D70();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v36;
  v31[5] = a2;
  v31[6] = v4;
  v31[7] = v29;

  sub_2684CED9C(0, 0, v9, &unk_268569F98, v31);
}

id sub_2684CDD30()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_268568B10();

  v2 = [v0 initWithUUIDString_];

  return v2;
}

uint64_t sub_2684CDDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = sub_2685689F0();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2684CDE74, 0, 0);
}

uint64_t sub_2684CDE74()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_2684CEC74();

  v3 = sub_2684CDD30();
  if (!v3)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  }

  v4 = v3;
  v0[14] = v3;
  v6 = v0[8];
  v5 = v0[9];
  v0[15] = [objc_allocWithZone(sub_2685689A0()) init];
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  v9 = *(MEMORY[0x277CE4828] + 4);
  v12 = (*MEMORY[0x277CE4828] + MEMORY[0x277CE4828]);
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_2684CDFA8;

  return v12(v4, v7, v8, v5);
}

uint64_t sub_2684CDFA8()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_2684CE220;
  }

  else
  {
    v3 = sub_2684CE0BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2684CE0BC()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = __swift_project_value_buffer(v2, qword_28028B348);
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_2685689E0();
  v6 = sub_268568DC0();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  v9 = v0[15];
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  if (v7)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "#HeadGesturesHintsExperimentProvider trigger log complete", v13, 2u);
    OUTLINED_FUNCTION_2();
  }

  (*(v12 + 8))(v10, v11);
  v15 = v0[12];
  v14 = v0[13];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2684CE220()
{
  v29 = v0;
  v1 = *(v0 + 112);

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = *(v0 + 136);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);
  v6 = __swift_project_value_buffer(v5, qword_28028B348);
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_2685689E0();
  v9 = sub_268568DE0();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 136);
  v13 = *(v0 + 88);
  v12 = *(v0 + 96);
  v14 = *(v0 + 80);
  if (v10)
  {
    v15 = OUTLINED_FUNCTION_4();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136315138;
    swift_getErrorValue();
    v27 = v12;
    v18 = *(v0 + 16);
    v17 = *(v0 + 24);
    v19 = *(v0 + 32);
    v20 = sub_268569210();
    v22 = sub_2684EABEC(v20, v21, &v28);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_2684CA000, v8, v9, "#HeadGesturesHintsExperimentProvider error during trigger logging: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    (*(v13 + 8))(v27, v14);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v24 = *(v0 + 96);
  v23 = *(v0 + 104);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2684CE424()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t sub_2684CE44C()
{
  sub_2684CE424();

  return MEMORY[0x2821FE8D8](v0, 59, 7);
}

uint64_t sub_2684CE4A4()
{
  result = v0;
  *(v0 + 16) = 335;
  *(v0 + 24) = 0xD000000000000012;
  *(v0 + 32) = 0x80000002685715C0;
  *(v0 + 40) = 0xD000000000000025;
  *(v0 + 48) = 0x80000002685715E0;
  *(v0 + 56) = 0;
  *(v0 + 58) = 0;
  return result;
}

uint64_t sub_2684CE55C(uint64_t result)
{
  v2 = *v1;
  v2[56] = result & 1;
  v2[57] = BYTE1(result) & 1;
  v2[58] = BYTE2(result) & 1;
  return result;
}

uint64_t sub_2684CE584()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_2684CE5C0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 43, 7);
}

uint64_t getEnumTagSinglePayload for SummaryType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TrialLevelBool(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2684CE780);
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

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HeadGesturesHintExperimentPolicy(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadGesturesHintExperimentPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_2684CE8F8()
{
  result = qword_280282A48;
  if (!qword_280282A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282A48);
  }

  return result;
}

uint64_t sub_2684CE9B8(uint64_t result)
{
  v2 = *v1;
  v2[40] = result & 1;
  v2[41] = BYTE1(result) & 1;
  v2[42] = BYTE2(result) & 1;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2684CEA5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2684CEAAC(uint64_t a1)
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
  v10[1] = sub_2684CEB80;

  return sub_2684CDDA4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2684CEB80()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_2684CEC74()
{
  result = qword_280282A60;
  if (!qword_280282A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280282A60);
  }

  return result;
}

uint64_t sub_2684CECB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A68, &qword_268569FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2()
{

  JUMPOUT(0x26D61CB30);
}

uint64_t OUTLINED_FUNCTION_4()
{

  return swift_slowAlloc();
}

uint64_t sub_2684CED9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  v10 = OUTLINED_FUNCTION_10(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - v13;
  sub_2684D1904(a3, v28 - v13);
  v15 = sub_268568D70();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_2684D199C(v14, &qword_280282A58, &qword_26856A930);
  }

  else
  {
    sub_268568D60();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_268568D30();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_268568B90() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_2684D199C(a3, &qword_280282A58, &qword_26856A930);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2684D199C(a3, &qword_280282A58, &qword_26856A930);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_2684CF06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for EmojiFormatter();
  v9 = OUTLINED_FUNCTION_10(v8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a4 = a1;
  *(a4 + 1) = a2;
  v15 = *(v12 + 28);
  v16 = sub_268567690();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v14[v15], a3, v16);
  *v14 = a1;
  *(v14 + 1) = a2;

  sub_2685232B4();
  sub_2685237C8(v18);
  v20 = v19;

  sub_268523AA8(v20);
  v22 = v21;
  v24 = v23;

  sub_2684D1288(v14);
  *(a4 + 2) = v22;
  *(a4 + 3) = v24;
  v25 = type metadata accessor for ContentProcessor();
  return (*(v17 + 32))(&a4[*(v25 + 24)], a3, v16);
}

void sub_2684CF1C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_2684D0BE0(v1, v2);
  sub_2684D16C0(0, &qword_280282A70, 0x277D79988);
  v3 = v0 + *(type metadata accessor for ContentProcessor() + 24);
  sub_268567630();
  v4 = sub_2684CF410();
  v5 = sub_268568B10();

  v6 = [v4 unspeakableRangeOfText_];

  sub_2684D16C0(0, &qword_280282A78, 0x277CCAE60);
  v7 = sub_268568CE0();

  v8 = sub_2684DEAF0(v7);
  v9 = 0;
  v24 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v8 == v9)
    {

      v23 = *(v24 + 16);

      return;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26D61C170](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v13 = [v10 rangeValue];
    v15 = v14;
    v16 = sub_268567370();

    ++v9;
    if (v13 != v16)
    {
      v17 = &v13[v15];
      if (__OFADD__(v13, v15))
      {
        goto LABEL_18;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = *(v24 + 16);
        sub_26854BC10();
        v24 = v21;
      }

      v18 = *(v24 + 16);
      if (v18 >= *(v24 + 24) >> 1)
      {
        sub_26854BC10();
        v24 = v22;
      }

      *(v24 + 16) = v18 + 1;
      v19 = v24 + 16 * v18;
      *(v19 + 32) = v13;
      *(v19 + 40) = v17;
      v9 = v12;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

id sub_2684CF410()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_268568B10();

  v2 = [v0 initWithLanguage_];

  return v2;
}

uint64_t sub_2684CF484()
{
  OUTLINED_FUNCTION_5();
  v1[14] = v2;
  v1[15] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64) + 15;
  v1[16] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2684CF510()
{
  v1 = v0[15];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[2] = v3;
  v0[3] = v2;
  v0[4] = 10;
  v0[5] = 0xE100000000000000;
  v0[6] = 2108960;
  v0[7] = 0xE300000000000000;
  v4 = sub_2684D166C();
  v26 = MEMORY[0x277D837D0];
  v5 = OUTLINED_FUNCTION_8();
  v7 = v6;
  objc_allocWithZone(MEMORY[0x277CCA948]);
  v8 = sub_2684D0FA0(32);
  if (!v8)
  {
    goto LABEL_2;
  }

  v12 = v8;
  v13 = sub_268568B10();
  v14 = [v12 matchesInString:v13 options:0 range:{0, MEMORY[0x26D61BDE0](v5, v7), v26, v4, v4, v4}];

  sub_2684D16C0(0, &qword_280282AA0, 0x277CCACC0);
  v15 = sub_268568CE0();

  v16 = sub_2684DEAF0(v15);

  if (v16)
  {
    v17 = v0[16];
    v18 = v0[14];
    v0[8] = v5;
    v0[9] = v7;
    v0[10] = 0x5DA680E25BLL;
    v0[11] = 0xA500000000000000;
    v0[12] = 0;
    v0[13] = 0xE000000000000000;
    v19 = OUTLINED_FUNCTION_8();
    v21 = v20;

    v0[17] = v21;
    type metadata accessor for URLFormatter.Store();
    v22 = swift_allocObject();
    v0[18] = v22;

    swift_defaultActor_initialize();
    *(v22 + 112) = 0;
    *(v22 + 120) = 0;
    v23 = dispatch_semaphore_create(0);
    v0[19] = v23;
    v24 = sub_268568D70();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v22;
    v25[5] = v19;
    v25[6] = v21;
    v25[7] = v18;
    v25[8] = 1918985330;
    v25[9] = 0xE400000000000000;
    v25[10] = v23;

    v23;
    sub_2684CED9C(0, 0, v17, &unk_26856A050, v25);

    sub_268568E30();

    return MEMORY[0x2822009F8](sub_2684CF84C, v22, 0);
  }

  else
  {
LABEL_2:
    v9 = v0[16];

    v10 = v0[1];

    return v10(v5, v7);
  }
}

uint64_t sub_2684CF84C()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[18];
  v0[20] = *(v1 + 112);
  v0[21] = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_2684CF8C4, 0, 0);
}

uint64_t sub_2684CF8C4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);

  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v0 + 128);

  v7 = *(v0 + 8);

  return v7(v4, v5);
}

BOOL sub_2684CF960(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2685689F0();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v33[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v33[-v17];
  if (a2)
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v19 = __swift_project_value_buffer(v8, qword_28028B348);
    (*(v11 + 16))(v16, v19, v8);
    v20 = sub_2685689E0();
    v21 = sub_268568DC0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2684CA000, v20, v21, "ContentProcessor#exceedsTTSLength missing timeInterval, returning false", v22, 2u);
      MEMORY[0x26D61CB30](v22, -1, -1);
    }

    (*(v11 + 8))(v16, v8);
    return 0;
  }

  else
  {
    v24 = *&a1;
    v25 = 20.0;
    if (a3 != 0xD000000000000013 || 0x8000000268571650 != a4)
    {
      if (sub_2685691C0())
      {
        v25 = 20.0;
      }

      else
      {
        v25 = 10.0;
      }
    }

    v23 = v25 <= *&a1;
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v27 = __swift_project_value_buffer(v8, qword_28028B348);
    (*(v11 + 16))(v18, v27, v8);

    v28 = sub_2685689E0();
    v29 = sub_268568DC0();

    if (os_log_type_enabled(v28, v29))
    {
      v34 = v25 <= v24;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35 = v31;
      *v30 = 136315650;
      *(v30 + 4) = sub_2684EABEC(a3, a4, &v35);
      *(v30 + 12) = 2048;
      *(v30 + 14) = v25;
      *(v30 + 22) = 1024;
      *(v30 + 24) = v34;
      _os_log_impl(&dword_2684CA000, v28, v29, "ContentProcessor#exceedsTTSLength bundleId: %s, threshold: %f, exceedsTTSLength: %{BOOL}d", v30, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x26D61CB30](v31, -1, -1);
      MEMORY[0x26D61CB30](v30, -1, -1);
    }

    (*(v11 + 8))(v18, v8);
  }

  return v23;
}

uint64_t sub_2684CFCE0()
{
  OUTLINED_FUNCTION_5();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_2685689D0();
  v1[7] = v4;
  v5 = *(v4 - 8);
  v1[8] = v5;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2684CFD98()
{
  v1 = v0[6];
  v2 = v1 + *(type metadata accessor for ContentProcessor() + 24);
  sub_268567630();
  v3 = objc_allocWithZone(sub_268568670());
  v4 = sub_268568660();
  v0[10] = v4;
  v5 = *v1;
  v6 = v1[1];
  objc_allocWithZone(sub_268568690());

  v7 = v4;
  v8 = sub_268568680();
  v0[11] = v8;
  v9 = [objc_allocWithZone(sub_268568650()) init];
  v0[12] = v9;
  if (qword_280282968 != -1)
  {
    swift_once();
  }

  v10 = v0[9];
  v11 = qword_28028B360;
  sub_2685689C0();
  sub_268568E20();
  sub_2685689B0();
  v12 = swift_task_alloc();
  v0[13] = v12;
  v12[2] = v9;
  v12[3] = v8;
  v12[4] = v10;
  v13 = *(MEMORY[0x277D859E0] + 4);
  v14 = swift_task_alloc();
  v0[14] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A80, &qword_26856A020);
  *v14 = v0;
  v14[1] = sub_2684CFFC8;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000026, 0x80000002685716A0, sub_2684D1344, v12, v15);
}

uint64_t sub_2684CFFC8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);
  v4 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2684D00C8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (v1 && (v3 & 1) == 0)
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 16);
    type metadata accessor for LimitedTTSDurationCache();
    sub_2684D07D8(v4, v1, v2);
  }

  v6 = *(v0 + 96);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 56);
  v10 = *(v0 + 64);

  (*(v10 + 8))(v7, v9);

  v11 = *(v0 + 8);

  return v11(*&v2, v3);
}

uint64_t sub_2684D01A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a3;
  v19[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A90, &unk_26856A030);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  v11 = sub_2685689D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a4, v11);
  (*(v7 + 16))(v10, a1, v6);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + *(v7 + 80) + v15) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v15, v14, v11);
  (*(v7 + 32))(v17 + v16, v10, v6);
  sub_268568640();
}

void sub_2684D03CC(void *a1, double a2)
{
  v4 = sub_2685689F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  sub_268568E10();
  if (qword_280282968 != -1)
  {
    swift_once();
  }

  sub_2685689B0();
  if (a1)
  {
    v12 = a1;
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v4, qword_28028B348);
    (*(v5 + 16))(v11, v13, v4);
    v14 = a1;
    v15 = sub_2685689E0();
    v16 = sub_268568DE0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = a1;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_2684CA000, v15, v16, "ContentProcessor getTTSDuration | error: %@", v17, 0xCu);
      sub_2684D199C(v18, &qword_280282A68, &qword_268569FA0);
      MEMORY[0x26D61CB30](v18, -1, -1);
      MEMORY[0x26D61CB30](v17, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    v25 = 0.0;
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A90, &unk_26856A030);
    sub_268568D40();
  }

  else
  {
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v4, qword_28028B348);
    (*(v5 + 16))(v9, v21, v4);
    v22 = sub_2685689E0();
    v23 = sub_268568DC0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = a2;
      _os_log_impl(&dword_2684CA000, v22, v23, "ContentProcessor getTTSDuration | timeInterval: %f", v24, 0xCu);
      MEMORY[0x26D61CB30](v24, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    v25 = a2;
    v26 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A90, &unk_26856A030);
    sub_268568D40();
  }
}

uint64_t sub_2684D07D8(uint64_t a1, uint64_t a2, double a3)
{
  if (qword_280282940 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  swift_beginAccess();
  v6 = 0;
  v7 = qword_28028B200;
  v8 = *(qword_28028B200 + 16);
  v9 = (qword_28028B200 + 40);
  while (v8 != v6)
  {
    v10 = *(v9 - 1) == a1 && *v9 == a2;
    if (v10 || (sub_2685691C0() & 1) != 0)
    {
      swift_beginAccess();
      sub_2684D0978(v6);
      goto LABEL_14;
    }

    ++v6;
    v9 += 3;
  }

  if (*(v7 + 16) < 0xAuLL)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_11();
  sub_2684D0A18();
LABEL_14:
  swift_endAccess();

LABEL_15:
  swift_beginAccess();

  sub_268524114();
  v11 = *(qword_28028B200 + 16);
  sub_2685241A0(v11);
  v12 = qword_28028B200;
  *(qword_28028B200 + 16) = v11 + 1;
  v13 = v12 + 24 * v11;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *(v13 + 48) = a3;
  qword_28028B200 = v12;
  return swift_endAccess();
}

void sub_2684D0978(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26852425C(v3);
    v3 = v10;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    v6 = v3 + 24 * a1;
    v7 = *(v6 + 32);
    v6 += 32;
    v8 = *(v6 + 16);
    v9 = *(v6 + 8);
    sub_26854C574((v6 + 24), v4 - 1 - a1, v6);
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

uint64_t sub_2684D0A18()
{
  v1 = *v0;
  if (*(*v0 + 16))
  {
    v2 = v1[4];
    v3 = v1[5];
    v4 = v1[6];

    sub_2684D1350(0, 1);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2684D0A7C(uint64_t a1, uint64_t a2)
{
  if (qword_280282940 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  swift_beginAccess();
  v4 = 0;
  v5 = *(qword_28028B200 + 16);
  v6 = (qword_28028B200 + 40);
  while (v5 != v4)
  {
    v7 = *(v6 - 1) == a1 && *v6 == a2;
    if (v7 || (sub_2685691C0() & 1) != 0)
    {
      OUTLINED_FUNCTION_11();
      sub_2684D0978(v4);
      v9 = v8;
      v11 = v10;
      v13 = v12;
      sub_268524114();
      v14 = *(qword_28028B200 + 16);
      sub_2685241A0(v14);
      v15 = qword_28028B200;
      *(qword_28028B200 + 16) = v14 + 1;
      v16 = (v15 + 24 * v14);
      v16[4] = v9;
      v16[5] = v11;
      v16[6] = v13;
      qword_28028B200 = v15;
      swift_endAccess();
      return v13;
    }

    ++v4;
    v6 += 3;
  }

  return 0;
}

uint64_t sub_2684D0BE0(uint64_t a1, unint64_t a2)
{
  v33 = sub_2685692D0();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v33);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_268567450();
  v9 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v38 = 0xE000000000000000;
  v13 = HIBYTE(a2) & 0xF;
  v39 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v34 = v13;
  if (v13)
  {
    v14 = 0;
    v29[1] = v2;
    v30 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v15 = (v10 + 8);
    v31 = a2 & 0xFFFFFFFFFFFFFFLL;
    v32 = (v5 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_268568FC0();
        v20 = v19;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v36[0] = v39;
          v36[1] = v31;
          v17 = v36 + v14;
          v18 = *(v36 + v14);
          if (*(v36 + v14) < 0)
          {
            switch(__clz(v18 ^ 0xFF))
            {
              case 0x1Au:
LABEL_21:
                v25 = v17[1] & 0x3F | ((v18 & 0x1F) << 6);
                v20 = 2;
                break;
              case 0x1Bu:
LABEL_22:
                v26 = ((v18 & 0xF) << 12) | ((v17[1] & 0x3F) << 6) | v17[2] & 0x3Fu;
                v20 = 3;
                break;
              case 0x1Cu:
LABEL_23:
                v27 = ((v18 & 0xF) << 18) | ((v17[1] & 0x3F) << 12) | ((v17[2] & 0x3F) << 6) | v17[3] & 0x3Fu;
                v20 = 4;
                break;
              default:
                goto LABEL_13;
            }

            goto LABEL_14;
          }
        }

        else
        {
          v16 = v30;
          if ((v39 & 0x1000000000000000) == 0)
          {
            v16 = sub_268569010();
          }

          v17 = (v16 + v14);
          v18 = *(v16 + v14);
          if (*(v16 + v14) < 0)
          {
            switch(__clz(v18 ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_21;
              case 0x1Bu:
                goto LABEL_22;
              case 0x1Cu:
                goto LABEL_23;
              default:
                break;
            }
          }
        }

LABEL_13:
        v20 = 1;
      }

LABEL_14:
      sub_2685673E0();
      v21 = sub_268567430();
      (*v15)(v12, v35);
      if (v21 & 1) != 0 || (sub_2685692E0(), v22 = sub_2685692C0(), v23 = *v32, (*v32)(v8, v33), (v22) || (sub_2685692E0(), v24 = sub_2685692B0(), v23(v8, v33), (v24))
      {
        sub_268568BF0();
      }

      v14 += v20;
      if (v14 >= v34)
      {

        return v37;
      }
    }
  }

  return 0;
}

id sub_2684D0FA0(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = [v1 initWithTypes:a1 error:v7];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_2685674D0();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_2684D105C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2684D1154;

  return v7(a1);
}

uint64_t sub_2684D1154()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t type metadata accessor for ContentProcessor()
{
  result = qword_280282AA8;
  if (!qword_280282AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2684D1288(uint64_t a1)
{
  v2 = type metadata accessor for EmojiFormatter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2684D130C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_2684D1350(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_26854C6CC(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 24 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A88, &qword_26856A028);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_26854C574((v9 + 24 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2684D1444()
{
  v1 = sub_2685689D0();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A90, &unk_26856A030);
  OUTLINED_FUNCTION_1(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x2821FE8E8](v0, v14 + v15, v16 | 7);
}

void sub_2684D1580(void *a1, double a2)
{
  v4 = *(sub_2685689D0() - 8);
  v5 = ((*(v4 + 80) + 16) & ~*(v4 + 80)) + *(v4 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A90, &unk_26856A030);
  OUTLINED_FUNCTION_10(v6);
  v8 = *(v7 + 80);

  sub_2684D03CC(a1, a2);
}

unint64_t sub_2684D166C()
{
  result = qword_280282A98;
  if (!qword_280282A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282A98);
  }

  return result;
}

uint64_t sub_2684D16C0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2684D1700()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2684D1760()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[10];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_6(v5);
  *v6 = v7;
  v6[1] = sub_2684D1820;

  return sub_2685348A4();
}

uint64_t sub_2684D1820()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_2684D1904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684D199C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2684D19FC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_0(v4);

  return v7(v6);
}

uint64_t sub_2684D1A94()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2684D1ACC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_0(v4);

  return v7(v6);
}

uint64_t sub_2684D1B64(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  v7 = *v3;
  result = sub_2684D1C14(*v3);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = a2 - v6;
  if (__OFSUB__(a2, v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = 1 - v8;
  if (__OFSUB__(1, v8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_2684DEAF0(v7);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_26854CA8C(result, 1);

  return sub_2684D1C38(v6, a2, 1, a3);
}

uint64_t sub_2684D1C14(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_2685690A0();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_2684D1C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a4;
  v7 = a3;
  v8 = a2;
  v6 = a1;
  v13 = *v5;
  v10 = *v5 & 0xFFFFFFFFFFFFFF8;
  v11 = v10 + 32;
  v9 = v10 + 32 + 8 * a1;
  type metadata accessor for ReadNotification();
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v7, v12);
  v12 = v7 - v12;
  if (v15)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = (v9 + 8 * v7);
  if (!v12)
  {
    goto LABEL_12;
  }

  v9 = v13 >> 62;
  if (!(v13 >> 62))
  {
    result = *(v10 + 16);
    goto LABEL_6;
  }

LABEL_21:
  result = sub_2685690A0();
LABEL_6:
  if (__OFSUB__(result, v8))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  sub_26854CA88(v11 + 8 * v8, result - v8, v5);
  if (v9)
  {
    result = sub_2685690A0();
  }

  else
  {
    result = *(v10 + 16);
  }

  if (__OFADD__(result, v12))
  {
    goto LABEL_23;
  }

  *(v10 + 16) = result + v12;
LABEL_12:
  if (v7 < 1)
  {
  }

  else
  {
    v16 = v10 + 8 * v6;
    *(v16 + 32) = v4;
    if (v16 + 40 < v5)
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2684D1DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_268567690();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2684D1E44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_268567690();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2684D1EC4()
{
  result = sub_268567690();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_8()
{

  return sub_268568F10();
}

uint64_t OUTLINED_FUNCTION_11()
{

  return swift_beginAccess();
}

uint64_t sub_2684D2024()
{
  v1 = OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_title;
  v2 = sub_268568810();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  OUTLINED_FUNCTION_6_0(OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_subtitle);
  OUTLINED_FUNCTION_6_0(OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_body);
  OUTLINED_FUNCTION_6_0(OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_notificationId);
  OUTLINED_FUNCTION_6_0(OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_appId);
  OUTLINED_FUNCTION_6_0(OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_appName);
  *(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isMessage) = 0;
  *(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isDM) = 0;
  *(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isMail) = 0;
  *(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isReminder) = 0;
  *(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isHighlight) = 0;
  OUTLINED_FUNCTION_6_0(OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_highlight);
  OUTLINED_FUNCTION_6_0(OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_stackSummary);
  *(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_containsStackSummary) = 0;
  OUTLINED_FUNCTION_6_0(OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_senderDisplayName);
  *(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_containsHighlightSummary) = 0;
  OUTLINED_FUNCTION_6_0(OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_threadId);
  return v0;
}

uint64_t sub_2684D2134()
{
  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_title);
  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_subtitle);
  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_body);
  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_notificationId);
  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_appId);
  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_appName);
  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_highlight);
  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_stackSummary);
  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_senderDisplayName);
  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_threadId);
  return v0;
}

uint64_t sub_2684D2228(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_21(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_title);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_21(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_subtitle);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_21(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_body);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_21(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_notificationId);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_21(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_appId);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_21(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_appName);
  *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isMessage) = *(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isMessage);
  *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isDM) = *(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isDM);
  *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isMail) = *(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isMail);
  *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isReminder) = *(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isReminder);
  *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isHighlight) = *(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isHighlight);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_21(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_highlight);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_21(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_stackSummary);
  *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsStackSummary) = *(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_containsStackSummary);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_21(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName);
  *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsHighlightSummary) = *(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_containsHighlightSummary);
  v7 = OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_threadId;
  OUTLINED_FUNCTION_20();
  sub_2684D4298(a1 + v7, v6);

  sub_2684D4308(v6, v1 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_threadId);
  return v1;
}

uint64_t sub_2684D24B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v78 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_27();
  v76 = v9;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v75 = v11;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19();
  v74 = v13;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v73 - v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_28();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v73 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v73 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v73 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v73 - v29;
  v31 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v31 || (OUTLINED_FUNCTION_8_0() & 1) != 0)
  {
    v32 = OUTLINED_FUNCTION_16(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_title);
    sub_2684D4298(v32, v30);
    sub_268568810();
    OUTLINED_FUNCTION_2_1(v30);
    if (!v31)
    {
      goto LABEL_125;
    }

    v33 = v30;
    goto LABEL_9;
  }

  v36 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
  if (v36 || (OUTLINED_FUNCTION_8_0() & 1) != 0)
  {
    v37 = OUTLINED_FUNCTION_16(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_subtitle);
    sub_2684D4298(v37, v28);
    sub_268568810();
    OUTLINED_FUNCTION_2_1(v28);
    if (!v31)
    {
      goto LABEL_125;
    }

    v33 = v28;
    goto LABEL_9;
  }

  v38 = a1 == 2036625250 && a2 == 0xE400000000000000;
  if (v38 || (OUTLINED_FUNCTION_8_0() & 1) != 0)
  {
    v39 = OUTLINED_FUNCTION_16(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_body);
    sub_2684D4298(v39, v25);
    sub_268568810();
    OUTLINED_FUNCTION_2_1(v25);
    if (!v31)
    {
      goto LABEL_125;
    }

    v33 = v25;
    goto LABEL_9;
  }

  v41 = a1 == OUTLINED_FUNCTION_23() && a2 == v40;
  if (v41 || (OUTLINED_FUNCTION_8_0() & 1) != 0)
  {
    v42 = OUTLINED_FUNCTION_16(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_notificationId);
    sub_2684D4298(v42, v22);
    v43 = sub_268568810();
    if (__swift_getEnumTagSinglePayload(v22, 1, v43) != 1)
    {
      v44 = v78;
      v78[3] = v43;
      __swift_allocate_boxed_opaque_existential_0(v44);
      v45 = *(*(v43 - 8) + 32);
      return v45();
    }

    v33 = v22;
    goto LABEL_9;
  }

  v46 = a1 == 0x6449707061 && a2 == 0xE500000000000000;
  if (v46 || (OUTLINED_FUNCTION_8_0() & 1) != 0)
  {
    v47 = OUTLINED_FUNCTION_16(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_appId);
    sub_2684D4298(v47, v4);
    sub_268568810();
    OUTLINED_FUNCTION_2_1(v4);
    if (!v31)
    {
      goto LABEL_125;
    }

    v33 = v4;
    goto LABEL_9;
  }

  v48 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
  if (v48 || (OUTLINED_FUNCTION_8_0() & 1) != 0)
  {
    v49 = OUTLINED_FUNCTION_16(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_appName);
    sub_2684D4298(v49, v18);
    sub_268568810();
    OUTLINED_FUNCTION_2_1(v18);
    if (!v31)
    {
      goto LABEL_125;
    }

    v33 = v18;
    goto LABEL_9;
  }

  result = 0x67617373654D7369;
  v50 = a1 == 0x67617373654D7369 && a2 == 0xE900000000000065;
  if (v50 || (result = OUTLINED_FUNCTION_8_0(), (result & 1) != 0))
  {
    v51 = OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isMessage;
  }

  else
  {
    v54 = a1 == 1296331625 && a2 == 0xE400000000000000;
    if (v54 || (result = OUTLINED_FUNCTION_8_0(), (result & 1) != 0))
    {
      v51 = OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isDM;
    }

    else
    {
      result = 0x6C69614D7369;
      v55 = a1 == 0x6C69614D7369 && a2 == 0xE600000000000000;
      if (v55 || (result = OUTLINED_FUNCTION_8_0(), (result & 1) != 0))
      {
        v51 = OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isMail;
      }

      else
      {
        result = 0x646E696D65527369;
        v56 = a1 == 0x646E696D65527369 && a2 == 0xEA00000000007265;
        if (v56 || (result = OUTLINED_FUNCTION_8_0(), (result & 1) != 0))
        {
          v51 = OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isReminder;
        }

        else
        {
          result = OUTLINED_FUNCTION_25();
          v58 = a1 == result && a2 == v57;
          if (v58 || (result = OUTLINED_FUNCTION_8_0(), (result & 1) != 0))
          {
            v51 = OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isHighlight;
          }

          else
          {
            v59 = a1 == 0x6867696C68676968 && a2 == 0xE900000000000074;
            if (v59 || (OUTLINED_FUNCTION_8_0() & 1) != 0)
            {
              v60 = OUTLINED_FUNCTION_16(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_highlight);
              sub_2684D4298(v60, v3);
              sub_268568810();
              OUTLINED_FUNCTION_2_1(v3);
              if (!v31)
              {
                goto LABEL_125;
              }

              v33 = v3;
              goto LABEL_9;
            }

            v62 = a1 == OUTLINED_FUNCTION_24() && a2 == v61;
            if (v62 || (OUTLINED_FUNCTION_8_0() & 1) != 0)
            {
              v63 = OUTLINED_FUNCTION_16(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_stackSummary);
              v64 = v74;
              sub_2684D4298(v63, v74);
              sub_268568810();
              OUTLINED_FUNCTION_2_1(v64);
              if (!v31)
              {
                goto LABEL_125;
              }

              v33 = v74;
              goto LABEL_9;
            }

            result = 0xD000000000000014;
            v65 = a1 == 0xD000000000000014 && 0x8000000268570F30 == a2;
            if (v65 || (result = OUTLINED_FUNCTION_8_0(), (result & 1) != 0))
            {
              v51 = OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsStackSummary;
            }

            else
            {
              v66 = a1 == 0xD000000000000011 && 0x8000000268570F50 == a2;
              if (v66 || (OUTLINED_FUNCTION_8_0() & 1) != 0)
              {
                v67 = OUTLINED_FUNCTION_16(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName);
                v68 = v75;
                sub_2684D4298(v67, v75);
                sub_268568810();
                OUTLINED_FUNCTION_2_1(v68);
                if (!v31)
                {
                  goto LABEL_125;
                }

                v33 = v75;
                goto LABEL_9;
              }

              result = 0xD000000000000018;
              if (a1 != 0xD000000000000018 || 0x8000000268570F70 != a2)
              {
                result = OUTLINED_FUNCTION_8_0();
                if ((result & 1) == 0)
                {
                  if (a1 != 0x6449646165726874 || a2 != 0xE800000000000000)
                  {
                    result = OUTLINED_FUNCTION_8_0();
                    if ((result & 1) == 0)
                    {
                      goto LABEL_10;
                    }
                  }

                  v71 = v76;
                  sub_2684D4298(v77 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_threadId, v76);
                  sub_268568810();
                  OUTLINED_FUNCTION_2_1(v71);
                  if (!v31)
                  {
LABEL_125:
                    OUTLINED_FUNCTION_22();
                    OUTLINED_FUNCTION_4_1();
                    v45 = *(v72 + 32);
                    return v45();
                  }

                  v33 = v76;
LABEL_9:
                  result = sub_2684D4378(v33);
LABEL_10:
                  v35 = v78;
                  *v78 = 0u;
                  *(v35 + 1) = 0u;
                  return result;
                }
              }

              v51 = OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsHighlightSummary;
            }
          }
        }
      }
    }
  }

  v52 = v78;
  v53 = *(v77 + v51);
  v78[3] = MEMORY[0x277D839B0];
  *v52 = v53;
  return result;
}

uint64_t sub_2684D2CF4()
{
  v0 = sub_2685691F0();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2684D2D60(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656C746974627573;
      break;
    case 2:
      result = 2036625250;
      break;
    case 3:
      result = OUTLINED_FUNCTION_23();
      break;
    case 4:
      result = 0x6449707061;
      break;
    case 5:
      result = 0x656D614E707061;
      break;
    case 6:
      result = 0x67617373654D7369;
      break;
    case 7:
      result = 1296331625;
      break;
    case 8:
      result = 0x6C69614D7369;
      break;
    case 9:
      result = 0x646E696D65527369;
      break;
    case 10:
      result = OUTLINED_FUNCTION_25();
      break;
    case 11:
      result = 0x6867696C68676968;
      break;
    case 12:
      result = OUTLINED_FUNCTION_24();
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 16:
      result = 0x6449646165726874;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2684D2F8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2684D2CF4();
  *a2 = result;
  return result;
}

uint64_t sub_2684D2FBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2684D2D60(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2684D2FF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2684D2D48();
  *a1 = result;
  return result;
}

uint64_t sub_2684D3024(uint64_t a1)
{
  v2 = sub_2684D4424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2684D3060(uint64_t a1)
{
  v2 = sub_2684D4424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2684D309C()
{
  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_title);
  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_subtitle);
  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_body);
  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_notificationId);
  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_appId);
  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_appName);
  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_highlight);
  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_stackSummary);
  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName);
  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_threadId);
  return v0;
}

uint64_t sub_2684D3174(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_2684D31F8()
{
  sub_2684D3618();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2684D32B8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282B10, &qword_26856A1F0);
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v24[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2684D4424();
  sub_2685692A0();
  v24[15] = 0;
  sub_268568810();
  OUTLINED_FUNCTION_14();
  sub_2684D4250(v14, v15);
  sub_268569140();
  if (!v2)
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
    v16 = *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isMessage);
    OUTLINED_FUNCTION_3_1(6);
    v17 = *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isDM);
    OUTLINED_FUNCTION_3_1(7);
    v18 = *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isMail);
    OUTLINED_FUNCTION_3_1(8);
    v19 = *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isReminder);
    OUTLINED_FUNCTION_3_1(9);
    v20 = *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isHighlight);
    OUTLINED_FUNCTION_3_1(10);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
    v21 = *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsStackSummary);
    OUTLINED_FUNCTION_3_1(13);
    OUTLINED_FUNCTION_0_1();
    v22 = *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsHighlightSummary);
    OUTLINED_FUNCTION_3_1(15);
    OUTLINED_FUNCTION_0_1();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_2684D35C8(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_2684D3784(a1);
  return v5;
}

void sub_2684D3618()
{
  if (!qword_280282AC8)
  {
    sub_268568810();
    v0 = sub_268568EB0();
    if (!v1)
    {
      atomic_store(v0, &qword_280282AC8);
    }
  }
}

uint64_t sub_2684D3698(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2684D36D0()
{
  sub_2684D3618();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2684D3784(uint64_t *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_27();
  v61 = v7;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  v62 = v9;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v63 = v11;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19();
  v64 = v13;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  v65 = v15;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_28();
  v18 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v61 - v21;
  MEMORY[0x28223BE20](v20);
  v66 = &v61 - v23;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF8, &qword_26856A1E8);
  v24 = OUTLINED_FUNCTION_1(v69);
  v67 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  v29 = &v61 - v28;
  v71 = a1;
  v72 = v1;
  *(v1 + 16) = 0;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2684D4424();
  v68 = v29;
  v31 = v70;
  sub_268569290();
  if (v31)
  {
    v59 = v72;

    v35 = v71;
    type metadata accessor for NotificationsNotification(0);
    v36 = *(*v59 + 48);
    v37 = *(*v59 + 52);
    swift_deallocPartialClassInstance();
    v60 = v35;
  }

  else
  {
    v70 = v3;
    sub_268568810();
    v73 = 0;
    OUTLINED_FUNCTION_14();
    sub_2684D4250(v32, v33);
    v34 = v66;
    sub_2685690F0();
    OUTLINED_FUNCTION_15(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_title);
    sub_2684D4308(v34, v39);
    OUTLINED_FUNCTION_11_0(1);
    OUTLINED_FUNCTION_12();
    sub_2685690F0();
    OUTLINED_FUNCTION_15(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_subtitle);
    sub_2684D4308(v22, v40);
    OUTLINED_FUNCTION_11_0(2);
    OUTLINED_FUNCTION_12();
    v66 = 0;
    sub_2685690F0();
    OUTLINED_FUNCTION_15(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_body);
    sub_2684D4308(v2, v41);
    OUTLINED_FUNCTION_11_0(3);
    OUTLINED_FUNCTION_12();
    sub_2685690F0();
    OUTLINED_FUNCTION_15(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_notificationId);
    sub_2684D4308(0, v42);
    OUTLINED_FUNCTION_11_0(4);
    v43 = v70;
    OUTLINED_FUNCTION_12();
    sub_2685690F0();
    OUTLINED_FUNCTION_15(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_appId);
    sub_2684D4308(v43, v44);
    OUTLINED_FUNCTION_11_0(5);
    v45 = v65;
    OUTLINED_FUNCTION_12();
    sub_2685690F0();
    OUTLINED_FUNCTION_15(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_appName);
    sub_2684D4308(v45, v46);
    OUTLINED_FUNCTION_18(6);
    v47 = sub_268569110();
    OUTLINED_FUNCTION_7_0(v47, OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isMessage);
    OUTLINED_FUNCTION_18(7);
    v48 = sub_268569110();
    OUTLINED_FUNCTION_7_0(v48, OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isDM);
    OUTLINED_FUNCTION_18(8);
    v49 = sub_268569110();
    OUTLINED_FUNCTION_7_0(v49, OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isMail);
    OUTLINED_FUNCTION_18(9);
    v50 = sub_268569110();
    OUTLINED_FUNCTION_7_0(v50, OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isReminder);
    OUTLINED_FUNCTION_18(10);
    v51 = sub_268569110();
    OUTLINED_FUNCTION_7_0(v51, OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isHighlight);
    OUTLINED_FUNCTION_11_0(11);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_15(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_highlight);
    sub_2684D4308(v64, v52);
    OUTLINED_FUNCTION_11_0(12);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_15(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_stackSummary);
    sub_2684D4308(v63, v53);
    OUTLINED_FUNCTION_18(13);
    v54 = sub_268569110();
    OUTLINED_FUNCTION_7_0(v54, OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsStackSummary);
    OUTLINED_FUNCTION_11_0(14);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_15(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName);
    sub_2684D4308(v62, v55);
    OUTLINED_FUNCTION_18(15);
    v56 = sub_268569110();
    OUTLINED_FUNCTION_7_0(v56, OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsHighlightSummary);
    OUTLINED_FUNCTION_11_0(16);
    OUTLINED_FUNCTION_10_0();
    v57 = OUTLINED_FUNCTION_13();
    v58(v57);
    v59 = v72;
    sub_2684D4308(v61, v72 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_threadId);
    v60 = v71;
  }

  __swift_destroy_boxed_opaque_existential_0(v60);
  return v59;
}

void *sub_2684D4060()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_2684D40A8(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t (*sub_2684D40F4())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2684D4170@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2684D35C8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2684D4250(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2684D4298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684D4308(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684D4378(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2684D4424()
{
  result = qword_280282B00;
  if (!qword_280282B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282B00);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for NotificationsNotification.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NotificationsNotification.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
        JUMPOUT(0x2684D462CLL);
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2684D4668()
{
  result = qword_280282B20;
  if (!qword_280282B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282B20);
  }

  return result;
}

unint64_t sub_2684D46C0()
{
  result = qword_280282B28;
  if (!qword_280282B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282B28);
  }

  return result;
}

unint64_t sub_2684D4718()
{
  result = qword_280282B30;
  if (!qword_280282B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282B30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1()
{
  *(v1 - 65) = v0;

  return sub_268569140();
}

uint64_t OUTLINED_FUNCTION_3_1@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;

  return sub_268569160();
}

uint64_t OUTLINED_FUNCTION_6_0@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return sub_2685691C0();
}

uint64_t OUTLINED_FUNCTION_10_0()
{
  v3 = *(v0 - 120);
  v2 = *(v0 - 112);

  return sub_2685690F0();
}

uint64_t OUTLINED_FUNCTION_13()
{
  result = *(v0 - 120);
  v2 = *(*(v0 - 128) + 8);
  v3 = *(v0 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_20()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21@<X0>(uint64_t a1@<X8>)
{

  return sub_2684D4298(v1 + v3, v2 + a1);
}

uint64_t *OUTLINED_FUNCTION_22()
{
  v3 = *(v1 - 88);
  v3[3] = v0;

  return __swift_allocate_boxed_opaque_existential_0(v3);
}

uint64_t sub_2684D4A5C()
{
  sub_268569260();
  MEMORY[0x26D61C3F0](0);
  return sub_268569280();
}

uint64_t sub_2684D4AAC()
{
  sub_268569260();
  MEMORY[0x26D61C3F0](0);
  return sub_268569280();
}

uint64_t sub_2684D4AF4()
{
  type metadata accessor for NotificationsFeatureFlags();
  result = swift_initStaticObject();
  static NotificationsFeatureFlags.shared = result;
  return result;
}

uint64_t *NotificationsFeatureFlags.shared.unsafeMutableAddressor()
{
  if (qword_280282948 != -1)
  {
    swift_once();
  }

  return &static NotificationsFeatureFlags.shared;
}

uint64_t static NotificationsFeatureFlags.shared.getter()
{
  type metadata accessor for NotificationsFeatureFlags();

  return swift_initStaticObject();
}

uint64_t sub_2684D4BC4()
{
  v2[3] = &type metadata for SiriNotificationsFeatures;
  v2[4] = sub_2684D4C2C();
  v0 = sub_2685680D0();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v0 & 1;
}

unint64_t sub_2684D4C2C()
{
  result = qword_280282B38;
  if (!qword_280282B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282B38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriNotificationsFeatures(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for SiriNotificationsFeatures(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2684D4D70);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2684D4DAC()
{
  result = qword_280282B40;
  if (!qword_280282B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282B40);
  }

  return result;
}

uint64_t sub_2684D4E00()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282B78, &qword_26856A528);
  return sub_268568B70();
}

void *sub_2684D4E64(uint64_t a1, uint64_t a2)
{
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = a1;
  sub_2684CC878(a2, (v2 + 5));
  sub_2684CC878(a2, v16);
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v13[3] = &type metadata for ProtectedAppCheck;
  v13[4] = &off_2879195A0;
  v4 = type metadata accessor for ANReadNotificationAction();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v13, &type metadata for ProtectedAppCheck);

  v9 = sub_2684D52D8(v8, v16, v14, v7);
  sub_2684CC8D4(a2);
  __swift_destroy_boxed_opaque_existential_0(v13);
  v10 = sub_2684D58C8(&qword_280282B50, 255, type metadata accessor for ANReadNotificationAction);
  v11 = v2[2];
  v2[2] = v9;
  v2[3] = v10;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_2684D4F7C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2685675E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v1 + 32);
  if (sub_268503B1C())
  {

    sub_2684CC878(v2 + 40, v24);
    type metadata accessor for ANReadNotificationsActionGroup();
    v10 = swift_allocObject();

    sub_2684D4E64(v11, v24);
    v13 = &unk_280282B70;
    v14 = type metadata accessor for ANReadNotificationsActionGroup;
  }

  else
  {
    sub_2685199D0();
    if (v15)
    {
      v17 = v15;
      v18 = v16;
      sub_2685675D0();
      sub_268519BA8();

      (*(v5 + 8))(v8, v4);
    }

    sub_2684CC878(v2 + 40, v24);
    type metadata accessor for ANReadSpokenHintActionGroup();
    swift_allocObject();

    v10 = sub_2684F8238(v19, v24);
    v13 = &unk_280282B68;
    v14 = type metadata accessor for ANReadSpokenHintActionGroup;
    v12 = 255;
  }

  v20 = sub_2684D58C8(v13, v12, v14);
  *a1 = v10;
  a1[1] = v20;
  v21 = *MEMORY[0x277D5BF58];
  v22 = sub_268567E80();
  (*(*(v22 - 8) + 104))(a1, v21, v22);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v22);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void *sub_2684D52D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_2685689F0();
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v8);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268567690();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2685688F0();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v39[3] = &type metadata for ProtectedAppCheck;
  v39[4] = &off_2879195A0;
  a4[2] = 0;
  v18 = a4 + 2;
  a4[3] = 0;
  a4[4] = a1;
  sub_2684D57FC(a2 + 40, (a4 + 5));
  sub_2684D57FC(a2, (a4 + 10));
  sub_2684D57FC(a2 + 80, (a4 + 15));
  v36 = a3;
  sub_2684D578C(a3, (a4 + 20));
  sub_2684CC878(a2, (a4 + 26));
  type metadata accessor for ReadNotificationsCATs();

  sub_2685688E0();
  sub_2685686F0();
  sub_2684D57FC((a4 + 5), &v37);
  sub_2685686B0();
  a4[25] = sub_268568710();
  sub_2684D57FC((a4 + 5), &v37);
  __swift_project_boxed_opaque_existential_1(&v37, v38);
  sub_268567A70();
  (*(v12 + 32))(a4 + OBJC_IVAR____TtC24SiriNotificationsIntents24ANReadNotificationAction_locale, v15, v11);
  __swift_destroy_boxed_opaque_existential_0(&v37);
  sub_2684D57FC(v39, a4 + OBJC_IVAR____TtC24SiriNotificationsIntents24ANReadNotificationAction_protectedAppChecker);
  v19 = *(a2 + 120);
  if (sub_2684D4BC4() & 1) != 0 && sub_268503B1C() && (v20 = sub_268541488(), , (v20))
  {
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v21 = v35;
    v22 = __swift_project_value_buffer(v35, qword_28028B348);
    v24 = v33;
    v23 = v34;
    (*(v34 + 16))(v33, v22, v21);
    v25 = sub_2685689E0();
    v26 = sub_268568DC0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2684CA000, v25, v26, "ANReadNotificationAction#run Skipping appending to prompt", v27, 2u);
      MEMORY[0x26D61CB30](v27, -1, -1);
    }

    sub_2684D5860(v36);
    (*(v23 + 8))(v24, v21);
    __swift_destroy_boxed_opaque_existential_0(v39);
    sub_2684CC8D4(a2);
    swift_beginAccess();
    v28 = *v18;
    *v18 = 0;
    a4[3] = 0;
  }

  else
  {
    sub_2684D5860(v36);
    __swift_destroy_boxed_opaque_existential_0(v39);
    sub_2684D57FC((a4 + 10), &v37);
    type metadata accessor for ANAppendNotificationAction();
    swift_allocObject();
    v29 = sub_2684D6C9C(a1, &v37);
    sub_2684CC8D4(a2);
    v30 = sub_2684D58C8(&qword_280282B60, 255, type metadata accessor for ANAppendNotificationAction);
    swift_beginAccess();
    v31 = a4[2];
    a4[2] = v29;
    a4[3] = v30;
  }

  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_2684D578C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282B58, &qword_26856A520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684D57FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2684D5860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282B58, &qword_26856A520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2684D58C8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2684D5920()
{
  v0 = sub_2685689F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v5 = __swift_project_value_buffer(v0, qword_28028B348);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2685689E0();
  v7 = sub_268568DC0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2684CA000, v6, v7, "GuardedFlow on | returning true", v8, 2u);
    MEMORY[0x26D61CB30](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 1;
}

uint64_t sub_2684D5AA0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_2685689F0();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2684D5B60, 0, 0);
}

uint64_t sub_2684D5B60()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_28028B348);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2685689E0();
  v6 = sub_268568DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "GuardedFlow executing | executing flow with guards", v7, 2u);
    MEMORY[0x26D61CB30](v7, -1, -1);
  }

  v9 = v0[8];
  v8 = v0[9];
  v11 = v0[6];
  v10 = v0[7];
  v12 = v0[5];

  (*(v9 + 8))(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282B80, &qword_26856A608);
  v13 = *(sub_268567800() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_26856A540;
  sub_2685677E0();
  v16 = sub_2685676E0();

  v0[2] = v11;
  v0[3] = v16;
  sub_268567790();
  sub_2685677C0();
  v0[4] = sub_268567930();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282B88, &unk_26856A610);
  sub_2684D60BC();
  sub_268567C20();

  v17 = v0[1];

  return v17();
}

uint64_t sub_2684D5E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2684D5F10;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2684D5F10(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2684D6014(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2684CEB80;

  return sub_2684D5AA0(a1, v4);
}

unint64_t sub_2684D60BC()
{
  result = qword_280282B90;
  if (!qword_280282B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280282B88, &unk_26856A610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282B90);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2684D6168()
{
  result = qword_280282B98;
  if (!qword_280282B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282B98);
  }

  return result;
}

BOOL sub_2684D61BC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2685692D0();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = v25 - v10;
  v12 = HIBYTE(a2) & 0xF;
  v25[0] = a1;
  v25[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v25[2] = 0;
  v25[3] = v12;
  v13 = (v9 + 8);

  while (1)
  {
    v14 = sub_268568C30();
    v16 = v15;
    if (!v15)
    {
      break;
    }

    v17 = v14;
    v18 = sub_2684D63DC(v14, v15);
    if ((v18 & 0x100000000) == 0)
    {
      v19 = v18;
      sub_2685692E0();
      v20 = sub_2685692C0();
      (*v13)(v11, v4);
      if ((v20 & 1) != 0 && v19 >= 0x238D)
      {

        break;
      }
    }

    v21 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v21 = v17;
    }

    if (((v16 >> 60) & ((v17 & 0x800000000000000) == 0)) != 0)
    {
      v22 = 11;
    }

    else
    {
      v22 = 7;
    }

    if (sub_2684D6724(0xFuLL, v22 | (v21 << 16), v17, v16) < 2 || (sub_2684D63DC(v17, v16) & 0x100000000) != 0)
    {
    }

    else
    {
      sub_2685692E0();
      v23 = sub_2685692C0();

      (*v13)(v8, v4);
      if (v23)
      {
        break;
      }
    }
  }

  return v16 != 0;
}

unint64_t sub_2684D63DC(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_2684D6684(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = sub_268568FC0();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
        v10 = *(v17 + v6);
        if (*(v17 + v6) < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
LABEL_14:
              v10 = v8[1] & 0x3F | ((v10 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_15:
              v11 = v8[1];
              v12 = v8[2];
              v13 = ((v10 & 0xF) << 12) | ((v11 & 0x3F) << 6);
              goto LABEL_17;
            case 0x1Cu:
LABEL_16:
              v14 = v8[1];
              v15 = v8[2];
              v12 = v8[3];
              v13 = ((v10 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
LABEL_17:
              v10 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_268569010();
        }

        v8 = (v7 + v6);
        v9 = *(v7 + v6);
        v10 = *(v7 + v6);
        if (v9 < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_14;
            case 0x1Bu:
              goto LABEL_15;
            case 0x1Cu:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v10 | ((v2 == 0) << 32);
}

uint64_t sub_2684D65D8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

unint64_t sub_2684D6684(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_2684D6930(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_2684D69A0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_2684D6724(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_2684D6B28(a1, a3, a4);
  result = sub_2684D6B28(a2, a3, a4);
  v9 = result >> 14;
  if (v7 >> 14 < result >> 14)
  {
    for (i = 0; ; ++i)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_268568BD0();
        v7 = result;
      }

      else
      {
        v12 = v7 >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v22 + v12);
        }

        else
        {
          result = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            result = sub_268569010();
          }

          v13 = *(result + v12);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        v7 = ((v12 + v15) << 16) | 5;
      }

      if (v9 <= v7 >> 14)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  if (v9 < v7 >> 14)
  {
    v11 = 0;
    while (!__OFSUB__(v11--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_268568BE0();
        v7 = result;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v22 + (v7 >> 16) - 1) & 0xC0) == 0x80)
          {
            v20 = &v22 + (v7 >> 16) - 2;
            v19 = 1;
            do
            {
              ++v19;
              v21 = *v20--;
            }

            while ((v21 & 0xC0) == 0x80);
          }

          else
          {
            v19 = 1;
          }
        }

        else
        {
          result = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            result = sub_268569010();
          }

          v17 = 0;
          do
          {
            v18 = *(result + (v7 >> 16) - 1 + v17--) & 0xC0;
          }

          while (v18 == 128);
          v19 = -v17;
        }

        v7 = (v7 - (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v9 >= v7 >> 14)
      {
        return v11;
      }
    }

    goto LABEL_38;
  }

  return 0;
}

unint64_t sub_2684D6930(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_2684D6AAC(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2684D69A0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v10 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v10 = a2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5 != v10)
      {

        return MEMORY[0x2821FD070]();
      }
    }

    else
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v9 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
        }

        else
        {
          v9 = result >> 16;
        }

        v5 = v9;
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_268569010();
          v5 = v12;
        }

        if (v5 != v7)
        {
          do
          {
            v8 = *(v6 + v5--) & 0xC0;
          }

          while (v8 == 128);
          ++v5;
        }
      }

      return v5 << 16;
    }
  }

  return result;
}

uint64_t sub_2684D6AAC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_268568C70();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D61BDD0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_2684D6B28(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_2684D6BC8(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_2684D69A0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_2684D6BC8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_2684D6AAC(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2684D6C38()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BD0, &unk_26856A730);
  return sub_268568B70();
}

void *sub_2684D6C9C(uint64_t a1, __int128 *a2)
{
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = a1;
  sub_2684D8314(a2, (v2 + 5));
  return v2;
}

uint64_t sub_2684D6CCC()
{
  v1[3] = v0;
  v2 = sub_2685689F0();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2684D6D98, 0, 0);
}

uint64_t sub_2684D6D98()
{
  v1 = v0[3];
  v2 = [objc_allocWithZone(MEMORY[0x277D47618]) init];
  v0[8] = v2;
  v3 = *MEMORY[0x277D48740];
  v4 = sub_268568B20();
  sub_2684D94A0(v4, v5, v2);
  sub_2684D16C0(0, &qword_280282BA8, 0x277CCABB0);
  v6 = sub_268568E50();
  [v2 setSupportsSpokenNotifications_];

  v7 = sub_268568E50();
  [v2 setIsOnDeviceSearch_];

  v8 = *(v1 + 32);
  v9 = sub_268503BF8();
  v10 = v9;
  if (v9)
  {
    v11 = *(v9 + 32);
    v12 = *(v9 + 40);

    v10 = sub_268568B10();
  }

  v13 = v0[3];
  [v2 setAfterNotificationId_];

  v14 = v13[8];
  v15 = v13[9];
  __swift_project_boxed_opaque_existential_1(v13 + 5, v14);
  v16 = *(MEMORY[0x277D5BFB8] + 4);
  v17 = swift_task_alloc();
  v0[9] = v17;
  v18 = sub_2684D16C0(0, &qword_280282BB0, 0x277D471B0);
  *v17 = v0;
  v17[1] = sub_2684D6F74;

  return MEMORY[0x2821BB6A0](v2, v14, v18, v15);
}

uint64_t sub_2684D6F74(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v7 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v5 = sub_2684D73C4;
  }

  else
  {
    v5 = sub_2684D7088;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2684D7088()
{
  v45 = v0;
  v1 = v0[10];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = v0[10];
  if (v2)
  {
    v4 = v0[7];
    v5 = v0[8];
    v6 = v0[6];
    v7 = v0[3];
    v8 = sub_2684D9504(v2);
    sub_2684D75A0(v8);

    OUTLINED_FUNCTION_9_1();
  }

  else
  {

    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v10 = v0[7];
    v11 = v0[4];
    v12 = v0[5];
    v13 = __swift_project_value_buffer(v11, qword_28028B348);
    (*(v12 + 16))(v10, v13, v11);
    v14 = sub_2685689E0();
    v15 = sub_268568DC0();
    if (OUTLINED_FUNCTION_13_0(v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2684CA000, v14, v15, "ANAppendNotificationAction run | unable to convert SABaseCommand to SAOnDeviceNotificationsSearchCompleted", v16, 2u);
      OUTLINED_FUNCTION_2();
    }

    v17 = v0[7];
    v18 = v0[4];
    v19 = v0[5];

    (*(v19 + 8))(v17, v18);
    sub_2684D9574();
    v20 = swift_allocError();
    swift_willThrow();
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v22 = v0[5];
    v21 = v0[6];
    __swift_project_value_buffer(v0[4], qword_28028B348);
    v23 = OUTLINED_FUNCTION_10_1();
    v24(v23);
    v25 = v20;
    v26 = sub_2685689E0();
    v27 = sub_268568DE0();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[5];
    v30 = v0[6];
    v31 = v0[4];
    if (v28)
    {
      OUTLINED_FUNCTION_4();
      v32 = OUTLINED_FUNCTION_12_0();
      v44 = v32;
      *v30 = 136315138;
      v0[2] = v20;
      v33 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
      v34 = sub_268568B70();
      v36 = sub_2684EABEC(v34, v35, &v44);

      *(v30 + 4) = v36;
      OUTLINED_FUNCTION_11_1(&dword_2684CA000, v37, v38, "ANAppendNotificationAction run | error: %s");
      __swift_destroy_boxed_opaque_existential_0(v32);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_3_2();

      (*(v29 + 8))(v43, v31);
    }

    else
    {

      (*(v29 + 8))(v30, v31);
    }

    v39 = v0[7];
    v40 = v0[8];
    v41 = v0[6];
    swift_willThrow();

    OUTLINED_FUNCTION_9_1();
  }

  return v9();
}

uint64_t sub_2684D73C4()
{
  v27 = v0;
  v1 = v0[11];
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v3 = v0[5];
  v2 = v0[6];
  __swift_project_value_buffer(v0[4], qword_28028B348);
  v4 = OUTLINED_FUNCTION_10_1();
  v5(v4);
  v6 = v1;
  v7 = sub_2685689E0();
  v8 = sub_268568DE0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[4];
  if (v9)
  {
    OUTLINED_FUNCTION_4();
    v13 = OUTLINED_FUNCTION_12_0();
    v26 = v13;
    *v11 = 136315138;
    v0[2] = v1;
    v14 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v15 = sub_268568B70();
    v17 = sub_2684EABEC(v15, v16, &v26);

    *(v11 + 4) = v17;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v18, v19, "ANAppendNotificationAction run | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_3_2();

    (*(v10 + 8))(v25, v12);
  }

  else
  {

    (*(v10 + 8))(v11, v12);
  }

  v20 = v0[7];
  v21 = v0[8];
  v22 = v0[6];
  swift_willThrow();

  OUTLINED_FUNCTION_9_1();

  return v23();
}

uint64_t sub_2684D75A0(uint64_t a1)
{
  v3 = sub_2685689F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v107 = &v100 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v100 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v100 - v15;
  MEMORY[0x28223BE20](v14);
  v106 = &v100 - v17;
  if (!a1 || !sub_2684DEAF0(a1))
  {
    if (qword_280282960 != -1)
    {
LABEL_64:
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v94 = __swift_project_value_buffer(v3, qword_28028B348);
    (*(v4 + 16))(v8, v94, v3);
    v95 = sub_2685689E0();
    v96 = v3;
    v97 = sub_268568DC0();
    if (OUTLINED_FUNCTION_13_0(v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_2684CA000, v95, v97, "NotificationAppendingAction appendNotifications was not passed any notifications to append", v98, 2u);
      OUTLINED_FUNCTION_2();
    }

    return (*(v4 + 8))(v8, v96);
  }

  v114 = sub_2684F10C8(v18);
  sub_2684D832C(&v114);
  v19 = v114;
  v111 = sub_2684DEAF0(v114);
  if (!v111)
  {
  }

  v21 = *(v1 + 32);
  v109 = v4 + 16;
  v110 = v19 & 0xC000000000000001;
  v108 = (v4 + 8);
  v4 = 4;
  *&v20 = 138412290;
  v100 = v20;
  *&v20 = 136315138;
  v102 = v20;
  v104 = v3;
  v105 = v13;
  v101 = v16;
  v112 = v21;
  v103 = v19;
  while (1)
  {
    v8 = v110;
    sub_2684DEAFC(v4 - 4, v110 == 0, v19);
    if (v8)
    {
      v22 = MEMORY[0x26D61C170](v4 - 4, v19);
    }

    else
    {
      v22 = *(v19 + 8 * v4);
    }

    v23 = v22;
    if (__OFADD__(v4 - 4, 1))
    {
      __break(1u);
      goto LABEL_64;
    }

    v113 = v4 - 3;
    v24 = sub_268503BF8();
    if (v24)
    {
      v26 = *(v24 + 16);
      v25 = *(v24 + 24);
    }

    else
    {
      v26 = 0;
      v25 = 0;
    }

    v27 = v23;
    v28 = sub_2685565F0(v27);
    if (v25)
    {
      if (v29)
      {
        if (v26 == v28 && v25 == v29)
        {

          v31 = 1;
        }

        else
        {
          v31 = sub_2685691C0();
        }
      }

      else
      {
        v31 = 0;
      }

      goto LABEL_23;
    }

    if (v29)
    {
      v31 = 0;
LABEL_23:

      goto LABEL_24;
    }

    v31 = 1;
LABEL_24:
    v32 = v112;
    v33 = *(sub_268503AA4() + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_announcePlatform);

    v34 = type metadata accessor for AnnounceNotification();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    v37 = swift_allocObject();
    v38 = v27;
    v39 = sub_268541AD0(v38, v31 & 1, v33);
    if (!v39)
    {

      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      __swift_project_value_buffer(v3, qword_28028B348);
      OUTLINED_FUNCTION_1_1();
      v54(v107);
      v55 = v38;
      v56 = sub_2685689E0();
      v57 = sub_268568DC0();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = OUTLINED_FUNCTION_4();
        v59 = swift_slowAlloc();
        *v58 = v100;
        *(v58 + 4) = v55;
        *v59 = v55;
        v60 = v55;
        _os_log_impl(&dword_2684CA000, v56, v57, "NotificationAppendingAction appendNotifications unable to append notification, since notification: %@ is missing required content", v58, 0xCu);
        sub_2684CECB8(v59);
        v3 = v104;
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_2();
      }

      else
      {
        v60 = v56;
        v56 = v55;
      }

      (*v108)(v107, v3);
      goto LABEL_54;
    }

    v40 = v39;
    if ((sub_26850497C(v39) & 1) == 0)
    {
      break;
    }

    v41 = v106;
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    __swift_project_value_buffer(v3, qword_28028B348);
    OUTLINED_FUNCTION_1_1();
    v42(v41);
    v43 = v38;
    v44 = sub_2685689E0();
    v45 = sub_268568DC0();
    if (os_log_type_enabled(v44, v45))
    {
      OUTLINED_FUNCTION_4();
      v46 = OUTLINED_FUNCTION_7_1();
      v37 = OUTLINED_FUNCTION_2_2(v46);
      v48 = v47;

      if (!v48)
      {
        goto LABEL_66;
      }

      v49 = OUTLINED_FUNCTION_6_1();
      v52 = sub_2684EABEC(v49, v50, v51);

      *(v26 + 4) = v52;
      _os_log_impl(&dword_2684CA000, v44, v45, "NotificationAppendingAction appendNotifications unable to append notification, since notification: %s has duplicate content", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_2();

      OUTLINED_FUNCTION_5_1();
      v3 = v104;
      v53(v106, v104);
      v13 = v105;
      v19 = v103;
    }

    else
    {

      OUTLINED_FUNCTION_5_1();
      v77(v41, v3);
      v13 = v105;
      v19 = v103;
    }

LABEL_54:
    ++v4;
    if (v113 == v111)
    {
    }
  }

  v61 = sub_268565290(v38);
  if (v62)
  {
    v63 = sub_268503D28(v61, v62);

    if (v63)
    {
      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      __swift_project_value_buffer(v3, qword_28028B348);
      OUTLINED_FUNCTION_1_1();
      v64(v13);
      v65 = v38;
      v66 = sub_2685689E0();
      v67 = v13;
      v68 = sub_268568DC0();
      if (OUTLINED_FUNCTION_13_0(v68))
      {
        OUTLINED_FUNCTION_4();
        v69 = OUTLINED_FUNCTION_7_1();
        v37 = OUTLINED_FUNCTION_2_2(v69);
        v71 = v70;

        if (!v71)
        {
          goto LABEL_68;
        }

        v72 = OUTLINED_FUNCTION_6_1();
        v75 = sub_2684EABEC(v72, v73, v74);

        *(v26 + 4) = v75;
        _os_log_impl(&dword_2684CA000, v66, v68, "NotificationAppendingAction appendNotifications appending notification: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_2();

        OUTLINED_FUNCTION_5_1();
        v3 = v104;
        v13 = v105;
        v76(v105, v104);
      }

      else
      {

        OUTLINED_FUNCTION_5_1();
        v90 = OUTLINED_FUNCTION_6_1();
        v91(v90);
        v13 = v67;
      }

      sub_268504B7C(v40);
    }

    else
    {
      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      __swift_project_value_buffer(v3, qword_28028B348);
      OUTLINED_FUNCTION_1_1();
      v78(v101);
      v79 = v38;
      v80 = sub_2685689E0();
      v81 = sub_268568DC0();
      if (OUTLINED_FUNCTION_13_0(v81))
      {
        OUTLINED_FUNCTION_4();
        v82 = OUTLINED_FUNCTION_7_1();
        v37 = OUTLINED_FUNCTION_2_2(v82);
        v84 = v83;

        if (!v84)
        {
          goto LABEL_67;
        }

        v85 = OUTLINED_FUNCTION_6_1();
        v88 = sub_2684EABEC(v85, v86, v87);

        *(v26 + 4) = v88;
        _os_log_impl(&dword_2684CA000, v80, v81, "NotificationAppendingAction appendNotifications unable to append notification, since notification: %s is not new", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_2();

        OUTLINED_FUNCTION_5_1();
        v3 = v104;
        v89(v101, v104);
        v13 = v105;
      }

      else
      {

        OUTLINED_FUNCTION_5_1();
        v92 = OUTLINED_FUNCTION_6_1();
        v93(v92);
        v13 = v105;
      }
    }

    goto LABEL_54;
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);

  __break(1u);
  return result;
}

void *sub_2684D7F58()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  return v0;
}

uint64_t sub_2684D7F88()
{
  sub_2684D7F58();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_2684D7FE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_2684D8084()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_2684D80CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684D8158;

  return sub_2684D6CCC();
}

uint64_t sub_2684D8158()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_9_1();

  return v2();
}

uint64_t sub_2684D82D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ANAppendNotificationAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2684D8314(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2684D832C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_268537B94(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2684D83A8(v6);
  return sub_268569030();
}

void sub_2684D83A8(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_268569190();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_268563684(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_2684D86C4(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_2684D8488(0, v3, 1, a1);
  }
}

void sub_2684D8488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = sub_2685675E0();
  v8 = *(*(v39 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v39);
  v38 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v33 = a2;
  if (a3 != a2)
  {
    v14 = *a4;
    v37 = (v11 + 8);
    v40 = v14;
    v15 = v14 + 8 * a3 - 8;
    v16 = a1 - a3;
    while (2)
    {
      v35 = v15;
      v36 = a3;
      v17 = *(v40 + 8 * a3);
      v34 = v16;
      v18 = v16;
      do
      {
        v19 = *v15;
        v20 = v17;
        v21 = v19;
        v22 = [v20 date];
        if (!v22)
        {
          __break(1u);
LABEL_12:
          __break(1u);
LABEL_13:
          __break(1u);
          return;
        }

        v23 = v22;
        sub_2685675C0();

        v24 = [v21 date];
        if (!v24)
        {
          goto LABEL_12;
        }

        v25 = v24;
        v26 = v38;
        sub_2685675C0();

        v41 = sub_268567590();
        v27 = v18;
        v28 = *v37;
        v29 = v26;
        v30 = v39;
        (*v37)(v29, v39);
        v28(v13, v30);

        if ((v41 & 1) == 0)
        {
          break;
        }

        if (!v40)
        {
          goto LABEL_13;
        }

        v31 = *v15;
        v17 = *(v15 + 8);
        *v15 = v17;
        *(v15 + 8) = v31;
        v15 -= 8;
        ++v18;
      }

      while (v27 != -1);
      a3 = v36 + 1;
      v15 = v35 + 8;
      v16 = v34 - 1;
      if (v36 + 1 != v33)
      {
        continue;
      }

      break;
    }
  }
}

void sub_2684D86C4(void ***a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v135 = a1;
  v149 = sub_2685675E0();
  v6 = *(*(v149 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v149);
  v146 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v132 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v139 = &v132 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v15 = MEMORY[0x28223BE20](v14);
  v134 = &v132 - v16;
  MEMORY[0x28223BE20](v15);
  v143 = a3;
  v20 = a3[1];
  if (v20 >= 1)
  {
    v132 = a4;
    v133 = &v132 - v18;
    v138 = v19;
    v21 = 0;
    v148 = (v17 + 8);
    v22 = MEMORY[0x277D84F90];
    v23 = 0x279C3C000uLL;
    while (1)
    {
      v24 = v21;
      v25 = v21 + 1;
      v136 = v24;
      if (v25 < v20)
      {
        v147 = v20;
        v26 = *v143;
        v145 = v25;
        v27 = *(v26 + 8 * v24);
        v28 = *(v26 + 8 * v25);
        v29 = v27;
        v30 = [v28 *(v23 + 2648)];
        if (!v30)
        {
          goto LABEL_140;
        }

        v31 = v30;
        v32 = v24;
        v150 = v28;
        v33 = v133;
        sub_2685675C0();

        v34 = [v29 *(v23 + 2648)];
        if (!v34)
        {
          goto LABEL_141;
        }

        v35 = v34;
        v36 = v134;
        sub_2685675C0();

        LODWORD(v142) = sub_268567590();
        v37 = *v148;
        v38 = v36;
        v39 = v149;
        (*v148)(v38, v149);
        v140 = v37;
        (v37)(v33, v39);

        v137 = 8 * v32;
        a4 = v26 + 8 * v32 + 16;
        v40 = (v32 + 2);
        v25 = v145;
        v23 = 0x279C3C000uLL;
        v41 = v147;
        v141 = v22;
        while (1)
        {
          v42 = v40;
          if (v25 + 1 >= v41)
          {
            break;
          }

          v145 = v25;
          v43 = *(a4 - 8);
          v44 = *a4;
          v45 = v43;
          v46 = [v44 *(v23 + 2648)];
          if (!v46)
          {
            goto LABEL_135;
          }

          v47 = v46;
          v150 = v42;
          v48 = v138;
          sub_2685675C0();

          v49 = [v45 *(v23 + 2648)];
          if (!v49)
          {
            goto LABEL_134;
          }

          v50 = v49;
          v51 = v139;
          sub_2685675C0();

          LODWORD(v50) = sub_268567590() & 1;
          v52 = v51;
          v53 = v149;
          v54 = v140;
          (v140)(v52, v149);
          v54(v48, v53);

          a4 += 8;
          v25 = v145 + 1;
          v42 = v150;
          v40 = (v150 + 1);
          v23 = 0x279C3C000;
          v22 = v141;
          v41 = v147;
          if ((v142 & 1) != v50)
          {
            goto LABEL_13;
          }
        }

        v25 = v41;
LABEL_13:
        if (v142)
        {
          v55 = v136;
          if (v25 < v136)
          {
            goto LABEL_127;
          }

          if (v136 < v25)
          {
            if (v41 >= v42)
            {
              v56 = v42;
            }

            else
            {
              v56 = v41;
            }

            v57 = 8 * v56 - 8;
            v58 = v25;
            v59 = v137;
            do
            {
              if (v55 != --v58)
              {
                v60 = *v143;
                if (!*v143)
                {
                  goto LABEL_138;
                }

                v61 = *(v60 + v59);
                *(v60 + v59) = *(v60 + v57);
                *(v60 + v57) = v61;
              }

              ++v55;
              v57 -= 8;
              v59 += 8;
            }

            while (v55 < v58);
          }
        }
      }

      v62 = v143[1];
      if (v25 < v62)
      {
        if (__OFSUB__(v25, v136))
        {
          goto LABEL_126;
        }

        if (v25 - v136 < v132)
        {
          v63 = v136 + v132;
          if (__OFADD__(v136, v132))
          {
            goto LABEL_128;
          }

          if (v63 >= v62)
          {
            v63 = v143[1];
          }

          if (v63 >= v136)
          {
            if (v25 == v63)
            {
              goto LABEL_43;
            }

            v141 = v22;
            v147 = *v143;
            v64 = v147 + 8 * v25 - 8;
            v65 = (v136 - v25);
            v137 = v63;
LABEL_33:
            v145 = v25;
            v66 = *(v147 + 8 * v25);
            v140 = v65;
            v67 = v65;
            v142 = v64;
            while (1)
            {
              v68 = *v64;
              v69 = v66;
              v70 = v68;
              v71 = [v69 *(v23 + 2648)];
              if (!v71)
              {
                goto LABEL_132;
              }

              v72 = v71;
              sub_2685675C0();

              v73 = [v70 *(v23 + 2648)];
              if (!v73)
              {
                break;
              }

              v74 = v73;
              v150 = v69;
              a4 = v67;
              v75 = v146;
              sub_2685675C0();

              LOBYTE(v74) = sub_268567590();
              v76 = *v148;
              v77 = v75;
              v78 = v149;
              (*v148)(v77, v149);
              v76(v11, v78);

              if ((v74 & 1) == 0)
              {
                v23 = 0x279C3C000;
LABEL_41:
                v25 = v145 + 1;
                v64 = v142 + 8;
                v65 = v140 - 1;
                if (v145 + 1 == v137)
                {
                  v25 = v137;
                  v22 = v141;
                  goto LABEL_43;
                }

                goto LABEL_33;
              }

              if (!v147)
              {
                goto LABEL_133;
              }

              v79 = *v64;
              v66 = *(v64 + 8);
              *v64 = v66;
              *(v64 + 8) = v79;
              v64 -= 8;
              ++v67;
              v23 = 0x279C3C000;
              if (a4 == -1)
              {
                goto LABEL_41;
              }
            }

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

LABEL_129:
          __break(1u);
LABEL_130:
          v22 = sub_2684F0F24(v22);
          goto LABEL_97;
        }
      }

LABEL_43:
      if (v25 < v136)
      {
        goto LABEL_125;
      }

      v145 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v121 = *(v22 + 16);
        sub_26854BC10();
        v22 = v122;
      }

      v80 = *(v22 + 16);
      a4 = v80 + 1;
      v81 = v145;
      if (v80 >= *(v22 + 24) >> 1)
      {
        sub_26854BC10();
        v81 = v145;
        v22 = v123;
      }

      *(v22 + 16) = a4;
      v82 = v22 + 32;
      v83 = (v22 + 32 + 16 * v80);
      *v83 = v136;
      v83[1] = v81;
      v150 = *v135;
      if (!v150)
      {
        goto LABEL_139;
      }

      if (v80)
      {
        break;
      }

LABEL_92:
      v20 = v143[1];
      v21 = v145;
      if (v145 >= v20)
      {
        goto LABEL_95;
      }
    }

    while (1)
    {
      v84 = a4 - 1;
      v85 = (v82 + 16 * (a4 - 1));
      v86 = (v22 + 16 * a4);
      if (a4 >= 4)
      {
        break;
      }

      if (a4 == 3)
      {
        v87 = *(v22 + 32);
        v88 = *(v22 + 40);
        v97 = __OFSUB__(v88, v87);
        v89 = v88 - v87;
        v90 = v97;
LABEL_63:
        if (v90)
        {
          goto LABEL_112;
        }

        v102 = *v86;
        v101 = v86[1];
        v103 = __OFSUB__(v101, v102);
        v104 = v101 - v102;
        v105 = v103;
        if (v103)
        {
          goto LABEL_115;
        }

        v106 = v85[1];
        v107 = v106 - *v85;
        if (__OFSUB__(v106, *v85))
        {
          goto LABEL_118;
        }

        if (__OFADD__(v104, v107))
        {
          goto LABEL_120;
        }

        if (v104 + v107 >= v89)
        {
          if (v89 < v107)
          {
            v84 = a4 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      if (a4 < 2)
      {
        goto LABEL_114;
      }

      v109 = *v86;
      v108 = v86[1];
      v97 = __OFSUB__(v108, v109);
      v104 = v108 - v109;
      v105 = v97;
LABEL_78:
      if (v105)
      {
        goto LABEL_117;
      }

      v111 = *v85;
      v110 = v85[1];
      v97 = __OFSUB__(v110, v111);
      v112 = v110 - v111;
      if (v97)
      {
        goto LABEL_119;
      }

      if (v112 < v104)
      {
        goto LABEL_92;
      }

LABEL_85:
      if (v84 - 1 >= a4)
      {
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
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      if (!*v143)
      {
        goto LABEL_136;
      }

      v116 = v22;
      a4 = v82 + 16 * (v84 - 1);
      v117 = *a4;
      v118 = v82 + 16 * v84;
      v22 = *(v118 + 8);
      v119 = v144;
      sub_2684D9048((*v143 + 8 * *a4), (*v143 + 8 * *v118), (*v143 + 8 * v22), v150);
      v144 = v119;
      if (v119)
      {
        goto LABEL_105;
      }

      if (v22 < v117)
      {
        goto LABEL_107;
      }

      v120 = *(v116 + 16);
      if (v84 > v120)
      {
        goto LABEL_108;
      }

      *a4 = v117;
      *(a4 + 8) = v22;
      if (v84 >= v120)
      {
        goto LABEL_109;
      }

      a4 = v120 - 1;
      sub_2684F0F38((v118 + 16), v120 - 1 - v84, (v82 + 16 * v84));
      v22 = v116;
      *(v116 + 16) = v120 - 1;
      v23 = 0x279C3C000;
      if (v120 <= 2)
      {
        goto LABEL_92;
      }
    }

    v91 = v82 + 16 * a4;
    v92 = *(v91 - 64);
    v93 = *(v91 - 56);
    v97 = __OFSUB__(v93, v92);
    v94 = v93 - v92;
    if (v97)
    {
      goto LABEL_110;
    }

    v96 = *(v91 - 48);
    v95 = *(v91 - 40);
    v97 = __OFSUB__(v95, v96);
    v89 = v95 - v96;
    v90 = v97;
    if (v97)
    {
      goto LABEL_111;
    }

    v98 = v86[1];
    v99 = v98 - *v86;
    if (__OFSUB__(v98, *v86))
    {
      goto LABEL_113;
    }

    v97 = __OFADD__(v89, v99);
    v100 = v89 + v99;
    if (v97)
    {
      goto LABEL_116;
    }

    if (v100 >= v94)
    {
      v114 = *v85;
      v113 = v85[1];
      v97 = __OFSUB__(v113, v114);
      v115 = v113 - v114;
      if (v97)
      {
        goto LABEL_124;
      }

      if (v89 < v115)
      {
        v84 = a4 - 2;
      }

      goto LABEL_85;
    }

    goto LABEL_63;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_95:
  a4 = *v135;
  if (!*v135)
  {
LABEL_142:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_130;
  }

LABEL_97:
  v125 = (v22 + 16);
  v124 = *(v22 + 16);
  while (v124 >= 2)
  {
    if (!*v143)
    {
      goto LABEL_137;
    }

    v126 = v22;
    v22 += 16 * v124;
    v127 = *v22;
    v128 = &v125[2 * v124];
    v129 = *(v128 + 1);
    v130 = v144;
    sub_2684D9048((*v143 + 8 * *v22), (*v143 + 8 * *v128), (*v143 + 8 * v129), a4);
    v144 = v130;
    if (v130)
    {
      break;
    }

    if (v129 < v127)
    {
      goto LABEL_121;
    }

    if (v124 - 2 >= *v125)
    {
      goto LABEL_122;
    }

    *v22 = v127;
    *(v22 + 8) = v129;
    v131 = *v125 - v124;
    if (*v125 < v124)
    {
      goto LABEL_123;
    }

    v124 = *v125 - 1;
    sub_2684F0F38(v128 + 16, v131, v128);
    *v125 = v124;
    v22 = v126;
  }

LABEL_105:
}

uint64_t sub_2684D9048(void **a1, void **a2, void **a3, void **a4)
{
  v64 = sub_2685675E0();
  v8 = *(*(v64 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v64);
  v61 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v57 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v60 = &v57 - v15;
  MEMORY[0x28223BE20](v14);
  i = (&v57 - v16);
  v17 = a2 - a1;
  v63 = (v18 + 8);
  v19 = a3 - a2;
  if (v17 < v19)
  {
    sub_26854CA88(a1, a2 - a1, a4);
    v20 = &a4[v17];
    v21 = 0x279C3C000uLL;
    v65 = v20;
    v66 = a3;
    while (1)
    {
      if (a4 >= v20 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_31;
      }

      v23 = a1;
      v67 = a2;
      v24 = *a2;
      v25 = *a4;
      v26 = v24;
      v27 = v25;
      result = [v26 *(v21 + 2648)];
      if (!result)
      {
        __break(1u);
        goto LABEL_39;
      }

      v29 = result;
      v30 = a4;
      v31 = i;
      sub_2685675C0();

      result = [v27 *(v21 + 2648)];
      if (!result)
      {
        goto LABEL_40;
      }

      v32 = result;
      v33 = v60;
      sub_2685675C0();

      LOBYTE(v32) = sub_268567590();
      v34 = *v63;
      v35 = v33;
      v36 = v64;
      (*v63)(v35, v64);
      v34(v31, v36);

      if ((v32 & 1) == 0)
      {
        break;
      }

      v37 = v67;
      a2 = v67 + 1;
      v38 = v23;
      if (v23 != v67)
      {
        goto LABEL_13;
      }

LABEL_14:
      a1 = v38 + 1;
      v20 = v65;
      a3 = v66;
      v21 = 0x279C3C000;
    }

    v37 = a4++;
    v38 = v23;
    a2 = v67;
    if (v23 == v30)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v38 = *v37;
    goto LABEL_14;
  }

  sub_26854CA88(a2, a3 - a2, a4);
  v20 = &a4[v19];
  v39 = 0x279C3C000uLL;
  v58 = a4;
  v59 = a1;
LABEL_16:
  v40 = a2 - 1;
  v41 = a3 - 1;
  v67 = a2;
  for (i = a2 - 1; v20 > a4 && a2 > a1; v40 = i)
  {
    v66 = v41;
    v43 = v20 - 1;
    v44 = *v40;
    v45 = *(v20 - 1);
    v46 = v44;
    result = [v45 *(v39 + 2648)];
    if (!result)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    v47 = result;
    v65 = v20;
    sub_2685675C0();

    result = [v46 *(v39 + 2648)];
    if (!result)
    {
      goto LABEL_41;
    }

    v48 = result;
    v49 = v61;
    sub_2685675C0();

    LOBYTE(v48) = sub_268567590();
    v50 = *v63;
    v51 = v49;
    v52 = v64;
    (*v63)(v51, v64);
    v50(v13, v52);

    if (v48)
    {
      v20 = v65;
      a3 = v66;
      v54 = i;
      a2 = i;
      a4 = v58;
      a1 = v59;
      v39 = 0x279C3C000;
      if (v66 + 1 != v67)
      {
        *v66 = *i;
        a2 = v54;
      }

      goto LABEL_16;
    }

    v53 = v66;
    a4 = v58;
    if (v65 != v66 + 1)
    {
      *v66 = *v43;
    }

    v41 = v53 - 1;
    v20 = v43;
    a2 = v67;
    a1 = v59;
    v39 = 0x279C3C000;
  }

LABEL_31:
  v55 = v20 - a4;
  if (a2 != a4 || a2 >= &a4[v55])
  {
    memmove(a2, a4, 8 * v55);
  }

  return 1;
}

void sub_2684D94A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268568B10();

  [a3 setPriority_];
}

uint64_t sub_2684D9504(void *a1)
{
  v1 = [a1 notifications];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2684D16C0(0, &qword_280282BC8, 0x277D47610);
  v3 = sub_268568CE0();

  return v3;
}

unint64_t sub_2684D9574()
{
  result = qword_280282BC0;
  if (!qword_280282BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282BC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ANAppendNotificationAction.ANAppendNotificationActionErrors(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2684D9664);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2684D96A0()
{
  result = qword_280282BD8;
  if (!qword_280282BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282BD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_2(uint64_t a1)
{
  *(v3 - 96) = a1;
  *v2 = *(v3 - 208);

  return sub_268565324(v1);
}

void OUTLINED_FUNCTION_3_2()
{

  JUMPOUT(0x26D61CB30);
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_9_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_11_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_13_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_2684D9810(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2684D9864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2684D98C4(void *a1)
{
  if (!a1)
  {
    memset(v20, 0, sizeof(v20));
LABEL_8:
    sub_2684D9B88(v20);
    sub_2685675E0();
    v13 = OUTLINED_FUNCTION_0_3();
    return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }

  v2 = sub_268568B10();
  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_268568F30();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  OUTLINED_FUNCTION_3_3(v4, v5, v6, v7, v8, v9, v10, v11, v18, *(&v18 + 1), v19);
  if (!v12)
  {
    goto LABEL_8;
  }

  sub_2685675E0();
  OUTLINED_FUNCTION_1_2();
  v13 = OUTLINED_FUNCTION_2_3();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_2684D99B0(void *a1)
{
  if (!a1)
  {
    memset(v20, 0, sizeof(v20));
LABEL_8:
    sub_2684D9B88(v20);
    sub_2685675E0();
    v13 = OUTLINED_FUNCTION_0_3();
    return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }

  v2 = sub_268568B10();
  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_268568F30();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  OUTLINED_FUNCTION_3_3(v4, v5, v6, v7, v8, v9, v10, v11, v18, *(&v18 + 1), v19);
  if (!v12)
  {
    goto LABEL_8;
  }

  sub_2685675E0();
  OUTLINED_FUNCTION_1_2();
  v13 = OUTLINED_FUNCTION_2_3();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_2684D9A9C(void *a1)
{
  if (!a1)
  {
    memset(v20, 0, sizeof(v20));
LABEL_8:
    sub_2684D9B88(v20);
    sub_2685675E0();
    v13 = OUTLINED_FUNCTION_0_3();
    return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }

  v2 = sub_268568B10();
  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_268568F30();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  OUTLINED_FUNCTION_3_3(v4, v5, v6, v7, v8, v9, v10, v11, v18, *(&v18 + 1), v19);
  if (!v12)
  {
    goto LABEL_8;
  }

  sub_2685675E0();
  OUTLINED_FUNCTION_1_2();
  v13 = OUTLINED_FUNCTION_2_3();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_2684D9B88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BE0, &unk_26856D8C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_2()
{

  return swift_dynamicCast();
}

uint64_t sub_2684D9C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, void *__src)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5 & 1;
  *(v6 + 49) = HIBYTE(a5) & 1;
  memcpy((v6 + 56), __src, 0x80uLL);
  return v6;
}

uint64_t sub_2684D9C8C(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x2822009F8](sub_2684D9CAC, 0, 0);
}

uint64_t sub_2684D9CAC()
{
  sub_2685685F0();
  sub_2685685E0();
  v0[13] = sub_2685685B0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BE8, &qword_26856A950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26856A540;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 64) = sub_268568610();
  __swift_allocate_boxed_opaque_existential_0((inited + 40));
  sub_268568600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BF0, &qword_26856AD20);
  v2 = sub_268568AD0();
  v0[14] = v2;
  v3 = *(MEMORY[0x277D61E18] + 4);
  v4 = swift_task_alloc();
  v0[15] = v4;
  v5 = sub_268568950();
  v6 = sub_268567C50();
  v7 = sub_2684DB3B4();
  *v4 = v0;
  v4[1] = sub_2684D9E54;
  v8 = v0[11];
  v9 = v0[12];

  return MEMORY[0x2821C8828](v8, v2, &unk_26856A998, v9, v5, v6, v7);
}

uint64_t sub_2684D9E54()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = v2[15];
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v3[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2684D9F88, 0, 0);
  }

  else
  {
    v8 = v3[13];
    v7 = v3[14];

    OUTLINED_FUNCTION_9_1();

    return v9();
  }
}

uint64_t sub_2684D9F88()
{
  OUTLINED_FUNCTION_5();
  v2 = v0[13];
  v1 = v0[14];

  OUTLINED_FUNCTION_9_1();
  v4 = v0[16];

  return v3();
}

uint64_t sub_2684D9FEC(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  v3 = sub_2685679B0();
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();
  v6 = sub_268567B60();
  v2[21] = v6;
  v7 = *(v6 - 8);
  v2[22] = v7;
  v8 = *(v7 + 64) + 15;
  v2[23] = swift_task_alloc();
  v9 = *(*(sub_268567B10() - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v10 = sub_268567F20();
  v2[25] = v10;
  v11 = *(v10 - 8);
  v2[26] = v11;
  v12 = *(v11 + 64) + 15;
  v2[27] = swift_task_alloc();
  v13 = sub_2685689F0();
  v2[28] = v13;
  v14 = *(v13 - 8);
  v2[29] = v14;
  v15 = *(v14 + 64) + 15;
  v2[30] = swift_task_alloc();
  v16 = *(*(sub_2685688F0() - 8) + 64) + 15;
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2684DA218, 0, 0);
}

uint64_t sub_2684DA218()
{
  v1 = v0[31];
  v2 = v0[17];
  type metadata accessor for ReadNotificationsCATPatternsExecutor();
  sub_2685686F0();
  sub_2685685F0();
  v3 = sub_2685685D0();
  sub_268516318(v2 + 96, v3);

  sub_2685688E0();
  v4 = sub_268568710();
  v0[32] = v4;
  v5 = *(v2 + 48);

  v6 = swift_task_alloc();
  v0[33] = v6;
  *v6 = v0;
  v6[1] = sub_2684DA358;
  v7 = v0[17];

  return (sub_26851449C)(v5, v4, v7);
}

uint64_t sub_2684DA358()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v2[12] = v1;
  v2[13] = v4;
  v2[14] = v0;
  v5 = v2[33];
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  v3[34] = v0;

  if (v0)
  {
    v8 = sub_2684DA7F8;
  }

  else
  {
    v9 = v3[32];

    v8 = sub_2684DA46C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2684DA46C()
{
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = __swift_project_value_buffer(v3, qword_28028B348);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2685689E0();
  v6 = sub_268568DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "RNReadSingleNotificationPatternFlow execute | pattern successfully executed", v7, 2u);
    MEMORY[0x26D61CB30](v7, -1, -1);
  }

  v8 = v0[30];
  v10 = v0[28];
  v9 = v0[29];
  v11 = v0[27];
  v31 = v0[26];
  v12 = v0[24];
  v32 = v0[25];
  v13 = v0[22];
  v25 = v0[13];
  v26 = v0[23];
  v27 = v0[21];
  v28 = v0[20];
  v14 = v0[19];
  v15 = v0[17];
  v29 = v0[18];
  v30 = v0[16];

  (*(v9 + 8))(v8, v10);
  sub_268567AE0();
  sub_268567ED0();
  sub_2684D57FC(v15 + 136, (v0 + 2));
  v16 = sub_268567D00();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_268567CF0();
  v19 = sub_268567840();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v0[15] = sub_268567830();
  sub_268567890();

  sub_268567990();
  v22 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_268567A20();
  (*(v13 + 104))(v26, *MEMORY[0x277D5BC10], v27);
  (*(v14 + 104))(v28, *MEMORY[0x277D5B958], v29);
  sub_2684EBB74(1, 1, v26, v28, 8, 0, 0, 0, 0, 2u);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  sub_268567C30();

  (*(v31 + 8))(v11, v32);

  OUTLINED_FUNCTION_9_1();

  return v23();
}

uint64_t sub_2684DA7F8()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[27];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[20];

  OUTLINED_FUNCTION_9_1();
  v9 = v0[34];

  return v8();
}

uint64_t sub_2684DA8A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_268567CE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_2684DB414();
  v12 = *(a2 + 16);

  v14 = sub_26856427C(v13);
  sub_268567CD0();
  sub_268508520(v14, v11);

  (*(v4 + 8))(v7, v3);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v3);
  sub_268567EF0();
  return sub_268567EE0();
}

uint64_t sub_2684DAA28(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_268568D70();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_2684DDBA0(0, 0, v8, &unk_26856A940, v10);
}

uint64_t sub_2684DAB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_268567C50();
  v6[4] = v7;
  v8 = *(v7 - 8);
  v6[5] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v6[6] = v10;
  v11 = swift_task_alloc();
  v6[7] = v11;
  *v11 = v6;
  v11[1] = sub_2684DAC24;

  return sub_2684D9C8C(v10);
}

uint64_t sub_2684DAC24()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = *(v2 + 56);
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    v7 = sub_2684DADC0;
  }

  else
  {
    v7 = sub_2684DAD28;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2684DAD28()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_9_1();

  return v5();
}

uint64_t sub_2684DADC0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_9_1();
  v3 = *(v0 + 64);

  return v2();
}

void *sub_2684DAE1C()
{
  v1 = v0[2];

  v2 = v0[4];
  v3 = v0[5];

  sub_2684CC8D4((v0 + 7));
  return v0;
}

uint64_t sub_2684DAE5C()
{
  sub_2684DAE1C();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t sub_2684DAEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2684DAF64;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2684DAF64()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_2684DB074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B888] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2684DB128;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

uint64_t sub_2684DB128()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;

  OUTLINED_FUNCTION_9_1();

  return v5();
}

uint64_t sub_2684DB208()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2684DB250(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2684DB458;

  return sub_2684DAB28(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2684DB31C()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2684DB128;

  return sub_2684D9FEC(v3, v0);
}

unint64_t sub_2684DB3B4()
{
  result = qword_280282BF8;
  if (!qword_280282BF8)
  {
    sub_268568950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282BF8);
  }

  return result;
}

unint64_t sub_2684DB414()
{
  result = qword_280282BC8;
  if (!qword_280282BC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280282BC8);
  }

  return result;
}

uint64_t ANFlow.__allocating_init(notificationManager:sharedObjects:)(uint64_t a1, const void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  memcpy((v4 + 24), a2, 0x80uLL);
  return v4;
}

uint64_t ANFlow.init(notificationManager:sharedObjects:)(uint64_t a1, const void *a2)
{
  *(v2 + 16) = a1;
  memcpy((v2 + 24), a2, 0x80uLL);
  return v2;
}

uint64_t ANFlow.execute()(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = sub_2685679B0();
  v2[26] = v3;
  v4 = *(v3 - 8);
  v2[27] = v4;
  v5 = *(v4 + 64) + 15;
  v2[28] = swift_task_alloc();
  v6 = sub_268567B60();
  v2[29] = v6;
  v7 = *(v6 - 8);
  v2[30] = v7;
  v8 = *(v7 + 64) + 15;
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2684DB600, 0, 0);
}

uint64_t sub_2684DB600()
{
  v1 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  v16 = v0[24];
  sub_268567990();
  v15 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
  sub_268567A20();
  (*(v1 + 104))(v2, *MEMORY[0x277D5BBF8], v3);
  (*(v5 + 104))(v4, *MEMORY[0x277D5B950], v6);
  sub_2684EBB74(6, 9, v2, v4, 8, 0, 0, 0, 0, 2u);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  v8 = *(v7 + 16);
  sub_2684CC878(v7 + 24, (v0 + 2));
  type metadata accessor for ANFlowSource();
  swift_allocObject();

  sub_2684F8690(v9, v0 + 2);
  sub_2684DBA44(&qword_280282C08, 255, type metadata accessor for ANFlowSource);
  v10 = sub_2685678C0();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v0[23] = sub_2685678B0();
  sub_268567C20();

  v13 = v0[1];

  return v13();
}

uint64_t ANFlow.execute(completion:)()
{
  type metadata accessor for ANFlow();
  sub_2684DBA44(&qword_280282C10, v0, type metadata accessor for ANFlow);
  return sub_268567900();
}

uint64_t ANFlow.deinit()
{
  v1 = *(v0 + 16);

  sub_2684CC8D4(v0 + 24);
  return v0;
}

uint64_t ANFlow.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_2684CC8D4(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

uint64_t sub_2684DB94C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2684CEB80;

  return ANFlow.execute()(a1);
}

uint64_t sub_2684DB9E8()
{
  type metadata accessor for ANFlow();

  return sub_268567950();
}

uint64_t sub_2684DBA44(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2684DBA8C()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C50, &qword_26856AB38);
  return sub_268568B70();
}

uint64_t sub_2684DBAF0(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v4 = OBJC_IVAR____TtC24SiriNotificationsIntents27RNReadConclusionActionGroup_transition;
  v5 = sub_268567E80();
  __swift_storeEnumTagSinglePayload(v2 + v4, 1, 1, v5);
  sub_2684CC878(a1, v2 + OBJC_IVAR____TtC24SiriNotificationsIntents27RNReadConclusionActionGroup_sharedObjects);
  sub_2684CC878(a1, v10);
  type metadata accessor for RNReadConclusionAction();
  swift_allocObject();
  v6 = sub_2685443C8(v10);
  sub_2684CC8D4(a1);
  v7 = sub_2684DBEB8(&qword_280282C48, type metadata accessor for RNReadConclusionAction);
  v8 = *(v2 + 16);
  *(v2 + 16) = v6;
  *(v2 + 24) = v7;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_2684DBBE0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_2684DBF00(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents27RNReadConclusionActionGroup_transition);
  sub_2684CC8D4(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents27RNReadConclusionActionGroup_sharedObjects);
  return v0;
}

uint64_t sub_2684DBC20()
{
  sub_2684DBBE0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for RNReadConclusionActionGroup()
{
  result = qword_280282C20;
  if (!qword_280282C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2684DBCCC()
{
  sub_2684DBD70();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2684DBD70()
{
  if (!qword_280282C30)
  {
    sub_268567E80();
    v0 = sub_268568EB0();
    if (!v1)
    {
      atomic_store(v0, &qword_280282C30);
    }
  }
}

uint64_t sub_2684DBE48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C40, &qword_26856AB30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684DBEB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2684DBF00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C40, &qword_26856AB30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2684DBF68()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C68, &qword_26856ABF8);
  return sub_268568B70();
}

void *sub_2684DBFCC()
{
  v1 = *(v0 + 16);
  sub_2684D57FC(v0 + 24, v4);
  type metadata accessor for ANPlayNotificationSoundAction();
  swift_allocObject();
  v2 = sub_2684D6C9C(v1, v4);
  sub_2684DC25C(&qword_280282C60, 255, type metadata accessor for ANPlayNotificationSoundAction);

  return v2;
}

uint64_t sub_2684DC07C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_2684CC878(v1 + 24, v10);
  type metadata accessor for ANReadNotificationsActionGroup();
  swift_allocObject();

  v5 = sub_2684D4E64(v4, v10);
  v6 = sub_2684DC25C(&qword_280282B70, 255, type metadata accessor for ANReadNotificationsActionGroup);
  *a1 = v5;
  a1[1] = v6;
  v7 = *MEMORY[0x277D5BF58];
  v8 = sub_268567E80();
  (*(*(v8 - 8) + 104))(a1, v7, v8);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
}

uint64_t sub_2684DC184()
{
  v1 = *(v0 + 16);

  sub_2684CC8D4(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

uint64_t sub_2684DC25C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2684DC2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, void *__src, char a7)
{
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5 & 1;
  *(v7 + 49) = HIBYTE(a5) & 1;
  memcpy((v7 + 56), __src, 0x80uLL);
  *(v7 + 184) = a7;
  return v7;
}

uint64_t sub_2684DC2F4(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x2822009F8](sub_2684DC314, 0, 0);
}

uint64_t sub_2684DC314()
{
  sub_2685685F0();
  sub_2685685E0();
  v0[13] = sub_2685685B0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BE8, &qword_26856A950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26856A540;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 64) = sub_268568610();
  __swift_allocate_boxed_opaque_existential_0((inited + 40));
  sub_268568600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BF0, &qword_26856AD20);
  v2 = sub_268568AD0();
  v0[14] = v2;
  v3 = *(MEMORY[0x277D61E18] + 4);
  v4 = swift_task_alloc();
  v0[15] = v4;
  v5 = sub_268568950();
  v6 = sub_268567C50();
  v7 = sub_2684DDB50(&qword_280282BF8, MEMORY[0x277D55F70]);
  *v4 = v0;
  v4[1] = sub_2684D9E54;
  v8 = v0[11];
  v9 = v0[12];

  return MEMORY[0x2821C8828](v8, v2, &unk_26856AD30, v9, v5, v6, v7);
}

uint64_t sub_2684DC4EC(uint64_t a1, uint64_t a2)
{
  v2[28] = a1;
  v2[29] = a2;
  v3 = sub_2685689F0();
  v2[30] = v3;
  v4 = *(v3 - 8);
  v2[31] = v4;
  v5 = *(v4 + 64) + 15;
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2684DC5AC, 0, 0);
}

uint64_t sub_2684DC5AC()
{
  v1 = v0[29];
  sub_2684D57FC(v1 + 136, (v0 + 18));
  v2 = sub_268567D00();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_268567CF0();
  v5 = sub_268567840();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_268567830();
  v0[33] = v8;
  v0[26] = v8;
  v9 = *(v1 + 16);
  v27 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v26 = *(v1 + 48);
  v12 = *(v1 + 49);
  sub_2684CC878(v1 + 56, (v0 + 2));
  v13 = *(v1 + 184);
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();

  v16 = sub_268567CF0();
  v17 = type metadata accessor for RNReadNotificationsFlowProvider();
  v18 = swift_allocObject();
  if (v12)
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_2684DD560(v9, v27, v10, v11, v19 | v26, (v0 + 2), v16, v13, v18);
  v0[34] = v20;
  v0[27] = v20;
  v21 = *(MEMORY[0x277D5B810] + 4);
  v22 = swift_task_alloc();
  v0[35] = v22;
  v23 = sub_2684DDB50(&qword_280282C70, type metadata accessor for RNReadNotificationsFlowProvider);
  *v22 = v0;
  v22[1] = sub_2684DC7DC;
  v24 = MEMORY[0x277D5B808];

  return MEMORY[0x2821BA370](v0 + 27, v5, v17, v24, v23);
}

uint64_t sub_2684DC7DC()
{
  OUTLINED_FUNCTION_9();
  v3[23] = v1;
  v3[24] = v2;
  v3[25] = v0;
  v4 = v3[35];
  v5 = v3[34];
  v6 = v3[33];
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v9 + 288) = v0;

  if (v0)
  {
    v10 = sub_2684DCAA8;
  }

  else
  {
    v10 = sub_2684DC92C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2684DC92C()
{
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = __swift_project_value_buffer(v3, qword_28028B348);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2685689E0();
  v6 = sub_268568DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "RNReadNotificationsPatternFlow#execute pattern provider successfully created", v7, 2u);
    MEMORY[0x26D61CB30](v7, -1, -1);
  }

  v8 = v0[24];
  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[30];
  v12 = v0[28];

  (*(v10 + 8))(v9, v11);
  sub_268567C30();

  OUTLINED_FUNCTION_9_1();

  return v13();
}

uint64_t sub_2684DCAA8()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 256);

  OUTLINED_FUNCTION_9_1();
  v3 = *(v0 + 288);

  return v2();
}

uint64_t sub_2684DCB04(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_268568D70();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_2684DDBA0(0, 0, v8, &unk_26856ACD8, v10);
}

uint64_t sub_2684DCC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_268567C50();
  v6[4] = v7;
  v8 = *(v7 - 8);
  v6[5] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v6[6] = v10;
  v11 = swift_task_alloc();
  v6[7] = v11;
  *v11 = v6;
  v11[1] = sub_2684DAC24;

  return sub_2684DC2F4(v10);
}

void *sub_2684DCD00()
{
  v1 = v0[2];

  v2 = v0[4];
  v3 = v0[5];

  sub_2684CC8D4((v0 + 7));
  return v0;
}

uint64_t sub_2684DCD40()
{
  sub_2684DCD00();

  return MEMORY[0x2821FE8D8](v0, 185, 7);
}

uint64_t sub_2684DCDBC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2684DCE04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2684DB458;

  return sub_2684DCC04(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2684DCED0()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2684DB128;

  return sub_2684DC4EC(v3, v0);
}

uint64_t sub_2684DCF68(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2684DD078(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2684DCF88(void *a1, int64_t a2, char a3)
{
  result = sub_2684DD178(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2684DCFA8(size_t a1, int64_t a2, char a3)
{
  result = sub_2684DD288(a1, a2, a3, *v3, &qword_280282C98, &qword_26856AD58, type metadata accessor for ReadingRecord, sub_26854C5BC);
  *v3 = result;
  return result;
}

size_t sub_2684DD000(size_t a1, int64_t a2, char a3)
{
  result = sub_2684DD288(a1, a2, a3, *v3, &qword_280282CA8, &qword_26856AD68, MEMORY[0x277D55C48], sub_26854C5D4);
  *v3 = result;
  return result;
}

void *sub_2684DD058(void *a1, int64_t a2, char a3)
{
  result = sub_2684DD450(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2684DD078(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282CA0, &qword_26856AD60);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_26854C554((a4 + 32), v8, (v10 + 32));
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

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2684DD178(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C80, &qword_26856AD40);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26854CA88(a4 + 32, v8, v10 + 4);
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C78, qword_26856CB20);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_2684DD288(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(a7(0) - 8);
  if (v11)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    a8(a4 + v22, v14, v19 + v22);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_2684DD450(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C88, &qword_26856AD48);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26854CA88(a4 + 32, v8, v10 + 4);
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C90, &qword_26856AD50);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2684DD560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v59 = a8;
  v58 = a6;
  v54 = a5;
  v56 = a4;
  v57 = a3;
  v53 = a2;
  v11 = sub_2685689F0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = sub_268567D00();
  v67 = MEMORY[0x277D5BD58];
  v55 = v66;
  v65[0] = a7;
  v52 = type metadata accessor for RNReadNotificationsFlowProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(a9 + 16) = [objc_opt_self() bundleForClass_];
  *(a9 + 104) = 0;
  *(a9 + 112) = 0;
  *(a9 + 288) = 0xD000000000000023;
  *(a9 + 296) = 0x8000000268571AB0;
  *(a9 + 304) = 4;
  *(a9 + 336) = 0;
  if (qword_280282960 != -1)
  {
LABEL_28:
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_28028B348);
  (*(v12 + 16))(v15, v17, v11);

  v18 = sub_2685689E0();
  v19 = sub_268568DD0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v51 = v11;
    v11 = v20;
    v21 = swift_slowAlloc();
    *&v61 = v21;
    *v11 = 136315138;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C78, qword_26856CB20);
    v23 = MEMORY[0x26D61BE70](a1, v22);
    v25 = sub_2684EABEC(v23, v24, &v61);

    *(v11 + 4) = v25;
    _os_log_impl(&dword_2684CA000, v18, v19, "RNReadNotificationsFlowProvider#init items=%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x26D61CB30](v21, -1, -1);
    MEMORY[0x26D61CB30](v11, -1, -1);

    (*(v12 + 8))(v15, v51);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  v26 = 0;
  v27 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  while (v27 != v26)
  {
    if (v26 >= *(a1 + 16))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v28 = *(a1 + 8 * v26 + 32);
    if (v28 >> 62)
    {
      if (v28 < 0)
      {
        v33 = *(a1 + 8 * v26 + 32);
      }

      v29 = sub_2685690A0();
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v26;
    if (v29)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v61 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2684DCF88(0, *(v12 + 16) + 1, 1);
        v12 = v61;
      }

      v32 = *(v12 + 16);
      v31 = *(v12 + 24);
      v11 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        sub_2684DCF88((v31 > 1), v32 + 1, 1);
        v12 = v61;
      }

      *(v12 + 16) = v11;
      *(v12 + 8 * v32 + 32) = v28;
    }
  }

  a1 = *(v12 + 16);
  if (a1)
  {
    *&v61 = v15;
    v15 = &v61;
    sub_268569040();
    v34 = 0;
    while (v34 < *(v12 + 16))
    {
      v64 = *(v12 + 8 * v34 + 32);

      sub_26855D568(&v64, v60);
      ++v34;

      v11 = v60[0];
      v15 = &v61;
      sub_268569020();
      v35 = *(v61 + 16);
      sub_268569050();
      sub_268569060();
      sub_268569030();
      if (a1 == v34)
      {

        v36 = v61;
        goto LABEL_25;
      }
    }

    goto LABEL_27;
  }

  v36 = MEMORY[0x277D84F90];
LABEL_25:
  *(a9 + 120) = v36;
  v38 = v56;
  v37 = v57;
  *(a9 + 128) = v53;
  *(a9 + 136) = v37;
  *(a9 + 144) = v38;
  v39 = BYTE1(v54);
  *(a9 + 152) = v54 & 1;
  *(a9 + 153) = v39 & 1;
  v40 = v58;
  sub_2684CC878(v58, a9 + 160);
  sub_2684D57FC(v65, a9 + 24);
  *(a9 + 320) = 0;
  *(a9 + 328) = 0;
  sub_2684D57FC(v40 + 80, &v61);
  v41 = v55;
  v42 = *(v55 + 48);
  v43 = *(v55 + 52);
  swift_allocObject();

  v44 = sub_268567CF0();
  v60[3] = v41;
  v60[4] = MEMORY[0x277D5BD58];
  v60[0] = v44;
  v45 = sub_268567840();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = sub_268567830();
  v62 = v45;
  v63 = MEMORY[0x277D5B808];

  *&v61 = v48;
  sub_2684CC8D4(v40);
  __swift_destroy_boxed_opaque_existential_0(v65);
  sub_2684D8314(&v61, a9 + 64);
  *(a9 + 312) = v59 & 1;
  return a9;
}

uint64_t sub_2684DDB50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2684DDBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  sub_2684D1904(a3, v23 - v10);
  v12 = sub_268568D70();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_2684DE8E8(v11);
  }

  else
  {
    sub_268568D60();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_268568D30();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_268568B90() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = OUTLINED_FUNCTION_15_0();

      sub_2684DE8E8(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2684DE8E8(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return OUTLINED_FUNCTION_15_0();
}

uint64_t sub_2684DDDD0()
{
  OUTLINED_FUNCTION_5();
  v1[71] = v0;
  v1[70] = v2;
  v3 = sub_2685689F0();
  v1[72] = v3;
  v4 = *(v3 - 8);
  v1[73] = v4;
  v5 = *(v4 + 64) + 15;
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2684DDEB4, 0, 0);
}

uint64_t sub_2684DDEB4()
{
  v2 = *(v0[71] + 16);
  sub_2684F4060();
  v3 = *(sub_2684F4060() + 16);

  if (v3 == 1)
  {
    if (sub_2684D1C14(*(v2 + 16)) == 1 && (v22 = *(v2 + 16), sub_2684D1C14(v22)))
    {

      if ((v22 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D61C170](0, v22);
      }

      else
      {
        if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v24 = *(v22 + 32);
      }

      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v25 = v0[76];
      v26 = v0[73];
      __swift_project_value_buffer(v0[72], qword_28028B348);
      v27 = OUTLINED_FUNCTION_10_1();
      v28(v27);
      sub_2685689E0();
      v29 = sub_268568DC0();
      if (OUTLINED_FUNCTION_12_1(v29))
      {
        *OUTLINED_FUNCTION_16_0() = 0;
        OUTLINED_FUNCTION_5_2(&dword_2684CA000, v30, v31, "Running RNReadSingleNotificationPatternFlow");
        OUTLINED_FUNCTION_11_2();
      }

      v32 = v0[76];
      OUTLINED_FUNCTION_4_2();
      v33 = OUTLINED_FUNCTION_9_2();
      v34(v33);
      v35 = v1[3];
      v36 = v1[4];
      v37 = v1[5];
      v38 = OUTLINED_FUNCTION_8_1();
      sub_2684CC878(v38, (v0 + 34));
      type metadata accessor for RNReadSingleNotificationPatternFlow();
      swift_allocObject();
      v39 = OUTLINED_FUNCTION_7_2();
      v0[68] = sub_2684D9C4C(v39, v40, v41, v37, v42, v43);
      sub_2684DEA44(&qword_280282CC0, type metadata accessor for RNReadSingleNotificationPatternFlow);
    }

    else
    {
      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v63 = v0[75];
      v64 = v0[73];
      __swift_project_value_buffer(v0[72], qword_28028B348);
      v65 = OUTLINED_FUNCTION_10_1();
      v66(v65);
      sub_2685689E0();
      v67 = sub_268568DC0();
      if (OUTLINED_FUNCTION_12_1(v67))
      {
        *OUTLINED_FUNCTION_16_0() = 0;
        OUTLINED_FUNCTION_5_2(&dword_2684CA000, v68, v69, "Running RNReadNotificationsFromOneAppPatternFlow");
        OUTLINED_FUNCTION_11_2();
      }

      v70 = v0[75];
      OUTLINED_FUNCTION_4_2();
      v71 = OUTLINED_FUNCTION_9_2();
      v72(v71);
      v73 = v1[3];
      v74 = v1[4];
      v75 = v1[5];
      v76 = OUTLINED_FUNCTION_8_1();
      sub_2684CC878(v76, (v0 + 18));
      type metadata accessor for RNReadNotificationsFromOneAppPatternFlow();
      swift_allocObject();

      v77 = OUTLINED_FUNCTION_7_2();
      v0[67] = sub_26854ADD4(v77, v78, v79, v75, v80, v81, 0);
      sub_2684DEA44(&qword_280282CB8, type metadata accessor for RNReadNotificationsFromOneAppPatternFlow);
    }
  }

  else if (v3)
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v44 = v0[74];
    v45 = v0[73];
    __swift_project_value_buffer(v0[72], qword_28028B348);
    v46 = OUTLINED_FUNCTION_10_1();
    v47(v46);
    sub_2685689E0();
    v48 = sub_268568DC0();
    if (OUTLINED_FUNCTION_12_1(v48))
    {
      *OUTLINED_FUNCTION_16_0() = 0;
      OUTLINED_FUNCTION_5_2(&dword_2684CA000, v49, v50, "Running RNReadNotificationsFromMultipleAppPatternFlow");
      OUTLINED_FUNCTION_11_2();
    }

    v51 = v0[74];
    OUTLINED_FUNCTION_4_2();
    v52 = OUTLINED_FUNCTION_9_2();
    v53(v52);
    v54 = v1[3];
    v55 = v1[4];
    v56 = v1[5];
    v57 = OUTLINED_FUNCTION_8_1();
    sub_2684CC878(v57, (v0 + 2));
    type metadata accessor for RNReadNotificationsFromMultipleAppsPatternFlow();
    swift_allocObject();
    v58 = OUTLINED_FUNCTION_7_2();
    v0[66] = sub_2684DC2A4(v58, v59, v60, v56, v61, v62, 0);
    sub_2684DEA44(&qword_280282CB0, type metadata accessor for RNReadNotificationsFromMultipleAppsPatternFlow);
  }

  else
  {

    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v4 = v0[77];
    v5 = v0[73];
    v6 = v0[72];
    v7 = __swift_project_value_buffer(v6, qword_28028B348);
    (*(v5 + 16))(v4, v7, v6);
    v8 = sub_2685689E0();
    v9 = sub_268568DC0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_16_0();
      *v10 = 0;
      _os_log_impl(&dword_2684CA000, v8, v9, "Running RNNoNewNotificationsPatternFlow", v10, 2u);
      MEMORY[0x26D61CB30](v10, -1, -1);
    }

    v11 = v0[77];
    v12 = v0[73];
    v13 = v0[72];
    v14 = v0[71];
    v15 = v0[70];

    (*(v12 + 8))(v11, v13);
    v17 = *(v14 + 24);
    v16 = *(v14 + 32);
    v18 = *(v14 + 40);
    v19 = *(v14 + 48);
    v20 = *(v14 + 49);
    sub_2684CC878(v14 + 56, (v0 + 50));
    type metadata accessor for RNNoNewNotificationsPatternFlow();
    v21 = swift_allocObject();
    *(v21 + 16) = v17;
    *(v21 + 24) = v16;
    *(v21 + 32) = v18;
    *(v21 + 40) = v19;
    *(v21 + 41) = v20;
    memcpy((v21 + 48), v0 + 50, 0x80uLL);
    v0[69] = v21;
    sub_2684DEA44(&qword_280282CC8, type metadata accessor for RNNoNewNotificationsPatternFlow);
  }

  sub_268567C20();

  v82 = v0[77];
  v83 = v0[76];
  v84 = v0[75];
  v85 = v0[74];

  OUTLINED_FUNCTION_9_1();

  return v86();
}

uint64_t sub_2684DE594(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_268568D70();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_2684DDBA0(0, 0, v8, &unk_26856AE30, v10);
}

uint64_t sub_2684DE694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_268567C50();
  v6[4] = v7;
  v8 = *(v7 - 8);
  v6[5] = v8;
  v9 = *(v8 + 64) + 15;
  v6[6] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[7] = v10;
  *v10 = v6;
  v10[1] = sub_2684DAC24;

  return sub_2684DDDD0();
}

uint64_t sub_2684DE7D8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2684DE820(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2684DB128;

  return sub_2684DE694(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2684DE8E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2684DE960(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2684DE984(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_3(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    OUTLINED_FUNCTION_17_0();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_13_1();
}

uint64_t sub_2684DE9E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_3(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    OUTLINED_FUNCTION_17_0();
  }

  *v3 = v7;
  return OUTLINED_FUNCTION_13_1();
}

uint64_t sub_2684DEA44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2684DEA8C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_3(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    OUTLINED_FUNCTION_17_0();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_13_1();
}

unint64_t OUTLINED_FUNCTION_1_3(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_2684DE950(a3);

  return sub_2684DE960(a2, v5, a3);
}

void OUTLINED_FUNCTION_4_2()
{
  v3 = v1[73];
  v4 = v1[72];
  v5 = v1[71];
  v6 = v1[70];
}

void OUTLINED_FUNCTION_5_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_8_1()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 49);
  return v0 + 56;
}

void OUTLINED_FUNCTION_11_2()
{

  JUMPOUT(0x26D61CB30);
}

BOOL OUTLINED_FUNCTION_12_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_17_0()
{

  JUMPOUT(0x26D61C170);
}

uint64_t sub_2684DEC48()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282CE0, &qword_26856AF68);
  return sub_268568B70();
}

void *sub_2684DECAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2685688F0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = a1;
  sub_2684D57FC(a2, (v2 + 5));
  sub_2684D57FC(a2 + 40, (v2 + 10));
  type metadata accessor for UnsupportedNotificationsCATs();

  sub_2685688E0();
  sub_2685686F0();
  sub_2684D57FC(a2 + 40, v10);
  sub_2685686B0();
  v8 = sub_268568710();

  sub_2684CC8D4(a2);
  v3[15] = v8;
  return v3;
}

uint64_t sub_2684DEDB8()
{
  OUTLINED_FUNCTION_5();
  v1[19] = v0;
  v2 = sub_2685679B0();
  v1[20] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[21] = v3;
  v5 = *(v4 + 64) + 15;
  v1[22] = swift_task_alloc();
  v6 = sub_268567B60();
  v1[23] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[24] = v7;
  v9 = *(v8 + 64) + 15;
  v1[25] = swift_task_alloc();
  v10 = sub_2685689F0();
  v1[26] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[27] = v11;
  v13 = *(v12 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v14 = sub_268567D90();
  v1[31] = v14;
  OUTLINED_FUNCTION_2_4(v14);
  v1[32] = v15;
  v17 = *(v16 + 64) + 15;
  v1[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2684DEF80, 0, 0);
}

uint64_t sub_2684DEF80()
{
  v1 = *(v0[19] + 32);
  v2 = sub_268503BF8();
  v0[34] = v2;
  if (v2)
  {
    v3 = *(v0[19] + 120);
    v4 = *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_appName);
    v0[35] = v4;

    v5 = swift_task_alloc();
    v0[36] = v5;
    *v5 = v0;
    v5[1] = sub_2684DF2AC;
    v6 = v0[33];

    return sub_268532FB4(v6, v4);
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v8 = v0[29];
    v9 = v0[27];
    __swift_project_value_buffer(v0[26], qword_28028B348);
    v10 = OUTLINED_FUNCTION_12_2();
    v11(v10);
    v12 = sub_2685689E0();
    v13 = sub_268568DE0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2684CA000, v12, v13, "ANReadUnsupportedFollowupAction run | missing the last notification announced", v14, 2u);
      OUTLINED_FUNCTION_2();
    }

    v15 = v0[29];
    v16 = v0[26];
    v17 = v0[27];
    v19 = v0[24];
    v18 = v0[25];
    v20 = v0[22];
    v21 = v0[23];
    v22 = v0[21];
    v34 = v0[20];

    (*(v17 + 8))(v15, v16);
    sub_268567990();
    v23 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_268567A20();
    (*(v19 + 104))(v18, *MEMORY[0x277D5BC00], v21);
    (*(v22 + 104))(v20, *MEMORY[0x277D5B8D0], v34);
    sub_268568B70();
    v24 = OUTLINED_FUNCTION_1_4();
    sub_2684EBB74(v24, v25, v18, v20, 8, v26, v27, 0, v32, v33);
    sub_2685679A0();

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    sub_2684E00CC();
    swift_allocError();
    swift_willThrow();
    v28 = v0[33];
    v30 = v0[29];
    v29 = v0[30];
    OUTLINED_FUNCTION_7_3();

    OUTLINED_FUNCTION_9_1();

    return v31();
  }
}

uint64_t sub_2684DF2AC()
{
  OUTLINED_FUNCTION_5();
  v3 = *(*v1 + 288);
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v2;
  *(v2 + 296) = v0;

  if (v0)
  {
    v5 = sub_2684DF848;
  }

  else
  {
    v6 = *(v2 + 280);

    v5 = sub_2684DF3BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2684DF3BC()
{
  v1 = v0[19];
  v2 = sub_26851C004(v0[33], v1 + 10);
  v0[38] = v2;
  v3 = v1[8];
  v4 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v3);
  v5 = *(MEMORY[0x277D5BFB8] + 4);
  v6 = swift_task_alloc();
  v0[39] = v6;
  v7 = sub_2684E0120();
  *v6 = v0;
  v6[1] = sub_2684DF4AC;

  return MEMORY[0x2821BB6A0](v2, v3, v7, v4);
}

uint64_t sub_2684DF4AC()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = *(*v1 + 312);
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v7 + 320) = v0;

  if (v0)
  {
    v8 = sub_2684DFB10;
  }

  else
  {

    v8 = sub_2684DF5BC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2684DF5BC()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[30];
  v2 = v0[27];
  __swift_project_value_buffer(v0[26], qword_28028B348);
  v3 = OUTLINED_FUNCTION_12_2();
  v4(v3);
  v5 = sub_2685689E0();
  v6 = sub_268568DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "ANReadUnsupportedFollowupAction run | read unsupported follow-up message, transitioning to follow-up", v7, 2u);
    OUTLINED_FUNCTION_2();
  }

  v8 = v0[34];
  v25 = v0[38];
  v26 = v0[32];
  v27 = v0[31];
  v28 = v0[33];
  v9 = v0[30];
  v29 = v0[29];
  v10 = v0[27];
  v30 = v0[28];
  v12 = v0[25];
  v11 = v0[26];
  v14 = v0[23];
  v13 = v0[24];
  v15 = v0[21];
  v22 = v0[22];
  v23 = v0[20];

  (*(v10 + 8))(v9, v11);
  sub_268567990();
  v24 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  sub_268567A20();
  (*(v13 + 104))(v12, *MEMORY[0x277D5BC00], v14);
  (*(v15 + 104))(v22, *MEMORY[0x277D5B930], v23);

  v16 = OUTLINED_FUNCTION_1_4();
  sub_2684EBB74(v16, v17, v12, v22, 2, 0, 0, v8, v20, v21);
  sub_2685679A0();

  (*(v26 + 8))(v28, v27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  OUTLINED_FUNCTION_9_1();

  return v18();
}

uint64_t sub_2684DF848()
{
  v40 = v0;
  v4 = v0[35];

  v5 = v0[37];
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v7 = v0[27];
  v6 = v0[28];
  __swift_project_value_buffer(v0[26], qword_28028B348);
  v8 = OUTLINED_FUNCTION_10_1();
  v9(v8);
  v10 = v5;
  v11 = sub_2685689E0();
  v12 = sub_268568DE0();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[27];
  v15 = v0[28];
  v16 = v0[26];
  if (v13)
  {
    swift_slowAlloc();
    v1 = OUTLINED_FUNCTION_13_2();
    v39 = v1;
    *v15 = 136315138;
    v0[18] = v5;
    v17 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v18 = sub_268568B70();
    v2 = v19;
    v3 = sub_2684EABEC(v18, v19, &v39);

    *(v15 + 4) = v3;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v20, v21, "ANReadUnsupportedFollowupAction run | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v1);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    (*(v14 + 8))(v38, v16);
  }

  else
  {

    (*(v14 + 8))(v15, v16);
  }

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_9_3();
  (*(v1 + 104))(v11, *MEMORY[0x277D5BC00], v3);
  v5[13](v15, *MEMORY[0x277D5B8D0], v12);
  v0[17] = v2;
  v22 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
  sub_268568B70();

  v23 = OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_3_4(v23, v24, v25, v26, v27, v28, v29, v30, v36, v37);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  swift_willThrow();

  v31 = v0[33];
  v33 = v0[29];
  v32 = v0[30];
  OUTLINED_FUNCTION_7_3();

  OUTLINED_FUNCTION_9_1();

  return v34();
}

uint64_t sub_2684DFB10()
{
  v42 = v0;
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v6 = *(v0 + 248);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 320);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v9 = *(v0 + 216);
  v8 = *(v0 + 224);
  __swift_project_value_buffer(*(v0 + 208), qword_28028B348);
  v10 = OUTLINED_FUNCTION_10_1();
  v11(v10);
  v12 = v7;
  v13 = sub_2685689E0();
  v14 = sub_268568DE0();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 216);
  v17 = *(v0 + 224);
  v18 = *(v0 + 208);
  if (v15)
  {
    swift_slowAlloc();
    v1 = OUTLINED_FUNCTION_13_2();
    v41 = v1;
    *v17 = 136315138;
    *(v0 + 144) = v7;
    v19 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v20 = sub_268568B70();
    v2 = v21;
    v3 = sub_2684EABEC(v20, v21, &v41);

    *(v17 + 4) = v3;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v22, v23, "ANReadUnsupportedFollowupAction run | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v1);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    (*(v16 + 8))(v40, v18);
  }

  else
  {

    (*(v16 + 8))(v17, v18);
  }

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_9_3();
  (*(v1 + 104))(v13, *MEMORY[0x277D5BC00], v3);
  v7[13](v17, *MEMORY[0x277D5B8D0], v14);
  *(v0 + 136) = v2;
  v24 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
  sub_268568B70();

  v25 = OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_3_4(v25, v26, v27, v28, v29, v30, v31, v32, v38, v39);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  swift_willThrow();

  v33 = *(v0 + 264);
  v35 = *(v0 + 232);
  v34 = *(v0 + 240);
  OUTLINED_FUNCTION_7_3();

  OUTLINED_FUNCTION_9_1();

  return v36();
}

void *sub_2684DFDF8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  v3 = v0[15];

  return v0;
}

uint64_t sub_2684DFE38()
{
  sub_2684DFDF8();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t sub_2684DFE90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DFF1C;

  return sub_2684DEDB8();
}

uint64_t sub_2684DFF1C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;

  OUTLINED_FUNCTION_9_1();

  return v4();
}