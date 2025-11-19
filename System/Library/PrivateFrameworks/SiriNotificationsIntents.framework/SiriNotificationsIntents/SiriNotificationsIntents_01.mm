uint64_t sub_2684E008C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ANReadUnsupportedFollowupAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2684E00CC()
{
  result = qword_280282CD8;
  if (!qword_280282CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282CD8);
  }

  return result;
}

unint64_t sub_2684E0120()
{
  result = qword_280282BB0;
  if (!qword_280282BB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280282BB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ANReadUnsupportedFollowupAction.ReadUnsupportedFollowupActionErrors(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2684E0200);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2684E023C()
{
  result = qword_280282CE8;
  if (!qword_280282CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282CE8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_4(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10)
{

  return sub_2684EBB74(a1, a2, v10, v13, 8, v12, v14, v11, a9, a10);
}

uint64_t OUTLINED_FUNCTION_5_3()
{
  v2 = v0[34];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v8 = v0[20];
  v7 = v0[21];

  return sub_268567990();
}

uint64_t OUTLINED_FUNCTION_7_3()
{
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[22];
}

uint64_t OUTLINED_FUNCTION_9_3()
{
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);

  return sub_268567A20();
}

uint64_t OUTLINED_FUNCTION_13_2()
{

  return swift_slowAlloc();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2684E03C8()
{
  v1 = [v0 contentType];
  v2 = *MEMORY[0x277CE2160];
  v3 = sub_268568B20();
  v5 = v4;
  if (v3 == sub_268568B20() && v5 == v6)
  {

    goto LABEL_12;
  }

  v8 = sub_2685691C0();

  if (v8)
  {
LABEL_12:
    v16 = 1;
    return v16 & 1;
  }

  v9 = [v0 contentType];
  v10 = *MEMORY[0x277CE2158];
  v11 = sub_268568B20();
  v13 = v12;
  if (v11 == sub_268568B20() && v13 == v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_2685691C0();
  }

  return v16 & 1;
}

uint64_t sub_2684E0514()
{
  v1 = v0;
  v2 = [v0 contentType];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = *MEMORY[0x277CF34D0];
  v5 = sub_268568B20();
  v0 = v6;
  if (v5 == sub_268568B20() && v0 == v7)
  {
    goto LABEL_14;
  }

  v9 = sub_2685691C0();

  if ((v9 & 1) == 0)
  {
LABEL_8:
    v11 = [v1 contentType];
    if (!v11)
    {
      v10 = 0;
      return v10 & 1;
    }

    v3 = v11;
    v12 = *MEMORY[0x277CF34C8];
    sub_268568B20();
    if (v1 != OUTLINED_FUNCTION_4_3() || v0 != v13)
    {
      v10 = OUTLINED_FUNCTION_2_5();
LABEL_15:

      return v10 & 1;
    }

LABEL_14:
    v10 = 1;
    goto LABEL_15;
  }

  v10 = 1;
  return v10 & 1;
}

uint64_t sub_2684E0640()
{
  v2 = [v0 contentType];
  v3 = *MEMORY[0x277CE2158];
  sub_268568B20();
  if (v1 == OUTLINED_FUNCTION_4_3() && v0 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_2_5();
  }

  return v6 & 1;
}

uint64_t sub_2684E06CC()
{
  v2 = [v0 contentType];
  if (v2)
  {
    v3 = v2;
    v4 = *MEMORY[0x277CF34C8];
    sub_268568B20();
    if (v1 == OUTLINED_FUNCTION_4_3() && v0 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_2_5();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

id sub_2684E0768()
{
  result = [v0 communicationContext];
  if (result)
  {
    v2 = result;
    v3 = [result sender];

    if (v3)
    {
      return sub_2684E1094(v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_2684E07D8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2685689F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_28028B348);
  (*(v7 + 16))(v10, v11, v6);
  v12 = OUTLINED_FUNCTION_3_5();
  sub_2684E1164(v12, v13);
  v14 = sub_2685689E0();
  v15 = sub_268568DD0();
  v16 = OUTLINED_FUNCTION_3_5();
  sub_2684E11BC(v16, v17);
  if (os_log_type_enabled(v14, v15))
  {
    v18 = swift_slowAlloc();
    v45 = v2;
    v19 = a1;
    v20 = v18;
    v21 = swift_slowAlloc();
    v46 = v21;
    *v20 = 136315138;
    sub_2684E1164(v19, a2);
    v22 = sub_268567530();
    v43 = v7;
    v44 = v6;
    v23 = v22;
    v24 = a2;
    v26 = v25;
    sub_2684E11BC(v19, v24);
    v27 = sub_2684EABEC(v23, v26, &v46);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_2684CA000, v14, v15, "#RNNotificationContent attempting to unpack data: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x26D61CB30](v21, -1, -1);
    v3 = v45;
    MEMORY[0x26D61CB30](v20, -1, -1);

    (*(v43 + 8))(v10, v44);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v28 = sub_2684D16C0(0, &qword_280282CF8, 0x277CCAAC8);
  sub_2684D16C0(0, &qword_280282D00, 0x277CF3510);
  v29 = sub_268568E00();
  if (v3)
  {
    v30 = OUTLINED_FUNCTION_3_5();
    sub_2684E11BC(v30, v31);
  }

  else
  {
    v32 = v29;
    if (v29)
    {
      v33 = OUTLINED_FUNCTION_3_5();
      sub_2684E11BC(v33, v34);
      return v32;
    }

    else
    {
      sub_2684D16C0(0, &qword_280282D08, 0x277CE1FC0);
      v36 = sub_268568E00();
      v37 = v36;
      if (v36)
      {
        v28 = [v36 content];
        v38 = OUTLINED_FUNCTION_3_5();
        sub_2684E11BC(v38, v39);
      }

      else
      {
        v40 = OUTLINED_FUNCTION_3_5();
        sub_2684E11BC(v40, v41);
        return 0;
      }
    }
  }

  return v28;
}

uint64_t sub_2684E0B50(char **a1, char a2, void *a3, char a4)
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      v8 = a3;
      v9 = a1;
      sub_2684E1104(v9, &selRef_title);
      v10 = OUTLINED_FUNCTION_1_5();
      sub_268568B20();
      OUTLINED_FUNCTION_5_4();
      if (a1)
      {
        if (v4 == v5 && a1 == &selRef_title)
        {
        }

        else
        {
          OUTLINED_FUNCTION_0_4();
          OUTLINED_FUNCTION_6_2();

          if ((v4 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        v15 = sub_2684E0514() & 1;
        if (v15 != (sub_2684E03C8() & 1))
        {
          goto LABEL_31;
        }

        v16 = sub_2684E0768();
        v18 = v17;
        v19 = sub_2684E0768();
        LOBYTE(a1) = v20;
        if (v18)
        {
          if (v20)
          {
            if (v16 == v19 && v18 == v20)
            {
            }

            else
            {
              v22 = OUTLINED_FUNCTION_8_2();

              if ((v22 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

LABEL_47:
            v31 = sub_2684E1104(v9, &selRef_threadID);
            a1 = v32;
            v33 = [v8 threadIdentifier];
            sub_268568B20();
            OUTLINED_FUNCTION_5_4();
            if (a1)
            {
              if (v31 == v5 && a1 == v18)
              {
              }

              else
              {
                OUTLINED_FUNCTION_0_4();
                OUTLINED_FUNCTION_6_2();

                if ((v31 & 1) == 0)
                {
                  goto LABEL_31;
                }
              }

              sub_2684E1104(v9, &selRef_header);
              v39 = OUTLINED_FUNCTION_1_5();
              sub_268568B20();
              OUTLINED_FUNCTION_5_4();
              if (v31 != v5 || a1 != &selRef_header)
              {
                OUTLINED_FUNCTION_0_4();
                OUTLINED_FUNCTION_6_2();

                if ((v31 & 1) == 0)
                {
                  goto LABEL_31;
                }

                goto LABEL_80;
              }

              goto LABEL_79;
            }

            goto LABEL_76;
          }

LABEL_41:

LABEL_89:

          return a1 & 1;
        }

        if (!v20)
        {
          goto LABEL_47;
        }

LABEL_45:

        goto LABEL_32;
      }

      goto LABEL_76;
    }

LABEL_18:
    sub_2684D16C0(0, &qword_280282CF0, 0x277D82BB8);
    v8 = a3;
    v14 = a1;
    LOBYTE(a1) = sub_268568E70();

LABEL_77:
    return a1 & 1;
  }

  if ((a4 & 1) == 0)
  {
    goto LABEL_18;
  }

  v9 = a3;
  v8 = a1;
  sub_2684E1104(v9, &selRef_title);
  v12 = OUTLINED_FUNCTION_1_5();
  sub_268568B20();
  OUTLINED_FUNCTION_5_4();
  if (!a1)
  {
    goto LABEL_76;
  }

  if (v4 == v5 && a1 == &selRef_title)
  {
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_6_2();

    if ((v4 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v23 = sub_2684E0514() & 1;
  if (v23 != (sub_2684E03C8() & 1))
  {
    goto LABEL_31;
  }

  v24 = sub_2684E0768();
  v26 = v25;
  v27 = sub_2684E0768();
  LOBYTE(a1) = v28;
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_41;
    }

    if (v24 == v27 && v26 == v28)
    {
    }

    else
    {
      v30 = OUTLINED_FUNCTION_8_2();

      if ((v30 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (v28)
  {
    goto LABEL_45;
  }

  v35 = sub_2684E1104(v9, &selRef_threadID);
  a1 = v36;
  v37 = [v8 threadIdentifier];
  sub_268568B20();
  OUTLINED_FUNCTION_5_4();
  if (!a1)
  {
LABEL_76:

    goto LABEL_77;
  }

  if (v35 == v5 && a1 == v26)
  {
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_6_2();

    if ((v35 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  sub_2684E1104(v9, &selRef_header);
  v41 = OUTLINED_FUNCTION_1_5();
  sub_268568B20();
  OUTLINED_FUNCTION_5_4();
  if (v35 != v5 || a1 != &selRef_header)
  {
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_6_2();

    if ((v35 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_80;
  }

LABEL_79:

LABEL_80:
  sub_2684E1104(v9, &selRef_subtitle);
  v44 = OUTLINED_FUNCTION_7_4();
  v45 = sub_268568B20();
  v47 = v46;

  if (&selRef_header)
  {
    if (a1 == v45 && &selRef_header == v47)
    {
      LOBYTE(a1) = 1;
    }

    else
    {
      LOBYTE(a1) = sub_2685691C0();
    }

    goto LABEL_89;
  }

LABEL_31:

LABEL_32:
  LOBYTE(a1) = 0;
  return a1 & 1;
}

uint64_t sub_2684E1094(void *a1)
{
  v2 = [a1 displayName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_268568B20();

  return v3;
}

uint64_t sub_2684E1104(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_268568B20();

  return v4;
}

uint64_t sub_2684E1164(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2684E11BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2684E1218(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_2684E125C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_0_4()
{

  return sub_2685691C0();
}

id OUTLINED_FUNCTION_1_5()
{
  v3 = *v1;

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return sub_2685691C0();
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return sub_268568B20();
}

void OUTLINED_FUNCTION_5_4()
{
}

uint64_t OUTLINED_FUNCTION_6_2()
{
}

id OUTLINED_FUNCTION_7_4()
{
  v3 = *v1;

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return sub_2685691C0();
}

uint64_t sub_2684E13CC()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D70, &qword_26856B348);
  return sub_268568B70();
}

void sub_2684E1430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 *a22)
{
  OUTLINED_FUNCTION_41();
  v23 = v22;
  v53 = v24;
  v54 = v25;
  v52 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v55 = v35;
  v36 = sub_2685688F0();
  v37 = OUTLINED_FUNCTION_10(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5_5();
  *(v23 + 16) = 0;
  *(v23 + 224) = 5;
  *(v23 + 24) = 0;
  *(v23 + 32) = v34;
  sub_2684D57FC(v32, v23 + 40);
  sub_2684D57FC(v32 + 40, v23 + 80);
  *(v23 + 152) = v30;
  *(v23 + 160) = v28;
  *(v23 + 208) = v30;
  type metadata accessor for ReadNotificationsCATs();
  v40 = v28;
  v41 = v30;

  sub_2685688E0();
  sub_2685686F0();
  sub_2684D57FC(v32 + 40, &v56);
  sub_2685686B0();
  *(v23 + 216) = sub_268568710();
  swift_beginAccess();
  v42 = *(v23 + 16);
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v43 = v55;
  swift_unknownObjectRelease();
  if (v55)
  {

    v45 = v53;
    v44 = v54;
    v46 = v52;
  }

  else
  {
    sub_2685199D0();
    v43 = v47;
    v46 = v48;
    v45 = v49;
    v44 = v50;
  }

  sub_2684CC8D4(v32);
  *(v23 + 120) = v43;
  *(v23 + 128) = v46;
  *(v23 + 136) = v45;
  *(v23 + 144) = v44;
  v51 = *(a21 + 16);
  *(v23 + 168) = *a21;
  *(v23 + 184) = v51;
  *(v23 + 200) = *(a21 + 32);
  sub_2684D8314(a22, v23 + 232);
  OUTLINED_FUNCTION_40();
}

uint64_t sub_2684E15EC()
{
  OUTLINED_FUNCTION_5();
  v1[14] = v0;
  v2 = sub_2685679B0();
  v1[15] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[16] = v3;
  v5 = *(v4 + 64);
  v1[17] = OUTLINED_FUNCTION_39();
  v6 = sub_268567B60();
  v1[18] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[19] = v7;
  v9 = *(v8 + 64);
  v1[20] = OUTLINED_FUNCTION_39();
  v10 = sub_268567D90();
  v1[21] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[22] = v11;
  v13 = *(v12 + 64);
  v1[23] = OUTLINED_FUNCTION_39();
  v14 = sub_2685689F0();
  v1[24] = v14;
  OUTLINED_FUNCTION_2_4(v14);
  v1[25] = v15;
  v17 = *(v16 + 64);
  v1[26] = OUTLINED_FUNCTION_50();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_2684E17BC()
{
  v77 = v0;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[32];
  v2 = v0[24];
  v3 = v0[25];
  v4 = __swift_project_value_buffer(v2, qword_28028B348);
  v0[33] = v4;
  v5 = *(v3 + 16);
  v0[34] = v5;
  v0[35] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2685689E0();
  v7 = sub_268568DC0();
  if (OUTLINED_FUNCTION_29(v7))
  {
    v8 = OUTLINED_FUNCTION_16_0();
    *v8 = 0;
    _os_log_impl(&dword_2684CA000, v6, v2, "ANReadSpokenHintAction run", v8, 2u);
    OUTLINED_FUNCTION_2();
  }

  v9 = v0[32];
  v10 = v0[24];
  v11 = v0[25];
  v12 = v0[14];

  v13 = *(v11 + 8);
  v0[36] = v13;
  v13(v9, v10);
  v14 = *(v12 + 32);
  v15 = sub_268503BF8();
  v0[37] = v15;
  if (!v15)
  {
    v30 = v0[27];
    v31 = OUTLINED_FUNCTION_36();
    (v5)(v31, v4);
    v32 = sub_2685689E0();
    v33 = sub_268568DE0();
    if (OUTLINED_FUNCTION_29(v33))
    {
      v34 = OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_26_0(v34);
      OUTLINED_FUNCTION_22_0();
      _os_log_impl(v35, v36, v37, v38, v39, 2u);
      OUTLINED_FUNCTION_12_3();
    }

    v40 = v0[27];
    v41 = v0[24];
    v42 = v0[25];

    v43 = OUTLINED_FUNCTION_34();
    (v13)(v43);
    sub_2684E6EB0();
    swift_allocError();
    *v44 = 0;
    swift_willThrow();
    goto LABEL_21;
  }

  v16 = v15;
  if (!sub_2685425B8())
  {
    v45 = v0[28];
    v46 = OUTLINED_FUNCTION_36();
    (v5)(v46, v4);

    v47 = sub_2685689E0();
    v48 = sub_268568DC0();
    if (OUTLINED_FUNCTION_13_0(v48))
    {
      v49 = swift_slowAlloc();
      v50 = OUTLINED_FUNCTION_51();
      v76 = v50;
      *v49 = 136315138;
      v51 = *(v16 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_announcePlatform);
      v52 = AFSiriAnnouncementPlatformGetName();

      if (!v52)
      {
        __break(1u);
        return result;
      }

      v73 = v0[25];
      v74 = v0[24];
      v75 = v0[28];
      v54 = sub_268568B20();
      v56 = v55;

      v57 = sub_2684EABEC(v54, v56, &v76);

      *(v49 + 4) = v57;
      _os_log_impl(&dword_2684CA000, v47, v48, "ReadSpokenHintAction run | not reading hint for announce platform: %s, transitioning to follow-up", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_12_3();

      v58 = v74;
      v59 = v75;
    }

    else
    {
      v63 = v0[28];
      v64 = v0[24];
      v65 = v0[25];

      v59 = OUTLINED_FUNCTION_30();
    }

    v13(v59, v58);
    sub_2684E6EB0();
    swift_allocError();
    *v66 = 2;
    swift_willThrow();

LABEL_21:
    v68 = v0[31];
    v67 = v0[32];
    OUTLINED_FUNCTION_14_0();
    v69 = v0[17];

    OUTLINED_FUNCTION_9_1();
    goto LABEL_22;
  }

  if (*(v16 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isAppLocked))
  {
    v17 = v0[29];
    v18 = OUTLINED_FUNCTION_36();
    (v5)(v18, v4);
    v19 = sub_2685689E0();
    v20 = sub_268568DC0();
    v21 = OUTLINED_FUNCTION_13_0(v20);
    v22 = v0[29];
    v23 = v0[24];
    v24 = v0[25];
    if (v21)
    {
      *OUTLINED_FUNCTION_16_0() = 0;
      OUTLINED_FUNCTION_21_0();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      OUTLINED_FUNCTION_2();
    }

    else
    {
    }

    v72 = OUTLINED_FUNCTION_30();
    (v13)(v72);
    OUTLINED_FUNCTION_11_3();

    OUTLINED_FUNCTION_9_1();
LABEL_22:
    OUTLINED_FUNCTION_59();

    __asm { BRAA            X1, X16 }
  }

  v60 = swift_task_alloc();
  v0[38] = v60;
  *v60 = v0;
  v60[1] = sub_2684E1D18;
  v61 = v0[14];
  OUTLINED_FUNCTION_59();

  return sub_2684E397C();
}

uint64_t sub_2684E1D18()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v2 = v1;
  v4 = *(v3 + 304);
  *v2 = *v0;
  *(v1 + 360) = v5;

  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2684E1E00()
{
  if (*(v0 + 360) <= 0xFDu)
  {
    *(v0 + 312) = *(*(v0 + 296) + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_appName);

    swift_task_alloc();
    OUTLINED_FUNCTION_44();
    *(v0 + 320) = v22;
    *v22 = v23;
    v22[1] = sub_2684E2004;
    v24 = *(v0 + 184);
    v25 = *(v0 + 112);
    v26 = *(v0 + 360);

    return sub_2684E2B08();
  }

  else
  {
    v2 = *(v0 + 272);
    v1 = *(v0 + 280);
    v3 = *(v0 + 264);
    v4 = *(v0 + 240);
    v5 = OUTLINED_FUNCTION_36();
    v6(v5);
    v7 = sub_2685689E0();
    v8 = sub_268568DC0();
    v9 = OUTLINED_FUNCTION_13_0(v8);
    v11 = *(v0 + 288);
    v10 = *(v0 + 296);
    v12 = *(v0 + 240);
    v13 = *(v0 + 192);
    v14 = *(v0 + 200);
    if (v9)
    {
      *OUTLINED_FUNCTION_16_0() = 0;
      OUTLINED_FUNCTION_21_0();
      _os_log_impl(v15, v16, v17, v18, v19, 2u);
      OUTLINED_FUNCTION_2();
    }

    v11(v12, v13);
    OUTLINED_FUNCTION_11_3();

    OUTLINED_FUNCTION_9_1();

    return v20();
  }
}

uint64_t sub_2684E2004()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *(v2 + 320);
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v3 + 328) = v0;

  if (!v0)
  {
    v7 = *(v3 + 312);
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2684E210C()
{
  v1 = v0[14];
  v0[42] = sub_26851C004(v0[23], v1 + 10);
  v2 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v3 = *(MEMORY[0x277D5BFB8] + 4);
  v4 = swift_task_alloc();
  v0[43] = v4;
  sub_2684E0120();
  *v4 = v0;
  v4[1] = sub_2684E21F8;
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2821BB6A0](v5, v6, v7, v8);
}

uint64_t sub_2684E21F8()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v5 = v4;
  v7 = *(v6 + 344);
  v8 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v9 = v8;
  *(v10 + 352) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2684E22F8()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 192);
  v6 = *(v0 + 112);
  v7 = *(v0 + 360);
  sub_2684E358C();
  v8 = OUTLINED_FUNCTION_52();
  v2(v8);
  v9 = sub_2685689E0();
  v10 = sub_268568DF0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_16_0();
    *v11 = 0;
    _os_log_impl(&dword_2684CA000, v9, v10, "ANReadSpokenHintAction run | read hint, transitioning to follow-up", v11, 2u);
    OUTLINED_FUNCTION_2();
  }

  v12 = *(v0 + 288);
  v13 = *(v0 + 248);
  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  v33 = *(v0 + 176);
  v34 = *(v0 + 336);
  v16 = *(v0 + 160);
  v35 = *(v0 + 168);
  v36 = *(v0 + 184);
  v17 = *(v0 + 152);
  v30 = *(v0 + 144);
  v18 = *(v0 + 128);
  v19 = *(v0 + 136);
  v31 = *(v0 + 120);
  v32 = *(v0 + 296);

  v12(v13, v15);
  sub_268567990();
  v20 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_268567A20();
  (*(v17 + 104))(v16, *MEMORY[0x277D5BC10], v30);
  (*(v18 + 104))(v19, *MEMORY[0x277D5B950], v31);

  v21 = OUTLINED_FUNCTION_6_3();
  sub_2684EBB74(v21, v22, v23, v24, v25, 0, 0, v32, v28, v29);
  sub_2685679A0();

  (*(v33 + 8))(v36, v35);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  OUTLINED_FUNCTION_11_3();

  OUTLINED_FUNCTION_9_1();

  return v26();
}

uint64_t sub_2684E2570()
{
  v55 = v1;
  v4 = v1[39];

  v5 = v1[41];
  v7 = v1[34];
  v6 = v1[35];
  v8 = v1[33];
  v9 = v1[26];
  v10 = OUTLINED_FUNCTION_36();
  v11(v10);
  v12 = v5;
  v13 = sub_2685689E0();
  v14 = sub_268568DE0();

  v53 = v5;
  if (os_log_type_enabled(v13, v14))
  {
    v2 = OUTLINED_FUNCTION_43();
    v3 = OUTLINED_FUNCTION_51();
    v54 = v3;
    OUTLINED_FUNCTION_66(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v15 = sub_268568B70();
    v5 = sub_2684EABEC(v15, v16, &v54);

    *(v2 + 4) = v5;
    OUTLINED_FUNCTION_21_0();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v22 = OUTLINED_FUNCTION_30();
    v51(v22);
  }

  else
  {
    v0 = v1[36];
    v14 = v1[25];
    v23 = v1[26];
    v24 = v1[24];

    v25 = OUTLINED_FUNCTION_30();
    (v0)(v25);
  }

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_57();
  (*(v0 + 104))(v13, *MEMORY[0x277D5BC00], v5);
  v26 = (*(v3 + 104))(v2, *MEMORY[0x277D5B8D0], v14);
  OUTLINED_FUNCTION_65(v26, v27, v28, v29, v30, v31, v32, v33, v46, v48, v50, v51, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
  sub_268568B70();

  v34 = OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_64(v34, v35, v36, v37, v38, v39, v40, v41, v47, v49);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v1 + 2);
  swift_willThrow();

  v43 = v1[31];
  v42 = v1[32];
  OUTLINED_FUNCTION_14_0();
  v52 = v1[17];

  OUTLINED_FUNCTION_9_1();

  return v44();
}

uint64_t sub_2684E282C()
{
  v56 = v0;
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 168);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 352);
  v8 = *(v0 + 272);
  v7 = *(v0 + 280);
  v9 = *(v0 + 264);
  v10 = *(v0 + 208);
  v11 = OUTLINED_FUNCTION_36();
  v12(v11);
  v13 = v6;
  v14 = sub_2685689E0();
  v15 = sub_268568DE0();

  v54 = v6;
  if (os_log_type_enabled(v14, v15))
  {
    v1 = OUTLINED_FUNCTION_43();
    v2 = OUTLINED_FUNCTION_51();
    v55 = v2;
    OUTLINED_FUNCTION_66(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v16 = sub_268568B70();
    v6 = sub_2684EABEC(v16, v17, &v55);

    *(v1 + 4) = v6;
    OUTLINED_FUNCTION_21_0();
    _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v2);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v23 = OUTLINED_FUNCTION_30();
    v52(v23);
  }

  else
  {
    v5 = *(v0 + 288);
    v15 = *(v0 + 200);
    v24 = *(v0 + 208);
    v25 = *(v0 + 192);

    v26 = OUTLINED_FUNCTION_30();
    (v5)(v26);
  }

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_57();
  (*(v5 + 104))(v14, *MEMORY[0x277D5BC00], v6);
  v27 = (*(v2 + 104))(v1, *MEMORY[0x277D5B8D0], v15);
  OUTLINED_FUNCTION_65(v27, v28, v29, v30, v31, v32, v33, v34, v47, v49, v51, v52, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
  sub_268568B70();

  v35 = OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_64(v35, v36, v37, v38, v39, v40, v41, v42, v48, v50);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  swift_willThrow();

  v44 = *(v0 + 248);
  v43 = *(v0 + 256);
  OUTLINED_FUNCTION_14_0();
  v53 = *(v0 + 136);

  OUTLINED_FUNCTION_9_1();

  return v45();
}

uint64_t sub_2684E2B08()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 152) = v3;
  *(v1 + 16) = v4;
  v5 = sub_2685689F0();
  *(v1 + 40) = v5;
  OUTLINED_FUNCTION_2_4(v5);
  *(v1 + 48) = v6;
  v8 = *(v7 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_39();
  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2684E2BB4()
{
  v1 = *(v0 + 32);
  v2 = v1[15];
  *(v0 + 64) = v2;
  v3 = v1[16];
  *(v0 + 72) = v3;
  if (!v2)
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v14 = *(v0 + 48);
    v13 = *(v0 + 56);
    OUTLINED_FUNCTION_38(*(v0 + 40), qword_28028B348);
    (*(v14 + 16))(v13);
    v15 = sub_2685689E0();
    v16 = sub_268568DE0();
    if (OUTLINED_FUNCTION_29(v16))
    {
      v17 = OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_26_0(v17);
      OUTLINED_FUNCTION_22_0();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
      OUTLINED_FUNCTION_12_3();
    }

    v24 = *(v0 + 48);
    v23 = *(v0 + 56);
    v25 = *(v0 + 40);

    v26 = *(v24 + 8);
    v27 = OUTLINED_FUNCTION_34();
    v28(v27);
    sub_2684E6E5C();
    swift_allocError();
    swift_willThrow();
    v29 = *(v0 + 56);

    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_69();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v0 + 152);
  *(v0 + 80) = v1[18];
  if (v4 >> 6)
  {
    if (v4 >> 6 == 1)
    {
      v5 = v1[27];
      if (v4)
      {
        v6 = v2;
        v7 = v3;

        swift_task_alloc();
        OUTLINED_FUNCTION_44();
        *(v0 + 88) = v8;
        *v8 = v9;
        v8[1] = sub_2684E2F7C;
        v10 = *(v0 + 16);
        OUTLINED_FUNCTION_69();

        return sub_26850E530();
      }

      else
      {
        v40 = v2;
        v41 = v3;

        swift_task_alloc();
        OUTLINED_FUNCTION_44();
        *(v0 + 104) = v42;
        *v42 = v43;
        v42[1] = sub_2684E30F4;
        v44 = *(v0 + 16);
        v45 = *(v0 + 24);
        OUTLINED_FUNCTION_69();

        return sub_26850E2FC(v46, v47);
      }
    }

    else
    {
      v33 = v1[27];
      v34 = v2;
      v35 = v3;

      swift_task_alloc();
      OUTLINED_FUNCTION_44();
      *(v0 + 136) = v36;
      *v36 = v37;
      v36[1] = sub_2684E32E4;
      v38 = *(v0 + 16);
      OUTLINED_FUNCTION_69();

      return sub_26850E248();
    }
  }

  else
  {
    v32 = v1[27];
    if ((v4 & 1) == 0)
    {
      sub_2685691C0();
    }

    v49 = v3;

    v50 = v2;

    swift_task_alloc();
    OUTLINED_FUNCTION_44();
    *(v0 + 120) = v51;
    *v51 = v52;
    v51[1] = sub_2684E31EC;
    v53 = *(v0 + 16);
    OUTLINED_FUNCTION_69();

    return sub_26850F9CC(v54, v55);
  }
}

uint64_t sub_2684E2F7C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v8 + 96) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2684E3074()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  OUTLINED_FUNCTION_9_1();

  return v4();
}

uint64_t sub_2684E30F4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2684E31EC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2684E32E4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2684E33DC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_67();

  v2 = *(v1 + 96);
  v3 = *(v1 + 56);

  OUTLINED_FUNCTION_9_1();

  return v4();
}

uint64_t sub_2684E3448()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_67();

  v2 = *(v1 + 112);
  v3 = *(v1 + 56);

  OUTLINED_FUNCTION_9_1();

  return v4();
}

uint64_t sub_2684E34B4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_67();

  v2 = *(v1 + 128);
  v3 = *(v1 + 56);

  OUTLINED_FUNCTION_9_1();

  return v4();
}

uint64_t sub_2684E3520()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_67();

  v2 = *(v1 + 144);
  v3 = *(v1 + 56);

  OUTLINED_FUNCTION_9_1();

  return v4();
}

void sub_2684E358C()
{
  OUTLINED_FUNCTION_41();
  v43 = v3;
  v4 = sub_2685689F0();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_58();
  v10 = sub_2685675E0();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_5();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  v17 = OUTLINED_FUNCTION_10(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_5();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_42();
  v24 = *(v0 + 120);
  if (v24)
  {
    v25 = *(v0 + 136);
    v26 = *(v0 + 144);
    v27 = *(v0 + 208);
    v42 = *(v0 + 128);

    v28 = v24;
    sub_2684D98C4(v27);
    LODWORD(v27) = __swift_getEnumTagSinglePayload(v1, 1, v10);
    sub_2684D199C(v1, &qword_280282D40, &qword_26856B330);
    if (v27 == 1)
    {
      sub_26851A040();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v10);
      sub_2684D199C(v22, &qword_280282D40, &qword_26856B330);
      if (EnumTagSinglePayload == 1)
      {
        v41 = *(v0 + 264);
        __swift_project_boxed_opaque_existential_1((v0 + 232), *(v0 + 256));
        sub_268567A20();
        sub_268567A10();
        sub_2685679A0();
      }
    }

    if (v43 >> 6 && v43 >> 6 == 1)
    {
      sub_2685675D0();
      OUTLINED_FUNCTION_46();

      v38 = *(v13 + 8);
      v39 = OUTLINED_FUNCTION_52();
      v40(v39);
    }

    else
    {
      sub_2685675D0();
      OUTLINED_FUNCTION_46();

      v35 = *(v13 + 8);
      v36 = OUTLINED_FUNCTION_52();
      v37(v36);
    }
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_38(v4, qword_28028B348);
    (*(v7 + 16))(v2);
    v30 = sub_2685689E0();
    v31 = sub_268568DE0();
    if (OUTLINED_FUNCTION_13_3(v31))
    {
      v32 = OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_26_0(v32);
      OUTLINED_FUNCTION_9_4(&dword_2684CA000, v33, v34, "ANReadSpokenHintAction logHint | announcementEventStore nil - not logging hint");
      OUTLINED_FUNCTION_12_3();
    }

    (*(v7 + 8))(v2, v4);
  }

  OUTLINED_FUNCTION_40();
}

uint64_t sub_2684E397C()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2685675E0();
  v1[4] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_50();
  v1[7] = swift_task_alloc();
  v7 = sub_2685676D0();
  v1[8] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_39();
  v11 = sub_268567480();
  v1[11] = v11;
  OUTLINED_FUNCTION_2_4(v11);
  v1[12] = v12;
  v14 = *(v13 + 64);
  v1[13] = OUTLINED_FUNCTION_39();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  OUTLINED_FUNCTION_10(v15);
  v17 = *(v16 + 64);
  v1[14] = OUTLINED_FUNCTION_50();
  v1[15] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D58, &qword_26856BDF0);
  OUTLINED_FUNCTION_10(v18);
  v20 = *(v19 + 64);
  v1[16] = OUTLINED_FUNCTION_39();
  v21 = sub_2685689F0();
  v1[17] = v21;
  OUTLINED_FUNCTION_2_4(v21);
  v1[18] = v22;
  v24 = *(v23 + 64);
  v1[19] = OUTLINED_FUNCTION_50();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_2684E3BBC()
{
  v1 = *(v0 + 24);
  v2 = v1[15];
  *(v0 + 208) = v2;
  v3 = v1[16];
  *(v0 + 216) = v3;
  *(v0 + 224) = v1[17];
  if (!v2)
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v36 = *(v0 + 144);
    v35 = *(v0 + 152);
    OUTLINED_FUNCTION_38(*(v0 + 136), qword_28028B348);
    (*(v36 + 16))(v35);
    v37 = sub_2685689E0();
    v38 = sub_268568DE0();
    v39 = OUTLINED_FUNCTION_13_0(v38);
    v41 = *(v0 + 144);
    v40 = *(v0 + 152);
    v42 = *(v0 + 136);
    if (v39)
    {
      v43 = OUTLINED_FUNCTION_16_0();
      *v43 = 0;
      _os_log_impl(&dword_2684CA000, v37, v38, "ANReadSpokenHintAction spokenHint | announce event store is nil, don't give hint", v43, 2u);
      OUTLINED_FUNCTION_2();
    }

    v44 = *(v41 + 8);
    v45 = OUTLINED_FUNCTION_34();
    v46(v45);
    goto LABEL_24;
  }

  *(v0 + 232) = v1[18];
  v4 = qword_280282960;
  v154 = v2;
  v148 = v3;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v5 = *(v0 + 200);
  v6 = *(v0 + 144);
  *(v0 + 240) = OUTLINED_FUNCTION_38(*(v0 + 136), qword_28028B348);
  v7 = *(v6 + 16);
  *(v0 + 248) = v7;
  *(v0 + 256) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v5);
  v8 = sub_2685689E0();
  v9 = sub_268568DC0();
  if (OUTLINED_FUNCTION_13_0(v9))
  {
    v10 = OUTLINED_FUNCTION_16_0();
    *v10 = 0;
    _os_log_impl(&dword_2684CA000, v8, v9, "ANReadSpokenHintAction finding hint state to determine if we should give hint", v10, 2u);
    OUTLINED_FUNCTION_2();
  }

  v11 = *(v0 + 200);
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);
  v14 = *(v0 + 128);
  v15 = *(v0 + 24);

  v16 = *(v12 + 8);
  *(v0 + 264) = v16;
  v152 = v16;
  v16(v11, v13);
  v17 = *(v15 + 32);
  v18 = type metadata accessor for ReadingRecord();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v18);
  v19 = sub_2685051E0(0, v14);
  sub_2684D199C(v14, &qword_280282D58, &qword_26856BDF0);
  if (v19 >= 2)
  {
    v47 = *(v0 + 16);
    v48 = *(v0 + 24);
    sub_2684E496C();
    v50 = v49;
    v51 = *(v0 + 136);
    if (v49 <= 0xFDu)
    {
      v87 = *(v0 + 192);
      v88 = OUTLINED_FUNCTION_23_0();
      v89(v88);
      v55 = sub_2685689E0();
      v56 = sub_268568DC0();
      v90 = OUTLINED_FUNCTION_13_0(v56);
      v58 = *(v0 + 192);
      v60 = *(v0 + 136);
      v91 = *(v0 + 144);
      if (v90)
      {
        v61 = OUTLINED_FUNCTION_16_0();
        *v61 = 0;
        v62 = "ANReadSpokenHintAction spokenHint | early dismissal hint ignoring burst throttle";
        goto LABEL_27;
      }
    }

    else
    {
      v52 = *(v0 + 184);
      v53 = OUTLINED_FUNCTION_23_0();
      v54(v53);
      v55 = sub_2685689E0();
      v56 = sub_268568DC0();
      v57 = OUTLINED_FUNCTION_13_0(v56);
      v58 = *(v0 + 184);
      v60 = *(v0 + 136);
      v59 = *(v0 + 144);
      if (v57)
      {
        v61 = OUTLINED_FUNCTION_16_0();
        *v61 = 0;
        v62 = "ANReadSpokenHintAction spokenHint | notification was part of a burst, do not give hint";
LABEL_27:
        _os_log_impl(&dword_2684CA000, v55, v56, v62, v61, 2u);
        OUTLINED_FUNCTION_2();
      }
    }

    v152(v58, v60);
    goto LABEL_29;
  }

  v20 = *(v0 + 112);
  v21 = *(v0 + 120);
  v22 = *(v0 + 80);
  v23 = *(v0 + 32);
  sub_26851A040();
  v145 = OUTLINED_FUNCTION_68(v21);
  *(v0 + 320) = v145;
  sub_26851A5F8();
  v144 = v24;
  *(v0 + 272) = v24;
  sub_2685676B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D20, &qword_26856B320);
  v25 = sub_2685676C0();
  OUTLINED_FUNCTION_1(v25);
  v27 = v26;
  v29 = *(v28 + 72);
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_26856A540;
  (*(v27 + 104))(v31 + v30, *MEMORY[0x277CC9968], v25);
  sub_2684E6A40();
  sub_2684E6DF4(v21, v20, &qword_280282D40, &qword_26856B330);
  v32 = OUTLINED_FUNCTION_68(v20);
  v33 = *(v0 + 112);
  if (v32 == 1)
  {
    v34 = *(v0 + 32);
    sub_2685675A0();
    if (__swift_getEnumTagSinglePayload(v33, 1, v34) != 1)
    {
      sub_2684D199C(*(v0 + 112), &qword_280282D40, &qword_26856B330);
    }
  }

  else
  {
    (*(*(v0 + 40) + 32))(*(v0 + 56), v33, *(v0 + 32));
  }

  v64 = *(v0 + 96);
  v63 = *(v0 + 104);
  v65 = *(v0 + 80);
  v66 = *(v0 + 72);
  v146 = *(v0 + 64);
  v147 = *(v0 + 88);
  v68 = *(v0 + 48);
  v67 = *(v0 + 56);
  v69 = *(v0 + 32);
  v70 = *(v0 + 40);
  sub_2685675D0();
  sub_2685676A0();

  v71 = *(v70 + 8);
  v71(v68, v69);
  v71(v67, v69);
  (*(v66 + 8))(v65, v146);
  v72 = sub_268567460();
  LOBYTE(v65) = v73;
  *(v0 + 280) = v72;
  (*(v64 + 8))(v63, v147);
  v74 = *(v0 + 136);
  if (v65)
  {
    v75 = *(v0 + 160);
    v76 = OUTLINED_FUNCTION_23_0();
    v77(v76);
    v78 = sub_2685689E0();
    v79 = sub_268568DE0();
    if (OUTLINED_FUNCTION_13_0(v79))
    {
      v80 = OUTLINED_FUNCTION_16_0();
      *v80 = 0;
      _os_log_impl(&dword_2684CA000, v78, v79, "ANReadSpokenHintAction error getting ANReadSpokenHintAction", v80, 2u);
      OUTLINED_FUNCTION_2();
    }

    v81 = *(v0 + 160);
    v82 = *(v0 + 136);
    v83 = *(v0 + 144);
    v84 = *(v0 + 120);

    v85 = OUTLINED_FUNCTION_34();
    (v152)(v85);
    v86 = v84;
LABEL_23:
    sub_2684D199C(v86, &qword_280282D40, &qword_26856B330);
LABEL_24:
    v50 = 254;
LABEL_29:
    v155 = v50;
    v93 = *(v0 + 192);
    v92 = *(v0 + 200);
    v95 = *(v0 + 176);
    v94 = *(v0 + 184);
    v97 = *(v0 + 160);
    v96 = *(v0 + 168);
    v98 = *(v0 + 152);
    v100 = *(v0 + 120);
    v99 = *(v0 + 128);
    v101 = *(v0 + 112);
    v149 = *(v0 + 104);
    v150 = *(v0 + 80);
    v151 = *(v0 + 56);
    v153 = *(v0 + 48);

    v102 = *(v0 + 8);

    return v102(v155);
  }

  v104 = *(v0 + 176);
  v105 = OUTLINED_FUNCTION_23_0();
  v106(v105);
  v107 = sub_2685689E0();
  v108 = sub_268568DD0();
  if (OUTLINED_FUNCTION_29(v108))
  {
    v109 = swift_slowAlloc();
    *v109 = 134218496;
    *(v109 + 4) = v144;
    *(v109 + 12) = 2048;
    *(v109 + 14) = v72;
    *(v109 + 22) = 1024;
    *(v109 + 24) = v145 == 1;
    OUTLINED_FUNCTION_22_0();
    _os_log_impl(v110, v111, v112, v113, v114, 0x1Cu);
    OUTLINED_FUNCTION_12_3();
  }

  v115 = *(v0 + 176);
  v116 = *(v0 + 136);
  v117 = *(v0 + 144);

  *(v0 + 288) = (v117 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v118 = OUTLINED_FUNCTION_34();
  (v152)(v118);
  v119 = v144 > 2 || v145 == 1;
  v120 = v119;
  if (v72 < 3 || !v120)
  {
    v126 = *(v0 + 16);
    v127 = *(v0 + 24);
    sub_2684E496C();
    OUTLINED_FUNCTION_53();
    if (!(!v119 & v129))
    {
      v139 = *(v0 + 232);
      v140 = *(v0 + 208);
      v141 = *(v0 + 120);
      v50 = v128;

      sub_2684D199C(v141, &qword_280282D40, &qword_26856B330);
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_56();
    v131 = v119;
    v132 = *(v0 + 232);
    if (v130 >= 7 && v131)
    {
      v134 = *(v0 + 216);
      v133 = *(v0 + 224);
      v135 = *(v0 + 208);
      v136 = *(v0 + 120);
      OUTLINED_FUNCTION_63();
      v50 = v137;
      v138 = v137;

      sub_2684D199C(v136, &qword_280282D40, &qword_26856B330);
      if (v138 <= 0xFD)
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

    v142 = *(v0 + 208);
    v143 = *(v0 + 120);

    v86 = v143;
    goto LABEL_23;
  }

  v121 = *(v0 + 16);
  v123 = *(v121 + 16);
  v122 = *(v121 + 24);
  v124 = swift_task_alloc();
  *(v0 + 296) = v124;
  *v124 = v0;
  v124[1] = sub_2684E4590;
  v125 = *(v0 + 24);
  OUTLINED_FUNCTION_52();

  return sub_2684E605C();
}

uint64_t sub_2684E4590()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v2 = v1;
  v4 = *(v3 + 296);
  *v2 = *v0;
  *(v1 + 304) = v5;
  *(v1 + 312) = v6;

  v7 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_2684E4678()
{
  v1 = *(v0 + 256);
  (*(v0 + 248))(*(v0 + 168), *(v0 + 240), *(v0 + 136));
  v2 = sub_2685689E0();
  v3 = sub_268568DD0();
  if (OUTLINED_FUNCTION_29(v3))
  {
    v5 = *(v0 + 304);
    v4 = *(v0 + 312);
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v4;
    OUTLINED_FUNCTION_22_0();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
    OUTLINED_FUNCTION_12_3();
  }

  v12 = *(v0 + 304);
  v13 = *(v0 + 288);
  v14 = *(v0 + 264);
  v15 = *(v0 + 168);
  v16 = *(v0 + 136);

  v17 = OUTLINED_FUNCTION_34();
  v14(v17);
  if (v12 >= 3)
  {
    v18 = *(v0 + 224);
    v19 = *(v0 + 232);
    v20 = *(v0 + 208);
    v21 = *(v0 + 216);
    sub_26851A778();
    if ((v22 & 1) == 0)
    {
      v23 = *(v0 + 224);
      v24 = *(v0 + 232);
      v25 = *(v0 + 208);
      v26 = *(v0 + 216);
      v27 = *(v0 + 24);
      sub_2684E57A0();
      OUTLINED_FUNCTION_53();
      if (!(!v29 & v28))
      {
        goto LABEL_19;
      }
    }
  }

  if (*(v0 + 312) >= 5)
  {
    v30 = *(v0 + 224);
    v31 = *(v0 + 232);
    v32 = *(v0 + 208);
    v33 = *(v0 + 216);
    sub_26851A778();
    if ((v34 & 1) == 0)
    {
      v35 = *(v0 + 224);
      v36 = *(v0 + 232);
      v37 = *(v0 + 208);
      v38 = *(v0 + 216);
      v39 = *(v0 + 24);
      sub_2684E5AD4();
      OUTLINED_FUNCTION_53();
      if (!(!v29 & v28))
      {
        goto LABEL_19;
      }
    }
  }

  v40 = *(v0 + 16);
  v41 = *(v0 + 24);
  sub_2684E496C();
  OUTLINED_FUNCTION_53();
  if (!v29 & v28)
  {
    OUTLINED_FUNCTION_56();
    if (v29)
    {
      v43 = 1;
    }

    else
    {
      v43 = 0;
    }

    v44 = *(v0 + 232);
    if (v42 >= 7 && v43)
    {
      v46 = *(v0 + 216);
      v45 = *(v0 + 224);
      v47 = *(v0 + 208);
      v48 = *(v0 + 120);
      OUTLINED_FUNCTION_63();

      sub_2684D199C(v48, &qword_280282D40, &qword_26856B330);
    }

    else
    {
      v52 = *(v0 + 208);
      v53 = *(v0 + 120);

      sub_2684D199C(v53, &qword_280282D40, &qword_26856B330);
    }
  }

  else
  {
LABEL_19:
    v49 = *(v0 + 232);
    v50 = *(v0 + 208);
    v51 = *(v0 + 120);

    sub_2684D199C(v51, &qword_280282D40, &qword_26856B330);
  }

  v55 = *(v0 + 192);
  v54 = *(v0 + 200);
  v57 = *(v0 + 176);
  v56 = *(v0 + 184);
  v59 = *(v0 + 160);
  v58 = *(v0 + 168);
  v60 = *(v0 + 152);
  v62 = *(v0 + 120);
  v61 = *(v0 + 128);
  v63 = *(v0 + 112);
  v67 = *(v0 + 104);
  v68 = *(v0 + 80);
  v69 = *(v0 + 56);
  v70 = *(v0 + 48);

  v64 = *(v0 + 8);
  OUTLINED_FUNCTION_59();

  __asm { BRAA            X2, X16 }
}

void sub_2684E496C()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v4 = sub_2685689F0();
  v184 = OUTLINED_FUNCTION_1(v4);
  v185 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v184);
  OUTLINED_FUNCTION_7_5();
  v10 = v8 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v171 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v171 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v171 - v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19();
  v179 = v21;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_19();
  v178 = v23;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_19();
  v183 = v25;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_19();
  v182 = v27;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_19();
  v181 = v29;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v30);
  v32 = &v171 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  v34 = OUTLINED_FUNCTION_10(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_5();
  v180 = v37 - v38;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v39);
  v41 = &v171 - v40;
  sub_2685685F0();
  sub_2685685E0();
  sub_2685685C0();

  v42 = sub_268568620();

  if (v42)
  {
    if (*(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullyRead) == 1)
    {
      v44 = *(v1 + 120);
      if (v44)
      {
        v45 = *(v1 + 136);
        v46 = *(v1 + 144);
        v175 = *(v1 + 128);

        v47 = v44;
        v174 = v45;
        sub_26851A90C();
        v48 = sub_2685675E0();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v48);
        v50 = sub_2684D199C(v41, &qword_280282D40, &qword_26856B330);
        if (EnumTagSinglePayload == 1)
        {
          sub_2684E6DF4(v1 + 168, &v187, &qword_280282D48, &qword_26856B338);
          if (v188)
          {
            sub_2684D8314(&v187, v189);
          }

          else
          {
            v82 = type metadata accessor for TrialHeadGesturesHintsExperimentProvider();
            swift_allocObject();
            v83 = sub_2684CE4A4();
            v190 = v82;
            v191 = &off_2879186B8;
            v189[0] = v83;
            if (v188)
            {
              sub_2684D199C(&v187, &qword_280282D48, &qword_26856B338);
            }
          }

          v84 = sub_26851AC18(v47);
          v177 = v46;
          v85 = v190;
          v86 = v191;
          __swift_project_boxed_opaque_existential_1(v189, v190);
          v87 = (v86[1])(v85, v86);
          sub_26851A5F8();
          LODWORD(v85) = v88 > 0;
          v176 = v47;
          v89 = v190;
          v90 = v191;
          __swift_project_boxed_opaque_existential_1(v189, v190);
          v91 = (v90[2])(v89, v90);
          v93 = v92;
          v94 = sub_26851AD20(v176);
          v172 = v87;
          v96 = sub_2684CCE20(v84, v87, v85, v91, v93, v94, v95);

          v97 = v190;
          v98 = v191;
          __swift_mutable_project_boxed_opaque_existential_1(v189, v190);
          (v98[5])(v96 & 0x10101, v97, v98);
          v99 = v184;
          v173 = v96;
          if ((v96 & 0x10000) != 0)
          {
            if (qword_280282960 != -1)
            {
              OUTLINED_FUNCTION_0_0();
            }

            OUTLINED_FUNCTION_38(v99, qword_28028B348);
            (*(v185 + 16))(v32);
            v100 = sub_2685689E0();
            v101 = sub_268568DC0();
            if (OUTLINED_FUNCTION_13_3(v101))
            {
              v102 = OUTLINED_FUNCTION_16_0();
              OUTLINED_FUNCTION_26_0(v102);
              OUTLINED_FUNCTION_9_4(&dword_2684CA000, v103, v104, "#ANReadSpokenHintAction spokenHintForEarlyDismissal | experimental policy requires reset");
              OUTLINED_FUNCTION_2();
            }

            (*(v185 + 8))(v32, v99);
            sub_26851ADB4();
          }

          v105 = v180;
          sub_26851AFCC();
          v106 = *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSummarized);
          type metadata accessor for LimitedTTSDurationCache();
          v107 = sub_2684D0A7C(*(v3 + 32), *(v3 + 40));
          v109 = sub_2685567EC(v105, v106, v107, v108 & 1);
          sub_2684D199C(v105, &qword_280282D40, &qword_26856B330);
          if (qword_280282960 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          OUTLINED_FUNCTION_38(v99, qword_28028B348);
          v110 = v185;
          v111 = *(v185 + 16);
          v112 = v181;
          v180 = v113;
          v111(v181);
          v114 = sub_2685689E0();
          v115 = sub_268568DD0();
          if (os_log_type_enabled(v114, v115))
          {
            v116 = swift_slowAlloc();
            v174 = v111;
            v117 = v116;
            v118 = OUTLINED_FUNCTION_51();
            *&v187 = v118;
            *v117 = 136315138;
            v186 = v109;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D50, &qword_26856B340);
            v119 = sub_268568EA0();
            v121 = sub_2684EABEC(v119, v120, &v187);

            *(v117 + 4) = v121;
            v99 = v184;
            _os_log_impl(&dword_2684CA000, v114, v115, "#ANReadSpokenHintAction spokenHintForEarlyDismissal | earlyDismissalHint %s", v117, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v118);
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_2();

            v122 = *(v110 + 8);
            v111 = v174;
          }

          else
          {

            v122 = *(v110 + 8);
          }

          v122(v112, v99);
          v123 = v183;
          if (v109 <= 0xFDu && (v173 & 0x100) != 0)
          {
            (v111)(v182, v180, v99);
            v124 = sub_2685689E0();
            v125 = sub_268568DD0();
            if (OUTLINED_FUNCTION_13_3(v125))
            {
              v126 = OUTLINED_FUNCTION_16_0();
              *v126 = 0;
              OUTLINED_FUNCTION_19_0();
              _os_log_impl(v127, v128, v129, v130, v126, 2u);
              OUTLINED_FUNCTION_2();
            }

            v131 = v182;
            v182 = v185 + 8;
            v122(v131, v99);
            v132 = v190;
            v133 = v191;
            __swift_project_boxed_opaque_existential_1(v189, v190);
            (v133[3])(0xD000000000000024, 0x8000000268571CB0, v132, v133);
            v134 = v172 == 1;
            v135 = sub_268568B10();
            [v176 setBool:v134 forKey:v135];

            v136 = v190;
            v137 = v191;
            __swift_project_boxed_opaque_existential_1(v189, v190);
            v138 = (v137[2])(v136, v137);
            if (v139)
            {
              v140 = v138;
              v141 = v139;
              (v111)(v123, v180, v99);
              v142 = sub_2685689E0();
              v143 = sub_268568DD0();
              if (OUTLINED_FUNCTION_13_3(v143))
              {
                v144 = swift_slowAlloc();
                v145 = OUTLINED_FUNCTION_51();
                *&v187 = v145;
                *v144 = 136315138;
                *(v144 + 4) = sub_2684EABEC(v140, v141, &v187);
                OUTLINED_FUNCTION_19_0();
                _os_log_impl(v146, v147, v148, v149, v144, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v145);
                v99 = v184;
                OUTLINED_FUNCTION_2();
                OUTLINED_FUNCTION_2();

                v150 = v183;
              }

              else
              {

                v150 = v123;
              }

              v122(v150, v99);
              v151 = sub_268568B10();

              v152 = sub_268568B10();
              [v176 setObject:v151 forKey:v152];
            }
          }

          if (v173)
          {
            v153 = v178;
            (v111)(v178, v180, v99);
            v154 = sub_2685689E0();
            v155 = sub_268568DD0();
            if (OUTLINED_FUNCTION_13_3(v155))
            {
              v156 = OUTLINED_FUNCTION_16_0();
              *v156 = 0;
              OUTLINED_FUNCTION_19_0();
              _os_log_impl(v157, v158, v159, v160, v156, 2u);
              OUTLINED_FUNCTION_2();

              OUTLINED_FUNCTION_35();

              v162 = v176;
            }

            else
            {

              v154 = v176;
              OUTLINED_FUNCTION_35();
            }

            v122(v153, v99);
            __swift_destroy_boxed_opaque_existential_0(v189);
          }

          else
          {
            v163 = v179;
            (v111)(v179, v180, v99);
            v164 = sub_2685689E0();
            v165 = sub_268568DD0();
            if (OUTLINED_FUNCTION_13_3(v165))
            {
              v166 = OUTLINED_FUNCTION_16_0();
              OUTLINED_FUNCTION_26_0(v166);
              OUTLINED_FUNCTION_9_4(&dword_2684CA000, v167, v168, "#ANReadSpokenHintAction spokenHintForEarlyDismissal | experimental policy disallowing hint");
              OUTLINED_FUNCTION_12_3();

              OUTLINED_FUNCTION_35();

              v170 = v176;
            }

            else
            {

              v164 = v176;
              OUTLINED_FUNCTION_35();
            }

            v122(v163, v99);
            __swift_destroy_boxed_opaque_existential_0(v189);
          }
        }

        else
        {
          if (qword_280282960 != -1)
          {
            v50 = OUTLINED_FUNCTION_0_0();
          }

          OUTLINED_FUNCTION_24_0(v50, qword_28028B348);
          v74(v20);
          v75 = sub_2685689E0();
          v76 = sub_268568DC0();
          if (OUTLINED_FUNCTION_13_3(v76))
          {
            v77 = OUTLINED_FUNCTION_16_0();
            OUTLINED_FUNCTION_26_0(v77);
            OUTLINED_FUNCTION_9_4(&dword_2684CA000, v78, v79, "#ANReadSpokenHintAction spokenHintForEarlyDismissal | user has used head gestures to dismiss a hint, skip early dismissal hint experience.");
            OUTLINED_FUNCTION_12_3();

            OUTLINED_FUNCTION_35();
          }

          else
          {

            OUTLINED_FUNCTION_35();
          }

          (*(v32 + 1))(v20, v3);
        }
      }

      else
      {
        if (qword_280282960 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_38(v184, qword_28028B348);
        v63 = v185;
        (*(v185 + 16))(v17);
        v64 = sub_2685689E0();
        v65 = sub_268568DC0();
        if (OUTLINED_FUNCTION_13_3(v65))
        {
          v66 = OUTLINED_FUNCTION_16_0();
          *v66 = 0;
          OUTLINED_FUNCTION_19_0();
          _os_log_impl(v67, v68, v69, v70, v66, 2u);
          OUTLINED_FUNCTION_2();
        }

        v71 = *(v63 + 8);
        v72 = OUTLINED_FUNCTION_30();
        v73(v72);
      }
    }

    else
    {
      if (qword_280282960 != -1)
      {
        v43 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_24_0(v43, qword_28028B348);
      v57(v14);
      v58 = sub_2685689E0();
      v59 = sub_268568DC0();
      if (OUTLINED_FUNCTION_13_3(v59))
      {
        v60 = OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_26_0(v60);
        OUTLINED_FUNCTION_9_4(&dword_2684CA000, v61, v62, "#ANReadSpokenHintAction last notification was not fully read, skip early dismissal hint experience.");
        OUTLINED_FUNCTION_12_3();
      }

      (*(v32 + 1))(v14, v3);
    }
  }

  else
  {
    if (qword_280282960 != -1)
    {
      v43 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_24_0(v43, qword_28028B348);
    v51(v10);
    v52 = sub_2685689E0();
    v53 = sub_268568DC0();
    if (OUTLINED_FUNCTION_13_3(v53))
    {
      v54 = OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_26_0(v54);
      OUTLINED_FUNCTION_9_4(&dword_2684CA000, v55, v56, "#ANReadSpokenHintAction spokenHintForEarlyDismissal | early dismissal hint experience requires head gestures capable audio device.");
      OUTLINED_FUNCTION_12_3();
    }

    (*(v32 + 1))(v10, v3);
  }

  OUTLINED_FUNCTION_40();
}

void sub_2684E57A0()
{
  OUTLINED_FUNCTION_41();
  v3 = OUTLINED_FUNCTION_48();
  v4 = OUTLINED_FUNCTION_1(v3);
  v42 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_5();
  v41 = (v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  v11 = OUTLINED_FUNCTION_10(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_5();
  v40 = v14 - v15;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_42();
  v17 = sub_2685689F0();
  v18 = OUTLINED_FUNCTION_1(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_47();
  v24 = v23;
  v25 = *(v0 + 208);
  if (v25)
  {
    v26 = OUTLINED_FUNCTION_62();
    v43 = [v25 BOOLForKey_];
  }

  else
  {
    v43 = 0;
  }

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_38(v17, qword_28028B348);
  v27 = OUTLINED_FUNCTION_55();
  v28(v27);
  v29 = sub_2685689E0();
  v30 = sub_268568DC0();
  if (OUTLINED_FUNCTION_13_0(v30))
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_31(v31, 1.5047e-36);
    OUTLINED_FUNCTION_61(&dword_2684CA000, v32, v33, "ANReadSpokenHintAction spokenHintForDisableAnnouncements | disableTemporaryEventOccured: %{BOOL}d - usedByLegacyHint: %{BOOL}d");
    v3 = v39;
    OUTLINED_FUNCTION_2();
  }

  (*(v20 + 8))(v2, v17);
  sub_2684D99B0(v25);
  v34 = v24 | ~v43;
  if (v24)
  {
    v35 = 4294967294;
  }

  else
  {
    v35 = 65;
  }

  if ((v34 & 1) == 0)
  {
    sub_2684E6DF4(v1, v40, &qword_280282D40, &qword_26856B330);
    OUTLINED_FUNCTION_18_0();
    if (v36)
    {
      v29 = v41;
      sub_2685675D0();
      OUTLINED_FUNCTION_18_0();
      v35 = v42;
      if (!v36)
      {
        sub_2684D199C(v40, &qword_280282D40, &qword_26856B330);
      }
    }

    else
    {
      v37 = OUTLINED_FUNCTION_37();
      v38(v37);
    }

    OUTLINED_FUNCTION_60();
    (*(v35 + 8))(v29, v3);
  }

  sub_2684D199C(v1, &qword_280282D40, &qword_26856B330);
  OUTLINED_FUNCTION_40();
}

void sub_2684E5AD4()
{
  OUTLINED_FUNCTION_41();
  v3 = OUTLINED_FUNCTION_48();
  v4 = OUTLINED_FUNCTION_1(v3);
  v42 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_5();
  v41 = (v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  v11 = OUTLINED_FUNCTION_10(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_5();
  v40 = v14 - v15;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_42();
  v17 = sub_2685689F0();
  v18 = OUTLINED_FUNCTION_1(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_47();
  v24 = v23;
  v25 = *(v0 + 208);
  if (v25)
  {
    v26 = OUTLINED_FUNCTION_62();
    v43 = [v25 BOOLForKey_];
  }

  else
  {
    v43 = 0;
  }

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_38(v17, qword_28028B348);
  v27 = OUTLINED_FUNCTION_55();
  v28(v27);
  v29 = sub_2685689E0();
  v30 = sub_268568DC0();
  if (OUTLINED_FUNCTION_13_0(v30))
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_31(v31, 1.5047e-36);
    OUTLINED_FUNCTION_61(&dword_2684CA000, v32, v33, "ANReadSpokenHintAction spokenHintForDisableAppAnnouncements | disableAppHintEventOccured: %{BOOL}d - usedByLegacyHint: %{BOOL}d");
    v3 = v39;
    OUTLINED_FUNCTION_2();
  }

  (*(v20 + 8))(v2, v17);
  sub_2684D99B0(v25);
  v34 = v24 | ~v43;
  if (v24)
  {
    v35 = 4294967294;
  }

  else
  {
    v35 = 64;
  }

  if ((v34 & 1) == 0)
  {
    sub_2684E6DF4(v1, v40, &qword_280282D40, &qword_26856B330);
    OUTLINED_FUNCTION_18_0();
    if (v36)
    {
      v29 = v41;
      sub_2685675D0();
      OUTLINED_FUNCTION_18_0();
      v35 = v42;
      if (!v36)
      {
        sub_2684D199C(v40, &qword_280282D40, &qword_26856B330);
      }
    }

    else
    {
      v37 = OUTLINED_FUNCTION_37();
      v38(v37);
    }

    OUTLINED_FUNCTION_60();
    (*(v35 + 8))(v29, v3);
  }

  sub_2684D199C(v1, &qword_280282D40, &qword_26856B330);
  OUTLINED_FUNCTION_40();
}

void sub_2684E5E08()
{
  OUTLINED_FUNCTION_41();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_2685675E0();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_58();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  v17 = OUTLINED_FUNCTION_10(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_5();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v30 - v24;
  sub_26851A5F8();
  v31 = v26;
  v32 = v5;
  v33 = v3;
  sub_26851A040();
  v27 = *(v0 + 208);
  if (v27)
  {
    v28 = sub_268568B10();
    v29 = [v27 BOOLForKey_];
  }

  else
  {
    v29 = 0;
  }

  sub_2684D9A9C(v27);
  if (OUTLINED_FUNCTION_68(v22) == 1)
  {
    sub_2685675D0();
    if (OUTLINED_FUNCTION_68(v22) != 1)
    {
      sub_2684D199C(v22, &qword_280282D40, &qword_26856B330);
    }
  }

  else
  {
    (*(v13 + 32))(v1, v22, v10);
  }

  sub_268556BC4(v31, v25, v29, v1, v9, v7, v32, v33);
  (*(v13 + 8))(v1, v10);
  sub_2684D199C(v25, &qword_280282D40, &qword_26856B330);
  OUTLINED_FUNCTION_40();
}

uint64_t sub_2684E605C()
{
  OUTLINED_FUNCTION_5();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2685675E0();
  v1[5] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_39();
  v8 = sub_2685676D0();
  v1[8] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[9] = v9;
  v11 = *(v10 + 64);
  v1[10] = OUTLINED_FUNCTION_39();
  v12 = sub_268567480();
  v1[11] = v12;
  OUTLINED_FUNCTION_2_4(v12);
  v1[12] = v13;
  v15 = *(v14 + 64);
  v1[13] = OUTLINED_FUNCTION_39();
  v16 = type metadata accessor for ReadingRecord();
  v1[14] = v16;
  OUTLINED_FUNCTION_2_4(v16);
  v1[15] = v17;
  v19 = *(v18 + 64);
  v1[16] = OUTLINED_FUNCTION_50();
  v1[17] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_2684E61F4()
{
  OUTLINED_FUNCTION_5();
  v0[18] = *(*(v0[4] + 32) + 32);

  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_2684E62A0;

  return sub_268559770(3600.0);
}

uint64_t sub_2684E62A0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v2 = v1;
  v4 = *(v3 + 152);
  v5 = *(v3 + 144);
  v6 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v9 + 160) = v8;

  v10 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_2684E63A0()
{
  v1 = 0;
  v44 = v0[15];
  v45 = v0[17];
  v41 = v0[14];
  v47 = v0[20];
  v46 = *(v47 + 16);
  v40 = *MEMORY[0x277CC99A0];
  v38 = (v0[9] + 8);
  v39 = (v0[6] + 8);
  v37 = (v0[12] + 8);
  v36 = MEMORY[0x277D84F90];
  while (v46 != v1)
  {
    if (v1 >= *(v47 + 16))
    {
      __break(1u);
      return;
    }

    v2 = v0[17];
    v4 = v0[2];
    v3 = v0[3];
    v42 = *(v44 + 72);
    v43 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    sub_2684E6980(v0[20] + v43 + v42 * v1, v2);
    if (*v2 != v4 || *(v45 + 8) != v3)
    {
      v6 = v0[2];
      v7 = v0[3];
      if ((sub_2685691C0() & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v8 = v0[17];
    v9 = v0[13];
    v10 = v0[10];
    v11 = v0[7];
    v49 = v0[8];
    v50 = v0[11];
    v48 = v0[5];
    sub_2685676B0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D20, &qword_26856B320);
    v12 = sub_2685676C0();
    OUTLINED_FUNCTION_1(v12);
    v14 = v13;
    v16 = *(v15 + 72);
    v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_26856A540;
    (*(v14 + 104))(v18 + v17, v40, v12);
    sub_2684E6A40();
    v19 = *(v41 + 20);
    sub_2685675D0();
    sub_2685676A0();

    (*v39)(v11, v48);
    (*v38)(v10, v49);
    v20 = sub_268567470();
    v22 = v21;
    (*v37)(v9, v50);
    if ((v22 & 1) != 0 || v20 <= 60)
    {
      sub_2684E6D48(v0[17], v0[16]);
      v23 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2684DCFA8(0, *(v36 + 16) + 1, 1);
        v23 = v36;
      }

      v25 = *(v23 + 16);
      v24 = *(v23 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2684DCFA8(v24 > 1, v25 + 1, 1);
        v23 = v36;
      }

      ++v1;
      v26 = v0[16];
      *(v23 + 16) = v25 + 1;
      v36 = v23;
      sub_2684E6D48(v26, v23 + v43 + v25 * v42);
    }

    else
    {
LABEL_11:
      sub_2684E69E4(v0[17]);
      ++v1;
    }
  }

  v27 = v0[20];
  v29 = v0[16];
  v28 = v0[17];
  v30 = v0[13];
  v31 = v0[10];
  v32 = v0[7];
  v33 = *(v47 + 16);

  v34 = *(v36 + 16);

  v35 = v0[1];

  v35(v33, v34);
}

uint64_t sub_2684E6764()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  __swift_destroy_boxed_opaque_existential_0((v0 + 80));
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  sub_2684E6F04(*(v0 + 120), *(v0 + 128));

  sub_2684D199C(v0 + 168, &qword_280282D48, &qword_26856B338);
  v5 = *(v0 + 216);

  __swift_destroy_boxed_opaque_existential_0((v0 + 232));
  return v0;
}

uint64_t sub_2684E67E8()
{
  sub_2684E6764();

  return MEMORY[0x2821FE8D8](v0, 272, 7);
}

uint64_t sub_2684E6840()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DB128;

  return sub_2684E15EC();
}

uint64_t sub_2684E6980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684E69E4(uint64_t a1)
{
  v2 = type metadata accessor for ReadingRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2684E6A40()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v2 = sub_2685676C0();
  v3 = OUTLINED_FUNCTION_1(v2);
  v40 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_5();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v44 = &v35 - v11;
  if (*(v1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D28, &qword_26856B328), v12 = sub_268568F90(), v13 = v12, (v39 = *(v1 + 16)) != 0))
  {
    v14 = 0;
    v43 = v12 + 56;
    v15 = *(v40 + 80);
    v37 = v1;
    v38 = v1 + ((v15 + 32) & ~v15);
    v42 = v40 + 16;
    v16 = (v40 + 8);
    v36 = (v40 + 32);
    while (v14 < *(v1 + 16))
    {
      v17 = *(v40 + 72);
      v41 = v14 + 1;
      v18 = *(v40 + 16);
      v18(v44, v38 + v17 * v14, v2);
      v19 = *(v13 + 40);
      OUTLINED_FUNCTION_17_1();
      sub_2684E6DAC(&qword_280282D30, 255, v20);
      v21 = sub_268568AE0();
      v22 = ~(-1 << *(v13 + 32));
      while (1)
      {
        v23 = v21 & v22;
        v24 = (v21 & v22) >> 6;
        v25 = *(v43 + 8 * v24);
        v26 = 1 << (v21 & v22);
        if ((v26 & v25) == 0)
        {
          break;
        }

        v27 = v13;
        v18(v9, *(v13 + 48) + v23 * v17, v2);
        OUTLINED_FUNCTION_17_1();
        sub_2684E6DAC(&qword_280282D38, 255, v28);
        v29 = sub_268568B00();
        v30 = *v16;
        (*v16)(v9, v2);
        if (v29)
        {
          v30(v44, v2);
          v13 = v27;
          goto LABEL_12;
        }

        v21 = v23 + 1;
        v13 = v27;
      }

      v31 = v44;
      *(v43 + 8 * v24) = v26 | v25;
      (*v36)(*(v13 + 48) + v23 * v17, v31, v2);
      v32 = *(v13 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_15;
      }

      *(v13 + 16) = v34;
LABEL_12:
      v14 = v41;
      v1 = v37;
      if (v41 == v39)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:

    OUTLINED_FUNCTION_40();
  }
}

uint64_t sub_2684E6D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684E6DAC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2684E6DF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2684E6E5C()
{
  result = qword_280282D60;
  if (!qword_280282D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282D60);
  }

  return result;
}

unint64_t sub_2684E6EB0()
{
  result = qword_280282D68;
  if (!qword_280282D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282D68);
  }

  return result;
}

void sub_2684E6F04(void *a1, void *a2)
{
  if (a1)
  {
  }
}

_BYTE *storeEnumTagSinglePayload for ANReadSpokenHintAction.ReadSpokenHintActionErrors(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2684E7024);
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

unint64_t sub_2684E7060()
{
  result = qword_280282D78;
  if (!qword_280282D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282D78);
  }

  return result;
}

void OUTLINED_FUNCTION_9_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_11_3()
{
  v3 = v0[31];
  v2 = v0[32];
  v5 = v0[29];
  v4 = v0[30];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  v9 = v0[23];
  v10 = v0[20];
  v11 = v0[17];
}

void OUTLINED_FUNCTION_12_3()
{

  JUMPOUT(0x26D61CB30);
}

BOOL OUTLINED_FUNCTION_13_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_14_0()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[20];
}

uint64_t OUTLINED_FUNCTION_24_0(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(*(v2 - 192), a2);
  v4 = *(*(v2 - 184) + 16);
  return result;
}

BOOL OUTLINED_FUNCTION_29(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_31(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2 & 1;
  *(result + 8) = 1024;
  *(result + 10) = *(v3 - 84);
  return result;
}

uint64_t OUTLINED_FUNCTION_39()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_43()
{
  v6 = v0[36];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[24];

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_46()
{

  sub_268519BA8();
}

void OUTLINED_FUNCTION_47()
{
  *(v2 - 112) = v1;
  *(v2 - 104) = v0;

  sub_26851B5B4();
}

uint64_t OUTLINED_FUNCTION_48()
{

  return sub_2685675E0();
}

uint64_t OUTLINED_FUNCTION_49()
{
  v2 = v0[37];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[15];
  v8 = v0[16];

  return sub_268567990();
}

uint64_t OUTLINED_FUNCTION_50()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_51()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_56()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 320);
  *(v0 + 272);
}

uint64_t OUTLINED_FUNCTION_57()
{
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  return sub_268567A20();
}

void OUTLINED_FUNCTION_60()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  sub_268519BA8();
}

void OUTLINED_FUNCTION_61(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xEu);
}

uint64_t OUTLINED_FUNCTION_62()
{

  return sub_268568B10();
}

void OUTLINED_FUNCTION_63()
{
  v2 = *(v0 + 24);

  sub_2684E5E08();
}

uint64_t OUTLINED_FUNCTION_64(int a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10)
{

  return sub_2684EBB74(a1, a2, a3, a4, a5, v11, v12, v10, a9, a10);
}

id OUTLINED_FUNCTION_65(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id a13)
{
  *(v13 + 96) = a13;

  return a13;
}

id OUTLINED_FUNCTION_66(float a1)
{
  *v2 = a1;
  *(v1 + 104) = v3;

  return v3;
}

void OUTLINED_FUNCTION_67()
{
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
}

uint64_t OUTLINED_FUNCTION_68(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t ANFollowupFlow.__allocating_init(notificationManager:sharedObjects:)()
{
  OUTLINED_FUNCTION_31_0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  ANFollowupFlow.init(notificationManager:sharedObjects:)();
  return v3;
}

uint64_t sub_2684E7688(unsigned __int8 a1, char a2)
{
  v2 = 0x6C65636E6163;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6C65636E6163;
  switch(v4)
  {
    case 1:
      v3 = 0x8000000268571140;
      v5 = 0xD000000000000014;
      break;
    case 2:
      v5 = 0xD000000000000012;
      v3 = 0x8000000268571160;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x796C706572;
      break;
    case 4:
      v5 = 0x6574616C65726E75;
      v3 = 0xE900000000000064;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0x8000000268571140;
      v2 = 0xD000000000000014;
      break;
    case 2:
      v2 = 0xD000000000000012;
      v6 = 0x8000000268571160;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x796C706572;
      break;
    case 4:
      v2 = 0x6574616C65726E75;
      v6 = 0xE900000000000064;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2685691C0();
  }

  return v8 & 1;
}

uint64_t sub_2684E7830(unsigned __int8 a1, char a2)
{
  v2 = 0x6574656C6564;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6574656C6564;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1684104562;
      break;
    case 2:
      v5 = 0x746165706572;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_29_0();
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1684104562;
      break;
    case 2:
      v2 = 0x746165706572;
      break;
    case 3:
      OUTLINED_FUNCTION_27_0();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_4();
  }

  return v8 & 1;
}

uint64_t sub_2684E794C(unsigned __int8 a1, char a2)
{
  v2 = 0x7472656C61;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7472656C61;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x737472656C61;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_14_1();
      v3 = 0xEC00000000000000;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_14_1();
      v3 = 0xED00007300000000;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x737472656C61;
      break;
    case 2:
      OUTLINED_FUNCTION_8_3();
      v6 = 0xEC0000006E6F6974;
      break;
    case 3:
      OUTLINED_FUNCTION_8_3();
      v6 = 0xED0000736E6F6974;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_4();
  }

  return v8 & 1;
}

uint64_t sub_2684E7A88(unsigned __int8 a1, char a2)
{
  v2 = 0x6C65636E6163;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6C65636E6163;
  switch(v4)
  {
    case 1:
      v3 = 0xE200000000000000;
      v5 = 28526;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1885956979;
      break;
    case 3:
      v3 = 0xE300000000000000;
      v5 = 7562617;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE200000000000000;
      v2 = 28526;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1885956979;
      break;
    case 3:
      v6 = 0xE300000000000000;
      v2 = 7562617;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_4();
  }

  return v8 & 1;
}

uint64_t sub_2684E7BAC()
{
  v0 = sub_268568B20();
  v2 = v1;
  if (v0 == sub_268568B20() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_6_4();
  }

  return v5 & 1;
}

uint64_t sub_2684E7C24(unsigned __int8 a1, char a2)
{
  v2 = 0x747065636361;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x747065636361;
  switch(v4)
  {
    case 1:
      v5 = 0x6C65636E6163;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x656E696C636564;
      break;
    case 3:
      v5 = 0x746165706572;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_29_0();
      break;
    case 5:
      v5 = 0x6574616C65726E75;
      v3 = 0xE900000000000064;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6C65636E6163;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x656E696C636564;
      break;
    case 3:
      v2 = 0x746165706572;
      break;
    case 4:
      OUTLINED_FUNCTION_27_0();
      break;
    case 5:
      OUTLINED_FUNCTION_30_0();
      v6 = 0xE900000000000064;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_4();
  }

  return v8 & 1;
}

uint64_t sub_2684E7DAC(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000015;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000016;
    }

    else
    {
      v4 = 0x7A6972616D6D7573;
    }

    if (v3 == 1)
    {
      v5 = 0x80000002685712F0;
    }

    else
    {
      v5 = 0xEC000000656C6261;
    }
  }

  else
  {
    v5 = 0x80000002685712D0;
    v4 = 0xD000000000000015;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000016;
    }

    else
    {
      v2 = 0x7A6972616D6D7573;
    }

    if (a2 == 1)
    {
      v6 = 0x80000002685712F0;
    }

    else
    {
      v6 = 0xEC000000656C6261;
    }
  }

  else
  {
    v6 = 0x80000002685712D0;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_4();
  }

  return v8 & 1;
}

uint64_t sub_2684E7E8C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x7261726F706D6574;
  }

  else
  {
    v3 = 0x746163696C707061;
  }

  if (v2)
  {
    v4 = 0xEB000000006E6F69;
  }

  else
  {
    v4 = 0xEF6C61626F6C4779;
  }

  if (a2)
  {
    v5 = 0x7261726F706D6574;
  }

  else
  {
    v5 = 0x746163696C707061;
  }

  if (a2)
  {
    v6 = 0xEF6C61626F6C4779;
  }

  else
  {
    v6 = 0xEB000000006E6F69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_4();
  }

  return v8 & 1;
}

uint64_t sub_2684E7F34(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x657369636E6F63;
  }

  else
  {
    v2 = 0x65736F62726576;
  }

  if (a2)
  {
    v3 = 0x657369636E6F63;
  }

  else
  {
    v3 = 0x65736F62726576;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2685691C0();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2684E7FB4()
{
  v0 = 0xED0000736E6F6974;
  OUTLINED_FUNCTION_8_3();
  v4 = v3;
  v5 = v2;
  v6 = 0xED0000736E6F6974;
  switch(v4)
  {
    case 1:
      v6 = 0xE500000000000000;
      v5 = 0x6449707061;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v5 = 0x656D614E707061;
      break;
    case 3:
      v5 = 0xD000000000000010;
      v6 = 0x8000000268571230;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0xE500000000000000;
      v2 = 0x6449707061;
      break;
    case 2:
      v0 = 0xE700000000000000;
      v2 = 0x656D614E707061;
      break;
    case 3:
      v2 = 0xD000000000000010;
      v0 = 0x8000000268571230;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2685691C0();
  }

  return v8 & 1;
}

uint64_t sub_2684E8118(char a1, char a2)
{
  v3 = sub_2684D2D60(a1);
  v5 = v4;
  if (v3 == sub_2684D2D60(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_4();
  }

  return v8 & 1;
}

uint64_t sub_2684E8190()
{
  sub_268567DF0();
  sub_2684EB938(&qword_280282DE0, MEMORY[0x277D5BE10]);
  sub_268568C90();
  sub_268568C90();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_2685691C0();
  }

  return v1 & 1;
}

uint64_t ANFollowupFlow.init(notificationManager:sharedObjects:)()
{
  OUTLINED_FUNCTION_31_0();
  v3 = OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_input;
  v4 = sub_268568040();
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  *(v1 + 16) = 5;
  *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_notificationManager) = v2;
  memcpy((v1 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_sharedObjects), v0, 0x80uLL);
  *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_shouldHardPrompt) = 0;
  return v1;
}

uint64_t ANFollowupFlow.exitValue.getter()
{
  if (*(v0 + 16) - 5 >= 2)
  {
    return *(v0 + 16);
  }

  else
  {
    return 4;
  }
}

uint64_t ANFollowupFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_268568040();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_5();
  v12 = (v11 - v10);
  v13 = sub_2685689F0();
  v14 = OUTLINED_FUNCTION_1(v13);
  v69 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_5();
  v67 = (v18 - v19);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v20);
  v22 = &v61 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DA0, &qword_26856B430);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v61 - v25;
  v65 = v7;
  v27 = *(v7 + 16);
  v27(&v61 - v25, a1, v4);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v4);
  v28 = OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_input;
  swift_beginAccess();
  v68 = v2;
  sub_2684EAA4C(v26, v2 + v28);
  swift_endAccess();
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v29 = __swift_project_value_buffer(v13, qword_28028B348);
  v63 = *(v69 + 16);
  v64 = v29;
  v63(v22);
  v66 = a1;
  v27(v12, a1, v4);
  v30 = sub_2685689E0();
  v31 = sub_268568DD0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_4();
    v33 = OUTLINED_FUNCTION_51();
    v62 = v22;
    v34 = v12;
    v35 = v33;
    v70[0] = v33;
    *v32 = 136315138;
    sub_2684EB938(&qword_280282DA8, MEMORY[0x277D5C118]);
    v36 = sub_2685691A0();
    v38 = v37;
    (*(v65 + 8))(v34, v4);
    v39 = sub_2684EABEC(v36, v38, v70);
    v40 = v69;

    *(v32 + 4) = v39;
    _os_log_impl(&dword_2684CA000, v30, v31, "ANFollowupFlow input set: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_2();

    v41 = *(v40 + 8);
    v41(v62, v13);
  }

  else
  {

    (*(v65 + 8))(v12, v4);
    v41 = *(v69 + 8);
    v41(v22, v13);
  }

  v42 = sub_2684E9CA8();
  v43 = v67;
  (v63)(v67, v64, v13);
  v44 = sub_2685689E0();
  v45 = sub_268568DC0();
  if (OUTLINED_FUNCTION_13_0(v45))
  {
    v46 = OUTLINED_FUNCTION_4();
    v47 = OUTLINED_FUNCTION_51();
    v70[0] = v47;
    *v46 = 136315138;
    v48 = ANFollowupRequestedBehavior.rawValue.getter(v42);
    v50 = v49;
    v51 = sub_2684EABEC(v48, v49, v70);
    v66 = v13;
    v52 = v51;

    *(v46 + 4) = v52;
    OUTLINED_FUNCTION_13_4(&dword_2684CA000, v53, v45, "ANFollowupFlow behavior requested: %s");
    __swift_destroy_boxed_opaque_existential_0(v47);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_11_2();

    v41(v43, v66);
  }

  else
  {

    v41(v43, v13);
    v48 = ANFollowupRequestedBehavior.rawValue.getter(v42);
    v50 = v54;
  }

  OUTLINED_FUNCTION_30_0();
  *(v68 + 16) = v42;
  if (v48 == v56 && v50 == v55)
  {

    v59 = 0;
  }

  else
  {
    v58 = sub_2685691C0();

    v59 = v58 ^ 1;
  }

  return v59 & 1;
}

