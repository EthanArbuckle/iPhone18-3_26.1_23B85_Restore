uint64_t sub_22313258C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75536E6F69746361 && a2 == 0xED00007972616D6DLL;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73736572676F7270 && a2 == 0xEE00657461647055;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000223223070 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6165627472616568 && a2 == 0xE900000000000074)
      {

        return 3;
      }

      else
      {
        v9 = sub_2232006B4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_223132704(char a1)
{
  result = 0x75536E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x73736572676F7270;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6165627472616568;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2231327A8(uint64_t a1)
{
  v2 = sub_223134F38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231327E4(uint64_t a1)
{
  v2 = sub_223134F38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223132828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22313258C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223132850(uint64_t a1)
{
  v2 = sub_223134CEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22313288C(uint64_t a1)
{
  v2 = sub_223134CEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231328C8(uint64_t a1)
{
  v2 = sub_223134D40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223132904(uint64_t a1)
{
  v2 = sub_223134D40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223132940(uint64_t a1)
{
  v2 = sub_223134E90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22313297C(uint64_t a1)
{
  v2 = sub_223134E90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231329B8(uint64_t a1)
{
  v2 = sub_223134DE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231329F4(uint64_t a1)
{
  v2 = sub_223134DE8();

  return MEMORY[0x2821FE720](a1, v2);
}

void IntelligenceFlowStatusUpdateMessage.StatusUpdate.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058330, &qword_223209EE0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v51 = v7;
  v52 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_3();
  v50 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058338, &qword_223209EE8);
  v13 = OUTLINED_FUNCTION_9(v12);
  v48 = v14;
  v49 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_3();
  v47 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058340, &qword_223209EF0);
  v20 = OUTLINED_FUNCTION_9(v19);
  v45 = v21;
  v46 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4_11();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058348, &qword_223209EF8);
  OUTLINED_FUNCTION_9(v25);
  v44 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058350, &qword_223209F00);
  OUTLINED_FUNCTION_9(v30);
  v55 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_35_0();
  v53 = *v0;
  v43 = *(v0 + 3);
  v54 = *(v0 + 1);
  v35 = *(v0 + 40);
  v36 = v4[4];
  OUTLINED_FUNCTION_29(v4, v4[3]);
  sub_223134CEC();
  sub_2232007A4();
  switch(v35)
  {
    case 1:
      OUTLINED_FUNCTION_43();
      sub_223134E90();
      OUTLINED_FUNCTION_8_8();
      sub_2232005B4();
      sub_223134EE4();
      sub_223200654();
      (*(v45 + 8))(v1, v46);
      break;
    case 2:
      sub_223134DE8();
      v37 = v47;
      OUTLINED_FUNCTION_8_8();
      sub_2232005B4();
      sub_223134E3C();
      v38 = v49;
      sub_223200654();
      v39 = v48;
      goto LABEL_5;
    case 3:
      sub_223134D40();
      v37 = v50;
      OUTLINED_FUNCTION_8_8();
      sub_2232005B4();
      sub_223134D94();
      v38 = v52;
      sub_223200654();
      v39 = v51;
LABEL_5:
      (*(v39 + 8))(v37, v38);
      break;
    default:
      sub_223134F38();
      OUTLINED_FUNCTION_8_8();
      sub_2232005B4();
      sub_223134F8C();
      sub_223200654();
      (*(v44 + 8))(v2, v25);
      break;
  }

  v40 = *(v55 + 8);
  v41 = OUTLINED_FUNCTION_24();
  v42(v41);
  OUTLINED_FUNCTION_9_0();
}

void IntelligenceFlowStatusUpdateMessage.StatusUpdate.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v87 = v4;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0583A0, &qword_223209F08);
  OUTLINED_FUNCTION_9(v90);
  v86 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_3();
  v89 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0583A8, &qword_223209F10);
  v84 = OUTLINED_FUNCTION_9(v10);
  v85 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_3();
  v88 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0583B0, &qword_223209F18);
  v17 = OUTLINED_FUNCTION_9(v16);
  v82 = v18;
  v83 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v21);
  v23 = v77 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0583B8, &qword_223209F20);
  OUTLINED_FUNCTION_9(v24);
  v81 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_34();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0583C0, &unk_223209F28);
  OUTLINED_FUNCTION_9(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v34);
  v36 = v77 - v35;
  v37 = v3[3];
  v38 = v3[4];
  v91 = v3;
  OUTLINED_FUNCTION_29(v3, v37);
  sub_223134CEC();
  sub_223200794();
  if (v0)
  {
    goto LABEL_9;
  }

  v78 = v24;
  v79 = v1;
  v80 = v23;
  v39 = v88;
  v95 = v31;
  v40 = v36;
  v41 = sub_223200594();
  sub_2230E0B80(v41, 0);
  if (v43 == v44 >> 1)
  {
LABEL_8:
    v52 = sub_2232003A4();
    swift_allocError();
    v54 = v53;
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v54 = &type metadata for IntelligenceFlowStatusUpdateMessage.StatusUpdate;
    sub_223200484();
    OUTLINED_FUNCTION_48();
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x277D84160], v52);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v95 + 8))(v40, v29);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v91);
LABEL_10:
    OUTLINED_FUNCTION_9_0();
    return;
  }

  if (v43 < (v44 >> 1))
  {
    v77[0] = *(v42 + v43);
    v45 = sub_2230E0B40(v43 + 1);
    v47 = v46;
    v49 = v48;
    swift_unknownObjectRelease();
    v77[1] = v45;
    if (v47 == v49 >> 1)
    {
      v50 = v87;
      switch(v77[0])
      {
        case 1:
          OUTLINED_FUNCTION_43();
          sub_223134E90();
          OUTLINED_FUNCTION_17_1();
          sub_2231370BC();
          v58 = v83;
          OUTLINED_FUNCTION_47_1();
          swift_unknownObjectRelease();
          v71 = OUTLINED_FUNCTION_25();
          v72(v71, v58);
          v73 = OUTLINED_FUNCTION_19_0();
          v74(v73);
          v69 = v92;
          v70 = v93;
          v75 = v94;
          goto LABEL_15;
        case 2:
          LOBYTE(v92) = 2;
          sub_223134DE8();
          v56 = v39;
          OUTLINED_FUNCTION_17_1();
          sub_223137068();
          v57 = v84;
          sub_223200554();
          swift_unknownObjectRelease();
          (*(v85 + 8))(v56, v57);
          v59 = OUTLINED_FUNCTION_18_2();
          v60(v59);
          v69 = v92;
          *&v70 = v93;
          goto LABEL_14;
        case 3:
          LOBYTE(v92) = 3;
          sub_223134D40();
          OUTLINED_FUNCTION_17_1();
          sub_223137014();
          sub_223200554();
          swift_unknownObjectRelease();
          v61 = OUTLINED_FUNCTION_3_12();
          v62(v61);
          v63 = OUTLINED_FUNCTION_18_2();
          v64(v63);
          v69 = 0;
          v70 = 0uLL;
          goto LABEL_14;
        default:
          LOBYTE(v92) = 0;
          sub_223134F38();
          OUTLINED_FUNCTION_17_1();
          sub_223137110();
          v51 = v78;
          OUTLINED_FUNCTION_47_1();
          swift_unknownObjectRelease();
          v65 = OUTLINED_FUNCTION_25();
          v66(v65, v51);
          v67 = OUTLINED_FUNCTION_18_2();
          v68(v67);
          v69 = v92;
          v70 = v93;
LABEL_14:
          v75 = 0uLL;
LABEL_15:
          v76 = v91;
          *v50 = v69;
          *(v50 + 8) = v70;
          *(v50 + 24) = v75;
          *(v50 + 40) = v77[0];
          __swift_destroy_boxed_opaque_existential_1(v76);
          break;
      }

      goto LABEL_10;
    }

    v40 = v36;
    goto LABEL_8;
  }

  __break(1u);
}

void IntelligenceFlowStatusUpdateMessage.StatusNotification.init(build:)(void (*a1)(uint64_t *)@<X0>, void *a2@<X8>)
{
  v15 = 0;
  v16 = 0;
  a1(&v15);
  v3 = v16;
  if (v16)
  {
    *a2 = v15;
    a2[1] = v3;
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v4 = sub_223200014();
    __swift_project_value_buffer(v4, qword_280FCE830);
    v5 = sub_223200004();
    v6 = sub_223200254();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_51();
      v14 = OUTLINED_FUNCTION_50();
      *v7 = 136446466;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0583E8, &qword_223209F38);
      v8 = sub_223200104();
      v10 = sub_2231A5D38(v8, v9, &v14);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      v11 = sub_223200104();
      v13 = sub_2231A5D38(v11, v12, &v14);

      *(v7 + 14) = v13;
      _os_log_impl(&dword_2230CE000, v5, v6, "Could not build %{public}s: Builder %s has missing required fields", v7, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    else
    {
    }

    *a2 = 0;
    a2[1] = 0;
  }
}

uint64_t IntelligenceFlowStatusUpdateMessage.StatusNotification.Builder.statusString.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_223133904(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7453737574617473 && a2 == 0xEC000000676E6972)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2231339A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223133904(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231339D0(uint64_t a1)
{
  v2 = sub_223137164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223133A0C(uint64_t a1)
{
  v2 = sub_223137164();

  return MEMORY[0x2821FE720](a1, v2);
}

void IntelligenceFlowStatusUpdateMessage.StatusNotification.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0583F0, &qword_223209F40);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_11();
  v10 = *v0;
  v11 = v0[1];
  v12 = v3[4];
  OUTLINED_FUNCTION_29(v3, v3[3]);
  sub_223137164();
  sub_2232007A4();
  OUTLINED_FUNCTION_46_0();
  sub_2232005F4();
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_9_0();
}

void IntelligenceFlowStatusUpdateMessage.StatusNotification.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058400, &qword_223209F48);
  OUTLINED_FUNCTION_9(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_11();
  v12 = v3[3];
  v13 = v3[4];
  v14 = OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_29(v14, v15);
  sub_223137164();
  sub_223200794();
  if (!v0)
  {
    v16 = sub_2232004F4();
    v18 = v17;
    (*(v8 + 8))(v1, v6);
    *v5 = v16;
    v5[1] = v18;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_9_0();
}

uint64_t static IntelligenceFlowStatusUpdateMessage.ActionSummary.ParameterSummary.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v12 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        v9 = OUTLINED_FUNCTION_33_0();
        OUTLINED_FUNCTION_5_13();
        OUTLINED_FUNCTION_2_15();
        OUTLINED_FUNCTION_2_15();
        sub_22312BDAC();
        OUTLINED_FUNCTION_5_13();
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_2_15();
      OUTLINED_FUNCTION_2_15();
      sub_22312BDAC();
      sub_22312BDAC();
      return 1;
    }

LABEL_9:
    OUTLINED_FUNCTION_5_13();
    OUTLINED_FUNCTION_2_15();
    OUTLINED_FUNCTION_2_15();
    sub_22312BDAC();
    OUTLINED_FUNCTION_5_13();
    sub_22312BDAC();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v10 = 1;
    OUTLINED_FUNCTION_1_12();
    sub_22312BDA4();
    OUTLINED_FUNCTION_1_12();
    sub_22312BDA4();
    OUTLINED_FUNCTION_1_12();
    sub_22312BDAC();
    OUTLINED_FUNCTION_1_12();
    sub_22312BDAC();
    return v10;
  }

  v8 = *a1;
  v9 = OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_5_13();
  sub_22312BDA4();
  OUTLINED_FUNCTION_1_12();
  sub_22312BDA4();
  OUTLINED_FUNCTION_1_12();
  sub_22312BDAC();
  OUTLINED_FUNCTION_5_13();
LABEL_16:
  sub_22312BDAC();
  return v9 & 1;
}

uint64_t sub_223133E2C(uint64_t a1)
{
  v2 = sub_2231371B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223133E68(uint64_t a1)
{
  v2 = sub_2231371B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223133EA4(uint64_t a1)
{
  v2 = sub_223137260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223133EE0(uint64_t a1)
{
  v2 = sub_223137260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223133F1C(uint64_t a1)
{
  v2 = sub_22313720C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223133F58(uint64_t a1)
{
  v2 = sub_22313720C();

  return MEMORY[0x2821FE720](a1, v2);
}

void IntelligenceFlowStatusUpdateMessage.ActionSummary.ParameterSummary.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058408, &qword_223209F50);
  v4 = OUTLINED_FUNCTION_9(v3);
  v29 = v5;
  v30 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_3();
  v28 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058410, &qword_223209F58);
  v27 = OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058418, &qword_223209F60);
  OUTLINED_FUNCTION_9(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v31 = v0[1];
  v32 = *v0;
  v20 = *(v0 + 16);
  v21 = v2[4];
  OUTLINED_FUNCTION_29(v2, v2[3]);
  sub_2231371B8();
  sub_2232007A4();
  if (v20)
  {
    sub_22313720C();
    sub_2232005B4();
    sub_2232005F4();
    (*(v29 + 8))(v28, v30);
  }

  else
  {
    sub_223137260();
    sub_2232005B4();
    sub_2232005F4();
    v22 = OUTLINED_FUNCTION_25();
    v23(v22, v27);
  }

  v24 = *(v16 + 8);
  v25 = OUTLINED_FUNCTION_45();
  v26(v25);
  OUTLINED_FUNCTION_9_0();
}

void IntelligenceFlowStatusUpdateMessage.ActionSummary.ParameterSummary.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v50 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058438, &qword_223209F68);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_11();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058440, &qword_223209F70);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058448, &qword_223209F78);
  OUTLINED_FUNCTION_9(v13);
  v49 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_35_0();
  v18 = v4[4];
  OUTLINED_FUNCTION_29(v4, v4[3]);
  sub_2231371B8();
  sub_223200794();
  if (v0)
  {
    goto LABEL_9;
  }

  v51 = v4;
  v19 = sub_223200594();
  sub_2230E0B80(v19, 0);
  if (v21 == v22 >> 1)
  {
LABEL_7:
    v31 = sub_2232003A4();
    swift_allocError();
    v33 = v32;
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v33 = &type metadata for IntelligenceFlowStatusUpdateMessage.ActionSummary.ParameterSummary;
    sub_223200484();
    OUTLINED_FUNCTION_48();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v49 + 8))(v1, v13);
    v4 = v51;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_10:
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_9_0();
    return;
  }

  if (v21 < (v22 >> 1))
  {
    v23 = *(v20 + v21);
    sub_2230E0B40(v21 + 1);
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    if (v25 == v27 >> 1)
    {
      v28 = v23;
      if (v23)
      {
        v47 = v23;
        sub_22313720C();
        OUTLINED_FUNCTION_8_8();
        sub_223200474();
        v29 = v50;
        v30 = v49;
        v36 = sub_2232004F4();
        v38 = v37;
        swift_unknownObjectRelease();
        v39 = OUTLINED_FUNCTION_3_12();
        v40(v39);
        v28 = v47;
      }

      else
      {
        sub_223137260();
        OUTLINED_FUNCTION_8_8();
        sub_223200474();
        v29 = v50;
        v35 = sub_2232004F4();
        v38 = v41;
        v48 = v35;
        swift_unknownObjectRelease();
        v42 = OUTLINED_FUNCTION_25();
        v43(v42, v9);
        v36 = v48;
        v30 = v49;
      }

      v44 = *(v30 + 8);
      v45 = OUTLINED_FUNCTION_24();
      v46(v45);
      *v29 = v36;
      *(v29 + 8) = v38;
      *(v29 + 16) = v28;
      __swift_destroy_boxed_opaque_existential_1(v51);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void IntelligenceFlowStatusUpdateMessage.ActionSummary.init(build:)(void (*a1)(uint64_t *)@<X0>, void *a2@<X8>)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  a1(&v16);
  v3 = v17;
  if (v17 && (v4 = v18) != 0)
  {
    *a2 = v16;
    a2[1] = v3;
    a2[2] = v4;
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v5 = sub_223200014();
    __swift_project_value_buffer(v5, qword_280FCE830);

    v6 = sub_223200004();
    v7 = sub_223200254();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_51();
      v15 = OUTLINED_FUNCTION_50();
      *v8 = 136446466;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058450, &qword_223209F80);
      v9 = sub_223200104();
      v11 = sub_2231A5D38(v9, v10, &v15);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      v12 = sub_223200104();
      v14 = sub_2231A5D38(v12, v13, &v15);

      *(v8 + 14) = v14;
      _os_log_impl(&dword_2230CE000, v6, v7, "Could not build %{public}s: Builder %s has missing required fields", v8, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    else
    {
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

uint64_t IntelligenceFlowStatusUpdateMessage.ActionSummary.Builder.formatString.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowStatusUpdateMessage.ActionSummary.Builder.parameterSummaries.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_223134A5C(uint64_t result, uint64_t a2)
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
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v34 = (v6 + 63) >> 6;
  v35 = result;
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v36 = (v8 - 1) & v8;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v3 + 56) + 24 * v12;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);

    sub_22312BDA4();
    v20 = v14 == 0;
    if (!v14)
    {
      return v20;
    }

    v21 = sub_22314C358(v15, v14);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      goto LABEL_32;
    }

    v24 = *(a2 + 56) + 24 * v21;
    v26 = *v24;
    v25 = *(v24 + 8);
    if (*(v24 + 16))
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_31;
      }

      if (v26 != v18 || v25 != v17)
      {
        goto LABEL_27;
      }