unint64_t ANFollowupRequestedBehavior.rawValue.getter(char a1)
{
  result = 0x6C65636E6163;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x796C706572;
      break;
    case 4:
      result = 0x6574616C65726E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t ANFollowupFlow.execute()()
{
  OUTLINED_FUNCTION_5();
  v1[17] = v2;
  v1[18] = v0;
  v3 = sub_2685688F0();
  v1[19] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v1[20] = v4;
  v6 = *(v5 + 64);
  v1[21] = OUTLINED_FUNCTION_39();
  v7 = *(*(sub_268567B10() - 8) + 64);
  v1[22] = OUTLINED_FUNCTION_39();
  v8 = sub_268567F20();
  v1[23] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[24] = v9;
  v11 = *(v10 + 64);
  v1[25] = OUTLINED_FUNCTION_39();
  v12 = sub_268567DB0();
  v1[26] = v12;
  OUTLINED_FUNCTION_2_4(v12);
  v1[27] = v13;
  v15 = *(v14 + 64);
  v1[28] = OUTLINED_FUNCTION_39();
  v16 = sub_2685689F0();
  v1[29] = v16;
  OUTLINED_FUNCTION_2_4(v16);
  v1[30] = v17;
  v19 = *(v18 + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_2684E8ACC()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = __swift_project_value_buffer(v2, qword_28028B348);
  *(v0 + 280) = v4;
  v5 = *(v3 + 16);
  *(v0 + 288) = v5;
  *(v0 + 296) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v52 = v5;
  v5(v1, v4, v2);
  v6 = sub_2685689E0();
  v7 = sub_268568DC0();
  if (OUTLINED_FUNCTION_13_0(v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2684CA000, v6, v7, "ANFollowupFlow executing", v8, 2u);
    OUTLINED_FUNCTION_11_2();
  }

  v9 = *(v0 + 272);
  v10 = *(v0 + 232);
  v11 = *(v0 + 240);
  v12 = *(v0 + 144);

  v13 = *(v11 + 8);
  *(v0 + 304) = v13;
  v13(v9, v10);
  if (*(v12 + 16) == 5)
  {
    v14 = *(v0 + 144);
    *(v12 + 16) = 6;
    v15 = OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_sharedObjects;
    *(v0 + 312) = OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_sharedObjects;
    v51 = v14 + v15;
    v16 = *(v14 + v15 + 120);
    if ((sub_2684D4BC4() & 1) != 0 && (OUTLINED_FUNCTION_34_0(), v17 = sub_268503BF8(), , v17))
    {
      v18 = sub_268541488();
    }

    else
    {
      v18 = 0;
    }

    v20 = *(v0 + 264);
    v21 = *(v0 + 232);
    v22 = *(v0 + 144);
    v23 = OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_shouldHardPrompt;
    *(v22 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_shouldHardPrompt) = v18 & 1;
    v52(v20, v4, v21);

    v24 = sub_2685689E0();
    v25 = sub_268568DC0();
    v26 = OUTLINED_FUNCTION_13_0(v25);
    v27 = *(v0 + 144);
    if (v26)
    {
      v28 = swift_slowAlloc();
      *v28 = 67109120;
      *(v28 + 4) = *(v22 + v23);

      _os_log_impl(&dword_2684CA000, v24, v25, "ANFollowupFlow shouldHardPrompt: %{BOOL}d", v28, 8u);
      OUTLINED_FUNCTION_2();
    }

    else
    {
      v29 = *(v0 + 144);
    }

    v30 = *(v0 + 264);
    v31 = *(v0 + 232);
    *(v0 + 320) = (*(v0 + 240) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v30, v31);
    if (*(v22 + v23) == 1)
    {
      OUTLINED_FUNCTION_34_0();
      v32 = sub_268503BF8();
      *(v0 + 328) = v32;

      if (v32)
      {
        v52(*(v0 + 256), v4, *(v0 + 232));
        v33 = sub_2685689E0();
        v34 = sub_268568DC0();
        if (OUTLINED_FUNCTION_13_0(v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_2684CA000, v33, v34, "ANFollowupFlow prompting for followup", v35, 2u);
          OUTLINED_FUNCTION_2();
        }

        v36 = *(v0 + 256);
        v38 = *(v0 + 224);
        v37 = *(v0 + 232);
        v39 = *(v0 + 200);
        v40 = *(v0 + 176);
        v53 = *(v0 + 168);

        v13(v36, v37);
        sub_268567DC0();
        sub_268567DA0();
        sub_268567AF0();
        v41 = swift_task_alloc();
        *(v41 + 16) = v32;
        *(v41 + 24) = v38;
        sub_268567ED0();

        sub_2685688D0();
        type metadata accessor for ANFollowupFlow();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v43 = [objc_opt_self() bundleForClass_];
        *(v0 + 336) = v43;
        v44 = sub_268568AD0();
        *(v0 + 344) = v44;
        sub_2685686F0();
        sub_2684D57FC(v51 + 40, v0 + 16);
        v45 = sub_2685686B0();
        *(v0 + 352) = v45;
        *(v0 + 72) = 0u;
        *(v0 + 88) = 0;
        *(v0 + 56) = 0u;
        sub_2685688E0();
        v46 = *(MEMORY[0x277D55CE0] + 4);
        v47 = swift_task_alloc();
        *(v0 + 360) = v47;
        *v47 = v0;
        v47[1] = sub_2684E907C;
        v48 = *(v0 + 168);

        return MEMORY[0x2821B8050](v43, 0xD00000000000002CLL, 0x8000000268571D40, v44, v45, v0 + 56, v48);
      }
    }

    OUTLINED_FUNCTION_37_0();
  }

  else
  {
    v19 = *(v0 + 136);
    sub_268567C40();
  }

  OUTLINED_FUNCTION_3_6();

  OUTLINED_FUNCTION_9_1();

  return v49();
}

uint64_t sub_2684E907C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = v2[45];
  v5 = v2[44];
  v6 = v2[43];
  v7 = v2[42];
  v8 = v2[21];
  v9 = v2[20];
  v10 = v2[19];
  v11 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v12 = v11;
  v3[46] = v13;
  v3[47] = v0;

  (*(v9 + 8))(v8, v10);
  sub_2684EB7C8((v3 + 7), &qword_280282DB0, &unk_26856B440);
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2684E9248()
{
  v1 = v0[46];
  v2 = sub_268567D00();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[48] = sub_268567CF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
  v5 = swift_allocObject();
  v0[49] = v5;
  *(v5 + 16) = xmmword_26856B420;
  *(v5 + 32) = v1;
  v6 = *(MEMORY[0x277D5BD50] + 4);
  v11 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
  v7 = v1;
  v8 = swift_task_alloc();
  v0[50] = v8;
  *v8 = v0;
  v8[1] = sub_2684E936C;
  v9 = v0[25];

  return v11(v0 + 12, v5, v9);
}

uint64_t sub_2684E936C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v2 = v1[50];
  v3 = v1[49];
  v4 = v1[48];
  v5 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2684E948C()
{
  v1 = (v0[18] + v0[39]);
  v2 = v1[13];
  v3 = v1[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v2);
  v4 = *(MEMORY[0x277D5BF40] + 4);
  v5 = swift_task_alloc();
  v0[51] = v5;
  *v5 = v0;
  v5[1] = sub_2684E9554;

  return MEMORY[0x2821BB5D0](v0 + 12, v2, v3);
}

uint64_t sub_2684E9554()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = *(v2 + 408);
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 416) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2684E9654()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 184);

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  (*(v3 + 8))(v2, v4);
  v5 = OUTLINED_FUNCTION_16_2();
  v6(v5);
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_3_6();

  OUTLINED_FUNCTION_9_1();

  return v7();
}

uint64_t sub_2684E974C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  v18 = *(v12 + 376);
  v19 = OUTLINED_FUNCTION_18_1();
  v20(v19);
  v21 = v18;
  v22 = sub_2685689E0();
  v23 = sub_268568DE0();

  if (os_log_type_enabled(v22, v23))
  {
    v13 = OUTLINED_FUNCTION_4();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v24 = v18;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v25;
    *v14 = v25;
    OUTLINED_FUNCTION_13_4(&dword_2684CA000, v26, v23, "ANFollowupFlow unable to generate prompt dialog error=%@");
    sub_2684EB7C8(v14, &qword_280282A68, &qword_268569FA0);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_11_2();
  }

  OUTLINED_FUNCTION_15_1();

  v17(v13, v14);
  (*(v22 + 8))(v15, v16);
  v27 = OUTLINED_FUNCTION_16_2();
  v28(v27);
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_3_6();

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_33();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_2684E98E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();

  __swift_destroy_boxed_opaque_existential_0((v12 + 96));
  v18 = *(v12 + 416);
  v19 = OUTLINED_FUNCTION_18_1();
  v20(v19);
  v21 = v18;
  v22 = sub_2685689E0();
  v23 = sub_268568DE0();

  if (os_log_type_enabled(v22, v23))
  {
    v13 = OUTLINED_FUNCTION_4();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v24 = v18;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v25;
    *v14 = v25;
    OUTLINED_FUNCTION_13_4(&dword_2684CA000, v26, v23, "ANFollowupFlow unable to generate prompt dialog error=%@");
    sub_2684EB7C8(v14, &qword_280282A68, &qword_268569FA0);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_11_2();
  }

  OUTLINED_FUNCTION_15_1();

  v17(v13, v14);
  (*(v22 + 8))(v15, v16);
  v27 = OUTLINED_FUNCTION_16_2();
  v28(v27);
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_3_6();

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_33();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_2684E9A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DE8, &unk_26856B610);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  sub_268567F10();
  sub_2684DB414();

  v13 = sub_268564474(v12);
  sub_268516718(v13, v11);

  v14 = sub_268567CE0();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
  sub_268567EF0();
  v15 = sub_268567DB0();
  (*(*(v15 - 8) + 16))(v7, a3, v15);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v15);
  return sub_268567F00();
}