LABEL_29:
      v32 = *(v24 + 8);

      sub_22312BDAC();
      result = sub_22312BDAC();
      v3 = v35;
      v8 = v36;
    }

    else
    {
      if (v19)
      {
LABEL_31:
        v33 = *(v24 + 8);

        sub_22312BDAC();
LABEL_32:
        sub_22312BDAC();
        return 0;
      }

      if (v26 == v18 && v25 == v17)
      {
        goto LABEL_29;
      }

LABEL_27:
      v29 = *v24;
      v30 = *(v24 + 8);
      v31 = sub_2232006B4();

      sub_22312BDAC();
      result = sub_22312BDAC();
      v3 = v35;
      v8 = v36;
      if ((v31 & 1) == 0)
      {
        return v20;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v34)
    {
      return 1;
    }

    v11 = *(v5 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_223134CEC()
{
  result = qword_27D058358;
  if (!qword_27D058358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058358);
  }

  return result;
}

unint64_t sub_223134D40()
{
  result = qword_27D058360;
  if (!qword_27D058360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058360);
  }

  return result;
}

unint64_t sub_223134D94()
{
  result = qword_27D058368;
  if (!qword_27D058368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058368);
  }

  return result;
}

unint64_t sub_223134DE8()
{
  result = qword_27D058370;
  if (!qword_27D058370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058370);
  }

  return result;
}

unint64_t sub_223134E3C()
{
  result = qword_27D058378;
  if (!qword_27D058378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058378);
  }

  return result;
}

unint64_t sub_223134E90()
{
  result = qword_27D058380;
  if (!qword_27D058380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058380);
  }

  return result;
}

unint64_t sub_223134EE4()
{
  result = qword_27D058388;
  if (!qword_27D058388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058388);
  }

  return result;
}

unint64_t sub_223134F38()
{
  result = qword_27D058390;
  if (!qword_27D058390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058390);
  }

  return result;
}

unint64_t sub_223134F8C()
{
  result = qword_27D058398;
  if (!qword_27D058398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058398);
  }

  return result;
}

uint64_t sub_223134FE0(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_22314C358(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = OUTLINED_FUNCTION_33_0();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_223135174(uint64_t a1)
{
  v2 = sub_2231372B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231351B0(uint64_t a1)
{
  v2 = sub_2231372B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void IntelligenceFlowStatusUpdateMessage.ActionSummary.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058458, &qword_223209F88);
  OUTLINED_FUNCTION_9(v5);
  v14 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_34();
  v10 = *v0;
  v11 = v0[1];
  v13 = v0[2];
  v12 = v4[4];
  OUTLINED_FUNCTION_29(v4, v4[3]);
  sub_2231372B4();
  sub_2232007A4();
  OUTLINED_FUNCTION_36_0();
  sub_2232005F4();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058468, &qword_223209F90);
    sub_22313735C(&qword_27D058470, sub_223137308);
    sub_223200654();
  }

  (*(v14 + 8))(v2, v5);
  OUTLINED_FUNCTION_9_0();
}

void IntelligenceFlowStatusUpdateMessage.ActionSummary.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058480, &qword_223209F98);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v9 = v2[3];
  v10 = v2[4];
  v11 = OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_29(v11, v12);
  sub_2231372B4();
  OUTLINED_FUNCTION_21_3();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_9_7();
    v13 = sub_2232004F4();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058468, &qword_223209F90);
    sub_22313735C(&qword_27D058488, sub_2231373E0);
    OUTLINED_FUNCTION_9_7();
    sub_223200554();
    v16 = OUTLINED_FUNCTION_2();
    v17(v16);
    *v4 = v13;
    v4[1] = v15;
    v4[2] = v18;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_9_0();
}

uint64_t IntelligenceFlowStatusUpdateMessage.ProgressUpdate.progressDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t IntelligenceFlowStatusUpdateMessage.ProgressUpdate.additionalProgressDescription.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_2_1();
}

void IntelligenceFlowStatusUpdateMessage.ProgressUpdate.init(build:)(void (*a1)(unsigned int *)@<X0>, void *a2@<X8>)
{
  v16 = 0;
  v17 = 1;
  v18 = 0u;
  v19 = 0u;
  a1(&v16);
  if (v17)
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v3 = sub_223200014();
    __swift_project_value_buffer(v3, qword_280FCE830);

    v4 = sub_223200004();
    v5 = sub_223200254();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_51();
      v15 = OUTLINED_FUNCTION_50();
      *v6 = 136446466;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058498, &qword_223209FA0);
      v7 = sub_223200104();
      v9 = sub_2231A5D38(v7, v8, &v15);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2080;
      v10 = sub_223200104();
      v12 = sub_2231A5D38(v10, v11, &v15);

      *(v6 + 14) = v12;
      _os_log_impl(&dword_2230CE000, v4, v5, "Could not build %{public}s: Builder %s has missing required fields", v6, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    else
    {
    }

    *a2 = 0;
    a2[1] = 0;
    a2[3] = 0;
    a2[4] = 0;
    a2[2] = 1;
  }

  else
  {
    v13 = v18;
    v14 = v19;
    *a2 = v16;
    *(a2 + 1) = v13;
    *(a2 + 3) = v14;
  }
}

uint64_t IntelligenceFlowStatusUpdateMessage.ProgressUpdate.Builder.progress.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowStatusUpdateMessage.ProgressUpdate.Builder.progressDescription.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t IntelligenceFlowStatusUpdateMessage.ProgressUpdate.Builder.additionalProgressDescription.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t sub_22313595C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572676F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000223223090 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001DLL && 0x80000002232230B0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

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

uint64_t sub_223135A78(char a1)
{
  if (!a1)
  {
    return 0x73736572676F7270;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD00000000000001DLL;
}

uint64_t sub_223135ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22313595C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223135B04(uint64_t a1)
{
  v2 = sub_223137434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223135B40(uint64_t a1)
{
  v2 = sub_223137434();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceFlowStatusUpdateMessage.ProgressUpdate.encode(to:)(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0584A0, &qword_223209FA8);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_34();
  v11 = *v1;
  v16 = *(v1 + 2);
  v17 = *(v1 + 1);
  v12 = *(v1 + 4);
  v15 = *(v1 + 3);
  v13 = a1[4];
  OUTLINED_FUNCTION_29(a1, a1[3]);
  sub_223137434();
  sub_2232007A4();
  sub_223200624();
  if (!v2)
  {
    OUTLINED_FUNCTION_36_0();
    sub_2232005C4();
    OUTLINED_FUNCTION_36_0();
    sub_2232005C4();
  }

  return (*(v7 + 8))(v3, v5);
}

void IntelligenceFlowStatusUpdateMessage.ProgressUpdate.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0584B0, &qword_223209FB0);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v11 = a1[3];
  v12 = a1[4];
  v13 = OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_29(v13, v14);
  sub_223137434();
  OUTLINED_FUNCTION_21_3();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    OUTLINED_FUNCTION_9_7();
    sub_223200524();
    v16 = v15;
    OUTLINED_FUNCTION_9_7();
    v17 = sub_223200494();
    v19 = v18;
    OUTLINED_FUNCTION_9_7();
    v20 = sub_223200494();
    v22 = v21;
    v23 = *(v7 + 8);
    v26 = v20;
    v24 = OUTLINED_FUNCTION_45();
    v25(v24);
    *a2 = v16;
    *(a2 + 8) = v17;
    *(a2 + 16) = v19;
    *(a2 + 24) = v26;
    *(a2 + 32) = v22;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_44_0();
}

uint64_t sub_223135F20(uint64_t a1)
{
  v2 = sub_223137488();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223135F5C(uint64_t a1)
{
  v2 = sub_223137488();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceFlowStatusUpdateMessage.Heartbeat.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0584B8, &qword_223209FB8);
  OUTLINED_FUNCTION_9(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_35_0();
  v8 = a1[4];
  OUTLINED_FUNCTION_29(a1, a1[3]);
  sub_223137488();
  sub_2232007A4();
  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_24();
  return v11(v10);
}

void IntelligenceFlowStatusUpdateMessage.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0584C8, &qword_223209FC0);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v8 = v3[4];
  OUTLINED_FUNCTION_29(v3, v3[3]);
  sub_2231374DC();
  OUTLINED_FUNCTION_21_3();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    type metadata accessor for IntelligenceFlowStatusUpdateMessage(0);
    v9 = *((*MEMORY[0x277D85000] & *v0) + 0x30);
    v10 = *((*MEMORY[0x277D85000] & *v0) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_223137550();
    OUTLINED_FUNCTION_9_7();
    sub_223200554();
    v11 = v21;
    v12 = v22;
    v13 = v0 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_statusUpdate;
    v14 = v20[1];
    *v13 = v20[0];
    *(v13 + 1) = v14;
    *(v13 + 4) = v11;
    v13[40] = v12;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_9_7();
    v15 = sub_2232004F4();
    v16 = (v0 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_rootRequestId);
    *v16 = v15;
    v16[1] = v17;
    sub_2230F7158(v3, v20);
    RequestMessageBase.init(from:)(v20);
    v18 = OUTLINED_FUNCTION_2();
    v19(v18);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_9_0();
}

void sub_223136384()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0584E0, &unk_223209FC8);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_11();
  v11 = v4[4];
  OUTLINED_FUNCTION_29(v4, v4[3]);
  sub_2231374DC();
  sub_2232007A4();
  v19 = OUTLINED_FUNCTION_12_4((v0 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_statusUpdate));
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  sub_223131F94(v19, v12, v13, v14, v15, v16);
  sub_2231375A4();
  sub_223200654();
  sub_223132518(v19, v20, v21, v22, v23, v24);
  if (!v1)
  {
    v17 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_rootRequestId);
    v18 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_rootRequestId + 8);
    OUTLINED_FUNCTION_43();
    sub_2232005F4();
    sub_2230D77A8(v4);
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_22313652C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7055737574617473 && a2 == 0xEC00000065746164;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x75716552746F6F72 && a2 == 0xED00006449747365)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_223136600(char a1)
{
  if (a1)
  {
    return 0x75716552746F6F72;
  }

  else
  {
    return 0x7055737574617473;
  }
}

uint64_t sub_223136654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22313652C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22313667C(uint64_t a1)
{
  v2 = sub_2231374DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231366B8(uint64_t a1)
{
  v2 = sub_2231374DC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *IntelligenceFlowStatusUpdateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return IntelligenceFlowStatusUpdateMessage.init(build:)(v1);
}

void *IntelligenceFlowStatusUpdateMessage.init(build:)(void (*a1)(_BYTE *))
{
  v2 = v1;
  swift_getObjectType();
  updated = type metadata accessor for IntelligenceFlowStatusUpdateMessage.Builder(0);
  v5 = *(*(updated - 8) + 64);
  v6 = MEMORY[0x28223BE20](updated);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v46 - v10;
  *(v11 + 4) = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 20) = 4095;
  *(v11 + 6) = 0;
  *(v11 + 7) = 0;
  v12 = *(v9 + 28);
  v13 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v11[v12], 1, 1, v13);
  v14 = &v11[*(updated + 32)];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v11[*(updated + 36)];
  *v15 = 0;
  v15[1] = 0;
  a1(v11);
  v16 = v11[40];
  if (v16 == 255)
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v25 = sub_223200014();
    __swift_project_value_buffer(v25, qword_280FCE830);
    v26 = sub_223200004();
    v27 = sub_223200254();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_51();
      v47 = OUTLINED_FUNCTION_50();
      *v28 = 136446466;
      v29 = sub_2230F7898();
      v31 = sub_2231A5D38(v29, v30, &v47);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      swift_beginAccess();
      sub_223137674(v11, v8);
      OUTLINED_FUNCTION_24();
      v32 = sub_223200104();
      v34 = sub_2231A5D38(v32, v33, &v47);

      *(v28 + 14) = v34;
      _os_log_impl(&dword_2230CE000, v26, v27, "Could not build %{public}s: Builder %s has missing required fields", v28, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    sub_223137618(v11);
    type metadata accessor for IntelligenceFlowStatusUpdateMessage(0);
    v35 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v36 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v17 = *v11;
    v18 = *(v11 + 1);
    v19 = *(v11 + 2);
    v20 = *(v11 + 3);
    v21 = *(v11 + 4);
    v22 = v1 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_statusUpdate;
    *v22 = *v11;
    *(v22 + 1) = v18;
    *(v22 + 2) = v19;
    *(v22 + 3) = v20;
    *(v22 + 4) = v21;
    v22[40] = v16;
    if (v15[1])
    {
      v23 = *v15;
      v24 = v15[1];
    }

    else
    {
      v23 = 0;
      v24 = 0xE000000000000000;
    }

    v38 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_rootRequestId);
    *v38 = v23;
    v38[1] = v24;
    v39 = MEMORY[0x28223BE20](v17);
    v46[-2] = v11;
    sub_2231376E0(v39, v40, v41, v42, v43, v44);

    v37 = RequestMessageBase.init(build:)(sub_2231376D8);
    sub_223137618(v11);
  }

  return v37;
}

uint64_t sub_223136AB8(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 41);
  v5 = *(a2 + 48);
  v4 = *(a2 + 56);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  updated = type metadata accessor for IntelligenceFlowStatusUpdateMessage.Builder(0);
  v8 = *(updated + 28);
  v9 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v8, a1 + *(v9 + 24));
  v10 = (a2 + *(updated + 32));
  v12 = *v10;
  v11 = v10[1];
  v13 = (a1 + *(v9 + 28));
  v14 = v13[1];

  *v13 = v12;
  v13[1] = v11;
  return result;
}

uint64_t IntelligenceFlowStatusUpdateMessage.Builder.statusUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(v1 + 40);
  *(a1 + 40) = v7;
  return sub_2231376E0(v2, v3, v4, v5, v6, v7);
}

__n128 IntelligenceFlowStatusUpdateMessage.Builder.statusUpdate.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_2231376F4(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

uint64_t IntelligenceFlowStatusUpdateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t IntelligenceFlowStatusUpdateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t IntelligenceFlowStatusUpdateMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFlowStatusUpdateMessage.Builder(0) + 28);

  return sub_2230D1480(v3, a1);
}

uint64_t IntelligenceFlowStatusUpdateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_49() + 28);

  return sub_2230D4E04(v0, v2);
}

uint64_t IntelligenceFlowStatusUpdateMessage.Builder.requestId.getter()
{
  updated = type metadata accessor for IntelligenceFlowStatusUpdateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(updated + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t IntelligenceFlowStatusUpdateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for IntelligenceFlowStatusUpdateMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t IntelligenceFlowStatusUpdateMessage.Builder.rootRequestId.getter()
{
  updated = type metadata accessor for IntelligenceFlowStatusUpdateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(updated + 36));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t IntelligenceFlowStatusUpdateMessage.Builder.rootRequestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for IntelligenceFlowStatusUpdateMessage.Builder(0) + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_223136F1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_rootRequestId + 8);

  v2 = OUTLINED_FUNCTION_12_4((v0 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_statusUpdate));

  return sub_223132518(v2, v3, v4, v5, v6, v7);
}

id IntelligenceFlowStatusUpdateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceFlowStatusUpdateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_223137014()
{
  result = qword_27D0583C8;
  if (!qword_27D0583C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0583C8);
  }

  return result;
}