uint64_t ANFollowupFlow.execute(completion:)()
{
  OUTLINED_FUNCTION_31_0();
  type metadata accessor for ANFollowupFlow();
  sub_2684EB938(&qword_280282A10, type metadata accessor for ANFollowupFlow);
  return sub_268567900();
}

uint64_t sub_2684E9CA8()
{
  v114 = sub_2685680B0();
  v0 = OUTLINED_FUNCTION_1(v114);
  v112 = v1;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7_5();
  v109 = (v4 - v5);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v6);
  v111 = &v108 - v7;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v8);
  v116 = &v108 - v9;
  v10 = sub_2685689F0();
  v117 = OUTLINED_FUNCTION_1(v10);
  v118 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_7_5();
  v113 = v14 - v15;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v16);
  v18 = &v108 - v17;
  v110 = type metadata accessor for NotificationNLv3Intent();
  v19 = OUTLINED_FUNCTION_17_2(v110);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_5();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v108 - v26;
  v28 = sub_268568560();
  v29 = OUTLINED_FUNCTION_1(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_5();
  v36 = v35 - v34;
  v37 = sub_268568080();
  v38 = OUTLINED_FUNCTION_1(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_5_5();
  v45 = v44 - v43;
  sub_268568030();
  v46 = v40[11];
  v47 = OUTLINED_FUNCTION_24_1();
  v49 = v48(v47);
  if (v49 == *MEMORY[0x277D5C128])
  {
    v50 = v40[12];
    v51 = OUTLINED_FUNCTION_24_1();
    v52(v51);
    (*(v31 + 4))(v36, v45, v28);
    v116 = v31;
    v53 = *(v31 + 2);
    v114 = v36;
    v53(v27, v36, v28);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v54 = v117;
    v55 = __swift_project_value_buffer(v117, qword_28028B348);
    v56 = v118;
    (*(v118 + 16))(v18, v55, v54);
    sub_2684EB87C(v27, v24);
    v57 = sub_2685689E0();
    v58 = sub_268568DD0();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = OUTLINED_FUNCTION_4();
      v60 = OUTLINED_FUNCTION_51();
      v113 = v28;
      v61 = v60;
      v119 = v60;
      *v59 = 136315138;
      sub_2684EB938(&qword_280282DF8, type metadata accessor for NotificationNLv3Intent);
      v62 = sub_268568310();
      v64 = v63;
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v24, v65);
      v66 = sub_2684EABEC(v62, v64, &v119);

      *(v59 + 4) = v66;
      _os_log_impl(&dword_2684CA000, v57, v58, "ANFollowupFlow behaviorRequested | nlv3 parsed intent: %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v118 + 8))(v18, v54);
    }

    else
    {

      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v24, v89);
      (*(v56 + 8))(v18, v54);
    }

    if ((sub_26852B4B8() & 1) == 0 && (sub_26852B5A8() & 1) == 0 && ((sub_26852B6A4() & 1) == 0 || *(v115 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_shouldHardPrompt) != 1))
    {
      if (sub_26852B7A4())
      {
        OUTLINED_FUNCTION_0_5();
        sub_2684EB8E0(v27, v99);
        v100 = OUTLINED_FUNCTION_7_6();
        v101(v100);
        return 3;
      }

      if (sub_26852B8AC() & 1) != 0 || (sub_26852B998())
      {
        v102 = *(v115 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_sharedObjects + 32);
        __swift_project_boxed_opaque_existential_1((v115 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_sharedObjects), *(v115 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_sharedObjects + 24));
        v103 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
        sub_268567E90();

        OUTLINED_FUNCTION_0_5();
        sub_2684EB8E0(v27, v104);
        v105 = OUTLINED_FUNCTION_7_6();
        v106(v105);
        return 0;
      }

      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v27, v107);
      v95 = OUTLINED_FUNCTION_7_6();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_0_5();
    sub_2684EB8E0(v27, v90);
    v91 = OUTLINED_FUNCTION_7_6();
    v92(v91);
    return 2;
  }

  else
  {
    if (v49 != *MEMORY[0x277D5C160])
    {
      v94 = v40[1];
      v95 = OUTLINED_FUNCTION_24_1();
LABEL_16:
      v96(v95);
      return 4;
    }

    v67 = v40[12];
    v68 = OUTLINED_FUNCTION_24_1();
    v69(v68);
    v70 = v112;
    v71 = v116;
    v72 = v114;
    (*(v112 + 32))(v116, v45, v114);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v73 = v117;
    v74 = __swift_project_value_buffer(v117, qword_28028B348);
    v75 = v118;
    v76 = v113;
    (*(v118 + 16))(v113, v74, v73);
    v77 = (v70 + 16);
    v78 = *(v70 + 16);
    v79 = v111;
    v78(v111, v71, v72);
    v80 = sub_2685689E0();
    LODWORD(v110) = sub_268568DD0();
    if (OUTLINED_FUNCTION_13_0(v110))
    {
      v81 = OUTLINED_FUNCTION_4();
      v108 = OUTLINED_FUNCTION_51();
      v119 = v108;
      *v81 = 136315138;
      v78(v109, v79, v72);
      sub_268568B70();
      v82 = OUTLINED_FUNCTION_20_0();
      v77(v82);
      v83 = OUTLINED_FUNCTION_24_1();
      v86 = v76;
      v87 = sub_2684EABEC(v83, v84, v85);

      *(v81 + 4) = v87;
      OUTLINED_FUNCTION_13_4(&dword_2684CA000, v88, v110, "ANFollowupFlow behaviorRequested | uso parse: %s");
      __swift_destroy_boxed_opaque_existential_0(v108);
      OUTLINED_FUNCTION_2();
      v71 = v116;
      OUTLINED_FUNCTION_2();

      (*(v75 + 8))(v86, v117);
    }

    else
    {

      v97 = OUTLINED_FUNCTION_20_0();
      v77(v97);
      (*(v75 + 8))(v76, v73);
    }

    v93 = sub_2684EA4DC(v71);
    (v77)(v71, v72);
  }

  return v93;
}

uint64_t sub_2684EA4DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2685680B0();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_5();
  v12 = v11 - v10;
  v13 = type metadata accessor for NotificationNLv4Intent();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_5();
  v18 = v17 - v16;
  v19 = *(v7 + 16);
  v19(v12, a1, v4);
  v19(v18, v12, v4);
  sub_268568550();
  v20 = sub_26850CCFC();
  (*(v7 + 8))(v12, v4);
  *(v18 + *(v14 + 28)) = v20;
  if (v20)
  {
    if (sub_268568540() == 1684104562 && v21 == 0xE400000000000000)
    {
    }

    else
    {
      v23 = sub_2685691C0();

      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

LABEL_14:
    v24 = 2;
    goto LABEL_15;
  }

LABEL_7:
  if (sub_26856563C() & 1) != 0 || (sub_268565808() & 1) != 0 && (*(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_shouldHardPrompt))
  {
    goto LABEL_14;
  }

  sub_2685683B0();
  if (v31)
  {
    sub_268568440();
    if (swift_dynamicCast())
    {

      v24 = 3;
      goto LABEL_15;
    }
  }

  else
  {
    sub_2684EB7C8(v30, &qword_280282BE0, &unk_26856D8C0);
  }

  if (sub_268565820() & 1) != 0 || (sub_268565954())
  {
    v26 = (v2 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_sharedObjects);
    v27 = *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_sharedObjects + 24);
    v28 = *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_sharedObjects + 32);
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v29 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
    sub_268567E90();

    v24 = 0;
  }

  else
  {
    v24 = 4;
  }