unint64_t sub_223137068()
{
  result = qword_27D0583D0;
  if (!qword_27D0583D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0583D0);
  }

  return result;
}

unint64_t sub_2231370BC()
{
  result = qword_27D0583D8;
  if (!qword_27D0583D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0583D8);
  }

  return result;
}

unint64_t sub_223137110()
{
  result = qword_27D0583E0;
  if (!qword_27D0583E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0583E0);
  }

  return result;
}

unint64_t sub_223137164()
{
  result = qword_27D0583F8;
  if (!qword_27D0583F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0583F8);
  }

  return result;
}

unint64_t sub_2231371B8()
{
  result = qword_27D058420;
  if (!qword_27D058420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058420);
  }

  return result;
}

unint64_t sub_22313720C()
{
  result = qword_27D058428;
  if (!qword_27D058428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058428);
  }

  return result;
}

unint64_t sub_223137260()
{
  result = qword_27D058430;
  if (!qword_27D058430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058430);
  }

  return result;
}

unint64_t sub_2231372B4()
{
  result = qword_27D058460;
  if (!qword_27D058460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058460);
  }

  return result;
}

unint64_t sub_223137308()
{
  result = qword_27D058478;
  if (!qword_27D058478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058478);
  }

  return result;
}

uint64_t sub_22313735C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D058468, &qword_223209F90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2231373E0()
{
  result = qword_27D058490;
  if (!qword_27D058490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058490);
  }

  return result;
}

unint64_t sub_223137434()
{
  result = qword_27D0584A8;
  if (!qword_27D0584A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0584A8);
  }

  return result;
}

unint64_t sub_223137488()
{
  result = qword_27D0584C0;
  if (!qword_27D0584C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0584C0);
  }

  return result;
}

unint64_t sub_2231374DC()
{
  result = qword_27D0584D0;
  if (!qword_27D0584D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0584D0);
  }

  return result;
}

unint64_t sub_223137550()
{
  result = qword_27D0584D8;
  if (!qword_27D0584D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0584D8);
  }

  return result;
}

unint64_t sub_2231375A4()
{
  result = qword_27D0584E8;
  if (!qword_27D0584E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0584E8);
  }

  return result;
}

uint64_t sub_223137618(uint64_t a1)
{
  updated = type metadata accessor for IntelligenceFlowStatusUpdateMessage.Builder(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_223137674(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for IntelligenceFlowStatusUpdateMessage.Builder(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_2231376E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_223131F94(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_2231376F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_223132518(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_2231377C8(uint64_t a1, unsigned int a2)
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

uint64_t sub_223137808(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_223137890(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2231378D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22313793C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_223137990(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_223137A18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      OUTLINED_FUNCTION_21_2();
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_223137A68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_223137B0C()
{
  sub_2230D525C(319, &qword_27D058500);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCB0A8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230D525C(319, &qword_280FCA4D8);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_2230F6D30();
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowStatusUpdateMessage.ProgressUpdate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_223137D20(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowStatusUpdateMessage.StatusUpdate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_223137F38(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_44(a1);
}

_BYTE *sub_223137F84(_BYTE *result, int a2, int a3)
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

unint64_t sub_223138034()
{
  result = qword_27D058508;
  if (!qword_27D058508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058508);
  }

  return result;
}

unint64_t sub_22313808C()
{
  result = qword_27D058510;
  if (!qword_27D058510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058510);
  }

  return result;
}

unint64_t sub_2231380E4()
{
  result = qword_27D058518;
  if (!qword_27D058518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058518);
  }

  return result;
}

unint64_t sub_22313813C()
{
  result = qword_27D058520;
  if (!qword_27D058520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058520);
  }

  return result;
}

unint64_t sub_223138194()
{
  result = qword_27D058528;
  if (!qword_27D058528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058528);
  }

  return result;
}

unint64_t sub_2231381EC()
{
  result = qword_27D058530;
  if (!qword_27D058530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058530);
  }

  return result;
}

unint64_t sub_223138244()
{
  result = qword_27D058538;
  if (!qword_27D058538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058538);
  }

  return result;
}

unint64_t sub_22313829C()
{
  result = qword_27D058540;
  if (!qword_27D058540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058540);
  }

  return result;
}

unint64_t sub_2231382F4()
{
  result = qword_27D058548;
  if (!qword_27D058548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058548);
  }

  return result;
}

unint64_t sub_22313834C()
{
  result = qword_27D058550;
  if (!qword_27D058550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058550);
  }

  return result;
}

unint64_t sub_2231383A4()
{
  result = qword_27D058558;
  if (!qword_27D058558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058558);
  }

  return result;
}

unint64_t sub_2231383FC()
{
  result = qword_27D058560;
  if (!qword_27D058560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058560);
  }

  return result;
}

unint64_t sub_223138454()
{
  result = qword_27D058568;
  if (!qword_27D058568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058568);
  }

  return result;
}

unint64_t sub_2231384AC()
{
  result = qword_27D058570;
  if (!qword_27D058570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058570);
  }

  return result;
}

unint64_t sub_223138504()
{
  result = qword_27D058578;
  if (!qword_27D058578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058578);
  }

  return result;
}

unint64_t sub_22313855C()
{
  result = qword_27D058580;
  if (!qword_27D058580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058580);
  }

  return result;
}

unint64_t sub_2231385B4()
{
  result = qword_27D058588;
  if (!qword_27D058588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058588);
  }

  return result;
}

unint64_t sub_22313860C()
{
  result = qword_27D058590;
  if (!qword_27D058590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058590);
  }

  return result;
}

unint64_t sub_223138664()
{
  result = qword_27D058598;
  if (!qword_27D058598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058598);
  }

  return result;
}

unint64_t sub_2231386BC()
{
  result = qword_27D0585A0;
  if (!qword_27D0585A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0585A0);
  }

  return result;
}

unint64_t sub_223138714()
{
  result = qword_27D0585A8;
  if (!qword_27D0585A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0585A8);
  }

  return result;
}

unint64_t sub_22313876C()
{
  result = qword_27D0585B0;
  if (!qword_27D0585B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0585B0);
  }

  return result;
}

unint64_t sub_2231387C4()
{
  result = qword_27D0585B8;
  if (!qword_27D0585B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0585B8);
  }

  return result;
}

unint64_t sub_22313881C()
{
  result = qword_27D0585C0;
  if (!qword_27D0585C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0585C0);
  }

  return result;
}

unint64_t sub_223138874()
{
  result = qword_27D0585C8;
  if (!qword_27D0585C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0585C8);
  }

  return result;
}

unint64_t sub_2231388CC()
{
  result = qword_27D0585D0;
  if (!qword_27D0585D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0585D0);
  }

  return result;
}

unint64_t sub_223138924()
{
  result = qword_27D0585D8;
  if (!qword_27D0585D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0585D8);
  }

  return result;
}

unint64_t sub_22313897C()
{
  result = qword_27D0585E0;
  if (!qword_27D0585E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0585E0);
  }

  return result;
}

unint64_t sub_2231389D4()
{
  result = qword_27D0585E8;
  if (!qword_27D0585E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0585E8);
  }

  return result;
}

unint64_t sub_223138A2C()
{
  result = qword_27D0585F0;
  if (!qword_27D0585F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0585F0);
  }

  return result;
}

unint64_t sub_223138A84()
{
  result = qword_27D0585F8;
  if (!qword_27D0585F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0585F8);
  }

  return result;
}

unint64_t sub_223138ADC()
{
  result = qword_27D058600;
  if (!qword_27D058600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058600);
  }

  return result;
}

unint64_t sub_223138B34()
{
  result = qword_27D058608;
  if (!qword_27D058608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058608);
  }

  return result;
}

unint64_t sub_223138B8C()
{
  result = qword_27D058610;
  if (!qword_27D058610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058610);
  }

  return result;
}

unint64_t sub_223138BE4()
{
  result = qword_27D058618;
  if (!qword_27D058618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058618);
  }

  return result;
}

unint64_t sub_223138C3C()
{
  result = qword_27D058620;
  if (!qword_27D058620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058620);
  }

  return result;
}

unint64_t sub_223138C94()
{
  result = qword_27D058628;
  if (!qword_27D058628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058628);
  }

  return result;
}

unint64_t sub_223138CEC()
{
  result = qword_27D058630;
  if (!qword_27D058630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058630);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_4@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_21_3()
{

  return sub_223200794();
}

uint64_t OUTLINED_FUNCTION_33_0()
{

  return sub_2232006B4();
}

uint64_t OUTLINED_FUNCTION_47_1()
{

  return sub_223200554();
}

uint64_t OUTLINED_FUNCTION_49()
{

  return type metadata accessor for IntelligenceFlowStatusUpdateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_50()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_51()
{

  return swift_slowAlloc();
}

uint64_t IntelligenceFlowTraceIdGeneratedMessage.traceId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes39IntelligenceFlowTraceIdGeneratedMessage_traceId);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes39IntelligenceFlowTraceIdGeneratedMessage_traceId + 8);

  return OUTLINED_FUNCTION_2_1();
}

void *IntelligenceFlowTraceIdGeneratedMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058638, &qword_22320B3C0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231391A8();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for IntelligenceFlowTraceIdGeneratedMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v19[0]) = 0;
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes39IntelligenceFlowTraceIdGeneratedMessage_traceId);
    *v14 = v10;
    v14[1] = v15;
    v20 = 1;
    sub_223105D70();
    sub_2232004C4();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes39IntelligenceFlowTraceIdGeneratedMessage_executionSource) = v19[0];
    sub_2230F7158(a1, v19);
    v16 = RequestMessageBase.init(from:)(v19);
    v17 = OUTLINED_FUNCTION_2();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v16;
}

unint64_t sub_2231391A8()
{
  result = qword_27D058640;
  if (!qword_27D058640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058640);
  }

  return result;
}

uint64_t sub_22313921C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058648, &unk_22320B3C8);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231391A8();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes39IntelligenceFlowTraceIdGeneratedMessage_traceId);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes39IntelligenceFlowTraceIdGeneratedMessage_traceId + 8);
  v19 = 0;
  sub_2232005F4();
  if (!v2)
  {
    v17 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes39IntelligenceFlowTraceIdGeneratedMessage_executionSource);
    v18 = 1;
    sub_2230E2D70();
    sub_2232005E4();
    sub_2230D77A8(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t sub_2231393BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496563617274 && a2 == 0xE700000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69747563657865 && a2 == 0xEF656372756F536ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_22313948C(char a1)
{
  if (a1)
  {
    return 0x6F69747563657865;
  }

  else
  {
    return 0x64496563617274;
  }
}

uint64_t sub_2231394D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231393BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223139500(uint64_t a1)
{
  v2 = sub_2231391A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22313953C(uint64_t a1)
{
  v2 = sub_2231391A8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *IntelligenceFlowTraceIdGeneratedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return IntelligenceFlowTraceIdGeneratedMessage.init(build:)(v1);
}

void *IntelligenceFlowTraceIdGeneratedMessage.init(build:)(void (*a1)(_BYTE *))
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for IntelligenceFlowTraceIdGeneratedMessage.Builder(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v32 - v10;
  *v11 = 0;
  *(v11 + 1) = 0;
  *(v11 + 8) = -512;
  v11[18] = 15;
  *(v11 + 3) = 0;
  *(v11 + 4) = 0;
  v12 = *(v9 + 32);
  v13 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v11[v12], 1, 1, v13);
  v14 = &v11[*(v4 + 36)];
  *v14 = 0;
  v14[1] = 0;
  a1(v11);
  v15 = *(v11 + 1);
  if (v15)
  {
    v16 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes39IntelligenceFlowTraceIdGeneratedMessage_traceId);
    *v16 = *v11;
    v16[1] = v15;
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes39IntelligenceFlowTraceIdGeneratedMessage_executionSource) = *(v11 + 8);
    MEMORY[0x28223BE20](v15);
    v32[-2] = v11;

    v17 = RequestMessageBase.init(build:)(sub_223139E7C);
    sub_223139DBC(v11);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v18 = sub_223200014();
    __swift_project_value_buffer(v18, qword_280FCE830);
    v19 = sub_223200004();
    v20 = sub_223200254();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136446466;
      v23 = sub_2230F7898();
      v25 = sub_2231A5D38(v23, v24, &v33);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      swift_beginAccess();
      sub_223139E18(v11, v8);
      v26 = sub_223200104();
      v28 = sub_2231A5D38(v26, v27, &v33);

      *(v21 + 14) = v28;
      _os_log_impl(&dword_2230CE000, v19, v20, "Could not build %{public}s: Builder %s has missing required fields", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DD6780](v22, -1, -1);
      MEMORY[0x223DD6780](v21, -1, -1);
    }

    sub_223139DBC(v11);
    type metadata accessor for IntelligenceFlowTraceIdGeneratedMessage(0);
    v29 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v30 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v17;
}

uint64_t sub_223139928(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 18);
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v7 = type metadata accessor for IntelligenceFlowTraceIdGeneratedMessage.Builder(0);
  v8 = *(v7 + 32);
  v9 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v8, a1 + *(v9 + 24));
  v10 = (a2 + *(v7 + 36));
  v12 = *v10;
  v11 = v10[1];
  v13 = (a1 + *(v9 + 28));
  v14 = v13[1];

  *v13 = v12;
  v13[1] = v11;
  return result;
}

uint64_t IntelligenceFlowTraceIdGeneratedMessage.Builder.traceId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t IntelligenceFlowTraceIdGeneratedMessage.Builder.traceId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowTraceIdGeneratedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t IntelligenceFlowTraceIdGeneratedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t IntelligenceFlowTraceIdGeneratedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFlowTraceIdGeneratedMessage.Builder(0) + 32);

  return sub_2230D1480(v3, a1);
}

uint64_t IntelligenceFlowTraceIdGeneratedMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFlowTraceIdGeneratedMessage.Builder(0) + 32);

  return sub_2230D4E04(a1, v3);
}

uint64_t IntelligenceFlowTraceIdGeneratedMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for IntelligenceFlowTraceIdGeneratedMessage.Builder(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t IntelligenceFlowTraceIdGeneratedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for IntelligenceFlowTraceIdGeneratedMessage.Builder(0) + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

id IntelligenceFlowTraceIdGeneratedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceFlowTraceIdGeneratedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223139DBC(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceFlowTraceIdGeneratedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223139E18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowTraceIdGeneratedMessage.Builder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223139F60()
{
  sub_2230D525C(319, &qword_280FCA4D8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCAC80);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_2230D525C(319, &qword_280FCB0A8);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_2230F6D30();
    if (v6 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowTraceIdGeneratedMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22313A138()
{
  result = qword_27D058660;
  if (!qword_27D058660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058660);
  }

  return result;
}

unint64_t sub_22313A190()
{
  result = qword_27D058668;
  if (!qword_27D058668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058668);
  }

  return result;
}

unint64_t sub_22313A1E8()
{
  result = qword_27D058670;
  if (!qword_27D058670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058670);
  }

  return result;
}

uint64_t sub_22313A24C(uint64_t a1)
{
  v2 = sub_22313B708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22313A288(uint64_t a1)
{
  v2 = sub_22313B708();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntermediateTRPStateMessage.routingDecision.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16SiriMessageTypes27IntermediateTRPStateMessage_routingDecision), 0x41uLL);
  memcpy(a1, (v1 + OBJC_IVAR____TtC16SiriMessageTypes27IntermediateTRPStateMessage_routingDecision), 0x41uLL);
  return sub_2230E6EA8(__dst, &v4);
}

void *IntermediateTRPStateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return IntermediateTRPStateMessage.init(build:)(v1);
}

void *IntermediateTRPStateMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v57 = a1;
  v58 = v1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v52 - v4;
  v6 = sub_2231FFDA4();
  v7 = OUTLINED_FUNCTION_9(v6);
  v54 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v55 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IntermediateTRPStateMessage.Builder(0);
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v16 = 15;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  v17 = v13[8];
  v18 = v6;
  __swift_storeEnumTagSinglePayload(&v16[v17], 1, 1, v6);
  v19 = &v16[v13[9]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v16[v13[10]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v16[v13[11]];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 4) = 0;
  *(v21 + 5) = 0x1FFFFFFFELL;
  *(v21 + 6) = 0;
  *(v21 + 7) = 0;
  v21[64] = 0;
  v22 = v13[12];
  v16[v22] = 4;
  v57(v16);
  v23 = *v16;
  if (v23 == 15 || !*(v16 + 2))
  {
    goto LABEL_11;
  }

  v57 = *(v16 + 2);
  v53 = *(v16 + 1);
  sub_2230D3054(&v16[v17], v5, &qword_27D0575C0, &qword_2232035E0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v18) == 1)
  {
    sub_2230D4138(v5, &qword_27D0575C0, &qword_2232035E0);
LABEL_11:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v33 = sub_223200014();
    __swift_project_value_buffer(v33, qword_280FCE830);
    v34 = sub_223200004();
    v35 = sub_223200254();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      __dst[0] = v37;
      *v36 = 136446210;
      v38 = sub_2230F7898();
      v40 = sub_2231A5D38(v38, v39, __dst);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_2230CE000, v34, v35, "Could not build %{public}s: Builder has missing required fields", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x223DD6780](v37, -1, -1);
      MEMORY[0x223DD6780](v36, -1, -1);
    }

    sub_22313B68C(v16);
    type metadata accessor for IntermediateTRPStateMessage(0);
    v41 = *((*MEMORY[0x277D85000] & *v58) + 0x30);
    v42 = *((*MEMORY[0x277D85000] & *v58) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v24 = v18;
  v25 = v54;
  (*(v54 + 32))(v55, v5, v24);
  v26 = *(v19 + 1);
  if (!v26)
  {
    (*(v25 + 8))(v55, v24);
    goto LABEL_11;
  }

  v52 = v24;
  v27 = *(v20 + 1);
  if (!v27 || (v28 = *v19, v29 = *v20, v30 = memcpy(__dst, v21, 0x41uLL), v31 = __dst[5], (__dst[5] & 0x7FFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL) || (v32 = v16[v22], v32 == 4))
  {
    (*(v25 + 8))(v55, v52);
    goto LABEL_11;
  }

  v45 = v58;
  v46 = (v58 + OBJC_IVAR____TtC16SiriMessageTypes27IntermediateTRPStateMessage_trpCandidateId);
  *v46 = v29;
  v46[1] = v27;
  v47 = v45 + OBJC_IVAR____TtC16SiriMessageTypes27IntermediateTRPStateMessage_routingDecision;
  v48 = *(v21 + 1);
  *v47 = *v21;
  *(v47 + 1) = v48;
  *(v47 + 4) = *(v21 + 4);
  *(v47 + 5) = v31;
  *(v47 + 3) = *(v21 + 3);
  v47[64] = v21[64];
  *(v45 + OBJC_IVAR____TtC16SiriMessageTypes27IntermediateTRPStateMessage_mitigationDecision) = v32;
  MEMORY[0x28223BE20](v30);
  *(&v52 - 48) = v23;
  v49 = v57;
  *(&v52 - 5) = v53;
  *(&v52 - 4) = v49;
  v50 = v55;
  *(&v52 - 3) = v55;
  *(&v52 - 2) = v28;
  *(&v52 - 1) = v26;

  sub_2230D3054(__dst, v59, &qword_27D057DC8, &qword_22320E730);
  v43 = RequestMessageBase.init(build:)(sub_22311D868);
  v51 = v43;
  sub_22313B68C(v16);
  if (v43)
  {
  }

  (*(v54 + 8))(v50, v52);
  return v43;
}

void *IntermediateTRPStateMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058678, &qword_22320B5A0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22313B708();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for IntermediateTRPStateMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __dst[0] = 0;
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes27IntermediateTRPStateMessage_trpCandidateId);
    *v14 = v10;
    v14[1] = v15;
    __dst[87] = 1;
    sub_22311D8D0();
    OUTLINED_FUNCTION_8_5();
    memcpy(v1 + OBJC_IVAR____TtC16SiriMessageTypes27IntermediateTRPStateMessage_routingDecision, __dst, 0x41uLL);
    __dst[86] = 2;
    sub_22311D924();
    OUTLINED_FUNCTION_8_5();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes27IntermediateTRPStateMessage_mitigationDecision) = v19[0];
    sub_2230F7158(a1, v19);
    v16 = RequestMessageBase.init(from:)(v19);
    v17 = OUTLINED_FUNCTION_2();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v16;
}

uint64_t sub_22313ACBC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058688, &qword_22320B5A8);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22313B708();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes27IntermediateTRPStateMessage_trpCandidateId);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes27IntermediateTRPStateMessage_trpCandidateId + 8);
  __dst[95] = 0;
  sub_2232005F4();
  if (!v2)
  {
    memcpy(__dst, (v1 + OBJC_IVAR____TtC16SiriMessageTypes27IntermediateTRPStateMessage_routingDecision), 0x41uLL);
    memcpy(__src, (v1 + OBJC_IVAR____TtC16SiriMessageTypes27IntermediateTRPStateMessage_routingDecision), sizeof(__src));
    __dst[94] = 1;
    sub_2230E6EA8(__dst, v16);
    sub_2230E6F8C();
    sub_223200654();
    memcpy(v16, __src, 0x41uLL);
    sub_2230E6410(v16);
    __dst[93] = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes27IntermediateTRPStateMessage_mitigationDecision);
    __dst[92] = 2;
    sub_22311D978();
    sub_223200654();
    sub_2230D77A8(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t sub_22313AF5C()
{
  v1 = v0;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_223200374();
  v12 = 0;
  v13 = 0xE000000000000000;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for IntermediateTRPStateMessage(0);
  v2 = objc_msgSendSuper2(&v11, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  MEMORY[0x223DD5AA0](v3, v5);

  MEMORY[0x223DD5AA0](0xD000000000000013, 0x80000002232227B0);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes27IntermediateTRPStateMessage_trpCandidateId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes27IntermediateTRPStateMessage_trpCandidateId + 8]);
  MEMORY[0x223DD5AA0](0xD000000000000015, 0x80000002232227D0);
  memcpy(__dst, &v1[OBJC_IVAR____TtC16SiriMessageTypes27IntermediateTRPStateMessage_routingDecision], 0x41uLL);
  memcpy(v10, &v1[OBJC_IVAR____TtC16SiriMessageTypes27IntermediateTRPStateMessage_routingDecision], sizeof(v10));
  sub_2230E6EA8(__dst, v9);
  v6 = sub_223200104();
  MEMORY[0x223DD5AA0](v6);

  MEMORY[0x223DD5AA0](0xD000000000000018, 0x80000002232227F0);
  v10[0] = v1[OBJC_IVAR____TtC16SiriMessageTypes27IntermediateTRPStateMessage_mitigationDecision];
  v7 = sub_223200104();
  MEMORY[0x223DD5AA0](v7);

  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v12;
}

uint64_t IntermediateTRPStateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t IntermediateTRPStateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t IntermediateTRPStateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_14() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t IntermediateTRPStateMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for IntermediateTRPStateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t IntermediateTRPStateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for IntermediateTRPStateMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t IntermediateTRPStateMessage.Builder.trpCandidateId.getter()
{
  v0 = type metadata accessor for IntermediateTRPStateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t IntermediateTRPStateMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for IntermediateTRPStateMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t IntermediateTRPStateMessage.Builder.routingDecision.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for IntermediateTRPStateMessage.Builder(0) + 36);
  memcpy(__dst, (v1 + v3), 0x41uLL);
  memcpy(a1, (v1 + v3), 0x41uLL);
  return sub_2230D3054(__dst, &v5, &qword_27D057DC8, &qword_22320E730);
}

void *IntermediateTRPStateMessage.Builder.routingDecision.setter()
{
  v2 = *(OUTLINED_FUNCTION_5_14() + 36);
  memcpy(__dst, (v1 + v2), 0x41uLL);
  sub_2230D4138(__dst, &qword_27D057DC8, &qword_22320E730);
  return memcpy((v1 + v2), v0, 0x41uLL);
}

uint64_t IntermediateTRPStateMessage.Builder.mitigationDecision.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IntermediateTRPStateMessage.Builder(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t IntermediateTRPStateMessage.Builder.mitigationDecision.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for IntermediateTRPStateMessage.Builder(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t sub_22313B5C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes27IntermediateTRPStateMessage_trpCandidateId + 8);

  return OUTLINED_FUNCTION_2_3(v0 + OBJC_IVAR____TtC16SiriMessageTypes27IntermediateTRPStateMessage_routingDecision);
}

id IntermediateTRPStateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntermediateTRPStateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22313B68C(uint64_t a1)
{
  v2 = type metadata accessor for IntermediateTRPStateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22313B708()
{
  result = qword_27D058680;
  if (!qword_27D058680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058680);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntermediateTRPStateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22313B8F0()
{
  result = qword_27D0586B0;
  if (!qword_27D0586B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0586B0);
  }

  return result;
}

unint64_t sub_22313B948()
{
  result = qword_27D0586B8;
  if (!qword_27D0586B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0586B8);
  }

  return result;
}

unint64_t sub_22313B9A0()
{
  result = qword_27D0586C0;
  if (!qword_27D0586C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0586C0);
  }

  return result;
}

uint64_t Location.__allocating_init(fromCLLocation:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  Location.init(fromCLLocation:)(a1);
  return v5;
}

void *Location.init(fromCLLocation:)(void *a1)
{
  v3 = sub_2231FFD64();
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v11 = v10 - v9;
  [a1 coordinate];
  v1[2] = v12;
  [a1 coordinate];
  v1[3] = v13;
  [a1 altitude];
  v1[4] = v14;
  [a1 verticalAccuracy];
  v1[5] = v15;
  [a1 horizontalAccuracy];
  v1[6] = v16;
  [a1 course];
  v1[7] = v17;
  [a1 courseAccuracy];
  v1[8] = v18;
  [a1 speed];
  v1[9] = v19;
  [a1 speedAccuracy];
  v1[10] = v20;
  v21 = [a1 timestamp];
  sub_2231FFD54();

  (*(v6 + 32))(v1 + OBJC_IVAR____TtC16SiriMessageTypes8Location_timeStamp, v11, v3);
  return v1;
}