LABEL_15:
  sub_2684EB8E0(v18, type metadata accessor for NotificationNLv4Intent);
  return v24;
}

uint64_t ANFollowupFlow.deinit()
{
  sub_2684EB7C8(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_input, &qword_280282DA0, &qword_26856B430);
  v1 = *(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_notificationManager);

  sub_2684CC8D4(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_sharedObjects);
  return v0;
}

uint64_t ANFollowupFlow.__deallocating_deinit()
{
  ANFollowupFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2684EA8B8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2684DB128;

  return ANFollowupFlow.execute()();
}

uint64_t sub_2684EA954@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = ANFollowupFlow.exitValue.getter();
  *a1 = result;
  return result;
}

SiriNotificationsIntents::ANFollowupRequestedBehavior_optional __swiftcall ANFollowupRequestedBehavior.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_2685690D0();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

SiriNotificationsIntents::ANFollowupRequestedBehavior_optional sub_2684EA9F0@<W0>(Swift::String *a1@<X0>, SiriNotificationsIntents::ANFollowupRequestedBehavior_optional *a2@<X8>)
{
  result.value = ANFollowupRequestedBehavior.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t sub_2684EAA20@<X0>(unint64_t *a1@<X8>)
{
  result = ANFollowupRequestedBehavior.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2684EAA4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DA0, &qword_26856B430);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684EAABC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2684EAB08(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_2684EAB90(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_2684EABEC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2684EABEC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_16_1();
  v9 = sub_2684EACAC(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_2684EB820(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v10;
}

unint64_t sub_2684EACAC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2684EADAC(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_268569010();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2684EADAC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2684EADF8(a1, a2);
  sub_2684EAF10(&unk_287917B50);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2684EADF8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_268568C40())
  {
    result = sub_2684EAFF4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_268568FA0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_268569010();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2684EAF10(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2684EB064(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2684EAFF4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DF0, &qword_26856B620);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2684EB064(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DF0, &qword_26856B620);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_2684EB158(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_2684EB168(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2684EB1E0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for ANFollowupFlow()
{
  result = qword_280282DC8;
  if (!qword_280282DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2684EB264()
{
  OUTLINED_FUNCTION_31_0();
  v3 = v2();
  v4 = *v1;
  *v4 = v3;
  *v1 = v4 + 1;
  v5 = *v0;
  if (*v0)
  {
    *v5 = v3;
    *v0 = v5 + 1;
  }

  else
  {
  }
}

unint64_t sub_2684EB2D8()
{
  result = qword_280282DC0;
  if (!qword_280282DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282DC0);
  }

  return result;
}

void sub_2684EB334()
{
  sub_2684EB3F0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2684EB3F0()
{
  if (!qword_280282DD8)
  {
    sub_268568040();
    v0 = sub_268568EB0();
    if (!v1)
    {
      atomic_store(v0, &qword_280282DD8);
    }
  }
}

uint64_t getEnumTagSinglePayload for ANFollowupRequestedBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ANFollowupRequestedBehavior(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x2684EB59CLL);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ANFollowupFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA)
  {
    v2 = a2 + 6;
    if (a2 + 6 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 6;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 6;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x2684EB684);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 6;
      default:
        break;
    }
  }

  v7 = *a1;
  if (v7 >= 5)
  {
    v8 = v7 - 4;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *storeEnumTagSinglePayload for ANFollowupFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFA)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF9)
  {
    v7 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0x2684EB76CLL);
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2684EB794(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2684EB7A8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t sub_2684EB7C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_17_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2684EB820(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2684EB87C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationNLv3Intent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684EB8E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2684EB938(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_3_6()
{
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[28];
  v7 = v0[25];
  v9 = v0[21];
  v8 = v0[22];
}

uint64_t OUTLINED_FUNCTION_6_4()
{

  return sub_2685691C0();
}

void OUTLINED_FUNCTION_13_4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_15_1()
{
  v4 = v1[40];
  v3 = v1[41];
  v5 = v1[38];
  v6 = v1[31];
  v7 = v1[29];
  v8 = v0;
  v9 = v1[24];
  v10 = v1[25];
  v11 = v1[23];
}

uint64_t OUTLINED_FUNCTION_16_2()
{
  result = v0[28];
  v2 = v0[26];
  v3 = *(v0[27] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_1()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = v0[29];
  return v0[31];
}

uint64_t OUTLINED_FUNCTION_34_0()
{
  v3 = *(*(v0 + 144) + *(v1 + 3464));
}

uint64_t OUTLINED_FUNCTION_37_0()
{
  v2 = *(v0 + 136);

  return MEMORY[0x2821BB078](1);
}

uint64_t sub_2684EBB74(int a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10)
{
  v82 = a4;
  v87 = a6;
  v88 = a7;
  v85 = a2;
  v86 = a5;
  v89 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E00, &qword_26856B628);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v84 = &v73 - v14;
  v92 = sub_268567B60();
  v15 = OUTLINED_FUNCTION_1(v92);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v83 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v73 - v22;
  v24 = sub_2685689F0();
  v25 = OUTLINED_FUNCTION_1(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  v31 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v91 = a10;
  v32 = __swift_project_value_buffer(v24, qword_28028B348);
  (*(v27 + 16))(v31, v32, v24);
  v80 = v24;
  v81 = *(v17 + 16);
  v81(v23, a3, v92);

  v33 = sub_2685689E0();
  v34 = sub_268568DD0();
  v90 = a9;

  v77 = v34;
  v35 = os_log_type_enabled(v33, v34);
  v78 = a8;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v76 = a3;
    v37 = v36;
    v75 = swift_slowAlloc();
    v94 = v75;
    *v37 = 136316162;
    sub_268566F8C(v89);
    v74 = v33;
    v40 = OUTLINED_FUNCTION_2_6(v38, v39);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2080;
    v41 = sub_268567B50();
    v43 = v42;
    v44 = OUTLINED_FUNCTION_0_6();
    v45(v44, v92);
    v46 = sub_2684EABEC(v41, v43, &v94);

    *(v37 + 14) = v46;
    *(v37 + 22) = 2080;
    v93 = a8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E08, &qword_26856B630);
    v47 = sub_268568EA0();
    v49 = OUTLINED_FUNCTION_2_6(v47, v48);

    *(v37 + 24) = v49;
    *(v37 + 32) = 2080;
    v93 = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E10, &qword_26856B638);
    v50 = sub_268568EA0();
    v52 = OUTLINED_FUNCTION_2_6(v50, v51);

    *(v37 + 34) = v52;
    *(v37 + 42) = 2080;
    LOWORD(v93) = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E18, &unk_26856B640);
    v53 = sub_268568EA0();
    v55 = OUTLINED_FUNCTION_2_6(v53, v54);
    v56 = v89;

    *(v37 + 44) = v55;
    v57 = v74;
    _os_log_impl(&dword_2684CA000, v74, v77, "In SiriKitEvent donator: task name %s activity %s announce notification: %s or readNotification: %s or notificationMetricsSummary: %s", v37, 0x34u);
    v58 = v75;
    swift_arrayDestroy();
    MEMORY[0x26D61CB30](v58, -1, -1);
    v59 = v37;
    a3 = v76;
    MEMORY[0x26D61CB30](v59, -1, -1);

    (*(v27 + 8))(v31, v80);
    v60 = v92;
  }

  else
  {

    v61 = OUTLINED_FUNCTION_0_6();
    v60 = v92;
    v62(v61, v92);
    (*(v27 + 8))(v31, v80);
    v56 = v89;
  }

  v81(v83, a3, v60);
  sub_268566F8C(v56);
  v63 = sub_2685679B0();
  v64 = *(v63 - 8);
  v65 = v84;
  v66 = v82;
  (*(v64 + 16))(v84, v82, v63);
  __swift_storeEnumTagSinglePayload(v65, 0, 1, v63);
  v67 = swift_allocObject();
  v68 = v86;
  *(v67 + 16) = v85;
  *(v67 + 17) = v68;
  v69 = v88;
  *(v67 + 24) = v87;
  *(v67 + 32) = v69;
  v70 = v90;
  *(v67 + 40) = v78;
  *(v67 + 48) = v70;
  *(v67 + 56) = v91;
  v71 = sub_268567A00();
  (*(v64 + 8))(v66, v63);
  v79(a3, v60);
  return v71;
}

void sub_2684EC168(uint64_t *a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v12 = *a1;
  if (a2 != 9)
  {
    sub_2685670F4(a2);
  }

  sub_2685679F0();
  if (a3 == 8)
  {
  }

  else
  {
    sub_26856722C(a3);
  }

  sub_2685679E0();
  [objc_allocWithZone(MEMORY[0x277D57520]) init];
  sub_2685679D0();
  v13 = sub_2685679C0();
  if (v13)
  {
    v14 = v13;
    v15 = [objc_allocWithZone(MEMORY[0x277D57668]) init];
    [v14 setNotificationContext_];
  }

  if (a6)
  {

    v16 = sub_2685679C0();
    if (v16)
    {
      v17 = v16;
      v18 = [v16 notificationContext];

      if (v18)
      {
        v19 = 0xEC000000656C6261;
        v20 = 1;
        v21 = 0;
        switch(*(a6 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_summaryType))
        {
          case 2:
            goto LABEL_13;
          case 3:
            break;
          default:
            v20 = sub_2685691C0();
LABEL_13:

            v21 = v20;
            break;
        }

        [v18 setIsSummarized_];
      }
    }

    v22 = sub_2685679C0();
    if (v22)
    {
      v23 = v22;
      v24 = [v22 notificationContext];

      if (v24)
      {
        v25 = 0;
        switch(*(a6 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_summaryType))
        {
          case 1:
          case 2:
            v25 = sub_2685691C0();
            goto LABEL_38;
          case 3:
            break;
          default:
            v25 = 1;
LABEL_38:

            break;
        }

        [v24 setIsLongNotification_];
      }
    }

    v38 = sub_2685679C0();
    if (v38)
    {
      v39 = v38;
      v40 = [v38 notificationContext];

      if (v40)
      {
        [v40 setIsHighlight_];
      }
    }

LABEL_46:

    return;
  }

  if (a7)
  {

    v26 = sub_2685679C0();
    if (v26)
    {
      v27 = v26;
      v28 = [v26 notificationContext];

      if (v28)
      {
        [v28 setIsHighlight_];
      }
    }

    v29 = sub_2685679C0();
    if (v29)
    {
      v30 = v29;
      v31 = [v29 notificationContext];

      if (v31)
      {
        if (*(a7 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_summary + 8))
        {
          v32 = 1;
        }

        else
        {
          v32 = *(a7 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_stackSummary + 8) != 0;
        }

        [v31 setIsSummarized_];
      }
    }

    goto LABEL_46;
  }

  if (a8 != 2)
  {
    v33 = sub_2685679C0();
    if (v33)
    {
      v34 = v33;
      v35 = [v33 notificationContext];

      if (v35)
      {
        [v35 setIsHighlight_];
      }
    }

    v36 = sub_2685679C0();
    if (v36)
    {
      v37 = v36;
      v41 = [v36 notificationContext];

      if (v41)
      {
        [v41 setIsSummarized_];
      }
    }
  }
}

uint64_t sub_2684EC694()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 58, 7);
}

uint64_t OUTLINED_FUNCTION_0_6()
{
  v3 = *(v0 + 8);
  *(v2 - 224) = (v0 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  *(v2 - 216) = v3;
  return v1;
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t a1, unint64_t a2)
{

  return sub_2684EABEC(a1, a2, (v2 - 96));
}

uint64_t sub_2684EC724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, char a6, uint64_t a7)
{
  *(v7 + 240) = MEMORY[0x277D84F90];
  sub_2684CC878(a1, v7 + 16);
  *(v7 + 144) = a2;
  *(v7 + 152) = a3;
  *(v7 + 160) = a4;
  *(v7 + 168) = a5 & 1;
  *(v7 + 169) = HIBYTE(a5) & 1;
  *(v7 + 216) = a2;
  *(v7 + 224) = a3;
  *(v7 + 232) = 0;
  *(v7 + 248) = a6;
  sub_2684F11A0(a7, &v18);
  if (v19)
  {

    sub_2684D199C(a7, &qword_280282E40, &unk_26856B7C0);
    sub_2684CC8D4(a1);
    sub_2684D8314(&v18, &v20);
  }

  else
  {
    v15 = type metadata accessor for DefaultGuardFlowProvider();
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    v21 = v15;
    v22 = &off_28791A698;
    *&v20 = v16;

    sub_2684D199C(a7, &qword_280282E40, &unk_26856B7C0);
    sub_2684CC8D4(a1);
    if (v19)
    {
      sub_2684D199C(&v18, &qword_280282E40, &unk_26856B7C0);
    }
  }

  sub_2684D8314(&v20, v7 + 176);
  return v7;
}

uint64_t RNAuthenticationFlow.execute()(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  v3 = OUTLINED_FUNCTION_7();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2684EC8B4()
{
  v1 = v0[20];
  if (*(v1 + 232) == 2)
  {
    v5 = v0[19];
    v6 = __swift_project_boxed_opaque_existential_1((v1 + 176), *(v1 + 200));
    if (*(*v6 + 24))
    {
      v7 = *(*v6 + 24);
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    type metadata accessor for RNStateManager();
    swift_allocObject();
    v8 = sub_2684F4624(v7, 0, 0, 0, 0);
    v10 = *(v1 + 144);
    v9 = *(v1 + 152);
    v11 = *(v1 + 160);
    v12 = *(v1 + 168);
    v13 = *(v1 + 169);
    sub_2684CC878(v1 + 16, (v0 + 2));
    type metadata accessor for RNFlow();
    swift_allocObject();
    if (v13)
    {
      v14 = 256;
    }

    else
    {
      v14 = 0;
    }

    v0[18] = RNFlow.init(notificationManager:request:sharedObjects:)(v8, v10, v9, v11, v14 | v12, v0 + 2);
    sub_2684EFB7C(&qword_280282E20, 255, type metadata accessor for RNFlow);

    sub_268567C20();
  }

  else
  {
    if (!*(v1 + 232))
    {
      v2 = swift_task_alloc();
      v0[21] = v2;
      *v2 = v0;
      v2[1] = sub_2684ECB00;
      v3 = v0[20];

      return sub_2684ECEB8();
    }

    v15 = v0[19];
    sub_268567C40();
  }

  OUTLINED_FUNCTION_9_1();

  return v16();
}

uint64_t sub_2684ECB00()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v3 = *(v1 + 168);
  v10 = *v0;
  *(v2 + 176) = v4;
  *(v2 + 192) = v5;

  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2684ECBF4()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 176);
  if (*(v0 + 192))
  {
    v2 = *(v0 + 152);
    sub_268567C40();
    sub_2684EFB4C(v1, 1);
    OUTLINED_FUNCTION_9_1();

    return v3();
  }

  else
  {
    v5 = *(v0 + 160);
    v6 = *(v5 + 240);
    *(v5 + 240) = v1;

    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = sub_2684ECCEC;
    v8 = *(v0 + 152);
    v9 = *(v0 + 160);

    return sub_2684EE984();
  }
}

uint64_t sub_2684ECCEC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v2 = *(v1 + 184);
  v3 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2684ECDD0()
{
  OUTLINED_FUNCTION_5();
  sub_2684EFB4C(*(v0 + 176), 0);
  OUTLINED_FUNCTION_9_1();

  return v1();
}

uint64_t RNAuthenticationFlow.execute(completion:)()
{
  type metadata accessor for RNAuthenticationFlow();
  sub_2684EFB7C(&qword_280282E28, v0, type metadata accessor for RNAuthenticationFlow);
  return sub_268567900();
}

uint64_t sub_2684ECEB8()
{
  OUTLINED_FUNCTION_5();
  v1[14] = v0;
  v2 = sub_2685679B0();
  v1[15] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[16] = v3;
  v5 = *(v4 + 64);
  v1[17] = OUTLINED_FUNCTION_39();
  v6 = sub_268567B60();
  v1[18] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[19] = v7;
  v9 = *(v8 + 64);
  v1[20] = OUTLINED_FUNCTION_39();
  v10 = sub_2685689F0();
  v1[21] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[22] = v11;
  v13 = *(v12 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2684ED02C()
{
  v1 = v0[14];
  v2 = [objc_allocWithZone(MEMORY[0x277D47618]) init];
  v0[28] = v2;
  sub_2684D16C0(0, &qword_280282BA8, 0x277CCABB0);
  v3 = sub_268568E50();
  [v2 setSupportsSpokenNotifications_];

  [v2 setSourceAppId_];
  v4 = sub_268568E50();
  [v2 setIsOnDeviceSearch_];

  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  v7 = *(MEMORY[0x277D5BFB8] + 4);
  v8 = swift_task_alloc();
  v0[29] = v8;
  v9 = sub_2684D16C0(0, &qword_280282BB0, 0x277D471B0);
  *v8 = v0;
  v8[1] = sub_2684ED1AC;

  return MEMORY[0x2821BB6A0](v2, v5, v9, v6);
}

uint64_t sub_2684ED1AC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *(v2 + 232);
  v8 = *v1;
  *(v3 + 240) = v5;
  *(v3 + 248) = v0;

  if (v0)
  {
    v6 = sub_2684EDAF0;
  }

  else
  {
    v6 = sub_2684ED2B8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_2684ED2B8()
{
  v118 = v0;
  v1 = *(v0 + 240);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {

    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v28 = *(v0 + 192);
    v29 = *(v0 + 176);
    __swift_project_value_buffer(*(v0 + 168), qword_28028B348);
    v30 = OUTLINED_FUNCTION_12_2();
    v31(v30);
    v32 = sub_2685689E0();
    v33 = sub_268568DE0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_16_0();
      *v34 = 0;
      _os_log_impl(&dword_2684CA000, v32, v33, "ReadNotificationAuthenticationFlow getNotifications | unable to convert SABaseCommand to SAOnDeviceNotificationsSearchCompleted", v34, 2u);
      OUTLINED_FUNCTION_2();
    }

    v35 = *(v0 + 192);
    v36 = *(v0 + 168);
    v37 = *(v0 + 176);
    v39 = *(v0 + 152);
    v38 = *(v0 + 160);
    v40 = *(v0 + 136);
    v41 = *(v0 + 144);
    v42 = *(v0 + 128);
    v110 = *(v0 + 120);
    v112 = *(v0 + 224);

    (*(v37 + 8))(v35, v36);
    sub_268567990();
    v43 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    sub_268567A20();
    (*(v39 + 104))(v38, *MEMORY[0x277D5BC00], v41);
    (*(v42 + 104))(v40, *MEMORY[0x277D5B8D0], v110);
    sub_268568B70();
    v44 = OUTLINED_FUNCTION_5_6();
    sub_2684EBB74(v44, v45, v46, v40, 8, v47, v48, 0, v102, v103);
    sub_2685679A0();

    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    sub_2684F1220();
    v49 = swift_allocError();

    v2 = 0;
    goto LABEL_36;
  }

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v3 = *(v0 + 240);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = __swift_project_value_buffer(*(v0 + 168), qword_28028B348);
  v109 = *(v5 + 16);
  v111 = v6;
  v109(v4);
  v7 = v3;
  v8 = sub_2685689E0();
  v9 = sub_268568DD0();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 240);
  v12 = MEMORY[0x277D84F90];
  if (v10)
  {
    v13 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    buf = v13;
    *v13 = 136315138;
    v113 = v2;
    v116 = v106;
    v14 = sub_2684D9504(v2);

    if (v14)
    {
      v15 = sub_2684DEAF0(v14);
      log = v8;
      v104 = v9;
      if (!v15)
      {

        v18 = MEMORY[0x277D84F90];
LABEL_23:
        v55 = *(v0 + 216);
        v57 = *(v0 + 168);
        v56 = *(v0 + 176);
        v58 = MEMORY[0x26D61BE70](v18, MEMORY[0x277D837D0]);
        v60 = v59;

        v61 = sub_2684EABEC(v58, v60, &v116);

        *(buf + 4) = v61;
        _os_log_impl(&dword_2684CA000, log, v104, "ReadNotificationFlow getNotificationsInReverseChronologicalOrder | notifications search complete notifications %s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v106);
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_2();

        v54 = *(v56 + 8);
        v54(v55, v57);
        v2 = v113;
        v12 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }

      v16 = v15;
      v117 = v12;
      sub_2684DCF68(0, v15 & ~(v15 >> 63), 0);
      if ((v16 & 0x8000000000000000) == 0)
      {
        v17 = 0;
        v18 = v117;
        do
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x26D61C170](v17, v14);
          }

          else
          {
            v19 = *(v14 + 8 * v17 + 32);
          }

          v20 = v19;
          v21 = [v19 description];
          v22 = sub_268568B20();
          v24 = v23;

          v117 = v18;
          v26 = *(v18 + 16);
          v25 = *(v18 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_2684DCF68(v25 > 1, v26 + 1, 1);
            v18 = v117;
          }

          ++v17;
          *(v18 + 16) = v26 + 1;
          v27 = v18 + 16 * v26;
          *(v27 + 32) = v22;
          *(v27 + 40) = v24;
        }

        while (v16 != v17);

        goto LABEL_23;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  v50 = *(v0 + 216);
  v51 = v8;
  v52 = *(v0 + 168);
  v53 = *(v0 + 176);

  v54 = *(v53 + 8);
  v54(v50, v52);
LABEL_24:
  v62 = *(v0 + 208);
  v63 = *(v0 + 168);
  v64 = *(v0 + 112);
  v65 = sub_2684D9504(v2);
  if (v65)
  {
    v12 = v65;
  }

  v49 = sub_2684EDE38(v12);

  (v109)(v62, v111, v63);

  v66 = sub_2685689E0();
  v67 = sub_268568DD0();

  v68 = os_log_type_enabled(v66, v67);
  v69 = *(v0 + 208);
  v70 = *(v0 + 168);
  v71 = *(v0 + 176);
  if (v68)
  {
    v114 = v54;
    v72 = swift_slowAlloc();
    v108 = v69;
    v73 = swift_slowAlloc();
    v117 = v73;
    *v72 = 136315138;
    Notification = type metadata accessor for ReadNotification();
    v75 = MEMORY[0x26D61BE70](v49, Notification);
    v77 = v2;
    v78 = sub_2684EABEC(v75, v76, &v117);

    *(v72 + 4) = v78;
    v2 = v77;
    _os_log_impl(&dword_2684CA000, v66, v67, "ReadNotificationFlow getNotificationsInReverseChronologicalOrder | sorted and filtered notifications %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v73);
    OUTLINED_FUNCTION_2();
    v54 = v114;
    OUTLINED_FUNCTION_2();

    v79 = v70;
    v80 = v108;
  }

  else
  {

    v80 = OUTLINED_FUNCTION_34();
  }

  v54(v80, v79);
  if (*(*(v0 + 112) + 248) == 1)
  {
    v81 = sub_2684F1428(v49);

    if (v81)
    {
      v82 = *(v0 + 240);
      v83 = *(v0 + 224);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_26856B420;
      *(v49 + 32) = v81;
    }

    else
    {
      v115 = v54;
      (v109)(*(v0 + 200), v111, *(v0 + 168));
      v85 = sub_2685689E0();
      v86 = sub_268568DC0();
      v87 = os_log_type_enabled(v85, v86);
      v88 = *(v0 + 240);
      v89 = *(v0 + 224);
      v90 = *(v0 + 200);
      v91 = *(v0 + 168);
      v92 = *(v0 + 176);
      if (v87)
      {
        v93 = OUTLINED_FUNCTION_16_0();
        *v93 = 0;
        _os_log_impl(&dword_2684CA000, v85, v86, "ReadNotificationFlow getNotificationsInReverseChronologicalOrder | no salient notification, returning []", v93, 2u);
        OUTLINED_FUNCTION_2();
      }

      v115(v90, v91);
      v49 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v84 = *(v0 + 224);
  }

LABEL_36:
  v95 = *(v0 + 208);
  v94 = *(v0 + 216);
  v97 = *(v0 + 192);
  v96 = *(v0 + 200);
  v98 = *(v0 + 184);
  v99 = *(v0 + 160);
  v100 = *(v0 + 136);

  v101 = *(v0 + 8);

  v101(v49, v2 == 0);
}

uint64_t sub_2684EDAF0()
{
  v55 = v0;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[31];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v5 = __swift_project_value_buffer(v4, qword_28028B348);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2685689E0();
  v8 = sub_268568DE0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v11 = v0[22];
    v10 = v0[23];
    v12 = v0[21];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v54 = v14;
    *v13 = 136315138;
    v0[13] = v9;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v16 = sub_268568B70();
    v18 = sub_2684EABEC(v16, v17, &v54);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2684CA000, v7, v8, "ReadNotificationAuthenticationFlow getNotifications | notifications search error: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v19 = *(v11 + 8);
    v20 = OUTLINED_FUNCTION_34();
    v21(v20);
  }

  else
  {
    v23 = v0[22];
    v22 = v0[23];
    v24 = v0[21];

    v25 = *(v23 + 8);
    v26 = OUTLINED_FUNCTION_34();
    v27(v26);
  }

  v28 = v0[31];
  v53 = v0[28];
  v30 = v0[19];
  v29 = v0[20];
  v31 = v0[17];
  v32 = v0[18];
  v34 = v0[15];
  v33 = v0[16];
  sub_268567990();
  v52 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_268567A20();
  (*(v30 + 104))(v29, *MEMORY[0x277D5BC00], v32);
  (*(v33 + 104))(v31, *MEMORY[0x277D5B8D0], v34);
  v0[12] = v28;
  v35 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
  sub_268568B70();
  v36 = OUTLINED_FUNCTION_5_6();
  sub_2684EBB74(v36, v37, v38, v31, 8, v39, v40, 0, v50, v51);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v42 = v0[26];
  v41 = v0[27];
  v44 = v0[24];
  v43 = v0[25];
  v45 = v0[23];
  v46 = v0[20];
  v47 = v0[17];

  v48 = v0[1];

  return v48(v28, 1);
}

uint64_t sub_2684EDE38(uint64_t a1)
{
  v2 = sub_2685689F0();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v84 - v13;
  v15 = sub_2684DEAF0(a1);
  if (!v15)
  {
    if (qword_280282960 != -1)
    {
      goto LABEL_103;
    }

    goto LABEL_47;
  }

  v16 = v15;
  v85 = 0;
  v2 = 0;
  v88 = MEMORY[0x277D84F90];
  v17 = a1 & 0xC000000000000001;
  v18 = a1 & 0xFFFFFFFFFFFFFF8;
  v19 = 0x279C3C000uLL;
  v5 = &qword_280282D40;
  v86 = v14;
  while (1)
  {
    if (v16 == v2)
    {
      v33 = v88;
      v34 = MEMORY[0x277D84F90];
      v88 = MEMORY[0x277D84F90];
      v35 = sub_2684DEAF0(v33);
      v36 = 0;
      v5 = (v33 & 0xC000000000000001);
      v37 = v85;
      while (v35 != v36)
      {
        if (v5)
        {
          v38 = MEMORY[0x26D61C170](v36, v33);
        }

        else
        {
          if (v36 >= *(v33 + 16))
          {
            goto LABEL_97;
          }

          v38 = *(v33 + 8 * v36 + 32);
        }

        v2 = v38;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_96;
        }

        v10 = v87;
        if (sub_2684EE7A8(v38))
        {
          v10 = &v88;
          sub_268569020();
          OUTLINED_FUNCTION_12_4();
          sub_268569060();
          sub_268569030();
        }

        else
        {
        }

        ++v36;
      }

      v39 = v88;
      if (*(v87 + 169))
      {
        v88 = v34;
        v40 = sub_2684DEAF0(v39);
        v41 = 0;
        v86 = v39 & 0xC000000000000001;
        v2 = *MEMORY[0x277D48748];
        while (1)
        {
          if (v40 == v41)
          {

            v39 = v88;
            goto LABEL_51;
          }

          if (v86)
          {
            v42 = MEMORY[0x26D61C170](v41, v39);
          }

          else
          {
            if (v41 >= *(v39 + 16))
            {
              goto LABEL_102;
            }

            v42 = *(v39 + 8 * v41 + 32);
          }

          v5 = v42;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_101;
          }

          v43 = sub_26856533C(v42);
          v45 = v44;
          v46 = sub_268568B20();
          v10 = v47;
          if (!v45)
          {
            break;
          }

          if (v43 == v46 && v45 == v47)
          {
          }

          else
          {
            v49 = sub_2685691C0();

            if ((v49 & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          v10 = &v88;
          sub_268569020();
          OUTLINED_FUNCTION_12_4();
          sub_268569060();
          sub_268569030();
LABEL_44:
          ++v41;
        }

LABEL_41:

        goto LABEL_44;
      }

LABEL_51:
      v2 = sub_2684DEAF0(v39);
      v10 = 0;
      v55 = v39 & 0xC000000000000001;
      v56 = MEMORY[0x277D84F90];
      v5 = &v88;
      v84 = xmmword_26856B420;
      v86 = MEMORY[0x277D84F90];
      while (v2 != v10)
      {
        sub_2684DEAFC(v10, v55 == 0, v39);
        if (v55)
        {
          v57 = MEMORY[0x26D61C170](v10, v39);
        }

        else
        {
          v57 = *(v39 + 8 * v10 + 32);
        }

        v58 = v57;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_98;
        }

        v88 = v57;
        MEMORY[0x28223BE20](v57);
        *(&v84 - 2) = &v88;
        sub_26855B860(sub_2684F1180, (&v84 - 2), v56);
        if (v59)
        {
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
          inited = swift_initStackObject();
          *(inited + 16) = v84;
          *(inited + 32) = v58;
          v88 = v56;
          sub_268509694(inited);
          v56 = v88;
        }

        ++v10;
      }

      v61 = *(v87 + 80);
      __swift_project_boxed_opaque_existential_1((v87 + 56), v61);
      if (sub_268567AB0())
      {
        v62 = sub_2684DEAF0(v56);
        if (v62)
        {
          v63 = v62;
          v88 = MEMORY[0x277D84F90];
          v64 = &v88;
          sub_268569040();
          if (v63 < 0)
          {
            __break(1u);
            goto LABEL_105;
          }

          v65 = 0;
          do
          {
            if ((v56 & 0xC000000000000001) != 0)
            {
              v66 = MEMORY[0x26D61C170](v65, v56);
            }

            else
            {
              v66 = *(v56 + 8 * v65 + 32);
            }

            v5 = v66;
            ++v65;
            sub_2684EE82C(v66);

            sub_268569020();
            OUTLINED_FUNCTION_12_4();
            sub_268569060();
            sub_268569030();
          }

          while (v63 != v65);
        }
      }

      v88 = sub_2684F10C8(v67);
      sub_2684EFDA8(&v88);
      if (v37)
      {

        __break(1u);
        return result;
      }

      v68 = v88;
      if ((*(v87 + 168) & 1) == 0)
      {
        v10 = MEMORY[0x277D84F90];
        goto LABEL_82;
      }

      v61 = sub_2685380D4(1, v88);
      v64 = v69;
      v63 = v70;
      v56 = v71;
      if ((v71 & 1) == 0)
      {
        goto LABEL_73;
      }

      sub_2685691E0();
      swift_unknownObjectRetain_n();
      v73 = swift_dynamicCastClass();
      if (!v73)
      {
        swift_unknownObjectRelease();
        v73 = MEMORY[0x277D84F90];
      }

      v74 = *(v73 + 16);

      if (!__OFSUB__(v56 >> 1, v63))
      {
        if (v74 == (v56 >> 1) - v63)
        {
          v68 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v10 = MEMORY[0x277D84F90];
          if (v68)
          {
            goto LABEL_82;
          }

          v68 = MEMORY[0x277D84F90];
LABEL_81:
          swift_unknownObjectRelease();
LABEL_82:
          v88 = v10;
          v75 = sub_2684DEAF0(v68);
          v2 = 0;
          while (v75 != v2)
          {
            if ((v68 & 0xC000000000000001) != 0)
            {
              v76 = MEMORY[0x26D61C170](v2, v68);
            }

            else
            {
              if (v2 >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_100;
              }

              v76 = *(v68 + 8 * v2 + 32);
            }

            v10 = v76;
            v77 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              goto LABEL_99;
            }

            Notification = type metadata accessor for ReadNotification();
            v79 = *(Notification + 48);
            v80 = *(Notification + 52);
            v81 = swift_allocObject();
            v82 = v10;
            v10 = v81;
            sub_268555018(v82, &unk_287917E78);
            ++v2;
            if (v83)
            {
              v5 = v83;
              v10 = &v88;
              MEMORY[0x26D61BE40]();
              if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_268568D00();
              }

              sub_268568D20();
              v86 = v88;
              v2 = v77;
            }
          }

          return v86;
        }

        goto LABEL_106;
      }

LABEL_105:
      __break(1u);
LABEL_106:
      swift_unknownObjectRelease();
LABEL_73:
      sub_26853D6A0(v61, v64, v63, v56);
      v68 = v72;
      v10 = MEMORY[0x277D84F90];
      goto LABEL_81;
    }

    if (v17)
    {
      v20 = MEMORY[0x26D61C170](v2, a1);
    }

    else
    {
      if (v2 >= *(v18 + 16))
      {
        goto LABEL_95;
      }

      v20 = *(a1 + 8 * v2 + 32);
    }

    v21 = v20;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    v22 = [v20 *(v19 + 2648)];
    if (v22)
    {
      v10 = v22;
      sub_2685675C0();

      v23 = sub_2685675E0();
      __swift_storeEnumTagSinglePayload(v14, 0, 1, v23);
      sub_2684D199C(v14, v5, &qword_26856B330);
      v24 = [v21 source];
      if (v24)
      {

        v10 = &v88;
        sub_268569020();
        v25 = v16;
        v26 = v18;
        v27 = v17;
        v28 = v5;
        v29 = a1;
        v30 = v19;
        v31 = *(v88 + 16);
        sub_268569050();
        v19 = v30;
        a1 = v29;
        v5 = v28;
        v17 = v27;
        v18 = v26;
        v16 = v25;
        v14 = v86;
        sub_268569060();
        sub_268569030();
      }

      else
      {
      }
    }

    else
    {

      v32 = sub_2685675E0();
      __swift_storeEnumTagSinglePayload(v14, 1, 1, v32);
      sub_2684D199C(v14, v5, &qword_26856B330);
    }

    ++v2;
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  OUTLINED_FUNCTION_0_0();
LABEL_47:
  v50 = __swift_project_value_buffer(v2, qword_28028B348);
  (v5[2])(v10, v50, v2);
  v51 = sub_2685689E0();
  v52 = sub_268568DC0();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = OUTLINED_FUNCTION_16_0();
    *v53 = 0;
    _os_log_impl(&dword_2684CA000, v51, v52, "ReadNotificationFlow sortAndFilterNotifications incoming notifications array is empty", v53, 2u);
    OUTLINED_FUNCTION_2();
  }

  (v5[1])(v10, v2);
  return MEMORY[0x277D84F90];
}

uint64_t sub_2684EE7A8(void *a1)
{
  v2 = *(v1 + 224);
  if (v2)
  {
    v3 = *(v1 + 216);
    v4 = sub_268565330(a1);
    if (v5)
    {
      if (v4 == v3 && v5 == v2)
      {
        v7 = 1;
      }

      else
      {
        v7 = sub_2685691C0();
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

id sub_2684EE82C(void *a1)
{
  v2 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  OUTLINED_FUNCTION_34();
  if (sub_268567AB0())
  {
    v3 = sub_268564624();
    result = sub_268565330(a1);
    if (v3)
    {
      if (v5)
      {
        goto LABEL_6;
      }

      __break(1u);
    }

    else if (v5)
    {
LABEL_6:
      sub_2684D166C();
      v6 = sub_268568F10();
      v8 = v7;

      sub_2684F1064(v6, v8, a1);
      goto LABEL_7;
    }

    __break(1u);
    return result;
  }

LABEL_7:

  return a1;
}

uint64_t sub_2684EE984()
{
  OUTLINED_FUNCTION_5();
  v1[9] = v2;
  v1[10] = v0;
  v3 = sub_2685679B0();
  v1[11] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v1[12] = v4;
  v6 = *(v5 + 64);
  v1[13] = OUTLINED_FUNCTION_39();
  v7 = sub_268567B60();
  v1[14] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[15] = v8;
  v10 = *(v9 + 64);
  v1[16] = OUTLINED_FUNCTION_39();
  v11 = sub_2685689F0();
  v1[17] = v11;
  OUTLINED_FUNCTION_2_4(v11);
  v1[18] = v12;
  v14 = *(v13 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2684EEAD4()
{
  v1 = v0[10];
  if (sub_2684EF6C0())
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v2 = v0[20];
    v3 = v0[18];
    __swift_project_value_buffer(v0[17], qword_28028B348);
    v4 = OUTLINED_FUNCTION_12_2();
    v5(v4);
    v6 = sub_2685689E0();
    v7 = sub_268568DC0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_16_0();
      *v8 = 0;
      _os_log_impl(&dword_2684CA000, v6, v7, "ReadNotificationAuthenticationFlow handleUnlockCheck | unlock is required, waiting for device to be unlocked", v8, 2u);
      OUTLINED_FUNCTION_2();
    }

    v9 = v0[20];
    v11 = v0[17];
    v10 = v0[18];
    v13 = v0[15];
    v12 = v0[16];
    v14 = v0[13];
    v15 = v0[12];
    v42 = v0[14];
    v43 = v0[11];
    v16 = v0[10];
    v44 = v0[9];

    (*(v10 + 8))(v9, v11);
    sub_268567990();
    v17 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_268567A20();
    (*(v13 + 104))(v12, *MEMORY[0x277D5BB38], v42);
    (*(v15 + 104))(v14, *MEMORY[0x277D5B928], v43);
    sub_2684EBB74(1, 9, v12, v14, 8, 0, 0, 0, 0, 2u);
    sub_2685679A0();

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    *(v16 + 232) = 1;
    v18 = OUTLINED_FUNCTION_16_3();
    sub_26855BC44(v18);
    v20 = v19;

    v0[8] = v20;
    sub_2685677C0();
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v22 = v0[18];
    v21 = v0[19];
    __swift_project_value_buffer(v0[17], qword_28028B348);
    v23 = OUTLINED_FUNCTION_12_2();
    v24(v23);
    v25 = sub_2685689E0();
    v26 = sub_268568DC0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_16_0();
      *v27 = 0;
      _os_log_impl(&dword_2684CA000, v25, v26, "ReadNotificationAuthenticationFlow handleUnlockCheck | unlock is not required, proceeding to next flow", v27, 2u);
      OUTLINED_FUNCTION_2();
    }

    v29 = v0[18];
    v28 = v0[19];
    v30 = v0[17];
    v32 = v0[9];
    v31 = v0[10];

    (*(v29 + 8))(v28, v30);
    v33 = OUTLINED_FUNCTION_16_3();
    sub_26855BE48(v33);
    v35 = v34;

    v0[7] = v35;
    sub_2685677C0();
  }

  sub_268567C00();

  v37 = v0[19];
  v36 = v0[20];
  v38 = v0[16];
  v39 = v0[13];

  OUTLINED_FUNCTION_9_1();

  return v40();
}

uint64_t sub_2684EEEA0(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2685679B0();
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_268567B60();
  v8 = *(v39 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v39);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2685689F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  if (*a1 == 1)
  {
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v12, qword_28028B348);
    (*(v13 + 16))(v19, v20, v12);
    v21 = sub_2685689E0();
    v22 = sub_268568DC0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v38 = v4;
      v24 = v7;
      v25 = a2;
      v26 = v23;
      *v23 = 0;
      _os_log_impl(&dword_2684CA000, v21, v22, "ReadNotificationAuthenticationFlow processDeviceUnlockResult | unable to unlock device due to error", v23, 2u);
      v27 = v26;
      a2 = v25;
      v7 = v24;
      v4 = v38;
      MEMORY[0x26D61CB30](v27, -1, -1);
    }

    (*(v13 + 8))(v19, v12);
    sub_268567990();
    __swift_project_boxed_opaque_existential_1(v41, v42);
    sub_268567A20();
    (*(v8 + 104))(v11, *MEMORY[0x277D5BC00], v39);
    (*(v40 + 104))(v7, *MEMORY[0x277D5B8D0], v4);
    sub_2684EBB74(1, 9, v11, v7, 0, 0, 0, 0, 0, 2u);
    sub_2685679A0();

    result = __swift_destroy_boxed_opaque_existential_0(v41);
    v29 = 3;
  }

  else
  {
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v12, qword_28028B348);
    (*(v13 + 16))(v17, v30, v12);
    v31 = sub_2685689E0();
    v32 = sub_268568DC0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v38 = v4;
      v34 = v7;
      v35 = a2;
      v36 = v33;
      *v33 = 0;
      _os_log_impl(&dword_2684CA000, v31, v32, "ReadNotificationAuthenticationFlow processDeviceUnlockResult | unlocked device, authenticated", v33, 2u);
      v37 = v36;
      a2 = v35;
      v7 = v34;
      v4 = v38;
      MEMORY[0x26D61CB30](v37, -1, -1);
    }

    (*(v13 + 8))(v17, v12);
    sub_268567990();
    __swift_project_boxed_opaque_existential_1(v41, v42);
    sub_268567A20();
    (*(v8 + 104))(v11, *MEMORY[0x277D5BBA0], v39);
    (*(v40 + 104))(v7, *MEMORY[0x277D5B940], v4);
    v29 = 2;
    sub_2684EBB74(1, 9, v11, v7, 8, 0, 0, 0, 0, 2u);
    sub_2685679A0();

    result = __swift_destroy_boxed_opaque_existential_0(v41);
  }

  *(a2 + 232) = v29;
  return result;
}

uint64_t sub_2684EF420(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2685689F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  if (*a1 == 1)
  {
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v4, qword_28028B348);
    (*(v5 + 16))(v11, v12, v4);
    v13 = sub_2685689E0();
    v14 = sub_268568DC0();
    if (!os_log_type_enabled(v13, v14))
    {
      v16 = 3;
      goto LABEL_13;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2684CA000, v13, v14, "ReadNotificationAuthenticationFlow protectedAppGuardFlow | unable to check protected apps due to error", v15, 2u);
    v16 = 3;
  }

  else
  {
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v4, qword_28028B348);
    (*(v5 + 16))(v9, v17, v4);
    v13 = sub_2685689E0();
    v18 = sub_268568DC0();
    v16 = 2;
    if (!os_log_type_enabled(v13, v18))
    {
      v11 = v9;
      goto LABEL_13;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2684CA000, v13, v18, "ReadNotificationAuthenticationFlow protectedAppGuardFlow | protected app filtered, we are authenticated", v15, 2u);
    v11 = v9;
  }

  MEMORY[0x26D61CB30](v15, -1, -1);
LABEL_13:

  result = (*(v5 + 8))(v11, v4);
  *(a2 + 232) = v16;
  return result;
}

uint64_t sub_2684EF6C0()
{
  v32 = sub_2685689F0();
  v1 = OUTLINED_FUNCTION_1(v32);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_5();
  v8 = v7 - v6;
  v9 = sub_268567E40();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_5();
  v17 = v16 - v15;
  v18 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_268567E30();
  v31 = sub_268567A80();
  (*(v12 + 8))(v17, v9);
  v19 = v0[30];
  v20 = sub_2684DEAF0(v19);
  v21 = v19 + 32;

  v22 = 0;
  do
  {
    v23 = v22;
    if (v22 == v20)
    {
      break;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D61C170](v22++, v19);
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        return result;
      }

      v30 = *(result + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isPreviewRestricted);
      swift_unknownObjectRelease();
      v24 = v30;
    }

    else
    {
      if ((v22 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      if (v22 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      ++v22;
      v24 = *(*(v21 + 8 * v23) + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isPreviewRestricted);
    }
  }

  while (v24 != 1);

  v22 = v32;
  LODWORD(v21) = v31;
  if (qword_280282960 == -1)
  {
    goto LABEL_12;
  }

LABEL_17:
  OUTLINED_FUNCTION_0_0();
LABEL_12:
  v26 = __swift_project_value_buffer(v22, qword_28028B348);
  (*(v3 + 16))(v8, v26, v22);
  v27 = sub_2685689E0();
  v28 = sub_268568DD0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 67109376;
    *(v29 + 4) = v21 & 1;
    *(v29 + 8) = 1024;
    *(v29 + 10) = v23 != v20;
    _os_log_impl(&dword_2684CA000, v27, v28, "ReadNotificationAuthenticationFlow isUnlockRequired | isAuthenticated: %{BOOL}d, containsPreviewRestrictedNotification: %{BOOL}d", v29, 0xEu);
    OUTLINED_FUNCTION_2();
  }

  (*(v3 + 8))(v8, v22);
  return (v23 != v20) & (v21 ^ 1);
}

void *RNAuthenticationFlow.deinit()
{
  sub_2684CC8D4((v0 + 2));
  v1 = v0[19];
  v2 = v0[20];

  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  v3 = v0[28];

  v4 = v0[30];

  return v0;
}

uint64_t RNAuthenticationFlow.__deallocating_deinit()
{
  RNAuthenticationFlow.deinit();

  return MEMORY[0x2821FE8D8](v0, 249, 7);
}

uint64_t sub_2684EFA78(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2684DB128;

  return RNAuthenticationFlow.execute()(a1);
}

uint64_t sub_2684EFB14()
{
  type metadata accessor for RNAuthenticationFlow();

  return sub_268567950();
}

void sub_2684EFB4C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2684EFB7C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for RNAuthenticationFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RNAuthenticationFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2684EFD18);
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

unint64_t sub_2684EFD54()
{
  result = qword_280282E30;
  if (!qword_280282E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282E30);
  }

  return result;
}

uint64_t sub_2684EFDA8(uint64_t *a1)
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
  sub_2684EFE24(v6);
  return sub_268569030();
}