uint64_t static Location.== infix(_:_:)(double *a1, double *a2)
{
  if (a1[2] == a2[2] && a1[3] == a2[3] && a1[4] == a2[4] && a1[5] == a2[5] && a1[6] == a2[6] && a1[7] == a2[7] && a1[8] == a2[8] && a1[9] == a2[9] && a1[10] == a2[10])
  {
    return MEMORY[0x28211DA98](a1 + OBJC_IVAR____TtC16SiriMessageTypes8Location_timeStamp, a2 + OBJC_IVAR____TtC16SiriMessageTypes8Location_timeStamp);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22313BC8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6564757469746C61 && a2 == 0xE800000000000000;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000223223230 == a2;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x8000000223223250 == a2;
          if (v9 || (sub_2232006B4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x657372756F63 && a2 == 0xE600000000000000;
            if (v10 || (sub_2232006B4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6341657372756F63 && a2 == 0xEE00796361727563;
              if (v11 || (sub_2232006B4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6465657073 && a2 == 0xE500000000000000;
                if (v12 || (sub_2232006B4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6363416465657073 && a2 == 0xED00007963617275;
                  if (v13 || (sub_2232006B4() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x6D617453656D6974 && a2 == 0xE900000000000070)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_2232006B4();

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

uint64_t sub_22313BFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22313BC8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22313BFCC(uint64_t a1)
{
  v2 = sub_2230E71D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22313C008(uint64_t a1)
{
  v2 = sub_2230E71D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Location.deinit()
{
  v1 = OBJC_IVAR____TtC16SiriMessageTypes8Location_timeStamp;
  v2 = sub_2231FFD64();
  OUTLINED_FUNCTION_4_14(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t Location.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16SiriMessageTypes8Location_timeStamp;
  v2 = sub_2231FFD64();
  OUTLINED_FUNCTION_4_14(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t Location.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  Location.init(from:)(a1);
  return v5;
}

void *Location.init(from:)(uint64_t *a1)
{
  v3 = sub_2231FFD64();
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v11 = v10 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0586D0, &qword_22320B788);
  v12 = OUTLINED_FUNCTION_9(v39);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v35 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_2230E71D4();
  sub_223200794();
  if (v1)
  {
    v34 = v41;
    type metadata accessor for Location();
    v21 = *(*v34 + 48);
    v22 = *(*v34 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v36 = v6;
    v37 = v11;
    v38 = v3;
    v51 = 0;
    OUTLINED_FUNCTION_1_14();
    v24 = v41;
    v41[2] = v25;
    v50 = 1;
    OUTLINED_FUNCTION_1_14();
    v24[3] = v26;
    v49 = 2;
    OUTLINED_FUNCTION_1_14();
    v24[4] = v27;
    v48 = 3;
    OUTLINED_FUNCTION_1_14();
    v24[5] = v28;
    v47 = 4;
    OUTLINED_FUNCTION_1_14();
    v24[6] = v29;
    v46 = 5;
    OUTLINED_FUNCTION_1_14();
    v24[7] = v30;
    v45 = 6;
    OUTLINED_FUNCTION_1_14();
    v24[8] = v31;
    v44 = 7;
    OUTLINED_FUNCTION_1_14();
    v24[9] = v32;
    v43 = 8;
    OUTLINED_FUNCTION_1_14();
    v24[10] = v33;
    v42 = 9;
    sub_2230E7740(&qword_27D0586D8);
    sub_223200554();
    (*(v14 + 8))(v18, v39);
    v34 = v41;
    (*(v36 + 32))(v41 + OBJC_IVAR____TtC16SiriMessageTypes8Location_timeStamp, v37, v38);
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  return v34;
}

uint64_t sub_22313C520@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Location.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t CLLocation.toSRDLocation()()
{
  v1 = type metadata accessor for Location();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  Location.init(fromCLLocation:)(v0);
  return v4;
}

uint64_t sub_22313C5BC()
{
  result = sub_2231FFD64();
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

unint64_t sub_22313C70C()
{
  result = qword_27D0586E0;
  if (!qword_27D0586E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0586E0);
  }

  return result;
}

unint64_t sub_22313C764()
{
  result = qword_280FCA728;
  if (!qword_280FCA728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA728);
  }

  return result;
}

unint64_t sub_22313C7BC()
{
  result = qword_280FCA730;
  if (!qword_280FCA730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA730);
  }

  return result;
}

uint64_t sub_22313C810()
{
  v0 = sub_223200014();
  __swift_allocate_value_buffer(v0, qword_280FCE830);
  __swift_project_value_buffer(v0, qword_280FCE830);
  sub_22313C908();
  sub_2232002C4();
  return sub_223200024();
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

unint64_t sub_22313C908()
{
  result = qword_280FCA350;
  if (!qword_280FCA350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FCA350);
  }

  return result;
}

void *MagusAttentionAssetDownloadRequestedMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = SessionMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id MagusAttentionAssetDownloadRequestedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MagusAttentionAssetDownloadRequestedMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MagusAttentionAssetDownloadRequestedMessage()
{
  result = qword_280FCBA68;
  if (!qword_280FCBA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *(*sub_22313CAC4(uint64_t a1))(void *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_postedOnTheBus);
  return sub_22313CAF8;
}

_BYTE *sub_22313CAF8(void *a1)
{
  v3 = *a1;
  result = a1 + 1;
  v2 = v3;
  if ((*(v3 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_postedOnTheBus) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_postedOnTheBus) = *result;
  }

  return result;
}

id MessageBase.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  v4 = sub_2231FFDA4();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v12 = v11 - v10;
  v13 = sub_2231FFC84();
  v14 = OUTLINED_FUNCTION_9(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v21 = v20 - v19;
  *(v1 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_postedOnTheBus) = 0;
  v39[0] = 15;
  v40 = 0;
  v41 = 0;
  a1(v39);
  v22 = v39[0];
  if (v39[0] == 15)
  {
  }

  else if (v41)
  {
    v35 = v7;
    v37 = v40;
    v38 = v41;
    sub_2231FFC74();
    sub_2230D1D30();
    v23 = sub_2232002E4();
    v25 = v24;
    (*(v16 + 8))(v21, v13);

    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      *(v2 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_source) = v22;
      v27 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_assistantId);
      *v27 = v23;
      v27[1] = v25;
      sub_2231FFD94();
      (*(v35 + 32))(v2 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_messageId, v12, v4);
      v36.receiver = v2;
      v36.super_class = type metadata accessor for MessageBase();
      return objc_msgSendSuper2(&v36, sel_init);
    }

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v29 = sub_223200014();
    __swift_project_value_buffer(v29, qword_280FCE830);
    v30 = sub_223200004();
    v31 = sub_223200254();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2230CE000, v30, v31, "assistantId is empty, can't create message", v32, 2u);
      MEMORY[0x223DD6780](v32, -1, -1);
    }
  }

  type metadata accessor for MessageBase();
  v33 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v34 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

id MessageBase.init(from:)(uint64_t *a1)
{
  v4 = sub_2231FFDA4();
  v5 = OUTLINED_FUNCTION_9(v4);
  v29 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v11 = v10 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0586E8, &qword_22320B9E0);
  v12 = OUTLINED_FUNCTION_9(v30);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_postedOnTheBus;
  *(v1 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_postedOnTheBus) = 0;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D88D0();
  sub_223200794();
  if (v2)
  {
    v26 = v1;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for MessageBase();
    v19 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
    v20 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = 0;
    OUTLINED_FUNCTION_1_15();
    sub_2230D462C(v17, v18);
    sub_223200554();
    (*(v29 + 32))(v1 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_messageId, v11, v4);
    OUTLINED_FUNCTION_5_15(1);
    *(v1 + v15) = sub_223200504() & 1;
    v32 = 2;
    sub_22313D6B0();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_source) = v33;
    OUTLINED_FUNCTION_5_15(3);
    v22 = sub_2232004F4();
    v23 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_assistantId);
    *v23 = v22;
    v23[1] = v24;
    v25 = type metadata accessor for MessageBase();
    v31.receiver = v1;
    v31.super_class = v25;
    v26 = objc_msgSendSuper2(&v31, sel_init);
    v27 = OUTLINED_FUNCTION_4_15();
    v28(v27);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v26;
}

uint64_t MessageBase.assistantId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_assistantId);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_assistantId + 8);

  return v1;
}

void static MessageBase.builder.getter(uint64_t a1@<X8>)
{
  *a1 = 15;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t MessageBase.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MessageBase.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

id MessageBase.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_22313D3A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496567617373656DLL && a2 == 0xE900000000000064;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E4F646574736F70 && a2 == 0xEE00737542656854;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E61747369737361 && a2 == 0xEB00000000644974)
      {

        return 3;
      }

      else
      {
        v9 = sub_2232006B4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_22313D510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22313D3A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22313D538(uint64_t a1)
{
  v2 = sub_2230D88D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22313D574(uint64_t a1)
{
  v2 = sub_2230D88D0();

  return MEMORY[0x2821FE720](a1, v2);
}

id MessageBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageBase();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22313D674@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_22313D6B0()
{
  result = qword_27D0586F0;
  if (!qword_27D0586F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0586F0);
  }

  return result;
}

uint64_t sub_22313D704(uint64_t a1)
{
  *(a1 + 8) = sub_2230D462C(&qword_280FCB0D0, type metadata accessor for MessageBase);
  result = sub_2230D462C(&qword_280FCB0D8, type metadata accessor for MessageBase);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22313D7B8()
{
  result = sub_2231FFDA4();
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

uint64_t sub_22313D934(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

unint64_t sub_22313D9AC()
{
  result = qword_27D058700;
  if (!qword_27D058700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058700);
  }

  return result;
}

unint64_t sub_22313DA04()
{
  result = qword_280FCB0E0;
  if (!qword_280FCB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB0E0);
  }

  return result;
}

unint64_t sub_22313DA5C()
{
  result = qword_280FCB0E8;
  if (!qword_280FCB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB0E8);
  }

  return result;
}

SiriMessageTypes::MessageSource_optional __swiftcall MessageSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223200464();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_22313DB1C()
{
  result = qword_27D058708;
  if (!qword_27D058708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058708);
  }

  return result;
}

uint64_t MessageXPCTransporter.toMessageBase()()
{
  if (*v0 >= 0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = *v0 & 0x7FFFFFFFFFFFFFFFLL;
  }

  v2 = (*v0 & 0x7FFFFFFFFFFFFFFFLL);
  return v1;
}

uint64_t sub_22313DC38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7055737574617473 && a2 == 0xEC00000065746164;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002232233C0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_22313DD0C(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7055737574617473;
  }
}

uint64_t sub_22313DD58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22313DC38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22313DD80(uint64_t a1)
{
  v2 = sub_22313E238();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22313DDBC(uint64_t a1)
{
  v2 = sub_22313E238();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22313DDF8(uint64_t a1)
{
  v2 = sub_22313E2E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22313DE34(uint64_t a1)
{
  v2 = sub_22313E2E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22313DE70(uint64_t a1)
{
  v2 = sub_22313E28C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22313DEAC(uint64_t a1)
{
  v2 = sub_22313E28C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessageXPCTransporter.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058710, &qword_22320BDA0);
  v4 = OUTLINED_FUNCTION_9(v3);
  v37 = v5;
  v38 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v36 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058718, &qword_22320BDA8);
  OUTLINED_FUNCTION_9(v10);
  v39 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v14);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058720, &qword_22320BDB0);
  OUTLINED_FUNCTION_9(v40);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  v22 = *v1;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22313E238();
  sub_2232007A4();
  if (v22 < 0)
  {
    v30 = v22 & 0x7FFFFFFFFFFFFFFFLL;
    LOBYTE(v41) = 1;
    sub_22313E28C();
    v31 = v36;
    v32 = v40;
    sub_2232005B4();
    v41 = v30;
    type metadata accessor for IntelligenceFlowTraceIdGeneratedMessage(0);
    OUTLINED_FUNCTION_2_18();
    sub_22313E8A4(v33, v34);
    v35 = v38;
    sub_223200654();
    (*(v37 + 8))(v31, v35);
    return (*(v16 + 8))(v21, v32);
  }

  else
  {
    LOBYTE(v41) = 0;
    sub_22313E2E0();
    v24 = v40;
    sub_2232005B4();
    v41 = v22;
    type metadata accessor for IntelligenceFlowStatusUpdateMessage(0);
    OUTLINED_FUNCTION_1_16();
    sub_22313E8A4(v25, v26);
    sub_223200654();
    v27 = OUTLINED_FUNCTION_3_2();
    v28(v27);
    return (*(v16 + 8))(v21, v24);
  }
}

unint64_t sub_22313E238()
{
  result = qword_27D058728;
  if (!qword_27D058728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058728);
  }

  return result;
}

unint64_t sub_22313E28C()
{
  result = qword_27D058730;
  if (!qword_27D058730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058730);
  }

  return result;
}

unint64_t sub_22313E2E0()
{
  result = qword_27D058740;
  if (!qword_27D058740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058740);
  }

  return result;
}

uint64_t MessageXPCTransporter.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058750, &qword_22320BDB8);
  v4 = OUTLINED_FUNCTION_9(v3);
  v57 = v5;
  v58 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058758, &qword_22320BDC0);
  OUTLINED_FUNCTION_9(v9);
  v56 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v52[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058760, &unk_22320BDC8);
  OUTLINED_FUNCTION_9(v16);
  v59 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v52[-v21];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22313E238();
  v24 = v61;
  sub_223200794();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v54 = v9;
  v55 = v15;
  v61 = a1;
  v25 = v60;
  v26 = sub_223200594();
  result = sub_2230E0B80(v26, 0);
  if (v29 == v30 >> 1)
  {
    goto LABEL_7;
  }

  if (v29 >= (v30 >> 1))
  {
    __break(1u);
    return result;
  }

  v53 = *(v28 + v29);
  sub_2230E0B40(v29 + 1);
  v32 = v31;
  v34 = v33;
  swift_unknownObjectRelease();
  if (v32 != v34 >> 1)
  {
LABEL_7:
    v37 = sub_2232003A4();
    swift_allocError();
    v39 = v38;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v39 = &type metadata for MessageXPCTransporter;
    sub_223200484();
    sub_223200394();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v59 + 8))(v22, v16);
    a1 = v61;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (v53)
  {
    LOBYTE(v62) = 1;
    sub_22313E28C();
    OUTLINED_FUNCTION_7_13();
    type metadata accessor for IntelligenceFlowTraceIdGeneratedMessage(0);
    OUTLINED_FUNCTION_2_18();
    sub_22313E8A4(v35, v36);
    OUTLINED_FUNCTION_6_11();
    swift_unknownObjectRelease();
    v43 = OUTLINED_FUNCTION_3_2();
    v44(v43);
    v45 = OUTLINED_FUNCTION_4_16();
    v46(v45);
    v47 = v62 | 0x8000000000000000;
  }

  else
  {
    LOBYTE(v62) = 0;
    sub_22313E2E0();
    OUTLINED_FUNCTION_7_13();
    type metadata accessor for IntelligenceFlowStatusUpdateMessage(0);
    OUTLINED_FUNCTION_1_16();
    sub_22313E8A4(v41, v42);
    OUTLINED_FUNCTION_6_11();
    swift_unknownObjectRelease();
    v48 = OUTLINED_FUNCTION_3_2();
    v49(v48);
    v50 = OUTLINED_FUNCTION_4_16();
    v51(v50);
    v47 = v62;
  }

  *v25 = v47;
  return __swift_destroy_boxed_opaque_existential_1(v61);
}

uint64_t sub_22313E8A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22313E904(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
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

uint64_t sub_22313E958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageXPCTransporter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22313EADC(_BYTE *result, int a2, int a3)
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

unint64_t sub_22313EB8C()
{
  result = qword_27D058778;
  if (!qword_27D058778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058778);
  }

  return result;
}

unint64_t sub_22313EBE4()
{
  result = qword_27D058780;
  if (!qword_27D058780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058780);
  }

  return result;
}

unint64_t sub_22313EC3C()
{
  result = qword_27D058788;
  if (!qword_27D058788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058788);
  }

  return result;
}

unint64_t sub_22313EC94()
{
  result = qword_27D058790;
  if (!qword_27D058790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058790);
  }

  return result;
}

unint64_t sub_22313ECEC()
{
  result = qword_27D058798;
  if (!qword_27D058798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058798);
  }

  return result;
}

unint64_t sub_22313ED44()
{
  result = qword_27D0587A0;
  if (!qword_27D0587A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0587A0);
  }

  return result;
}

unint64_t sub_22313ED9C()
{
  result = qword_27D0587A8;
  if (!qword_27D0587A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0587A8);
  }

  return result;
}

unint64_t sub_22313EDF4()
{
  result = qword_27D0587B0;
  if (!qword_27D0587B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0587B0);
  }

  return result;
}

unint64_t sub_22313EE4C()
{
  result = qword_27D0587B8;
  if (!qword_27D0587B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0587B8);
  }

  return result;
}

uint64_t sub_22313EEA4(uint64_t a1)
{
  v2 = sub_22313FC94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22313EEE0(uint64_t a1)
{
  v2 = sub_22313FC94();

  return MEMORY[0x2821FE720](a1, v2);
}

void *MitigationDecisionFinalizedMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1();
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v44 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MitigationDecisionFinalizedMessage.Builder(0);
  v15 = (v14 - 8);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v18 = 15;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v19 = v15[8];
  __swift_storeEnumTagSinglePayload(&v18[v19], 1, 1, v7);
  v20 = &v18[v15[9]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = v15[10];
  v18[v21] = 2;
  a1(v18);
  v22 = *v18;
  if (v22 == 15)
  {
    goto LABEL_8;
  }

  v23 = *(v18 + 2);
  if (!v23)
  {
    goto LABEL_8;
  }

  v43 = *(v18 + 1);
  sub_2230D1480(&v18[v19], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    sub_2230D69D4(v2);
LABEL_8:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v27 = sub_223200014();
    __swift_project_value_buffer(v27, qword_280FCE830);
    v28 = sub_223200004();
    v29 = sub_223200254();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v46 = v31;
      *v30 = 136446210;
      v32 = sub_2230F7898();
      v34 = sub_2231A5D38(v32, v33, &v46);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_2230CE000, v28, v29, "Could not build %{public}s: Builder has missing required fields", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x223DD6780](v31, -1, -1);
      MEMORY[0x223DD6780](v30, -1, -1);
    }

    sub_22313F3D8(v18);
    type metadata accessor for MitigationDecisionFinalizedMessage(0);
    v35 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v36 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v24 = v44;
  v25 = (*(v44 + 32))(v13, v2, v7);
  if (!*(v20 + 1) || (v26 = v18[v21], v26 == 2))
  {
    (*(v24 + 8))(v13, v7);
    goto LABEL_8;
  }

  v39 = *v20;
  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes34MitigationDecisionFinalizedMessage_isMitigated) = v26 & 1;
  MEMORY[0x28223BE20](v25);
  *(&v43 - 48) = v22;
  *(&v43 - 5) = v43;
  *(&v43 - 4) = v23;
  *(&v43 - 3) = v13;
  *(&v43 - 2) = v40;
  *(&v43 - 1) = v41;
  v37 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v42 = v37;
  sub_22313F3D8(v18);
  if (v37)
  {
  }

  (*(v24 + 8))(v13, v7);
  return v37;
}

uint64_t sub_22313F3D8(uint64_t a1)
{
  v2 = type metadata accessor for MitigationDecisionFinalizedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *MitigationDecisionFinalizedMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0587C0, &qword_22320C248);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22313FC94();
  sub_223200794();
  if (v2)
  {
    v13 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for MitigationDecisionFinalizedMessage(0);
    v10 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34MitigationDecisionFinalizedMessage_isMitigated) = sub_223200504() & 1;
    sub_2230F7158(a1, v16);
    v13 = RequestMessageBase.init(from:)(v16);
    v14 = OUTLINED_FUNCTION_2();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v13;
}

uint64_t sub_22313F694(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0587C8, &qword_22320C250);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22313FC94();
  sub_2232007A4();
  v12 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34MitigationDecisionFinalizedMessage_isMitigated);
  sub_223200604();
  if (!v2)
  {
    sub_2230D77A8(a1);
  }

  return (*(v8 + 8))(v3, v5);
}

uint64_t sub_22313F840()
{
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_223200374();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for MitigationDecisionFinalizedMessage(0);
  v1 = objc_msgSendSuper2(&v8, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v9 = v2;
  v10 = v4;
  MEMORY[0x223DD5AA0](0xD000000000000027, 0x80000002232233E0);
  if (*(v0 + OBJC_IVAR____TtC16SiriMessageTypes34MitigationDecisionFinalizedMessage_isMitigated))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC16SiriMessageTypes34MitigationDecisionFinalizedMessage_isMitigated))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x223DD5AA0](v5, v6);

  MEMORY[0x223DD5AA0](15913, 0xE200000000000000);
  return v9;
}

uint64_t MitigationDecisionFinalizedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MitigationDecisionFinalizedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MitigationDecisionFinalizedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MitigationDecisionFinalizedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t MitigationDecisionFinalizedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_17() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t MitigationDecisionFinalizedMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for MitigationDecisionFinalizedMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MitigationDecisionFinalizedMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MitigationDecisionFinalizedMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MitigationDecisionFinalizedMessage.Builder.isMitigated.setter(char a1)
{
  result = type metadata accessor for MitigationDecisionFinalizedMessage.Builder(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

id MitigationDecisionFinalizedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MitigationDecisionFinalizedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22313FC94()
{
  result = qword_280FCC068;
  if (!qword_280FCC068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC068);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MitigationDecisionFinalizedMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22313FE38()
{
  result = qword_27D0587D0;
  if (!qword_27D0587D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0587D0);
  }

  return result;
}

unint64_t sub_22313FE90()
{
  result = qword_280FCC058;
  if (!qword_280FCC058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC058);
  }

  return result;
}

unint64_t sub_22313FEE8()
{
  result = qword_280FCC060;
  if (!qword_280FCC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC060);
  }

  return result;
}

void *MultiUserRootTRPCandidateRequestMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = MultiUserTRPCandidateRequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id MultiUserRootTRPCandidateRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiUserRootTRPCandidateRequestMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MultiUserRootTRPCandidateRequestMessage()
{
  result = qword_280FCBCF8;
  if (!qword_280FCBCF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *MultiUserSpeechStopDetectedMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = SpeechStopDetectedMessage.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id MultiUserSpeechStopDetectedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiUserSpeechStopDetectedMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MultiUserSpeechStopDetectedMessage()
{
  result = qword_27D0587D8;
  if (!qword_27D0587D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *MultiUserStoppedListeningForSpeechContinuationMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = StoppedListeningForSpeechContinuationMessage.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id MultiUserStoppedListeningForSpeechContinuationMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiUserStoppedListeningForSpeechContinuationMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MultiUserStoppedListeningForSpeechContinuationMessage()
{
  result = qword_280FCB630;
  if (!qword_280FCB630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *MultiUserTextBasedRootTRPCandidateRequestMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return MultiUserTextBasedRootTRPCandidateRequestMessage.init(build:)(v1);
}

void *MultiUserTextBasedRootTRPCandidateRequestMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v2 = sub_2231FFC84();
  v3 = OUTLINED_FUNCTION_9(v2);
  v68 = v4;
  v69 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v67 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v62 - v11;
  v13 = sub_2231FFDA4();
  v14 = OUTLINED_FUNCTION_9(v13);
  v70 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v71 = v19 - v18;
  v20 = type metadata accessor for MultiUserTextBasedRootTRPCandidateRequestMessage.Builder(0);
  v21 = (v20 - 8);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_2();
  v25 = (v24 - v23);
  *v25 = 15;
  *(v25 + 1) = 0;
  *(v25 + 2) = 0;
  v26 = v21[8];
  v72 = v13;
  __swift_storeEnumTagSinglePayload(v24 - v23 + v26, 1, 1, v13);
  v27 = &v25[v21[9]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v25[v21[10]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v25[v21[11]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v25[v21[12]];
  *v30 = 0;
  *(v30 + 1) = 0;
  a1(v25);
  v31 = *v25;
  if (v31 == 15 || (v32 = *(v25 + 2)) == 0)
  {
    sub_223140A50(v25);
    goto LABEL_6;
  }

  v33 = *(v25 + 1);
  sub_2230D1480(&v25[v26], v12);
  v34 = v72;
  if (__swift_getEnumTagSinglePayload(v12, 1, v72) == 1)
  {
    sub_223140A50(v25);
    sub_2230D69D4(v12);
LABEL_6:
    type metadata accessor for MultiUserTextBasedRootTRPCandidateRequestMessage(0);
    v35 = *((*MEMORY[0x277D85000] & *v73) + 0x30);
    v36 = *((*MEMORY[0x277D85000] & *v73) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v65 = v33;
  v66 = v32;
  v39 = v70;
  v40 = v71;
  (*(v70 + 32))(v71, v12, v34);
  v41 = *(v27 + 1);
  if (!v41)
  {
    sub_223140A50(v25);
    (*(v39 + 8))(v40, v34);
    goto LABEL_6;
  }

  v42 = *(v28 + 1);
  if (!v42 || (v43 = *(v30 + 1)) == 0 || !*(v29 + 1))
  {
    sub_223140A50(v25);
    (*(v39 + 8))(v71, v34);
    goto LABEL_6;
  }

  v63 = *(v29 + 1);
  v64 = v42;
  v44 = *v27;
  v45 = *v28;
  v46 = *v29;
  v74 = *v30;
  v75 = v43;
  v47 = v66;

  v48 = v67;
  sub_2231FFC74();
  sub_2230D1D30();
  v49 = sub_2232002E4();
  v51 = v50;
  v52 = (*(v68 + 8))(v48, v69);
  v53 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v53 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (!v53)
  {

    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v58 = sub_223200014();
    __swift_project_value_buffer(v58, qword_280FCE830);
    v59 = sub_223200004();
    v60 = sub_223200254();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_2230CE000, v59, v60, "utterance is empty, can't create message", v61, 2u);
      MEMORY[0x223DD6780](v61, -1, -1);
    }

    sub_223140A50(v25);
    (*(v70 + 8))(v71, v72);
    goto LABEL_6;
  }

  v54 = (v73 + OBJC_IVAR____TtC16SiriMessageTypes48MultiUserTextBasedRootTRPCandidateRequestMessage_utterance);
  *v54 = v49;
  v54[1] = v51;
  MEMORY[0x28223BE20](v52);
  *(&v62 - 80) = v31;
  v55 = v64;
  *(&v62 - 9) = v65;
  *(&v62 - 8) = v47;
  v56 = v71;
  *(&v62 - 7) = v71;
  *(&v62 - 6) = v44;
  *(&v62 - 5) = v41;
  *(&v62 - 4) = v45;
  *(&v62 - 3) = v55;
  *(&v62 - 2) = v46;
  *(&v62 - 1) = v63;
  v37 = TRPCandidateRequestMessageBase.init(build:)(sub_223113ED4);

  v57 = v37;
  sub_223140A50(v25);
  if (v37)
  {
  }

  (*(v70 + 8))(v56, v72);
  return v37;
}

uint64_t sub_223140A50(uint64_t a1)
{
  v2 = type metadata accessor for MultiUserTextBasedRootTRPCandidateRequestMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *MultiUserTextBasedRootTRPCandidateRequestMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0587E8, &qword_22320C4B8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22314145C();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for MultiUserTextBasedRootTRPCandidateRequestMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes48MultiUserTextBasedRootTRPCandidateRequestMessage_utterance);
    *v14 = v10;
    v14[1] = v15;
    sub_2230F7158(a1, v19);
    v16 = TRPCandidateRequestMessageBase.init(from:)(v19);
    v17 = OUTLINED_FUNCTION_2();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v16;
}

uint64_t sub_223140D14(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0587F8, &qword_22320C4C0);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22314145C();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes48MultiUserTextBasedRootTRPCandidateRequestMessage_utterance);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes48MultiUserTextBasedRootTRPCandidateRequestMessage_utterance + 8);
  sub_2232005F4();
  if (!v2)
  {
    sub_2231E5494(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t MultiUserTextBasedRootTRPCandidateRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t MultiUserTextBasedRootTRPCandidateRequestMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MultiUserTextBasedRootTRPCandidateRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MultiUserTextBasedRootTRPCandidateRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t MultiUserTextBasedRootTRPCandidateRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_8_9() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t MultiUserTextBasedRootTRPCandidateRequestMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for MultiUserTextBasedRootTRPCandidateRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t MultiUserTextBasedRootTRPCandidateRequestMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for MultiUserTextBasedRootTRPCandidateRequestMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MultiUserTextBasedRootTRPCandidateRequestMessage.Builder.trpCandidateId.getter()
{
  v0 = type metadata accessor for MultiUserTextBasedRootTRPCandidateRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t MultiUserTextBasedRootTRPCandidateRequestMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for MultiUserTextBasedRootTRPCandidateRequestMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MultiUserTextBasedRootTRPCandidateRequestMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MultiUserTextBasedRootTRPCandidateRequestMessage.Builder(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t MultiUserTextBasedRootTRPCandidateRequestMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = type metadata accessor for MultiUserTextBasedRootTRPCandidateRequestMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v4 + 36));
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t MultiUserTextBasedRootTRPCandidateRequestMessage.Builder.utterance.getter()
{
  v0 = type metadata accessor for MultiUserTextBasedRootTRPCandidateRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 40));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t MultiUserTextBasedRootTRPCandidateRequestMessage.Builder.utterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for MultiUserTextBasedRootTRPCandidateRequestMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_223141290(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x636E617265747475 && a2 == 0xE900000000000065)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_223141330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223141290(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22314135C(uint64_t a1)
{
  v2 = sub_22314145C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223141398(uint64_t a1)
{
  v2 = sub_22314145C();

  return MEMORY[0x2821FE720](a1, v2);
}

id MultiUserTextBasedRootTRPCandidateRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiUserTextBasedRootTRPCandidateRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22314145C()
{
  result = qword_27D0587F0;
  if (!qword_27D0587F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0587F0);
  }

  return result;
}

uint64_t sub_223141550()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230F6D30();
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_2230D525C(319, &qword_280FCA740);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for MultiUserTextBasedRootTRPCandidateRequestMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_223141704()
{
  result = qword_27D058810;
  if (!qword_27D058810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058810);
  }

  return result;
}

unint64_t sub_22314175C()
{
  result = qword_27D058818;
  if (!qword_27D058818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058818);
  }

  return result;
}

unint64_t sub_2231417B4()
{
  result = qword_27D058820;
  if (!qword_27D058820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058820);
  }

  return result;
}

void *MultiUserTRPCandidateRequestMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return MultiUserTRPCandidateRequestMessage.init(build:)(v1);
}

void *MultiUserTRPCandidateRequestMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v55 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v49 - v5;
  v7 = sub_2231FFDA4();
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](v7);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MultiUserTRPCandidateRequestMessage.Builder(0);
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = 15;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  v15 = v11[8];
  __swift_storeEnumTagSinglePayload(&v14[v15], 1, 1, v7);
  v16 = &v14[v11[9]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v14[v11[10]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v14[v11[11]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = v11[12];
  *&v14[v19] = 0;
  a1(v14);
  v20 = *v14;
  if (v20 == 15)
  {
    goto LABEL_13;
  }

  v21 = *(v14 + 2);
  if (!v21)
  {
    goto LABEL_13;
  }

  v51 = *(v14 + 1);
  sub_2230D1480(&v14[v15], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2230D69D4(v6);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v38 = sub_223200014();
    __swift_project_value_buffer(v38, qword_280FCE830);
    v39 = sub_223200004();
    v40 = sub_223200254();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v56 = v42;
      *v41 = 136446210;
      v43 = sub_2230F7898();
      v45 = sub_2231A5D38(v43, v44, &v56);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_2230CE000, v39, v40, "Could not build %{public}s: Builder has missing required fields", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x223DD6780](v42, -1, -1);
      MEMORY[0x223DD6780](v41, -1, -1);
    }

    sub_223141D20(v14);
    type metadata accessor for MultiUserTRPCandidateRequestMessage(0);
    v46 = *((*MEMORY[0x277D85000] & *v55) + 0x30);
    v47 = *((*MEMORY[0x277D85000] & *v55) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v50 = v21;
  v23 = v52;
  v22 = v53;
  (*(v53 + 32))(v52, v6, v7);
  if (!*(v16 + 1) || !*(v17 + 1) || !*(v18 + 1) || (v24 = *&v14[v19]) == 0)
  {
    (*(v22 + 8))(v23, v7);
    goto LABEL_13;
  }

  v25 = *v16;
  v26 = *v17;
  v27 = *v18;
  v28 = v23;
  *(v55 + OBJC_IVAR____TtC16SiriMessageTypes35MultiUserTRPCandidateRequestMessage_userIdToTRPCandidateDict) = v24;
  MEMORY[0x28223BE20](v24);
  *(&v49 - 80) = v20;
  v29 = v50;
  *(&v49 - 9) = v51;
  *(&v49 - 8) = v29;
  *(&v49 - 7) = v23;
  *(&v49 - 6) = v30;
  *(&v49 - 5) = v32;
  *(&v49 - 4) = v31;
  *(&v49 - 3) = v33;
  *(&v49 - 2) = v34;
  *(&v49 - 1) = v35;

  v36 = TRPCandidateRequestMessageBase.init(build:)(sub_223113ED4);
  v37 = v36;
  sub_223141D20(v14);
  if (v36)
  {
  }

  (*(v53 + 8))(v28, v7);
  return v36;
}

uint64_t sub_223141D20(uint64_t a1)
{
  v2 = type metadata accessor for MultiUserTRPCandidateRequestMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *MultiUserTRPCandidateRequestMessage.init(from:)(uint64_t *a1)
{
  v2 = v1;
  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v4 = sub_223200014();
  __swift_project_value_buffer(v4, qword_280FCE830);
  v5 = sub_223200004();
  v6 = sub_223200254();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2230CE000, v5, v6, "Error: Attempted to serialize an instance of MultiUserTRPCandidateRequestMessage, which is not currently codable. Conversation Session State will be empty.", v7, 2u);
    MEMORY[0x223DD6780](v7, -1, -1);
  }

  type metadata accessor for TRPCandidateRequestMessage(0);
  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes35MultiUserTRPCandidateRequestMessage_userIdToTRPCandidateDict) = sub_223200064();
  sub_2230F7158(a1, v10);
  v8 = TRPCandidateRequestMessageBase.init(from:)(v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_223141FB0()
{
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_223200374();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for MultiUserTRPCandidateRequestMessage(0);
  v1 = objc_msgSendSuper2(&v8, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v9 = v2;
  v10 = v4;
  MEMORY[0x223DD5AA0](0xD000000000000022, 0x8000000223223610);
  v5 = *&v0[OBJC_IVAR____TtC16SiriMessageTypes35MultiUserTRPCandidateRequestMessage_userIdToTRPCandidateDict];
  type metadata accessor for TRPCandidateRequestMessage(0);

  v6 = sub_223200074();
  MEMORY[0x223DD5AA0](v6);

  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v9;
}

uint64_t MultiUserTRPCandidateRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MultiUserTRPCandidateRequestMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MultiUserTRPCandidateRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MultiUserTRPCandidateRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t MultiUserTRPCandidateRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_19() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t MultiUserTRPCandidateRequestMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for MultiUserTRPCandidateRequestMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MultiUserTRPCandidateRequestMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MultiUserTRPCandidateRequestMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MultiUserTRPCandidateRequestMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MultiUserTRPCandidateRequestMessage.Builder(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t MultiUserTRPCandidateRequestMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for MultiUserTRPCandidateRequestMessage.Builder(0) + 32));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t MultiUserTRPCandidateRequestMessage.Builder.trpCandidateId.getter()
{
  v1 = (v0 + *(type metadata accessor for MultiUserTRPCandidateRequestMessage.Builder(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MultiUserTRPCandidateRequestMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MultiUserTRPCandidateRequestMessage.Builder(0) + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MultiUserTRPCandidateRequestMessage.Builder.userIdToTRPCandidateDict.getter()
{
  v1 = *(v0 + *(type metadata accessor for MultiUserTRPCandidateRequestMessage.Builder(0) + 40));
}

uint64_t MultiUserTRPCandidateRequestMessage.Builder.userIdToTRPCandidateDict.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_19() + 40);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

id MultiUserTRPCandidateRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiUserTRPCandidateRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223142660()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230F6D30();
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_2230D525C(319, &qword_280FCA740);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_223142778();
        v1 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_223142778()
{
  if (!qword_27D058838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D058840, &qword_22320C710);
    v0 = sub_2232002D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D058838);
    }
  }
}

void *MultiUserTRPCandidateRequestMessageBase.init(build:)(void (*a1)(unsigned __int8 *))
{
  v55 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v49 - v5;
  v7 = sub_2231FFDA4();
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](v7);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MultiUserTRPCandidateRequestMessageBase.Builder(0);
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = 15;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  v15 = v11[8];
  __swift_storeEnumTagSinglePayload(&v14[v15], 1, 1, v7);
  v16 = &v14[v11[9]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v14[v11[10]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v14[v11[11]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = v11[12];
  *&v14[v19] = 0;
  a1(v14);
  v20 = *v14;
  if (v20 == 15)
  {
    goto LABEL_13;
  }

  v21 = *(v14 + 2);
  if (!v21)
  {
    goto LABEL_13;
  }

  v51 = *(v14 + 1);
  sub_2230D1480(&v14[v15], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2230D69D4(v6);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v38 = sub_223200014();
    __swift_project_value_buffer(v38, qword_280FCE830);
    v39 = sub_223200004();
    v40 = sub_223200254();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v56 = v42;
      *v41 = 136446210;
      v43 = sub_2230F7898();
      v45 = sub_2231A5D38(v43, v44, &v56);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_2230CE000, v39, v40, "Could not build %{public}s: Builder has missing required fields", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x223DD6780](v42, -1, -1);
      MEMORY[0x223DD6780](v41, -1, -1);
    }

    sub_223142CA4(v14);
    type metadata accessor for MultiUserTRPCandidateRequestMessageBase(0);
    v46 = *((*MEMORY[0x277D85000] & *v55) + 0x30);
    v47 = *((*MEMORY[0x277D85000] & *v55) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v50 = v21;
  v23 = v52;
  v22 = v53;
  (*(v53 + 32))(v52, v6, v7);
  if (!*(v16 + 1) || !*(v17 + 1) || !*(v18 + 1) || (v24 = *&v14[v19]) == 0)
  {
    (*(v22 + 8))(v23, v7);
    goto LABEL_13;
  }

  v25 = *v16;
  v26 = *v17;
  v27 = *v18;
  v28 = v23;
  *(v55 + OBJC_IVAR____TtC16SiriMessageTypes39MultiUserTRPCandidateRequestMessageBase_userIdToTRPCandidateDict) = v24;
  MEMORY[0x28223BE20](v24);
  *(&v49 - 80) = v20;
  v29 = v50;
  *(&v49 - 9) = v51;
  *(&v49 - 8) = v29;
  *(&v49 - 7) = v23;
  *(&v49 - 6) = v30;
  *(&v49 - 5) = v32;
  *(&v49 - 4) = v31;
  *(&v49 - 3) = v33;
  *(&v49 - 2) = v34;
  *(&v49 - 1) = v35;

  v36 = TRPCandidateRequestMessageBase.init(build:)(sub_223113ED4);
  v37 = v36;
  sub_223142CA4(v14);
  if (v36)
  {
  }

  (*(v53 + 8))(v28, v7);
  return v36;
}

uint64_t sub_223142CA4(uint64_t a1)
{
  v2 = type metadata accessor for MultiUserTRPCandidateRequestMessageBase.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *MultiUserTRPCandidateRequestMessageBase.init(from:)(uint64_t *a1)
{
  v2 = v1;
  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v4 = sub_223200014();
  __swift_project_value_buffer(v4, qword_280FCE830);
  v5 = sub_223200004();
  v6 = sub_223200254();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2230CE000, v5, v6, "Error: Attempted to serialize an instance of MultiUserTRPCandidateRequestMessage, which is not currently codable. Conversation Session State will be empty.", v7, 2u);
    MEMORY[0x223DD6780](v7, -1, -1);
  }

  type metadata accessor for TRPCandidateRequestMessage(0);
  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes39MultiUserTRPCandidateRequestMessageBase_userIdToTRPCandidateDict) = sub_223200064();
  sub_2230F7158(a1, v10);
  v8 = TRPCandidateRequestMessageBase.init(from:)(v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void *MultiUserTRPCandidateRequestMessageBase.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return MultiUserTRPCandidateRequestMessageBase.init(build:)(v1);
}

uint64_t sub_223142F9C()
{
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_223200374();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for MultiUserTRPCandidateRequestMessageBase(0);
  v1 = objc_msgSendSuper2(&v8, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v9 = v2;
  v10 = v4;
  MEMORY[0x223DD5AA0](0xD000000000000022, 0x8000000223223610);
  v5 = *&v0[OBJC_IVAR____TtC16SiriMessageTypes39MultiUserTRPCandidateRequestMessageBase_userIdToTRPCandidateDict];
  type metadata accessor for TRPCandidateRequestMessage(0);

  v6 = sub_223200074();
  MEMORY[0x223DD5AA0](v6);

  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v9;
}

uint64_t MultiUserTRPCandidateRequestMessageBase.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MultiUserTRPCandidateRequestMessageBase.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MultiUserTRPCandidateRequestMessageBase.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MultiUserTRPCandidateRequestMessageBase.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t MultiUserTRPCandidateRequestMessageBase.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_20() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t MultiUserTRPCandidateRequestMessageBase.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for MultiUserTRPCandidateRequestMessageBase.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MultiUserTRPCandidateRequestMessageBase.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MultiUserTRPCandidateRequestMessageBase.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MultiUserTRPCandidateRequestMessageBase.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MultiUserTRPCandidateRequestMessageBase.Builder(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t MultiUserTRPCandidateRequestMessageBase.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for MultiUserTRPCandidateRequestMessageBase.Builder(0) + 32));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t MultiUserTRPCandidateRequestMessageBase.Builder.trpCandidateId.getter()
{
  v1 = (v0 + *(type metadata accessor for MultiUserTRPCandidateRequestMessageBase.Builder(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MultiUserTRPCandidateRequestMessageBase.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MultiUserTRPCandidateRequestMessageBase.Builder(0) + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MultiUserTRPCandidateRequestMessageBase.Builder.userIdToTRPCandidateDict.getter()
{
  v1 = *(v0 + *(type metadata accessor for MultiUserTRPCandidateRequestMessageBase.Builder(0) + 40));
}

uint64_t MultiUserTRPCandidateRequestMessageBase.Builder.userIdToTRPCandidateDict.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_20() + 40);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

id MultiUserTRPCandidateRequestMessageBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiUserTRPCandidateRequestMessageBase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *MUXAsrResultCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return MUXAsrResultCandidateMessage.init(build:)(v1);
}

void *MUXAsrResultCandidateMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v60 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v54 - v5;
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v58 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v57 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MUXAsrResultCandidateMessage.Builder(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v17 = 15;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v18 = v14[8];
  __swift_storeEnumTagSinglePayload(&v17[v18], 1, 1, v7);
  v19 = &v17[v14[9]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v17[v14[10]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = v14[11];
  *&v17[v21] = 0;
  v22 = v14[12];
  *&v17[v22] = 0;
  a1(v17);
  v23 = *v17;
  if (v23 == 15)
  {
    goto LABEL_13;
  }

  v24 = *(v17 + 2);
  if (!v24)
  {
    goto LABEL_13;
  }

  v56 = *(v17 + 1);
  sub_2230D1480(&v17[v18], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2230D69D4(v6);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v43 = sub_223200014();
    __swift_project_value_buffer(v43, qword_280FCE830);
    v44 = sub_223200004();
    v45 = sub_223200254();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v61 = v47;
      *v46 = 136446210;
      v48 = sub_2230F7898();
      v50 = sub_2231A5D38(v48, v49, &v61);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_2230CE000, v44, v45, "Could not build %{public}s: Builder has missing required fields", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x223DD6780](v47, -1, -1);
      MEMORY[0x223DD6780](v46, -1, -1);
    }

    sub_223143B10(v17);
    type metadata accessor for MUXAsrResultCandidateMessage(0);
    v51 = *((*MEMORY[0x277D85000] & *v60) + 0x30);
    v52 = *((*MEMORY[0x277D85000] & *v60) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v55 = v24;
  v26 = v57;
  v25 = v58;
  v27 = (*(v58 + 32))(v57, v6, v7);
  if (!*(v19 + 1) || !*(v20 + 1) || (v28 = *&v17[v21]) == 0 || (v29 = *&v17[v22]) == 0)
  {
    (*(v25 + 8))(v26, v7);
    goto LABEL_13;
  }

  v30 = *v19;
  v31 = *v20;
  v32 = v26;
  v33 = v60;
  *(v60 + OBJC_IVAR____TtC16SiriMessageTypes28MUXAsrResultCandidateMessage_speechPackageDict) = v28;
  *(v33 + OBJC_IVAR____TtC16SiriMessageTypes28MUXAsrResultCandidateMessage_voiceIdScoreCard) = v29;
  MEMORY[0x28223BE20](v27);
  *(&v54 - 64) = v23;
  v34 = v55;
  *(&v54 - 7) = v56;
  *(&v54 - 6) = v34;
  *(&v54 - 5) = v32;
  *(&v54 - 4) = v35;
  *(&v54 - 3) = v36;
  *(&v54 - 2) = v37;
  *(&v54 - 1) = v38;
  v40 = v39;

  v41 = ResultCandidateRequestMessageBase.init(build:)(sub_2231122E4);
  v42 = v41;

  sub_223143B10(v17);
  if (v41)
  {
  }

  (*(v58 + 8))(v32, v7);
  return v41;
}

uint64_t sub_223143B10(uint64_t a1)
{
  v2 = type metadata accessor for MUXAsrResultCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MUXAsrResultCandidateMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058858, &unk_22320C7A8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231449B8();
  sub_223200794();
  if (v2)
  {
    v10 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057AB0, &qword_223206160);
    sub_223110600(&qword_27D057AB8, sub_2231105AC, sub_2230FB7A0);
    sub_223200554();
    v15 = sub_22310F3AC(v26[0]);

    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28MUXAsrResultCandidateMessage_speechPackageDict) = v15;
    v27 = 1;
    sub_2230FB7A0();
    sub_223200554();
    v25 = v26[1];
    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, &qword_280FCA3C8, 0x277CEF520);
    v24 = v26[0];
    v18 = sub_223200264();
    v19 = v18;
    if (v18)
    {
      *(v3 + OBJC_IVAR____TtC16SiriMessageTypes28MUXAsrResultCandidateMessage_voiceIdScoreCard) = v18;
      sub_2230F7158(a1, v26);
      v23 = v19;
      v10 = ResultCandidateRequestMessageBase.init(from:)(v26);
      v21 = OUTLINED_FUNCTION_2();
      v22(v21);
      sub_2230D94DC(v24, v25);

      __swift_destroy_boxed_opaque_existential_1(a1);
      return v10;
    }

    sub_2230F9E38();
    swift_allocError();
    *v20 = 0xD000000000000033;
    *(v20 + 8) = 0x8000000223223760;
    *(v20 + 16) = 0;
    swift_willThrow();
    sub_2230D94DC(v24, v25);
    v16 = OUTLINED_FUNCTION_2();
    v17(v16);
    v10 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v10)
  {
    v11 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes28MUXAsrResultCandidateMessage_speechPackageDict);
  }

  type metadata accessor for MUXAsrResultCandidateMessage(0);
  v12 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v13 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v10;
}

uint64_t sub_223144014(void *a1)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058868, &qword_22320C7B8);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v25[-1] - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231449B8();
  sub_2232007A4();
  v13 = sub_223110C08(*(v1 + OBJC_IVAR____TtC16SiriMessageTypes28MUXAsrResultCandidateMessage_speechPackageDict));
  if (v2)
  {
    goto LABEL_3;
  }

  v25[0] = v13;
  HIBYTE(v24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057AB0, &qword_223206160);
  sub_223110600(&qword_280FCA538, sub_2230D37F0, sub_2230D7754);
  sub_223200654();

  v16 = objc_opt_self();
  v17 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28MUXAsrResultCandidateMessage_voiceIdScoreCard);
  v25[0] = 0;
  v18 = [v16 archivedDataWithRootObject:v17 requiringSecureCoding:1 error:v25];
  v19 = v25[0];
  if (!v18)
  {
    v23 = v19;
    sub_2231FFD04();

    swift_willThrow();
LABEL_3:
    result = (*(v7 + 8))(v11, v4);
    goto LABEL_4;
  }

  v20 = sub_2231FFD24();
  v22 = v21;

  v25[0] = v20;
  v25[1] = v22;
  HIBYTE(v24) = 1;
  sub_2230D7754();
  sub_223200654();
  sub_223190B78(a1);
  (*(v7 + 8))(v11, v4);
  result = sub_2230D94DC(v20, v22);
LABEL_4:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_223144300()
{
  v0 = sub_223200464();

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

uint64_t sub_223144378@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_223144300();
  *a2 = result;
  return result;
}

unint64_t sub_2231443A8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2230EBAAC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2231443DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_223144300();
  *a1 = result;
  return result;
}

uint64_t sub_223144404(uint64_t a1)
{
  v2 = sub_2231449B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223144440(uint64_t a1)
{
  v2 = sub_2231449B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MUXAsrResultCandidateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MUXAsrResultCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MUXAsrResultCandidateMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MUXAsrResultCandidateMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t MUXAsrResultCandidateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_21() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t MUXAsrResultCandidateMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for MUXAsrResultCandidateMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MUXAsrResultCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXAsrResultCandidateMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXAsrResultCandidateMessage.Builder.resultCandidateId.getter()
{
  v1 = (v0 + *(type metadata accessor for MUXAsrResultCandidateMessage.Builder(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MUXAsrResultCandidateMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXAsrResultCandidateMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXAsrResultCandidateMessage.Builder.speechPackageDict.getter()
{
  v1 = *(v0 + *(type metadata accessor for MUXAsrResultCandidateMessage.Builder(0) + 36));
}

uint64_t MUXAsrResultCandidateMessage.Builder.speechPackageDict.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_21() + 36);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

void *MUXAsrResultCandidateMessage.Builder.voiceIdScoreCard.getter()
{
  v1 = *(v0 + *(type metadata accessor for MUXAsrResultCandidateMessage.Builder(0) + 40));
  v2 = v1;
  return v1;
}

void MUXAsrResultCandidateMessage.Builder.voiceIdScoreCard.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_21() + 40);

  *(v1 + v2) = v0;
}

void sub_2231448F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28MUXAsrResultCandidateMessage_speechPackageDict);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28MUXAsrResultCandidateMessage_voiceIdScoreCard);
}

id MUXAsrResultCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUXAsrResultCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231449B8()
{
  result = qword_27D058860;
  if (!qword_27D058860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058860);
  }

  return result;
}