void sub_2684EFE24(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_268569190();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_268563684(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_2684F0140(v8, v9, a1, v5);
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
    sub_2684EFF04(0, v3, 1, a1);
  }
}

void sub_2684EFF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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

        v41 = sub_268567580();
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

void sub_2684F0140(void ***a1, uint64_t a2, uint64_t *a3, unint64_t a4)
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

        LODWORD(v142) = sub_268567580();
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

          LODWORD(v50) = sub_268567580() & 1;
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

              LOBYTE(v74) = sub_268567580();
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
      v118 = (v82 + 16 * v84);
      v22 = v118[1];
      v119 = v144;
      sub_2684F0ACC((*v143 + 8 * *a4), (*v143 + 8 * *v118), (*v143 + 8 * v22), v150);
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
      memmove((v82 + 16 * v84), v118 + 2, 16 * (v120 - 1 - v84));
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
    v129 = v128[1];
    v130 = v144;
    sub_2684F0ACC((*v143 + 8 * *v22), (*v143 + 8 * *v128), (*v143 + 8 * v129), a4);
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
    memmove(v128, v128 + 2, 16 * v131);
    *v125 = v124;
    v22 = v126;
  }

LABEL_105:
}

uint64_t sub_2684F0ACC(void **a1, void **a2, void **a3, void **a4)
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

      LOBYTE(v32) = sub_268567580();
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

    LOBYTE(v48) = sub_268567580();
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