uint64_t sub_223144ABC()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230F6D30();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_223144BD0();
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_223110954();
          v1 = v9;
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_223144BD0()
{
  if (!qword_280FCA530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D057AD8, &qword_223206240);
    v0 = sub_2232002D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280FCA530);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MUXAsrResultCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223144D14()
{
  result = qword_27D058880;
  if (!qword_27D058880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058880);
  }

  return result;
}

unint64_t sub_223144D6C()
{
  result = qword_27D058888;
  if (!qword_27D058888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058888);
  }

  return result;
}

unint64_t sub_223144DC4()
{
  result = qword_27D058890;
  if (!qword_27D058890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058890);
  }

  return result;
}

uint64_t sub_223144E60(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000223223870 == a2;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000223223890 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x80000002232238B0 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x616E45564D527369 && a2 == 0xEC00000064656C62)
      {

        return 3;
      }

      else
      {
        v9 = sub_2232006B4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_223144FC8(char a1)
{
  result = 0x616E45564D527369;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_223145070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223144E60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223145098(uint64_t a1)
{
  v2 = sub_2231468B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231450D4(uint64_t a1)
{
  v2 = sub_2231468B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MUXContextMessage.MUXContextMessageError.hashValue.getter()
{
  v1 = *v0;
  sub_223200744();
  MEMORY[0x223DD60B0](v1);
  return sub_223200764();
}

uint64_t MUXContextMessage.init(build:)(void (*a1)(_BYTE *))
{
  v2 = v1;
  v39[0] = 15;
  memset(&v39[8], 0, 32);
  *&v39[40] = 514;
  v40 = 0;
  a1(v39);
  if (*&v39[24])
  {
    v3 = *&v39[24];
  }

  else if (v40 && (v4 = sub_2231467FC(&v40)) != 0)
  {
    *&v35 = v4;
    sub_223145458(&v35, &v34);

    v3 = v34;
  }

  else
  {
    sub_2230FB7F4(0, &qword_27D057AF0, 0x277D47390);
    sub_2231104C4();
    v3 = sub_223200064();
  }

  v5 = *&v39[32];
  if (*&v39[32])
  {

    v6 = v5;
  }

  else
  {
    v7 = v40;

    if (v7 && (v8 = sub_2231467C4(&v40)) != 0)
    {
      v6 = v8;
    }

    else
    {

      v6 = MEMORY[0x277D84F90];
    }
  }

  LOBYTE(v9) = v39[40];
  if (v39[40] == 2 && (v9 = v40) != 0)
  {

    LOBYTE(v9) = [v9 voiceProfilesAreInFlight];
  }

  else
  {
  }

  v10 = v39[0];
  if (v39[0] == 15 || (v11 = *&v39[16]) == 0 || (v12 = v39[41], v39[41] == 2))
  {

    OUTLINED_FUNCTION_2_22(v13, v14, v15, v16, v17, v18, v19, v20, v33, v34, v35, v36, v37, v38, *v39, *&v39[16], *&v39[32], v40);
    type metadata accessor for MUXContextMessage();
    v21 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v22 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC16SiriMessageTypes17MUXContextMessage_userIdToHomeMember) = v3;
    *(v2 + OBJC_IVAR____TtC16SiriMessageTypes17MUXContextMessage_pitchComposition) = v6;
    *(v2 + OBJC_IVAR____TtC16SiriMessageTypes17MUXContextMessage_voiceProfilesAreInFlight) = v9 & 1;
    v25 = *&v39[8];
    *(v2 + OBJC_IVAR____TtC16SiriMessageTypes17MUXContextMessage_isRMVEnabled) = v12 & 1;

    v23 = sub_2230D20C4(v2, v10, v25, v11);
    OUTLINED_FUNCTION_2_22(v23, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *v39, *&v39[16], *&v39[32], v40);
  }

  return v23;
}

void sub_223145458(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = *a1;
  v3 = sub_22314621C(*a1);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v3;
    v20 = MEMORY[0x277D84F90];
    sub_22311293C(0, v3 & ~(v3 >> 63), 0);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v18 = a2;
      v6 = 0;
      v4 = v20;
      while (1)
      {
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ((v19 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x223DD5CE0](v6, v19);
        }

        else
        {
          if (v6 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v8 = *(v19 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v5;
        v11 = sub_2230D0814(v8);
        if (!v12)
        {
          goto LABEL_18;
        }

        v13 = v11;
        v14 = v12;
        v16 = *(v20 + 16);
        v15 = *(v20 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_22311293C(v15 > 1, v16 + 1, 1);
        }

        *(v20 + 16) = v16 + 1;
        v17 = (v20 + 24 * v16);
        v17[4] = v13;
        v17[5] = v14;
        v17[6] = v9;
        ++v6;
        v5 = v10;
        if (v7 == v10)
        {
          a2 = v18;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_14:
    *a2 = sub_2231455CC(v4);
  }
}

uint64_t sub_2231455CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0588D8, &unk_22320CC20);
    v1 = sub_223200444();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_2231464E0(v2, 1, &v4);

  return v4;
}

uint64_t MUXContextMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058898, &unk_22320C980);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231468B0();
  sub_223200794();
  if (v2)
  {
    v10 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057AB0, &qword_223206160);
    sub_223110600(&qword_27D057AB8, sub_2231105AC, sub_2230FB7A0);
    sub_223200554();
    v15 = sub_22310F3E4(v24[0]);

    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes17MUXContextMessage_userIdToHomeMember) = v15;
    v25 = 1;
    sub_2230FB7A0();
    sub_223200554();
    v23 = v24[1];
    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, &qword_27D0598E0, 0x277CCABB0);
    v22 = v24[0];
    v16 = sub_223200284();
    if (v16)
    {
      *(v1 + OBJC_IVAR____TtC16SiriMessageTypes17MUXContextMessage_pitchComposition) = v16;
      *(v1 + OBJC_IVAR____TtC16SiriMessageTypes17MUXContextMessage_voiceProfilesAreInFlight) = OUTLINED_FUNCTION_4_17(2) & 1;
      *(v1 + OBJC_IVAR____TtC16SiriMessageTypes17MUXContextMessage_isRMVEnabled) = OUTLINED_FUNCTION_4_17(3) & 1;
      sub_2230F7158(a1, v24);
      v10 = MessageBase.init(from:)(v24);
      v20 = OUTLINED_FUNCTION_2();
      v21(v20);
      sub_2230D94DC(v22, v23);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v10;
    }

    sub_223146904();
    swift_allocError();
    v10 = 1;
    *v17 = 1;
    swift_willThrow();
    sub_2230D94DC(v22, v23);
    v18 = OUTLINED_FUNCTION_2();
    v19(v18);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v10)
  {
    v11 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes17MUXContextMessage_userIdToHomeMember);
  }

  type metadata accessor for MUXContextMessage();
  v12 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v13 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v10;
}

uint64_t sub_223145B7C(void *a1)
{
  v3 = v1;
  v29[2] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0588B0, &qword_22320C990);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v29[-1] - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231468B0();
  sub_2232007A4();
  v14 = sub_223110C08(*(v1 + OBJC_IVAR____TtC16SiriMessageTypes17MUXContextMessage_userIdToHomeMember));
  if (!v2)
  {
    v29[0] = v14;
    HIBYTE(v28) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057AB0, &qword_223206160);
    sub_223110600(&qword_280FCA538, sub_2230D37F0, sub_2230D7754);
    sub_223200654();

    v17 = objc_opt_self();
    v18 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes17MUXContextMessage_pitchComposition);
    sub_2230FB7F4(0, &qword_27D0598E0, 0x277CCABB0);
    v19 = sub_2232001C4();
    v29[0] = 0;
    v20 = [v17 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:v29];

    v21 = v29[0];
    if (v20)
    {
      v22 = sub_2231FFD24();
      v24 = v23;

      v29[0] = v22;
      v29[1] = v24;
      HIBYTE(v28) = 1;
      sub_2230D7754();
      OUTLINED_FUNCTION_3_18();
      sub_223200654();
      v25 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes17MUXContextMessage_voiceProfilesAreInFlight);
      LOBYTE(v29[0]) = 2;
      OUTLINED_FUNCTION_3_18();
      sub_223200604();
      v26 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes17MUXContextMessage_isRMVEnabled);
      LOBYTE(v29[0]) = 3;
      OUTLINED_FUNCTION_3_18();
      sub_223200604();
      sub_2230D8F5C(a1);
      (*(v8 + 8))(v12, v5);
      result = sub_2230D94DC(v22, v24);
      goto LABEL_4;
    }

    v27 = v21;
    sub_2231FFD04();

    swift_willThrow();
  }

  result = (*(v8 + 8))(v12, v5);
LABEL_4:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MUXContextMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MUXContextMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MUXContextMessage.Builder.userIdToHomeMember.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t MUXContextMessage.Builder.pitchComposition.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

void *MUXContextMessage.Builder.multiUserInfo.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t sub_223146158()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes17MUXContextMessage_userIdToHomeMember);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes17MUXContextMessage_pitchComposition);
}

id MUXContextMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUXContextMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22314621C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_223200414();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_223146240(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0588D8, &unk_22320CC20);
  v39 = a2;
  result = sub_223200434();
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
      sub_2231AB8A0(0, (v36 + 63) >> 6, v10);
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
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v39 & 1) == 0)
    {
      v24 = v20[1];

      v25 = v23;
    }

    v26 = *(v8 + 40);
    sub_223200744();
    sub_223200124();
    result = sub_223200764();
    v27 = -1 << *(v8 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v8 + 48) + 16 * v30);
    *v35 = v21;
    v35[1] = v22;
    *(*(v8 + 56) + 8 * v30) = v23;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v15 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_2231464E0(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v28 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_2232006E4();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 1);
    v6 = *i;
    v8 = *(i - 2);

    v9 = v6;
    if (!v7)
    {
      goto LABEL_17;
    }

    v10 = v9;
    v11 = *a3;
    v13 = sub_22314C358(v8, v7);
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_20;
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
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057AF8, &qword_2232063A0);
      sub_2232003E4();
      if (v17)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v21 = *a3;
    *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    v22 = (v21[6] + 16 * v13);
    *v22 = v8;
    v22[1] = v7;
    *(v21[7] + 8 * v13) = v10;
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_21;
    }

    v21[2] = v25;
    ++v4;
    a2 = 1;
  }

  sub_223146240(v16, a2 & 1);
  v18 = *a3;
  v19 = sub_22314C358(v8, v7);
  if ((v17 & 1) != (v20 & 1))
  {
    goto LABEL_22;
  }

  v13 = v19;
  if ((v17 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v26 = swift_allocError();
  swift_willThrow();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0588E0, &qword_22320CC30);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_223200374();
  MEMORY[0x223DD5AA0](0xD00000000000001BLL, 0x8000000223223930);
  sub_2232003C4();
  MEMORY[0x223DD5AA0](39, 0xE100000000000000);
  sub_223200404();
  __break(1u);
}

uint64_t type metadata accessor for MUXContextMessage()
{
  result = qword_280FCE490;
  if (!qword_280FCE490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2231468B0()
{
  result = qword_27D0588A0;
  if (!qword_27D0588A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0588A0);
  }

  return result;
}

unint64_t sub_223146904()
{
  result = qword_27D0588A8;
  if (!qword_27D0588A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0588A8);
  }

  return result;
}

unint64_t sub_22314695C()
{
  result = qword_27D0588B8;
  if (!qword_27D0588B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0588B8);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_223146A64(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_223146AB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *sub_223146B28(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223146C08()
{
  result = qword_27D0588C0;
  if (!qword_27D0588C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0588C0);
  }

  return result;
}

unint64_t sub_223146C60()
{
  result = qword_27D0588C8;
  if (!qword_27D0588C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0588C8);
  }

  return result;
}

unint64_t sub_223146CB8()
{
  result = qword_27D0588D0;
  if (!qword_27D0588D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0588D0);
  }

  return result;
}

uint64_t sub_223146D0C(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v7 = [a1 *a2];

  if (!v7)
  {
    return 0;
  }

  sub_2230FB7F4(0, a3, a4);
  v8 = sub_2232001D4();

  return v8;
}

uint64_t sub_223146DA0(uint64_t a1)
{
  v2 = sub_2231481C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223146DDC(uint64_t a1)
{
  v2 = sub_2231481C4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *MUXDirectActionResultCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return MUXDirectActionResultCandidateMessage.init(build:)(v1);
}

void *MUXDirectActionResultCandidateMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v84 = v1;
  ObjectType = swift_getObjectType();
  v3 = sub_2231FFC84();
  v4 = OUTLINED_FUNCTION_9(v3);
  v79 = v5;
  v80 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v78 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v75 - v12;
  v14 = sub_2231FFDA4();
  v15 = OUTLINED_FUNCTION_9(v14);
  v81 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_2();
  v82 = v20 - v19;
  v21 = type metadata accessor for MUXDirectActionResultCandidateMessage.Builder(0);
  v22 = (v21 - 8);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_2();
  v26 = (v25 - v24);
  *v26 = 15;
  *(v26 + 1) = 0;
  *(v26 + 2) = 0;
  v27 = v22[8];
  v28 = v14;
  __swift_storeEnumTagSinglePayload(v25 - v24 + v27, 1, 1, v14);
  v29 = &v26[v22[9]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v26[v22[10]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = &v26[v22[11]];
  *v31 = 0;
  v31[1] = 0;
  v32 = v22[12];
  *&v26[v32] = 0;
  a1(v26);
  v33 = *v26;
  if (v33 == 15)
  {
    goto LABEL_13;
  }

  v34 = *(v26 + 2);
  if (!v34)
  {
    goto LABEL_13;
  }

  v77 = *(v26 + 1);
  sub_2230D1480(&v26[v27], v13);
  v35 = v28;
  if (__swift_getEnumTagSinglePayload(v13, 1, v28) == 1)
  {
    sub_2230D69D4(v13);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v48 = sub_223200014();
    __swift_project_value_buffer(v48, qword_280FCE830);
    v49 = sub_223200004();
    v50 = sub_223200254();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v85[0] = v52;
      *v51 = 136446210;
      v53 = sub_2230F7898();
      v55 = sub_2231A5D38(v53, v54, v85);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_2230CE000, v49, v50, "Could not build %{public}s: Builder has missing required fields", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x223DD6780](v52, -1, -1);
      MEMORY[0x223DD6780](v51, -1, -1);
    }

LABEL_18:
    sub_223147540(v26);
    type metadata accessor for MUXDirectActionResultCandidateMessage(0);
    v56 = *((*MEMORY[0x277D85000] & *v84) + 0x30);
    v57 = *((*MEMORY[0x277D85000] & *v84) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v76 = v34;
  v37 = v81;
  v36 = v82;
  (*(v81 + 32))(v82, v13, v35);
  if (!*(v29 + 1) || (v38 = *(v30 + 1)) == 0)
  {
    (*(v37 + 8))(v36, v35);
    goto LABEL_13;
  }

  v39 = *v30;
  v40 = v31[1];
  if (v40)
  {
    v75[1] = *v29;
    v75[2] = v39;
    ObjectType = v38;
    v85[0] = *v31;
    v85[1] = v40;

    v41 = v78;
    sub_2231FFC74();
    sub_2230D1D30();
    v42 = sub_2232002E4();
    v44 = v43;
    (*(v79 + 8))(v41, v80);

    v45 = v42;
    v46 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v46 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (v46)
    {
      v47 = *&v26[v32];
      goto LABEL_23;
    }
  }

  else
  {
    v45 = 0;
    v44 = 0;
  }

  v47 = *&v26[v32];
  if (!v47 || !*(v47 + 16))
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v71 = sub_223200014();
    __swift_project_value_buffer(v71, qword_280FCE830);
    v72 = sub_223200004();
    v73 = sub_223200254();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_2230CE000, v72, v73, "directAction and requestExecutionParameters are empty, can't create message", v74, 2u);
      MEMORY[0x223DD6780](v74, -1, -1);
    }

    (*(v37 + 8))(v82, v35);
    goto LABEL_18;
  }

LABEL_23:
  v60 = v84;
  v61 = (v84 + OBJC_IVAR____TtC16SiriMessageTypes37MUXDirectActionResultCandidateMessage_directAction);
  *v61 = v45;
  v61[1] = v44;
  *(v60 + OBJC_IVAR____TtC16SiriMessageTypes37MUXDirectActionResultCandidateMessage_requestExecutionParameters) = v47;
  MEMORY[0x28223BE20](v47);
  LOBYTE(v75[-8]) = v33;
  v62 = v76;
  v75[-7] = v77;
  v75[-6] = v62;
  v63 = v82;
  v75[-5] = v82;
  v75[-4] = v64;
  v75[-3] = v65;
  v75[-2] = v66;
  v75[-1] = v67;

  v68 = ResultCandidateRequestMessageBase.init(build:)(sub_2231122E4);
  v58 = v68;
  if (v68)
  {
    v69 = *(v37 + 8);
    v70 = v68;
    v69(v63, v35);
    sub_223147540(v26);
  }

  else
  {
    (*(v37 + 8))(v63, v35);
    sub_223147540(v26);
  }

  return v58;
}

uint64_t sub_223147540(uint64_t a1)
{
  v2 = type metadata accessor for MUXDirectActionResultCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *MUXDirectActionResultCandidateMessage.init(from:)(uint64_t *a1)
{
  v2 = sub_2231FFC84();
  v3 = OUTLINED_FUNCTION_9(v2);
  v47 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0588E8, &unk_22320CC38);
  v11 = OUTLINED_FUNCTION_9(v10);
  v48 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v44 - v15;
  v17 = a1[4];
  v18 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = sub_2231481C4();
  v20 = v50;
  sub_223200794();
  if (!v20)
  {
    v50 = v2;
    v21 = v48;
    LOBYTE(v51[0]) = 0;
    v22 = sub_223200494();
    if (v23)
    {
      v51[0] = v22;
      v51[1] = v23;
      v44 = v16;
      sub_2231FFC74();
      sub_2230D1D30();
      v45 = sub_2232002E4();
      v46 = v24;
      v16 = v44;
      (*(v47 + 8))(v9, v50);
    }

    else
    {
      v45 = v22;
      v46 = 0;
    }

    v25 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0579F0, &qword_223205AD0);
    v52 = 1;
    sub_22310C4F4(&qword_27D0579F8);
    sub_2232004C4();
    v26 = v21;
    v31 = v51[0];
    v32 = v46;
    if (v46)
    {
      v33 = HIBYTE(v46) & 0xF;
      if ((v46 & 0x2000000000000000) == 0)
      {
        v33 = v45 & 0xFFFFFFFFFFFFLL;
      }

      if (v33)
      {
        goto LABEL_14;
      }
    }

    if (v51[0])
    {
      if (*(v51[0] + 16))
      {
LABEL_14:
        v34 = v49;
        v35 = (v49 + OBJC_IVAR____TtC16SiriMessageTypes37MUXDirectActionResultCandidateMessage_directAction);
        *v35 = v45;
        v35[1] = v32;
        *(v34 + OBJC_IVAR____TtC16SiriMessageTypes37MUXDirectActionResultCandidateMessage_requestExecutionParameters) = v31;
        sub_2230F7158(v18, v51);
        v27 = ResultCandidateRequestMessageBase.init(from:)(v51);
        v36 = OUTLINED_FUNCTION_6_4();
        v37(v36);
        __swift_destroy_boxed_opaque_existential_1(v18);
        return v27;
      }
    }

    v38 = sub_2232003A4();
    swift_allocError();
    v40 = v39;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057A00, &qword_223205AD8);
    v50 = v10;
    v42 = *(v41 + 48);
    *(v40 + 24) = &type metadata for MUXDirectActionResultCandidateMessage.CodingKeys;
    *(v40 + 32) = v25;
    *v40 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057A08, &qword_223205AE0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_223205AB0;
    *(v43 + 56) = &type metadata for MUXDirectActionResultCandidateMessage.CodingKeys;
    *(v43 + 64) = v25;
    *(v43 + 32) = 0;
    sub_223200394();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84158], v38);
    swift_willThrow();
    (*(v26 + 8))(v16, v50);
  }

  v27 = 0;
  __swift_destroy_boxed_opaque_existential_1(v18);
  type metadata accessor for MUXDirectActionResultCandidateMessage(0);
  v28 = *((*MEMORY[0x277D85000] & *v49) + 0x30);
  v29 = *((*MEMORY[0x277D85000] & *v49) + 0x34);
  swift_deallocPartialClassInstance();
  return v27;
}