char *sub_2684F0F38(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_2684F0F64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E38, &qword_268570030);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_2684F1064(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268568B10();

  [a3 setApplicationId_];
}

uint64_t sub_2684F10C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_2685690A0();
    if (v4)
    {
      v5 = v4;
      v2 = sub_26854C3E0(v4, 0);
      sub_268509A54((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_2684F115C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_26855C63C() & 1;
}

uint64_t sub_2684F11A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E40, &unk_26856B7C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2684F1220()
{
  result = qword_280282E48;
  if (!qword_280282E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282E48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RNAuthenticationFlow.RNAuthenticationFlowErrors(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2684F1310);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2684F134C()
{
  result = qword_280282E50;
  if (!qword_280282E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282E50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_4()
{
  v2 = *(*(v0 - 88) + 16);

  return sub_268569050();
}

uint64_t OUTLINED_FUNCTION_16_3()
{
  v1 = __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
  v2 = v0[30];
  v3 = *v1;
}

uint64_t sub_2684F1428(uint64_t a1)
{
  v2 = sub_2685689F0();
  v3 = OUTLINED_FUNCTION_1(v2);
  i = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_5();
  v10 = v8 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v110 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v110 - v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19();
  v117 = v18;
  OUTLINED_FUNCTION_17();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v110 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v110 - v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_19();
  v118 = v26;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v27);
  v29 = &v110 - v28;
  v30 = 0x280282000uLL;
  v123 = sub_2684DEAF0(a1);
  if (v123)
  {
    v111 = v22;
    v112 = v25;
    v113 = v17;
    v31 = a1 & 0xC000000000000001;
    sub_2684DEAFC(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
LABEL_58:
      v32 = MEMORY[0x26D61C170](0, a1);
    }

    else
    {
      v32 = *(a1 + 32);
    }

    v114 = v14;
    if (*(v30 + 2400) != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v33 = __swift_project_value_buffer(v2, qword_28028B348);
    v10 = i + 16;
    v34 = *(i + 16);
    v121 = v33;
    v122 = v34;
    (v34)(v29);

    v35 = sub_2685689E0();
    v36 = sub_268568DD0();

    v37 = os_log_type_enabled(v35, v36);
    v30 = sub_268569000;
    v120 = v32;
    if (v37)
    {
      OUTLINED_FUNCTION_4();
      v115 = i + 16;
      v38 = OUTLINED_FUNCTION_9_5();
      v116 = v2;
      v39 = i;
      v40 = v38;
      v124[0] = v38;
      OUTLINED_FUNCTION_24_2(4.8149e-34);

      v41 = sub_268568B70();
      v30 = v42;
      v43 = sub_2684EABEC(v41, v42, v124);

      *(v10 + 4) = v43;
      _os_log_impl(&dword_2684CA000, v35, v36, "NotificationSRRHelper getMostSalientNotification | most recent notification: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      i = v39;
      v2 = v116;
      OUTLINED_FUNCTION_2();
      v10 = v115;
      OUTLINED_FUNCTION_2();
    }

    v119 = *(i + 8);
    v119(v29, v2);
    v14 = sub_2684F1D50();
    v29 = v44;
    if (v45)
    {
      if (v45 == 1)
      {
        v115 = v10;
        v116 = v2;
        v118 = i;
        for (i = 0; v123 != i; ++i)
        {
          sub_2684DEAFC(i, v31 == 0, a1);
          if (v31)
          {
            v46 = MEMORY[0x26D61C170](i, a1);
            v47 = v46;
          }

          else
          {
            v47 = *(a1 + 8 * i + 32);
          }

          if (__OFADD__(i, 1))
          {
            __break(1u);
            goto LABEL_57;
          }

          v2 = &v110;
          v30 = *(v47 + 40);
          v124[0] = *(v47 + 32);
          v124[1] = v30;
          MEMORY[0x28223BE20](v46);
          *(&v110 - 2) = v124;

          v48 = sub_26855B7B0(sub_2684F3570, (&v110 - 4), v14);

          if (v48)
          {
            v78 = OUTLINED_FUNCTION_27_1();
            sub_2684F3590(v78, v79, 1u);
            v80 = v113;
            v2 = v116;
            v122(v113, v121, v116);

            v81 = sub_2685689E0();
            sub_268568DD0();

            if (OUTLINED_FUNCTION_33_0())
            {
              OUTLINED_FUNCTION_4();
              v82 = OUTLINED_FUNCTION_9_5();
              v124[0] = v82;
              OUTLINED_FUNCTION_24_2(4.8149e-34);

              v83 = sub_268568B70();
              OUTLINED_FUNCTION_32_0(v83, v84);
              OUTLINED_FUNCTION_29_1();

              *(v48 + 4) = v14;
              OUTLINED_FUNCTION_5_7(&dword_2684CA000, v85, v86, "NotificationSRRHelper getMostSalientNotification | most salient notification: %s");
              __swift_destroy_boxed_opaque_existential_0(v82);
              OUTLINED_FUNCTION_13_5();
              OUTLINED_FUNCTION_11_4();
            }

            else
            {
            }

            v99 = v80;
            goto LABEL_55;
          }
        }

        v65 = OUTLINED_FUNCTION_27_1();
        sub_2684F3590(v65, v66, 1u);
        v67 = v114;
        v68 = v116;
        v122(v114, v121, v116);
        v69 = sub_2685689E0();
        v70 = sub_268568DC0();
        if (OUTLINED_FUNCTION_12_1(v70))
        {
          v71 = OUTLINED_FUNCTION_16_0();
          OUTLINED_FUNCTION_18_2(v71);
          OUTLINED_FUNCTION_12_5();
          _os_log_impl(v72, v73, v74, v75, v30, 2u);
          OUTLINED_FUNCTION_13_5();
        }

        v76 = v67;
        v77 = v68;
        goto LABEL_52;
      }

      v60 = v118;
      v61 = OUTLINED_FUNCTION_17_3();
      v62(v61);
      v63 = sub_2685689E0();
      v64 = sub_268568DC0();
      if (OUTLINED_FUNCTION_12_1(v64))
      {
        goto LABEL_50;
      }

LABEL_51:

      v76 = v60;
      v77 = v2;
LABEL_52:
      v119(v76, v77);
      return v120;
    }

    if (v44)
    {
      v58 = 0;
      v30 = a1 & 0xFFFFFFFFFFFFFF8;
      while (v123 != v58)
      {
        if (v31)
        {
          v47 = MEMORY[0x26D61C170](v58, a1);
        }

        else
        {
          if (v58 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_60;
          }

          v47 = *(a1 + 8 * v58 + 32);
        }

        if (__OFADD__(v58, 1))
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v59 = *(v47 + 32) == v14 && v29 == *(v47 + 40);
        if (v59 || (sub_2685691C0() & 1) != 0)
        {
          v87 = OUTLINED_FUNCTION_27_1();
          sub_2684F3590(v87, v88, 0);
          v89 = v112;
          v122(v112, v121, v2);

          v90 = sub_2685689E0();
          sub_268568DD0();

          if (OUTLINED_FUNCTION_33_0())
          {
            OUTLINED_FUNCTION_4();
            v91 = OUTLINED_FUNCTION_9_5();
            v124[0] = v91;
            OUTLINED_FUNCTION_24_2(4.8149e-34);

            v92 = sub_268568B70();
            OUTLINED_FUNCTION_32_0(v92, v93);
            OUTLINED_FUNCTION_29_1();

            *(v10 + 4) = v14;
            OUTLINED_FUNCTION_5_7(&dword_2684CA000, v94, v95, "NotificationSRRHelper getMostSalientNotification | most salient notification: %s");
            __swift_destroy_boxed_opaque_existential_0(v91);
            OUTLINED_FUNCTION_13_5();
            OUTLINED_FUNCTION_11_4();
          }

          else
          {
          }

          v99 = v89;
LABEL_55:
          v119(v99, v2);
          return v47;
        }

        ++v58;
      }

      v100 = OUTLINED_FUNCTION_27_1();
      sub_2684F3590(v100, v101, 0);
      v60 = v111;
      v102 = OUTLINED_FUNCTION_17_3();
      v103(v102);
      v63 = sub_2685689E0();
      v104 = sub_268568DC0();
      if (!OUTLINED_FUNCTION_12_1(v104))
      {
        goto LABEL_51;
      }
    }

    else
    {
      v60 = v117;
      v96 = OUTLINED_FUNCTION_17_3();
      v97(v96);
      v63 = sub_2685689E0();
      v98 = sub_268568DC0();
      if (!OUTLINED_FUNCTION_12_1(v98))
      {
        goto LABEL_51;
      }
    }

LABEL_50:
    v105 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_18_2(v105);
    OUTLINED_FUNCTION_12_5();
    _os_log_impl(v106, v107, v108, v109, v30, 2u);
    OUTLINED_FUNCTION_13_5();
    goto LABEL_51;
  }

  if (qword_280282960 != -1)
  {
LABEL_60:
    OUTLINED_FUNCTION_0_0();
  }

  v49 = __swift_project_value_buffer(v2, qword_28028B348);
  (*(i + 16))(v10, v49, v2);
  v50 = sub_2685689E0();
  v51 = sub_268568DC0();
  if (OUTLINED_FUNCTION_12_1(v51))
  {
    v52 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_18_2(v52);
    OUTLINED_FUNCTION_12_5();
    _os_log_impl(v53, v54, v55, v56, v30, 2u);
    OUTLINED_FUNCTION_13_5();
  }

  (*(i + 8))(v10, v2);
  return 0;
}