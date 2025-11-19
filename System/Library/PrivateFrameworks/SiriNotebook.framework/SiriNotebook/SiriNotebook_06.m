id sub_26817551C(uint64_t a1, char a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7, void *a8, uint64_t a9, char a10, void *a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, unint64_t a19)
{
  v20 = v19;
  v29 = [v20 title];
  v30 = v29;
  if (a3 == 1)
  {
    v70 = 0;
  }

  else if (a3)
  {
    v70 = a3;
  }

  else
  {
    v31 = v29;
    v70 = v30;
  }

  sub_2680F1DAC(a3);

  v32 = sub_26812E98C(v20, &selRef_content);
  v34 = v33;
  if (a5)
  {
    if (a5 == 1)
    {
      v69 = 0;
      v35 = 0;
    }

    else
    {
      v69 = a4;
      v35 = a5;
    }

    v34 = v35;
  }

  else
  {
    v69 = v32;
  }

  sub_268176C38(a4, a5);
  v36 = [v20 itemType];
  v67 = [v20 status];
  v37 = [v20 location];
  v38 = v37;
  if (a8 == 1)
  {
    v66 = 0;
  }

  else if (a8)
  {
    v66 = a8;
  }

  else
  {
    v39 = v37;
    v66 = v38;
  }

  sub_2680F1DAC(a8);

  v40 = [v20 locationSearchType];
  v41 = [v20 dateTime];
  v42 = v41;
  v74 = a6;
  v73 = a7;
  v72 = a1;
  v71 = a2;
  v68 = v36;
  if (a11 == 1)
  {
    v65 = 0;
  }

  else if (a11)
  {
    v65 = a11;
  }

  else
  {
    v43 = v41;
    v65 = v42;
  }

  v44 = a12;
  sub_2680F1DAC(a11);

  v45 = [v20 dateSearchType];
  v46 = [v20 temporalEventTriggerTypes];
  v47 = [v20 taskPriority];
  v48 = sub_26812E98C(v20, &selRef_notebookItemIdentifier);
  v50 = v49;
  v51 = a19;
  if (a19)
  {
    if (a19 == 1)
    {
      v52 = 0;
      v51 = 0;
    }

    else
    {
      v52 = a18;
    }

    v50 = v51;
  }

  else
  {
    v52 = v48;
  }

  if (a14)
  {
    v53 = 0;
  }

  else
  {
    v53 = v47;
  }

  if (a15)
  {
    v54 = v53;
  }

  else
  {
    v54 = a14;
  }

  if (a16)
  {
    v55 = 0;
  }

  else
  {
    v55 = v46;
  }

  if (a17)
  {
    v56 = v55;
  }

  else
  {
    v56 = a16;
  }

  if (a12)
  {
    v57 = 0;
  }

  else
  {
    v57 = v45;
  }

  if (a13)
  {
    v44 = v57;
  }

  v58 = v40;
  if (a9)
  {
    v58 = 0;
  }

  if (a10)
  {
    v59 = v58;
  }

  else
  {
    v59 = a9;
  }

  v60 = v67;
  if (v74)
  {
    v60 = 0;
  }

  if (v73)
  {
    v61 = v60;
  }

  else
  {
    v61 = v74;
  }

  v62 = v68;
  if (v72)
  {
    v62 = 0;
  }

  if (v71)
  {
    v63 = v62;
  }

  else
  {
    v63 = v72;
  }

  objc_allocWithZone(MEMORY[0x277CD4058]);
  sub_268176C38(a18, a19);
  return sub_268133AC0(v70, v69, v34, v63, v61, v66, v59, v65, v44, v56, v54, v52, v50);
}

uint64_t sub_2681758A8(char a1, void *a2)
{
  switch(a1)
  {
    case 1:
      result = sub_2681DF4C8(a2);
      if (!v2)
      {
        v5 = result;
        OUTLINED_FUNCTION_5_9();
        OUTLINED_FUNCTION_0_17();
        v45 = v30;
        v42 = 0;
        goto LABEL_20;
      }

      break;
    case 2:
      result = sub_2681DF800(a2);
      if (!v2)
      {
        v18 = v17;
        OUTLINED_FUNCTION_5_9();
        OUTLINED_FUNCTION_0_17();
        v46 = v19;
        v20 = OUTLINED_FUNCTION_3_7();
        v24 = sub_26817551C(v20, v21, v22, v23, v18, 0, 1, 0, v42, v46, v48[0], v48[1], v49, v50, v51, v52, v53, v54, v55);

        goto LABEL_22;
      }

      break;
    case 3:
      result = sub_2681DF7D4();
      if (!v2)
      {
        OUTLINED_FUNCTION_5_9();
        OUTLINED_FUNCTION_0_17();
        v47 = v25;
        v26 = OUTLINED_FUNCTION_3_7();
        result = sub_26817551C(v26, v27, v28, 0, 0, v29, 0, 0, v42, v47, v48[0], v48[1], v49, v50, v51, v52, v53, v54, v55);
      }

      break;
    case 4:
      result = sub_2681DF79C(a2);
      if (!v2)
      {
        v5 = result;
        OUTLINED_FUNCTION_5_9();
        OUTLINED_FUNCTION_0_17();
        v45 = v6;
        OUTLINED_FUNCTION_3_7();
        OUTLINED_FUNCTION_4_8();
        v14 = v5;
        goto LABEL_21;
      }

      break;
    case 5:
      result = sub_2681DF760(a2);
      if (!v2)
      {
        OUTLINED_FUNCTION_5_9();
        OUTLINED_FUNCTION_0_17();
        v44 = 0;
        v43 = v31;
        goto LABEL_28;
      }

      break;
    case 6:
      result = sub_2681DF614(a2);
      if (!v2)
      {
        v5 = result;
        v54 = 0;
        v55 = 0;
        OUTLINED_FUNCTION_1_14();
        *v48 = v32;
        v45 = v33;
        OUTLINED_FUNCTION_3_7();
LABEL_20:
        OUTLINED_FUNCTION_4_8();
        v14 = 0;
LABEL_21:
        v24 = sub_26817551C(v7, v8, v9, v10, v11, v12, v13, v14, v42, v45, v48[0], v48[1], v49, v50, v51, v52, v53, v54, v55);

LABEL_22:
        result = v24;
      }

      break;
    case 7:
      result = sub_2681DF724(a2);
      if (!v2)
      {
        v54 = 0;
        v55 = 0;
        v53 = 1;
        v52 = 0;
        v51 = 1;
        v50 = 0;
        v49 = 0;
        v48[0] = 0;
        v48[1] = result;
        goto LABEL_27;
      }

      break;
    case 8:
      result = sub_2681DF6F8();
      if (!v2)
      {
        *&v15 = OUTLINED_FUNCTION_5_9();
        v53 = 1;
        v52 = 0;
        v51 = 0;
        v50 = v34;
        goto LABEL_26;
      }

      break;
    case 9:
      result = sub_2681DF6BC(a2);
      if (!v2)
      {
        *&v15 = OUTLINED_FUNCTION_5_9();
        v53 = 0;
        v52 = v16;
        v51 = 1;
        v50 = 0;
LABEL_26:
        v49 = 1;
        *v48 = v15;
LABEL_27:
        v44 = 1;
        v43 = 0;
        goto LABEL_28;
      }

      break;
    default:
      result = sub_2681DF8FC(a2);
      if (!v2)
      {
        OUTLINED_FUNCTION_5_9();
        OUTLINED_FUNCTION_0_17();
        v44 = v4;
        v43 = 0;
LABEL_28:
        OUTLINED_FUNCTION_4_8();
        result = sub_26817551C(v35, v36, v37, v38, v39, v40, v41, 0, v43, v44, v48[0], v48[1], v49, v50, v51, v52, v53, v54, v55);
      }

      break;
  }

  return result;
}

id sub_268175B40(void *a1)
{
  v24 = [a1 itemType];
  if (v24)
  {
    v27 = [a1 itemType];
  }

  else
  {
    v27 = 0;
  }

  v26 = [a1 title];
  v21 = sub_26812E98C(a1, &selRef_content);
  v25 = v2;
  v20 = [a1 status];
  if (v20)
  {
    v22 = [a1 status];
  }

  else
  {
    v22 = 0;
  }

  v23 = [a1 location];
  v3 = [a1 locationSearchType];
  if (v3)
  {
    v18 = [a1 locationSearchType];
  }

  else
  {
    v18 = 0;
  }

  v19 = [a1 dateTime];
  v4 = [a1 dateSearchType];
  if (v4)
  {
    v17 = [a1 dateSearchType];
  }

  else
  {
    v17 = 0;
  }

  v5 = [a1 taskPriority];
  if (v5)
  {
    v16 = [a1 taskPriority];
  }

  else
  {
    v16 = 0;
  }

  v6 = [a1 temporalEventTriggerTypes];
  if (v6)
  {
    v7 = [a1 temporalEventTriggerTypes];
  }

  else
  {
    v7 = 0;
  }

  v8 = v6 == 0;
  v9 = v3 == 0;
  if (v25)
  {
    v10 = v21;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_26812E98C(a1, &selRef_notebookItemIdentifier);
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_26817551C(v27, v24 == 0, v26, v10, v25, v22, v20 == 0, v23, v18, v9, v19, v17, v4 == 0, v16, v5 == 0, v7, v8, v13, v12);

  return v14;
}

uint64_t sub_268175DF4(uint64_t a1)
{
  if (sub_268175F4C(a1))
  {
    return 0;
  }

  if (sub_2681767E0())
  {
    return 0;
  }

  if (sub_2681768A4(&selRef_taskPriority, 0, 1))
  {
    return 0;
  }

  if (sub_268176928(0, 0, 0, 0, 0, 0, 0, 0))
  {
    return 0;
  }

  if (sub_26817682C())
  {
    return 0;
  }

  v3 = [v1 title];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 spokenPhrase];

    v2 = sub_2683CFA78();
  }

  else
  {
    v6 = sub_26812E98C(v1, &selRef_content);
    if (v7)
    {
      return v6;
    }

    else
    {
      v2 = 0;
      sub_2681768A4(&selRef_status, 1, 0);
    }
  }

  return v2;
}

uint64_t sub_268175F4C(uint64_t a1)
{
  v3 = v1;
  v100 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_19_3();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v97 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBB8, &unk_2683D4310);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_19_3();
  v98 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v99 = &v97 - v17;
  v18 = sub_2683CB7A8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v102 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_19_3();
  v97 = v24 - v25;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v97 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v97 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v101 = &v97 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v97 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v97 - v38;
  v40 = [v3 dateTime];
  v103 = v3;
  v104 = v19;
  v105 = v39;
  if (v40)
  {
    v2 = v40;
    v41 = v18;
    v42 = v11;
    v43 = v8;
    v44 = [v40 startDateComponents];

    if (v44)
    {
      sub_2683CAFE8();

      v45 = sub_2683CB0D8();
      v46 = 0;
    }

    else
    {
      v45 = sub_2683CB0D8();
      v46 = 1;
    }

    v51 = v101;
    __swift_storeEnumTagSinglePayload(v37, v46, 1, v45);
    sub_268176BC8(v37, v105);
    v8 = v43;
    v11 = v42;
    v18 = v41;
    v3 = v103;
  }

  else
  {
    sub_2683CB0D8();
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
    v51 = v101;
  }

  v52 = [v3 dateTime];
  v53 = v98;
  if (v52)
  {
    v54 = v52;
    v2 = [v52 endDateComponents];

    v55 = v99;
    if (v2)
    {
      sub_2683CAFE8();

      v56 = 0;
    }

    else
    {
      v56 = 1;
    }

    v61 = sub_2683CB0D8();
    __swift_storeEnumTagSinglePayload(v32, v56, 1, v61);
    sub_268176BC8(v32, v51);
  }

  else
  {
    sub_2683CB0D8();
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
    v55 = v99;
  }

  v62 = v105;
  sub_268176AE4(v105, v29);
  v63 = sub_2683CB0D8();
  OUTLINED_FUNCTION_2_6(v29);
  if (v67)
  {
    sub_26812C310(v29, &qword_28024D4B0, &unk_2683D26E0);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v18);
  }

  else
  {
    sub_2683CB0B8();
    (*(*(v63 - 8) + 8))(v29, v63);
    OUTLINED_FUNCTION_3_5(v55);
    if (!v67)
    {
      v73 = v8;
      v74 = OUTLINED_FUNCTION_11_10();
      v76 = v75(v74, v55, v18);
      goto LABEL_27;
    }
  }

  v68 = v97;
  sub_268176AE4(v51, v97);
  OUTLINED_FUNCTION_2_6(v68);
  if (v67)
  {
    sub_26812C310(v68, &qword_28024D4B0, &unk_2683D26E0);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v18);
    goto LABEL_23;
  }

  sub_2683CB0B8();
  (*(*(v63 - 8) + 8))(v68, v63);
  OUTLINED_FUNCTION_3_5(v53);
  if (v72)
  {
LABEL_23:
    v2 = v102;
    sub_2683CB728();
    OUTLINED_FUNCTION_3_5(v53);
    if (!v67)
    {
      sub_26812C310(v53, &qword_28024DBB8, &unk_2683D4310);
    }

    goto LABEL_25;
  }

  v77 = OUTLINED_FUNCTION_11_10();
  v78(v77, v53, v18);
LABEL_25:
  v73 = v8;
  v76 = OUTLINED_FUNCTION_3_5(v55);
  if (!v67)
  {
    v76 = sub_26812C310(v55, &qword_28024DBB8, &unk_2683D4310);
  }

LABEL_27:
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_6_8();
  v79 = v100;
  *(v80 - 16) = v2;
  *(v80 - 8) = v79;
  v81 = sub_26817509C(sub_268176C4C, v11);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_6_8();
  *(v82 - 16) = v2;
  *(v82 - 8) = v79;
  sub_26817509C(sub_268176B54, v73);
  sub_2683CB528();
  v83 = OUTLINED_FUNCTION_2_6(v11);
  if (v67)
  {
    v83 = OUTLINED_FUNCTION_2_6(v73);
    if (v67)
    {
      sub_26812C310(v51, &qword_28024D4B0, &unk_2683D26E0);
      v84 = v62;
LABEL_42:
      sub_26812C310(v84, &qword_28024D4B0, &unk_2683D26E0);
      v94 = 0;
      goto LABEL_45;
    }
  }

  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_6_8();
  *(v85 - 16) = v2;
  v86 = sub_2683B03A0(sub_268176B84);
  v87 = v86;
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_6_8();
  *(v88 - 16) = v2;
  v89 = sub_2683B03A0(sub_268176C64);
  v90 = v89 == 2 || v87 == 2;
  if (v90 || (v87 & 1) != 0 || (v89 & 1) != 0)
  {
    sub_26812C310(v51, &qword_28024D4B0, &unk_2683D26E0);
    v84 = v105;
    goto LABEL_42;
  }

  v91 = [v103 dateTime];
  v92 = v91;
  if (v91)
  {
    v93 = [v91 allDay];

    if (v93)
    {
      LODWORD(v92) = [v93 BOOLValue];
    }

    else
    {
      LODWORD(v92) = 0;
    }
  }

  v95 = sub_268176928(0, 0, 1, 0, 0, 1, 0, 0);
  sub_26812C310(v51, &qword_28024D4B0, &unk_2683D26E0);
  sub_26812C310(v105, &qword_28024D4B0, &unk_2683D26E0);
  v94 = v92 & v95;
LABEL_45:
  sub_26812C310(v11, &qword_28024DB08, qword_2683D5760);
  sub_26812C310(v73, &qword_28024DB08, qword_2683D5760);
  (*(v104 + 8))(v2, v18);
  return v94;
}

uint64_t sub_2681767E0()
{
  if (![v0 temporalEventTriggerTypes])
  {
    result = [v0 dateTime];
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

uint64_t sub_26817682C()
{
  if ([v0 itemType] == 2)
  {
    v1 = [v0 title];
    if (v1)
    {

      return 1;
    }

    sub_26812E98C(v0, &selRef_content);
    if (v2)
    {

      return 1;
    }
  }

  return 0;
}

uint64_t sub_2681768A4(SEL *a1, char a2, char a3)
{
  if ([v3 *a1] != 2)
  {
    return 0;
  }

  return sub_268176928(0, 0, 0, a2 & 1, 0, 0, a3 & 1, 0);
}

uint64_t sub_268176928(char a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  v17 = [v8 title];
  if (v17)
  {

    if ((a1 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (a1)
  {
    goto LABEL_23;
  }

  sub_26812E98C(v8, &selRef_content);
  if (v18)
  {

    if ((a2 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (a2)
  {
    goto LABEL_23;
  }

  v19 = [v8 dateTime];
  if (v19)
  {

    if ((a3 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (a3)
  {
    goto LABEL_23;
  }

  if (([v8 status] == 0) == (a4 & 1))
  {
    goto LABEL_23;
  }

  v20 = [v8 location];
  if (!v20)
  {
    if ((a5 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_23:
    v23 = 0;
    return v23 & 1;
  }

  if ((a5 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (([v8 temporalEventTriggerTypes] == 0) == (a6 & 1) || (objc_msgSend(v8, sel_taskPriority) == 0) == (a7 & 1))
  {
    goto LABEL_23;
  }

  sub_26812E98C(v8, &selRef_notebookItemIdentifier);
  v22 = v21;
  if (v21)
  {
  }

  v23 = (v22 != 0) ^ a8 ^ 1;
  return v23 & 1;
}

uint64_t sub_268176AE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268176B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 16);
  return sub_26821FE74(a1, v3, a2);
}

uint64_t sub_268176B84@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_2683CB688();
  *a1 = (result & 1) == 0;
  return result;
}

uint64_t sub_268176BC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268176C38(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

id sub_268176D1C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v108 = a5;
  v106 = a3;
  v93 = a2;
  v9 = sub_2683CE7B8();
  v10 = OUTLINED_FUNCTION_0_3(v9);
  v104 = v11;
  v105 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_18();
  v103 = v14;
  OUTLINED_FUNCTION_3_8();
  v101 = sub_2683CE948();
  v15 = OUTLINED_FUNCTION_0_3(v101);
  v99 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_18();
  v102 = v19;
  OUTLINED_FUNCTION_3_8();
  v20 = sub_2683CE898();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_0_18();
  v97 = v22;
  OUTLINED_FUNCTION_3_8();
  v23 = sub_2683CB668();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  OUTLINED_FUNCTION_0_18();
  v95 = v25;
  OUTLINED_FUNCTION_3_8();
  v100 = sub_2683CE878();
  v26 = OUTLINED_FUNCTION_0_3(v100);
  v98 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_18();
  v96 = v30;
  OUTLINED_FUNCTION_3_8();
  v31 = sub_2683CE628();
  v32 = OUTLINED_FUNCTION_0_3(v31);
  v90 = v33;
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v32);
  v38 = &v87 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(a4 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v42 = &v87 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28024C8D8 != -1)
  {
    swift_once();
  }

  v91 = sub_2683CF7E8();
  v43 = __swift_project_value_buffer(v91, qword_28027C940);
  v44 = *(v39 + 16);
  v94 = v6;
  v92 = v44;
  v44(v42, v6, a4);
  v89 = v43;
  v45 = sub_2683CF7C8();
  v46 = sub_2683CFE98();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = OUTLINED_FUNCTION_49();
    v107 = a4;
    v48 = v47;
    v49 = swift_slowAlloc();
    v88 = a1;
    v87 = v49;
    v109[0] = v49;
    *v48 = 136315138;
    sub_2683CE718();
    sub_268177738();
    v50 = sub_2683D0568();
    v52 = v51;
    (*(v90 + 8))(v38, v31);
    (*(v39 + 8))(v42, v107);
    v53 = sub_2681610A0(v50, v52, v109);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_2680EB000, v45, v46, "[PersonIntentNodeRepresenting] Attempting to resolve contact query: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v87);
    a1 = v88;
    OUTLINED_FUNCTION_38();
    a4 = v107;
    OUTLINED_FUNCTION_38();
  }

  else
  {

    (*(v39 + 8))(v42, a4);
  }

  v107 = __swift_project_boxed_opaque_existential_1(v93, v93[3]);
  v54 = sub_2681776CC(a4, a4);
  v55 = *(v54 + 52);
  v56 = *(v39 + 72);
  v57 = (*(v39 + 80) + *(v54 + 48)) & ~*(v39 + 80);
  swift_allocObject();
  v93 = sub_2683CFCC8();
  v92(v58, v94, a4);
  v59 = [a1 identifier];
  if (v59)
  {
    v60 = v59;
    sub_2683CFA78();
  }

  sub_2683CFD28();
  v61 = [a1 typeName];
  sub_2683CFA78();

  sub_2683CB628();
  sub_2683CE888();
  (*(v99 + 104))(v102, *MEMORY[0x277D56148], v101);
  (*(v104 + 104))(v103, *MEMORY[0x277D560D0], v105);
  sub_2683CE868();
  v62 = sub_2683CE488();
  v63 = OUTLINED_FUNCTION_5_10();
  v64(v63);

  if (sub_268229348(v62) == 1 && sub_2683ABE58(v62))
  {
    sub_2683ABE60(0, (v62 & 0xC000000000000001) == 0, v62);
    if ((v62 & 0xC000000000000001) != 0)
    {
      v65 = MEMORY[0x26D616C90](0, v62);
    }

    else
    {
      v65 = *(v62 + 32);
    }

    v66 = v65;

    v67 = v66;
    v68 = sub_2683CF7C8();
    v69 = sub_2683CFE98();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = OUTLINED_FUNCTION_49();
      v71 = swift_slowAlloc();
      v109[0] = v71;
      *v70 = 136315138;
      v72 = v67;
      v73 = [v72 description];
      v74 = sub_2683CFA78();
      v76 = v75;

      v77 = sub_2681610A0(v74, v76, v109);

      *(v70 + 4) = v77;
      OUTLINED_FUNCTION_6_9(&dword_2680EB000, v78, v79, "[PersonIntentNodeRepresenting] Result: %s");
      __swift_destroy_boxed_opaque_existential_0(v71);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    __swift_project_value_buffer(v91, qword_28027C958);

    v80 = sub_2683CF7C8();
    v81 = sub_2683CFE88();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = OUTLINED_FUNCTION_49();
      *v82 = 134217984;
      v83 = sub_268229348(v62);

      *(v82 + 4) = v83;

      OUTLINED_FUNCTION_6_9(&dword_2680EB000, v84, v85, "[PersonIntentNodeRepresenting] Contact resolver created %ld skeletons when exactly 1 is expected.");
      OUTLINED_FUNCTION_38();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return 0;
  }

  return v67;
}

uint64_t sub_2681776CC(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  }

  else
  {

    return MEMORY[0x2821FDC00]();
  }
}

unint64_t sub_268177738()
{
  result = qword_28024DED0;
  if (!qword_28024DED0)
  {
    sub_2683CE628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DED0);
  }

  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_5_10()
{
  v2 = *(*(v1 - 200) + 8);
  result = v0;
  v4 = *(v1 - 184);
  return result;
}

void OUTLINED_FUNCTION_6_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id sub_268177814(void *a1, uint64_t a2, uint64_t a3, id a4, uint64_t a5, uint64_t a6)
{
  sub_268129504(0, &qword_280253310, 0x277CD4220);
  v9 = sub_2683CFC98();

  if (a4)
  {
    sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
    a4 = sub_26835E5F8();
  }

  if (a6)
  {
    v10 = sub_2683CFA68();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:a1 tasks:v9 groupName:a4 createdDateComponents:0 modifiedDateComponents:0 identifier:v10];

  return v11;
}

id sub_268177934(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D360, &qword_2683E65A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  swift_getKeyPath();
  v8 = *(a1 + 16);
  if (v8)
  {
    v15[1] = v1;
    v18 = MEMORY[0x277D84F90];
    sub_2683D0228();
    v9 = *(v4 + 16);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = *(v4 + 72);
    v17 = v9;
    do
    {
      v17(v7, v10, v3);
      swift_getAtKeyPath();
      (*(v4 + 8))(v7, v3);
      sub_2683D01F8();
      v11 = *(v18 + 16);
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
      v10 += v16;
      --v8;
    }

    while (v8);

    v12 = v18;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v13 = sub_268177B14(v12);

  return v13;
}

id sub_268177B14(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = [v2 title];
  v12 = [v2 groupName];
  v13 = [v2 createdDateComponents];
  if (v13)
  {
    v14 = v13;
    sub_2683CAFE8();

    v15 = sub_2683CB0D8();
    v16 = 0;
  }

  else
  {
    v15 = sub_2683CB0D8();
    v16 = 1;
  }

  v17 = 1;
  __swift_storeEnumTagSinglePayload(v10, v16, 1, v15);
  v18 = [v2 modifiedDateComponents];
  if (v18)
  {
    v19 = v18;
    sub_2683CAFE8();

    v17 = 0;
  }

  v20 = sub_2683CB0D8();
  __swift_storeEnumTagSinglePayload(v8, v17, 1, v20);
  v21 = sub_2683BA54C(v2);
  v23 = v22;
  objc_allocWithZone(MEMORY[0x277CD4228]);

  return sub_268177CF0(v11, a1, v12, v10, v8, v21, v23);
}

id sub_268177CF0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  sub_268129504(0, &qword_280253310, 0x277CD4220);
  v14 = sub_2683CFC98();

  v15 = sub_2683CB0D8();
  v16 = 0;
  if (__swift_getEnumTagSinglePayload(a4, 1, v15) != 1)
  {
    v16 = sub_2683CAFD8();
    (*(*(v15 - 8) + 8))(a4, v15);
  }

  if (__swift_getEnumTagSinglePayload(a5, 1, v15) != 1)
  {
    v17 = sub_2683CAFD8();
    (*(*(v15 - 8) + 8))(a5, v15);
    if (a7)
    {
      goto LABEL_5;
    }

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v17 = 0;
  if (!a7)
  {
    goto LABEL_7;
  }

LABEL_5:
  v18 = sub_2683CFA68();

LABEL_8:
  v19 = [v8 initWithTitle:a1 tasks:v14 groupName:a3 createdDateComponents:v16 modifiedDateComponents:v17 identifier:v18];

  return v19;
}

BOOL sub_268177EA4(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  if (!v7)
  {
    if (a2[2].i8[0])
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (v7 == 1)
  {
    if (a2[2].i8[0] != 1)
    {
      return 0;
    }

LABEL_6:
    v8 = a2[1].i64[0];
    v9 = a2[1].i64[1];
    v10 = v3 == a2->i64[0] && v4 == a2->i64[1];
    if (!v10 && (sub_2683D0598() & 1) == 0)
    {
      return 0;
    }

    v11 = v5 == v8 && v6 == v9;
    return v11 || (sub_2683D0598() & 1) != 0;
  }

  if (v5 | v4 | v3 | v6)
  {
    if (a2[2].i8[0] != 2 || a2->i64[0] != 1 || a2[1].i64[0] | a2[1].i64[1] | a2->i64[1])
    {
      return 0;
    }
  }

  else
  {
    if (a2[2].i8[0] != 2)
    {
      return 0;
    }

    v12 = vorrq_s8(*a2, a2[1]);
    if (vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)))
    {
      return 0;
    }
  }

  return 1;
}

void sub_268177FC4(uint64_t a1)
{
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v2 = sub_2683CF7E8();
  __swift_project_value_buffer(v2, qword_28027C958);
  sub_26817A158(a1, v13);
  v3 = sub_2683CF7C8();
  v4 = sub_2683CFE98();
  sub_26817A190(a1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = *(a1 + 16);
    v13[0] = *a1;
    v13[1] = v7;
    v14 = *(a1 + 32);
    sub_26817A158(a1, &v11);
    v8 = sub_2683CFAD8();
    v10 = sub_2681610A0(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_2680EB000, v3, v4, "[AnnounceOrchestratorFlow] Transitioning to state: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x26D617A40](v6, -1, -1);
    MEMORY[0x26D617A40](v5, -1, -1);
  }
}

unint64_t sub_268178140(uint64_t a1, uint64_t a2)
{
  sub_2683D0178();

  MEMORY[0x26D616690](a1, a2);
  MEMORY[0x26D616690](0xD000000000000010, 0x80000002683FD7C0);
  v4 = OUTLINED_FUNCTION_0_0();
  MEMORY[0x26D616690](v4);
  MEMORY[0x26D616690](10530, 0xE200000000000000);
  return 0xD000000000000016;
}

uint64_t sub_268178210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_2683D0598(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_2683D0598();
    }
  }

  return result;
}

uint64_t sub_2681782B0()
{
  sub_2683CFB48();

  return sub_2683CFB48();
}

uint64_t sub_268178300()
{
  sub_2683D0698();
  sub_2683CFB48();
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t sub_268178370()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_268178300();
}

uint64_t sub_26817837C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_2681782B0();
}

unint64_t sub_268178388()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_268178140(*v0, v0[1]);
}

uint64_t sub_2681783B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2683CCBA8();
  v5 = OUTLINED_FUNCTION_0_3(v4);
  v59 = v6;
  v60 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2683CCC18();
  v12 = OUTLINED_FUNCTION_0_3(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2683CCBD8();
  v20 = OUTLINED_FUNCTION_0_3(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v20);
  v27 = (&v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v29 = &v58 - v28;
  sub_2683CCB88();
  if ((*(v14 + 88))(v18, v11) == *MEMORY[0x277D5C150])
  {
    (*(v14 + 96))(v18, v11);
    (*(v22 + 32))(v29, v18, v19);
    (*(v22 + 16))(v27, v29, v19);
    sub_26834C7E0(v27, &v61);
    v30 = *(&v61 + 1);
    if (*(&v61 + 1))
    {
      v60 = v64;
      v32 = *(&v62 + 1);
      v31 = v63;
      v33 = v61;

      sub_26817A2A4(v33, v30);
      *&v61 = v32;
      *(&v61 + 1) = v31;
      *&v62 = v33;
      *(&v62 + 1) = v30;
      LOBYTE(v63) = 0;
      sub_268177FC4(&v61);
      (*(v22 + 8))(v29, v19);
      v34 = *(v2 + 176);
      v35 = *(v2 + 184);
      v36 = *(v2 + 192);
      v37 = *(v2 + 200);
      v38 = v62;
      *(v2 + 176) = v61;
      *(v2 + 192) = v38;
      v39 = *(v2 + 208);
      *(v2 + 208) = v63;
      sub_26817A10C(v34, v35, v36, v37, v39);
      return 1;
    }

    (*(v22 + 8))(v29, v19);
  }

  else
  {
    (*(v14 + 8))(v18, v11);
  }

  v42 = v59;
  v41 = v60;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v43 = sub_2683CF7E8();
  __swift_project_value_buffer(v43, qword_28027C958);
  (*(v42 + 16))(v10, a1, v41);
  v44 = sub_2683CF7C8();
  v45 = sub_2683CFE98();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = OUTLINED_FUNCTION_49();
    v47 = OUTLINED_FUNCTION_53();
    *&v61 = v47;
    *v46 = 136446210;
    sub_26817A25C(&qword_28024DEE8, 255, MEMORY[0x277D5C118]);
    v48 = sub_2683D0568();
    v50 = v49;
    v51 = *(v42 + 8);
    v52 = OUTLINED_FUNCTION_0_0();
    v53(v52);
    v54 = sub_2681610A0(v48, v50, &v61);

    *(v46 + 4) = v54;
    _os_log_impl(&dword_2680EB000, v44, v45, "[AnnounceOrchestratorFlow] Ignoring non-announce-DI input: %{public}s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v55 = *(v42 + 8);
    v56 = OUTLINED_FUNCTION_0_0();
    v57(v56);
  }

  return 0;
}

uint64_t sub_268178858(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26817886C()
{
  v46 = v0;
  v1 = v0[9];
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  v0[10] = v3;
  v5 = *(v1 + 192);
  v4 = *(v1 + 200);
  v0[11] = v4;
  if (*(v1 + 208))
  {
    if (*(v1 + 208) == 1)
    {
      v6 = qword_28024C8E0;

      if (v6 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v7 = sub_2683CF7E8();
      __swift_project_value_buffer(v7, qword_28027C958);
      v8 = sub_2683CF7C8();
      v9 = sub_2683CFE98();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_2680EB000, v8, v9, "[AnnounceOrchestratorFlow] Finished announcing reminder, searching for more to announce.", v10, 2u);
        OUTLINED_FUNCTION_38();
      }

      v11 = swift_task_alloc();
      v0[14] = v11;
      *v11 = v0;
      OUTLINED_FUNCTION_6_10(v11);
      OUTLINED_FUNCTION_12_0();

      return sub_268179AB8(v12, v13, v14, v15);
    }

    else
    {
      if (v5 | v3 | v2 | v4)
      {
        v25 = *(v1 + 240);
        v24 = *(v1 + 248);
        if (v25 < 1 || (v24 - 5) >= 0xFFFFFFFFFFFFFFFELL)
        {
          if (qword_28024C8E0 != -1)
          {
            OUTLINED_FUNCTION_0_5();
          }

          v27 = sub_2683CF7E8();
          __swift_project_value_buffer(v27, qword_28027C958);
          v28 = sub_2683CF7C8();
          v29 = sub_2683CFE98();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = OUTLINED_FUNCTION_53();
            v45 = v31;
            *v30 = 134218242;
            *(v30 + 4) = v25;
            *(v30 + 12) = 2080;
            v0[7] = v24;
            type metadata accessor for AFSiriAnnouncementPlatform(0);
            v32 = sub_2683CFAD8();
            v34 = sub_2681610A0(v32, v33, &v45);

            *(v30 + 14) = v34;
            _os_log_impl(&dword_2680EB000, v28, v29, "[AnnounceOrchestratorFlow] Skipping FollowUpHintFlow. Announced Tasks: %ld, Platform: %s", v30, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v31);
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_38();
          }

          v35 = v0[8];
          sub_2683CC3F8();
        }

        else
        {
          v41 = v0[8];
          v42 = *(v1 + 168);
          __swift_project_boxed_opaque_existential_1((v1 + 136), *(v1 + 160));
          sub_2683CC3D8();
        }

        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_12_0();

        __asm { BRAA            X1, X16 }
      }

      v36 = swift_task_alloc();
      v0[13] = v36;
      *v36 = v0;
      v36[1] = sub_268178E08;
      v37 = v0[8];
      v38 = v0[9];
      OUTLINED_FUNCTION_12_0();

      return sub_26817971C(v39);
    }
  }

  else
  {

    v18 = swift_task_alloc();
    v0[12] = v18;
    *v18 = v0;
    OUTLINED_FUNCTION_6_10(v18);
    OUTLINED_FUNCTION_12_0();

    return sub_268179074(v19, v20, v21, v22);
  }
}

uint64_t sub_268178C40()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1[12];
  v3 = v1[11];
  v4 = v1[10];
  v5 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_268178D5C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 48) = 2;
  sub_268177FC4(v0 + 16);
  v3 = OUTLINED_FUNCTION_11_11();
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  *(v2 + 176) = *(v0 + 16);
  *(v2 + 192) = v5;
  v6 = *(v2 + 208);
  *(v2 + 208) = v4;
  sub_26817A10C(v3, v7, v8, v9, v6);
  sub_2683CC388();
  OUTLINED_FUNCTION_40();

  return v10();
}

uint64_t sub_268178E08()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5();
}

uint64_t sub_268178EE8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1[14];
  v3 = v1[11];
  v4 = v1[10];
  v5 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_268179004()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 64);
  sub_2683CC388();
  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_268179074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268179090()
{
  v31 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  swift_beginAccess();
  v6 = *(v2 + 216);

  LOBYTE(v1) = sub_2681F70AC(v5, v4, v3, v1, v6);

  if (v1)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v7 = v0[14];
    v8 = v0[12];
    v9 = sub_2683CF7E8();
    __swift_project_value_buffer(v9, qword_28027C958);

    v10 = sub_2683CF7C8();
    v11 = sub_2683CFE98();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = v0[13];
      v12 = v0[14];
      v14 = OUTLINED_FUNCTION_49();
      v15 = OUTLINED_FUNCTION_53();
      v30 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_2681610A0(v13, v12, &v30);
      OUTLINED_FUNCTION_13_8(&dword_2680EB000, v16, v17, "[AnnounceOrchestratorFlow] Reminder id %{public}s has already been processed. Skipping...");
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    OUTLINED_FUNCTION_40();

    return v18();
  }

  else
  {
    v20 = v0[14];
    v21 = v0[15];
    v23 = v0[12];
    v22 = v0[13];
    v24 = v0[11];
    swift_beginAccess();

    sub_268159390(&v30, v24, v23, v22, v20);
    swift_endAccess();

    __swift_project_boxed_opaque_existential_1((v21 + 16), *(v21 + 40));
    v25 = swift_task_alloc();
    v0[16] = v25;
    *v25 = v0;
    v25[1] = sub_268179328;
    v27 = v0[13];
    v26 = v0[14];
    v28 = v0[11];
    v29 = v0[12];

    return sub_268366990(v27, v26, v28, v29);
  }
}

uint64_t sub_268179328()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *(v1 + 128);
  v9 = *v0;
  *(v2 + 136) = v4;

  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_268179418()
{
  v37 = v0;
  v1 = v0[17];
  if (v1)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v2 = sub_2683CF7E8();
    __swift_project_value_buffer(v2, qword_28027C958);
    v3 = v1;
    v4 = sub_2683CF7C8();
    v5 = sub_2683CFE98();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_49();
      v7 = OUTLINED_FUNCTION_53();
      v36 = v7;
      *v6 = 136315138;
      v8 = v3;
      v9 = [v8 description];
      v10 = sub_2683CFA78();
      v12 = v11;

      v13 = sub_2681610A0(v10, v12, &v36);

      *(v6 + 4) = v13;
      _os_log_impl(&dword_2680EB000, v4, v5, "[AnnounceOrchestratorFlow] Enqueueing task to be announced: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    v14 = v0[14];
    v15 = v0[15];
    v16 = v0[12];
    v17 = v0[13];
    v18 = v0[11];
    swift_beginAccess();

    v19 = v3;
    sub_26817A1C0();
    v20 = *(*(v15 + 224) + 16);
    sub_26817A20C(v20);
    v21 = *(v15 + 224);
    *(v21 + 16) = v20 + 1;
    v22 = (v21 + 40 * v20);
    v22[4] = v18;
    v22[5] = v16;
    v22[6] = v17;
    v22[7] = v14;
    v22[8] = v19;
    *(v15 + 224) = v21;
    swift_endAccess();
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v23 = v0[14];
    v24 = v0[12];
    v25 = sub_2683CF7E8();
    __swift_project_value_buffer(v25, qword_28027C958);

    v26 = sub_2683CF7C8();
    v27 = sub_2683CFE78();

    if (os_log_type_enabled(v26, v27))
    {
      v29 = v0[13];
      v28 = v0[14];
      v30 = OUTLINED_FUNCTION_49();
      v31 = OUTLINED_FUNCTION_53();
      v36 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_2681610A0(v29, v28, &v36);
      OUTLINED_FUNCTION_13_8(&dword_2680EB000, v32, v33, "[AnnounceOrchestratorFlow] unable to fetch reminder with id %{public}s. Skipping...");
      __swift_destroy_boxed_opaque_existential_0(v31);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }
  }

  OUTLINED_FUNCTION_40();

  return v34();
}

uint64_t sub_26817971C(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268179730()
{
  v22 = v0;
  v1 = *(v0 + 112);
  swift_beginAccess();
  if (*(*(v1 + 224) + 16))
  {
    v2 = *(v0 + 104);
    v3 = *(v0 + 112);
    swift_beginAccess();
    sub_26822291C(v21);
    v4 = v21[0];
    v5 = v21[1];
    v6 = v21[2];
    v7 = v21[3];
    v8 = v21[4];
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1(v3 + 12, v3[15]);
    sub_26813D8DC(v8, v4, v5, v3[29]);
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v4;
    v9[4] = v5;
    v9[5] = v6;
    v9[6] = v7;

    sub_2683CC3A8();
  }

  else
  {
    v10 = *(v0 + 104);
    v11 = *(v0 + 112);
    *(v0 + 16) = 1;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    *(v0 + 48) = 2;
    sub_268177FC4(v0 + 16);
    v12 = OUTLINED_FUNCTION_11_11();
    v13 = *(v0 + 48);
    v14 = *(v0 + 32);
    *(v11 + 176) = *(v0 + 16);
    *(v11 + 192) = v14;
    v15 = *(v11 + 208);
    *(v11 + 208) = v13;
    sub_26817A10C(v12, v16, v17, v18, v15);
    sub_2683CC388();
  }

  OUTLINED_FUNCTION_40();

  return v19();
}

_BYTE *sub_2681798D8(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*result == 1)
  {
    v7 = *(a2 + 240);
    v8 = __OFADD__(v7, 1);
    v9 = v7 + 1;
    if (!v8)
    {
      *(a2 + 240) = v9;
      v10 = *(a2 + 232);
      v8 = __OFADD__(v10, 1);
      v11 = v10 + 1;
      if (v8)
      {
        __break(1u);
      }

      else
      {
        *(a2 + 232) = v11;
        *&v28 = a3;
        *(&v28 + 1) = a4;
        *&v29 = a5;
        *(&v29 + 1) = a6;
        v30 = 1;
        sub_268177FC4(&v28);
        v12 = *(a2 + 176);
        v13 = *(a2 + 184);
        v14 = *(a2 + 192);
        v15 = *(a2 + 200);
        v16 = v29;
        *(a2 + 176) = v28;
        *(a2 + 192) = v16;
        v17 = *(a2 + 208);
        *(a2 + 208) = v30;
        sub_26817A10C(v12, v13, v14, v15, v17);
      }

      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (qword_28024C8E0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v18 = sub_2683CF7E8();
  __swift_project_value_buffer(v18, qword_28027C958);
  v19 = sub_2683CF7C8();
  v20 = sub_2683CFE98();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2680EB000, v19, v20, "[AnnounceOrchestratorFlow] Announce child flow failed. Stopping orchestrator flow.", v21, 2u);
    MEMORY[0x26D617A40](v21, -1, -1);
  }

  v28 = 1uLL;
  v29 = 0uLL;
  v30 = 2;
  sub_268177FC4(&v28);
  v22 = *(a2 + 176);
  v23 = *(a2 + 184);
  v24 = *(a2 + 192);
  v25 = *(a2 + 200);
  v26 = v29;
  *(a2 + 176) = v28;
  *(a2 + 192) = v26;
  v27 = *(a2 + 208);
  *(a2 + 208) = v30;

  return sub_26817A10C(v22, v23, v24, v25, v27);
}

uint64_t sub_268179AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268179AD4()
{
  v1 = v0[13];
  __swift_project_boxed_opaque_existential_1((v0[16] + 56), *(v0[16] + 80));

  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_268179B9C;
  v3 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];

  return sub_2683BDC64(v6, v5, v3, v4);
}

uint64_t sub_268179B9C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *(v1 + 136);
  v9 = *v0;
  *(v2 + 144) = v4;

  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_268179C8C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  if (v1[2])
  {
    v3 = v0 + 16;
    v4 = *(v0 + 96);
    v6 = v1[4];
    v5 = v1[5];

    v7 = 0;
    *(v0 + 16) = v4;
    *(v0 + 24) = v2;
    v8 = (v0 + 48);
    *(v0 + 32) = v6;
    *(v0 + 40) = v5;
  }

  else
  {
    v3 = v0 + 56;
    v9 = *(v0 + 104);

    v8 = (v0 + 88);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    v7 = 2;
  }

  v10 = *(v0 + 128);
  *v8 = v7;
  sub_268177FC4(v3);
  v11 = OUTLINED_FUNCTION_11_11();
  v12 = *(v3 + 32);
  v13 = *(v3 + 16);
  *(v10 + 176) = *v3;
  *(v10 + 192) = v13;
  v14 = *(v10 + 208);
  *(v10 + 208) = v12;
  sub_26817A10C(v11, v15, v16, v17, v14);
  OUTLINED_FUNCTION_40();

  return v18();
}

uint64_t sub_268179D80()
{
  type metadata accessor for AnnounceRemindersOrchestratorFlow();
  sub_26817A25C(&qword_28024DEE0, v0, type metadata accessor for AnnounceRemindersOrchestratorFlow);
  OUTLINED_FUNCTION_0_0();
  return sub_2683CBF48();
}

uint64_t sub_268179E08()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  v1 = OUTLINED_FUNCTION_11_11();
  sub_26817A10C(v1, v2, v3, v4, *(v0 + 208));
  v5 = *(v0 + 216);

  v6 = *(v0 + 224);

  return v0;
}

uint64_t sub_268179E5C()
{
  sub_268179E08();

  return MEMORY[0x2821FE8D8](v0, 256, 7);
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook33AnnounceRemindersOrchestratorFlowC5StateO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_268179EE0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
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

uint64_t sub_268179F20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_268179F68(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_268179F98()
{
  result = qword_28024DED8;
  if (!qword_28024DED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DED8);
  }

  return result;
}

uint64_t sub_26817A038(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268133EC8;

  return sub_268178858(a1);
}

uint64_t sub_26817A0D4()
{
  type metadata accessor for AnnounceRemindersOrchestratorFlow();

  return sub_2683CBF88();
}

uint64_t sub_26817A10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  return result;
}

void sub_26817A1C0()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    sub_2682E5054();
    *v0 = v4;
  }
}

void sub_26817A20C(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    sub_2682E5054();
    *v1 = v2;
  }
}

uint64_t sub_26817A25C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_26817A2A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_10(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 72);
  return v2;
}

uint64_t OUTLINED_FUNCTION_11_11()
{
  result = v0[22];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[25];
  return result;
}

void OUTLINED_FUNCTION_13_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_26817A460(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_79();
  a2(v5, a1);
  return sub_2683D06D8();
}

uint64_t sub_26817A514()
{
  v0 = OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_2_10(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t sub_26817A604(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_79();
  a2(a1);
  OUTLINED_FUNCTION_7_7();

  return sub_2683D06D8();
}

uint64_t sub_26817A684()
{
  v0 = OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_2_10(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t sub_26817A86C()
{
  v0 = OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_2_10(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t sub_26817A8E0()
{
  OUTLINED_FUNCTION_79();
  sub_26817AE98();
  return sub_2683D06D8();
}

uint64_t sub_26817A920()
{
  v0 = OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_2_10(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_33_5();
  return sub_2683D06D8();
}

uint64_t sub_26817A96C()
{
  v0 = OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_2_10(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_23_6();
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t sub_26817A9B0()
{
  v0 = OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_2_10(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_33_5();
  return sub_2683D06D8();
}

uint64_t sub_26817A9FC()
{
  v0 = OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_2_10(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t sub_26817AA94()
{
  sub_2683CFB48();
}

uint64_t sub_26817AB50()
{
  sub_2683CFB48();
}

uint64_t sub_26817AC44()
{
  OUTLINED_FUNCTION_29_5();
  sub_2683CFB48();
}

uint64_t sub_26817ACA4()
{
  OUTLINED_FUNCTION_15_8();
  sub_2683CFB48();
}

uint64_t sub_26817ADA4()
{
  sub_2683CFB48();
}

uint64_t sub_26817AE24()
{
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_14_7();
  sub_2683CFB48();
}

uint64_t sub_26817AE98()
{
  OUTLINED_FUNCTION_9_8();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_32_6();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817AFB0()
{
  OUTLINED_FUNCTION_9_8();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_17_6();
      break;
    case 3:
      OUTLINED_FUNCTION_32_6();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817B06C()
{
  OUTLINED_FUNCTION_9_8();
  switch(v0)
  {
    case 3:
      OUTLINED_FUNCTION_32_6();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817B12C()
{
  OUTLINED_FUNCTION_14_7();
  sub_2683CFB48();
}

uint64_t sub_26817B18C()
{
  OUTLINED_FUNCTION_15_8();
  sub_2683CFB48();
}

uint64_t sub_26817B278()
{
  OUTLINED_FUNCTION_15_8();
  sub_2683CFB48();
}

uint64_t sub_26817B394()
{
  OUTLINED_FUNCTION_9_8();
  sub_2683CFB48();
}

uint64_t sub_26817B43C()
{
  sub_2683CFB48();
}

uint64_t sub_26817B4B4()
{
  sub_2683CFB48();
}

uint64_t sub_26817B534()
{
  sub_2683CFB48();
}

uint64_t sub_26817B5B8()
{
  OUTLINED_FUNCTION_15_8();
  sub_2683CFB48();
}

uint64_t sub_26817B674()
{
  OUTLINED_FUNCTION_29_5();
  sub_2683CFB48();
}

uint64_t sub_26817B6D4()
{
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_14_7();
  sub_2683CFB48();
}

uint64_t sub_26817B748()
{
  OUTLINED_FUNCTION_9_8();
  switch(v0)
  {
    case 8:
      OUTLINED_FUNCTION_32_6();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817B8A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_22_4();
}

uint64_t sub_26817B90C()
{
  sub_2683CFB48();
}

uint64_t sub_26817B974()
{
  OUTLINED_FUNCTION_9_8();
  sub_2683CFB48();
}

uint64_t sub_26817BA60()
{
  sub_2683CFB48();
}

uint64_t sub_26817BABC()
{
  sub_2683CFB48();
}

uint64_t sub_26817BB34(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_17_6();
      OUTLINED_FUNCTION_5_11();
      break;
    case 2:
    case 3:
      break;
    default:
      OUTLINED_FUNCTION_5_11();
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817BC18()
{
  OUTLINED_FUNCTION_11_12();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_11_12();
      break;
    case 2:
    case 5:
      OUTLINED_FUNCTION_23_6();
      goto LABEL_4;
    case 4:
LABEL_4:
      OUTLINED_FUNCTION_5_11();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817BD04()
{
  OUTLINED_FUNCTION_12_6();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_3_9();
      break;
    case 2:
      OUTLINED_FUNCTION_30_3();
      break;
    case 6:
      OUTLINED_FUNCTION_4_9();
      break;
    case 7:
      OUTLINED_FUNCTION_5_11();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817BE00()
{
  OUTLINED_FUNCTION_15_8();
  sub_2683CFB48();
}

uint64_t sub_26817BEA8()
{
  OUTLINED_FUNCTION_28_5();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_30_3();
      break;
    case 2:
      OUTLINED_FUNCTION_25_7();
      break;
    case 4:
      goto LABEL_5;
    case 5:
    case 6:
      OUTLINED_FUNCTION_23_6();
LABEL_5:
      OUTLINED_FUNCTION_5_11();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817BF88()
{
  OUTLINED_FUNCTION_3_9();
  switch(v0)
  {
    case 1:
    case 2:
    case 5:
    case 6:
      OUTLINED_FUNCTION_24_6();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817C0D8()
{
  OUTLINED_FUNCTION_3_9();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_16_10();
      break;
    case 2:
      OUTLINED_FUNCTION_26_5();
      break;
    case 3:
      OUTLINED_FUNCTION_12_6();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817C168()
{
  sub_2683CFB48();
}

uint64_t sub_26817C1DC(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_3_9();
  }

  sub_2683CFB48();
}

uint64_t sub_26817C25C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
      break;
    case 4:
      OUTLINED_FUNCTION_28_5();
      break;
    default:
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_17_6();
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817C3E8()
{
  sub_2683CFB48();
}

uint64_t sub_26817C454(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_4_9();
  }

  sub_2683CFB48();
}

uint64_t sub_26817C4D8()
{
  sub_2683CFB48();
}

uint64_t sub_26817C560()
{
  OUTLINED_FUNCTION_3_9();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_30_3();
      break;
    case 3:
      OUTLINED_FUNCTION_11_12();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817C654(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_30_3();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817C724(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 8:
      OUTLINED_FUNCTION_17_6();
      OUTLINED_FUNCTION_5_11();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817C88C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  OUTLINED_FUNCTION_22_4();
}

uint64_t sub_26817C8D0()
{
  sub_2683CFB48();
}

uint64_t sub_26817CA08(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 6:
      OUTLINED_FUNCTION_26_5();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817CAD8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      OUTLINED_FUNCTION_12_6();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817CBF0()
{
  sub_2683CFB48();
}

uint64_t sub_26817CC64(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_3_9();
      break;
    case 2:
      OUTLINED_FUNCTION_16_10();
      break;
    case 3:
      OUTLINED_FUNCTION_25_7();
      break;
    case 4:
      OUTLINED_FUNCTION_4_9();
      break;
    case 5:
    case 9:
      OUTLINED_FUNCTION_5_11();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817CD98()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_18_7();

  return sub_2683D06D8();
}

uint64_t sub_26817CEE8()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_18_7();

  return sub_2683D06D8();
}

uint64_t sub_26817CF5C()
{
  OUTLINED_FUNCTION_8_9();
  if (!v0)
  {
    OUTLINED_FUNCTION_4_9();
  }

  OUTLINED_FUNCTION_18_7();

  return sub_2683D06D8();
}

uint64_t sub_26817CFE4()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_18_7();

  return sub_2683D06D8();
}

uint64_t sub_26817D06C()
{
  OUTLINED_FUNCTION_8_9();
  if (!v0)
  {
    OUTLINED_FUNCTION_3_9();
  }

  OUTLINED_FUNCTION_18_7();

  return sub_2683D06D8();
}

uint64_t sub_26817D0F0()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_18_7();

  return sub_2683D06D8();
}

uint64_t sub_26817D168()
{
  v0 = sub_2683D0698();
  OUTLINED_FUNCTION_2_10(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t sub_26817D1CC()
{
  OUTLINED_FUNCTION_19_7();
  v0(v3, v1);
  return sub_2683D06D8();
}

uint64_t sub_26817D29C()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_18_7();

  return sub_2683D06D8();
}

uint64_t sub_26817D318()
{
  v0 = OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_6_11(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_2683CFB48();

  return sub_2683D06D8();
}

uint64_t sub_26817D394()
{
  v1 = OUTLINED_FUNCTION_8_9();
  if (v0)
  {
    v8 = 0xD00000000000001BLL;
  }

  else
  {
    v8 = 0xD00000000000001FLL;
  }

  OUTLINED_FUNCTION_6_11(v1, v8, v2, v3, v4, v5, v6, v7, v10, v11);
  sub_2683CFB48();

  return sub_2683D06D8();
}

uint64_t sub_26817D404()
{
  v0 = sub_2683D0698();
  OUTLINED_FUNCTION_2_10(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t sub_26817D4C8()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_6_11(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_2683CFB48();

  return sub_2683D06D8();
}

uint64_t sub_26817D52C()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_29_5();
  if (v0)
  {
    v8 = 0xD00000000000001DLL;
  }

  else
  {
    v8 = 0xD00000000000001CLL;
  }

  OUTLINED_FUNCTION_6_11(v1, v8, v2, v3, v4, v5, v6, v7, v10, v11);
  sub_2683CFB48();

  return sub_2683D06D8();
}

uint64_t sub_26817D5AC(uint64_t a1, char a2)
{
  v3 = sub_2683D0698();
  if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0xD000000000000024;
    }

    else
    {
      v10 = 0xD00000000000001FLL;
    }
  }

  else
  {
    v10 = 0xD000000000000021;
  }

  OUTLINED_FUNCTION_6_11(v3, v10, v4, v5, v6, v7, v8, v9, v12, v13);
  sub_2683CFB48();

  return sub_2683D06D8();
}

uint64_t sub_26817D640(uint64_t a1, char a2)
{
  v3 = sub_2683D0698();
  if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0xD000000000000022;
    }

    else
    {
      v10 = 0xD000000000000021;
    }
  }

  else
  {
    v10 = 0xD000000000000024;
  }

  OUTLINED_FUNCTION_6_11(v3, v10, v4, v5, v6, v7, v8, v9, v12, v13);
  sub_2683CFB48();

  return sub_2683D06D8();
}

uint64_t sub_26817D6D0()
{
  v0 = OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_6_11(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_2683CFB48();

  return sub_2683D06D8();
}

uint64_t sub_26817D798()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_6_11(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_2683CFB48();

  return sub_2683D06D8();
}

uint64_t sub_26817D830()
{
  v0 = sub_2683D0698();
  OUTLINED_FUNCTION_2_10(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t sub_26817D894()
{
  OUTLINED_FUNCTION_8_9();
  sub_26817AE98();
  return sub_2683D06D8();
}

uint64_t sub_26817D8D0()
{
  v0 = sub_2683D0698();
  OUTLINED_FUNCTION_2_10(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_33_5();
  return sub_2683D06D8();
}

uint64_t sub_26817D914()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_6_11(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_2683CFB48();

  return sub_2683D06D8();
}

uint64_t sub_26817D978()
{
  v0 = sub_2683D0698();
  OUTLINED_FUNCTION_2_10(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_23_6();
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t sub_26817D9C0()
{
  v0 = sub_2683D0698();
  OUTLINED_FUNCTION_2_10(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_33_5();
  return sub_2683D06D8();
}

uint64_t sub_26817DA04()
{
  v1 = OUTLINED_FUNCTION_8_9();
  if (v0)
  {
    v8 = 0xD000000000000017;
  }

  else
  {
    v8 = 0xD00000000000001BLL;
  }

  OUTLINED_FUNCTION_6_11(v1, v8, v2, v3, v4, v5, v6, v7, v10, v11);
  sub_2683CFB48();

  return sub_2683D06D8();
}

uint64_t sub_26817DA74()
{
  v0 = sub_2683D0698();
  OUTLINED_FUNCTION_2_10(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t sub_26817DAD8()
{
  v1 = OUTLINED_FUNCTION_19_7();
  v0(v1);
  OUTLINED_FUNCTION_7_7();

  return sub_2683D06D8();
}

uint64_t sub_26817DB3C()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_29_5();
  if (v0)
  {
    v8 = 0xD00000000000001ALL;
  }

  else
  {
    v8 = 0xD00000000000001BLL;
  }

  OUTLINED_FUNCTION_6_11(v1, v8, v2, v3, v4, v5, v6, v7, v10, v11);
  sub_2683CFB48();

  return sub_2683D06D8();
}

uint64_t sub_26817DBD4()
{
  OUTLINED_FUNCTION_19_7();
  v0(v1);
  OUTLINED_FUNCTION_7_7();

  return sub_2683D06D8();
}

uint64_t sub_26817DC1C()
{
  sub_2683D0698();
  sub_2683CFB48();

  return sub_2683D06D8();
}

void sub_26817DCD4()
{
  v1 = v0;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v2 = sub_2683CF7E8();
  __swift_project_value_buffer(v2, qword_28027C958);

  oslog = sub_2683CF7C8();
  v3 = sub_2683CFE68();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = 0xEF776F6C466E6961;
    v7 = 0x4D65747563657865;
    if (*(v1 + 48) != 1)
    {
      v7 = 0x6574656C706D6F63;
      v6 = 0xE800000000000000;
    }

    if (*(v1 + 48))
    {
      v8 = v7;
    }

    else
    {
      v8 = 0x5065747563657865;
    }

    if (*(v1 + 48))
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xEF73776F6C466572;
    }

    v10 = sub_2681610A0(v8, v9, &v12);

    *(v4 + 4) = v10;
    _os_log_impl(&dword_2680EB000, oslog, v3, "[RootFlow] transitioned to state %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x26D617A40](v5, -1, -1);
    MEMORY[0x26D617A40](v4, -1, -1);
  }
}

uint64_t sub_26817DEA0(char a1)
{
  if (!a1)
  {
    return 0x5065747563657865;
  }

  if (a1 == 1)
  {
    return 0x4D65747563657865;
  }

  return 0x6574656C706D6F63;
}

uint64_t sub_26817DF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 48) = 0;
  v8 = qword_28024C8E0;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v9 = sub_2683CF7E8();
  __swift_project_value_buffer(v9, qword_28027C958);

  v10 = sub_2683CF7C8();
  v11 = sub_2683CFE98();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF18, &unk_2683D5B80);
    v14 = MEMORY[0x26D6167A0](a1, v13);
    v16 = v15;

    v17 = sub_2681610A0(v14, v16, &v24);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v18 = sub_2683CBC28();
    v19 = MEMORY[0x26D6167A0](a2, v18);
    v21 = v20;

    v22 = sub_2681610A0(v19, v21, &v24);

    *(v12 + 14) = v22;
    _os_log_impl(&dword_2680EB000, v10, v11, "[RootFlow] \n<preconditionFlows: %s \n prerequisiteFlows: %s>", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  return v5;
}

uint64_t sub_26817E138(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_26817E158, 0, 0);
}

uint64_t sub_26817E158()
{
  v1 = v0[6];
  if (*(v1 + 48))
  {
    if (*(v1 + 48) == 1)
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v2 = sub_2683CF7E8();
      __swift_project_value_buffer(v2, qword_28027C958);
      v3 = sub_2683CF7C8();
      v4 = sub_2683CFE98();
      if (os_log_type_enabled(v3, v4))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_20_8(&dword_2680EB000, v5, v4, "[RootFlow] Creating the main flow and finishing this flow as complete with it.");
        OUTLINED_FUNCTION_38();
      }

      v6 = v0[6];

      v7 = *(v6 + 40);
      v21 = (*(v6 + 32) + **(v6 + 32));
      v8 = *(*(v6 + 32) + 4);
      v9 = swift_task_alloc();
      v0[7] = v9;
      *v9 = v0;
      v9[1] = sub_26817E4CC;

      return v21();
    }

    v19 = v0[5];
    sub_2683CC3F8();
  }

  else
  {
    v22 = v0[5];
    v11 = *(v1 + 16);
    v12 = sub_2683CBC78();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();

    v15 = sub_2683CBC68();
    v16 = *(v1 + 24);
    type metadata accessor for EachFlow();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v0[2] = v17;
    v0[3] = v15;
    sub_26817F050(&qword_28024DF00, 255, type metadata accessor for EachFlow);

    v0[4] = sub_2683CBF68();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_26817F098;
    *(v18 + 24) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF08, &unk_2683D6750);
    sub_26817F0AC();
    sub_2683CC398();
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_26817E4CC()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*v0 + 56);
  v4 = *v0;
  *(*v0 + 64) = v2;

  return MEMORY[0x2822009F8](sub_26817E5C8, 0, 0);
}

uint64_t sub_26817E5C8()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[8];
  v2 = v0[5];
  sub_2683CC3E8();

  v3 = v0[1];

  return v3();
}

void sub_26817E65C(char a1)
{
  v2 = v1;
  if (a1)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v3 = sub_2683CF7E8();
    __swift_project_value_buffer(v3, qword_28027C958);
    v4 = sub_2683CF7C8();
    v5 = sub_2683CFE98();
    v6 = 2;
    if (os_log_type_enabled(v4, v5))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_20_8(&dword_2680EB000, v7, v5, "[RootFlow] A Guard flow failed, prerequisiteFlows did not execute. Finishing flow as complete.");
LABEL_10:
      OUTLINED_FUNCTION_38();
    }
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v8 = sub_2683CF7E8();
    __swift_project_value_buffer(v8, qword_28027C958);
    v4 = sub_2683CF7C8();
    v9 = sub_2683CFE98();
    if (os_log_type_enabled(v4, v9))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_20_8(&dword_2680EB000, v10, v9, "[RootFlow] All guard flows passed and all prerequisiteFlows executed.");
      v6 = 1;
      goto LABEL_10;
    }

    v6 = 1;
  }

  *(v2 + 48) = v6;

  sub_26817DCD4();
}

uint64_t sub_26817E7C0()
{
  type metadata accessor for RootFlow();
  sub_26817F050(&qword_28024DEF8, v0, type metadata accessor for RootFlow);
  return sub_2683CBF48();
}

uint64_t sub_26817E84C()
{
  v0 = sub_2683D0408();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26817E8BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26817E84C();
  *a2 = result;
  return result;
}

uint64_t sub_26817E8EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26817DEA0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_26817E918()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return v0;
}

uint64_t sub_26817E948()
{
  sub_26817E918();

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

_BYTE *storeEnumTagSinglePayload for RootFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26817EA80()
{
  result = qword_28024DEF0;
  if (!qword_28024DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DEF0);
  }

  return result;
}

uint64_t sub_26817EAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26817EB84;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_26817EB84()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *(*v0 + 16);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4(v2);
}

uint64_t sub_26817ECA0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26817ED3C;

  return sub_26817E138(a1);
}

uint64_t sub_26817ED3C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26817EE2C()
{
  type metadata accessor for RootFlow();

  return sub_2683CBF88();
}

uint64_t sub_26817EE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2683CBCE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    v24 = a2;
    v25 = a3;
    v26 = a4;
    v28 = MEMORY[0x277D84F90];
    sub_2683D0228();
    v14 = v9 + 16;
    v27 = *(v9 + 16);
    v15 = *(v9 + 80);
    v23 = a1;
    v16 = a1 + ((v15 + 32) & ~v15);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v27(v12, v16, v8);
      sub_2683CBC98();
      (*v18)(v12, v8);
      sub_2683D01F8();
      v19 = *(v28 + 16);
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
      v16 += v17;
      --v13;
    }

    while (v13);

    v20 = v28;
    a3 = v25;
    a4 = v26;
    a2 = v24;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  type metadata accessor for RootFlow();
  v21 = swift_allocObject();
  sub_26817DF10(v20, a2, a3, a4);
  return v21;
}

uint64_t sub_26817F050(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_26817F0AC()
{
  result = qword_28024DF10;
  if (!qword_28024DF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024DF08, &unk_2683D6750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DF10);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_7()
{

  return sub_2683CFB48();
}

uint64_t OUTLINED_FUNCTION_8_9()
{

  return sub_2683D0698();
}

uint64_t OUTLINED_FUNCTION_18_7()
{

  return sub_2683CFB48();
}

uint64_t OUTLINED_FUNCTION_19_7()
{

  return sub_2683D0698();
}

void OUTLINED_FUNCTION_20_8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_21_6()
{

  return sub_26817DAD8();
}

uint64_t OUTLINED_FUNCTION_22_4()
{

  return sub_2683CFB48();
}

uint64_t OUTLINED_FUNCTION_33_5()
{

  return sub_2683CFB48();
}

uint64_t sub_26817F368(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_26817F3A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26817F40C()
{
  OUTLINED_FUNCTION_14();
  v1[114] = v0;
  v1[113] = v2;
  v1[107] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64);
  v1[115] = OUTLINED_FUNCTION_15_1();
  v5 = sub_2683CC598();
  v1[116] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[117] = v6;
  v8 = *(v7 + 64) + 15;
  v1[118] = swift_task_alloc();
  v1[119] = swift_task_alloc();
  v9 = *(*(sub_2683CB668() - 8) + 64);
  v1[120] = OUTLINED_FUNCTION_15_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF28, &qword_2683D5C70);
  OUTLINED_FUNCTION_3_1(v10);
  v1[121] = v11;
  v1[122] = *(v12 + 64);
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v13 = sub_2683CC748();
  v1[125] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v1[126] = v14;
  v16 = *(v15 + 64);
  v1[127] = OUTLINED_FUNCTION_15_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF20, &qword_2683FA3F0);
  v1[128] = v17;
  OUTLINED_FUNCTION_3_1(v17);
  v1[129] = v18;
  v20 = *(v19 + 64) + 15;
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26817F650, 0, 0);
}

uint64_t sub_26817F650()
{
  v46 = v0;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[128];
  v5 = v0[113];
  v6 = sub_2683CF7E8();
  __swift_project_value_buffer(v6, qword_28027C958);
  v7 = *(v3 + 16);
  v7(v1, v5, v4);
  v7(v2, v5, v4);
  v8 = sub_2683CF7C8();
  v9 = sub_2683CFE98();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[131];
  v12 = v0[130];
  v13 = v0[129];
  v14 = v0[128];
  if (v10)
  {
    v15 = v0[127];
    log = v8;
    v16 = v0[126];
    v38 = v0[125];
    v17 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v45 = v41;
    *v17 = 136315394;
    v39 = v9;
    sub_2683CC9E8();
    v18 = sub_2683CC738();
    v20 = v19;
    (*(v16 + 8))(v15, v38);
    v21 = *(v13 + 8);
    v21(v11, v14);
    v22 = sub_2681610A0(v18, v20, &v45);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2048;
    v23 = sub_2683CC9D8();
    v24 = [v23 unsupportedReason];

    v21(v12, v14);
    *(v17 + 14) = v24;
    _os_log_impl(&dword_2680EB000, log, v39, "[SearchForNotebookItems UnsupportedValueStrategy] Making unsupported dialog for %s with reason: %ld", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x26D617A40](v41, -1, -1);
    MEMORY[0x26D617A40](v17, -1, -1);
  }

  else
  {
    v25 = *(v13 + 8);
    v25(v0[130], v0[128]);

    v25(v11, v14);
  }

  v26 = v0[128];
  v27 = v0[124];
  v28 = v0[123];
  v29 = v0[121];
  v30 = v0[120];
  loga = v0[119];
  v40 = v0[122];
  v42 = v0[116];
  v31 = v0[114];
  v32 = v0[113];
  sub_2683CC9B8();
  v33 = v31[4];
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_2683CC088();
  sub_26816E9C8(v30, v27);
  sub_268180318(v31, (v0 + 87));
  sub_268180350(v27, v28);
  v34 = (*(v29 + 80) + 96) & ~*(v29 + 80);
  v35 = swift_allocObject();
  v0[132] = v35;
  memcpy((v35 + 16), v0 + 87, 0x50uLL);
  sub_2681803C0(v28, v35 + v34);
  swift_asyncLet_begin();
  v36 = v0[119];

  return MEMORY[0x282200930](v0 + 2);
}

uint64_t sub_26817FA18()
{
  *(v1 + 1064) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 16, *(v1 + 952), sub_26817FCEC, v1 + 816);
  }

  else
  {
    return OUTLINED_FUNCTION_1_1(sub_26817FA54);
  }
}

uint64_t sub_26817FA54()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 936);
  v12 = *(v0 + 928);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = *(v0 + 856);
  (*(v2 + 16))(v1, *(v0 + 952));
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2683CC0A8();
  v7 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  v8 = sub_2683CCC98();
  *(v0 + 776) = 0u;
  *(v0 + 792) = 0u;
  *(v0 + 808) = 0;
  v9 = MEMORY[0x277D5C1D8];
  v5[3] = v8;
  v5[4] = v9;
  __swift_allocate_boxed_opaque_existential_0(v5);
  sub_2683CC328();
  sub_26812C310(v0 + 776, &qword_28024D408, &qword_2683D2470);
  sub_26812C310(v3, &qword_28024D400, &qword_2683D2460);
  (*(v2 + 8))(v1, v12);
  v10 = *(v0 + 952);

  return MEMORY[0x282200920](v0 + 16, v10, sub_26817FBF4, v0 + 864);
}

uint64_t sub_26817FC08()
{
  OUTLINED_FUNCTION_2_11();
  sub_26812C310(v0, &qword_28024DF28, &qword_2683D5C70);

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_26817FD00()
{
  OUTLINED_FUNCTION_2_11();
  sub_26812C310(v1, &qword_28024DF28, &qword_2683D5C70);

  OUTLINED_FUNCTION_40();
  v3 = *(v0 + 1064);

  return v2();
}

uint64_t sub_26817FDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26817FE08, 0, 0);
}

uint64_t sub_26817FE08()
{
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_1((v0[3] + 40), *(v0[3] + 64));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_26817FEB0;
  v2 = v0[4];
  v3 = v0[2];

  return sub_2682DD0F4(v3, v2);
}

uint64_t sub_26817FEB0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5();
}

uint64_t sub_26817FF90()
{
  OUTLINED_FUNCTION_14();
  v0[2] = v1;
  v2 = sub_2683CC748();
  v0[3] = v2;
  OUTLINED_FUNCTION_3_1(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](sub_26818003C, 0, 0);
}

uint64_t sub_26818003C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF20, &qword_2683FA3F0);
  sub_2683CC9E8();
  v5 = sub_2683CC738();
  v7 = v6;
  (*(v2 + 8))(v1, v4);

  v8 = sub_26818CD7C();
  v9 = v0[5];
  if (v8 == 10)
  {
    sub_26812C6B8();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_40();

    return v11();
  }

  else
  {
    v13 = v8;
    v14 = v0[2];

    v15 = sub_2683CC9C8();
    v16 = sub_2681753A0(v13);

    v17 = v0[1];

    return v17(v16);
  }
}

uint64_t sub_2681801DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_26817F40C();
}

uint64_t sub_268180284()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268137D60;

  return sub_26817FF90();
}

uint64_t sub_268180350(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF28, &qword_2683D5C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681803C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF28, &qword_2683D5C70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268180430(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF28, &qword_2683D5C70) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_268133EC8;

  return sub_26817FDE4(a1, v1 + 16, v1 + v5);
}

void OUTLINED_FUNCTION_2_11()
{
  v1 = v0[132];
  v2 = v0[131];
  v3 = v0[130];
  v4 = v0[127];
  v5 = v0[124];
  v6 = v0[123];
  v7 = v0[120];
  v8 = v0[119];
  v9 = v0[118];
  v10 = v0[115];
}

uint64_t type metadata accessor for NotebookCommonCATPatternsExecutor()
{
  result = qword_28024DF30;
  if (!qword_28024DF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2681805D8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_26818062C(a1, a2);
}

uint64_t sub_26818062C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2683CF238();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_268163198(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_2683CF0A8();
  (*(v5 + 8))(a2, v4);
  sub_268163208(a1);
  return v12;
}

id sub_2681807A0()
{
  OUTLINED_FUNCTION_13_3();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2683CFA68();

  v2 = [v0 initWithText_];

  return v2;
}

void sub_268180810()
{
  OUTLINED_FUNCTION_30_0();
  v63 = v0;
  v64 = v1;
  v3 = v2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF40, &unk_2683D5D10);
  v4 = OUTLINED_FUNCTION_1(v66);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v62 - v7;
  v9 = sub_2683CC748();
  v10 = OUTLINED_FUNCTION_0_3(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v62 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF20, &qword_2683FA3F0);
  v65 = v3;
  sub_2683CC9E8();
  sub_2683CC738();
  v21 = v20;
  v22 = *(v12 + 8);
  v22(v19, v9);
  v23 = sub_26818CD7C();
  switch(v23)
  {
    case 1:
      OUTLINED_FUNCTION_17_7();
      sub_268181110();
      OUTLINED_FUNCTION_23_7();
      sub_26813C7E0((v19 + 144), v21 + 224);
      sub_26813CA00((v19 + 192), v21 + 272);
      v47 = OUTLINED_FUNCTION_22_5();
      OUTLINED_FUNCTION_11_3(v47);
      v48 = 1;
      goto LABEL_8;
    case 2:
      OUTLINED_FUNCTION_17_7();
      sub_268181354();
      OUTLINED_FUNCTION_23_7();
      sub_26813C7E0((v19 + 144), v21 + 224);
      sub_26813CA00((v19 + 192), v21 + 272);
      v52 = OUTLINED_FUNCTION_22_5();
      OUTLINED_FUNCTION_11_3(v52);
      v48 = 2;
LABEL_8:
      LOBYTE(v89) = v48;
      __swift_project_boxed_opaque_existential_1(v19 + 29, *(v19 + 32));
      OUTLINED_FUNCTION_24_2();
      sub_268189100(&v89, v53, v54, v55, v56, v57, v58, v59, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
      v60 = OUTLINED_FUNCTION_18_8();
      v61(v60);

      sub_26812D9E0(v116, &qword_28024D488, &qword_2683D6100);
      v45 = qword_28024DF68;
      v46 = &unk_2683D5D40;
      goto LABEL_9;
    case 6:
      OUTLINED_FUNCTION_17_7();
      sub_268181598();
      OUTLINED_FUNCTION_23_7();
      sub_26813C7E0((v19 + 144), v21 + 224);
      sub_26813CA00((v19 + 192), v21 + 272);
      v35 = OUTLINED_FUNCTION_22_5();
      OUTLINED_FUNCTION_11_3(v35);
      LOBYTE(v89) = 6;
      __swift_project_boxed_opaque_existential_1(v19 + 29, *(v19 + 32));
      OUTLINED_FUNCTION_24_2();
      sub_268189068(&v89, v36, v37, v38, v39, v40, v41, v42, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
      v43 = OUTLINED_FUNCTION_18_8();
      v44(v43);

      sub_26812D9E0(v116, &qword_28024DF58, &qword_2683D5D28);
      v45 = &qword_28024DF60;
      v46 = &unk_2683D5D30;
LABEL_9:
      sub_26812D9E0(&v89, v45, v46);
      goto LABEL_10;
    case 10:
      sub_2683CC9E8();
      v49 = sub_2683CC738();
      v51 = v50;
      v22(v17, v9);
      sub_26812C6B8();
      v27 = swift_allocError();
      v29 = v27;
      *v28 = v49;
      *(v28 + 8) = v51;
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;
      v30 = 1;
      goto LABEL_3;
    default:
      v24 = sub_26818AFA0(v23);
      v26 = v25;
      sub_26812C6B8();
      v27 = swift_allocError();
      v29 = v27;
      *v28 = v24;
      *(v28 + 8) = v26;
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;
      v30 = 2;
LABEL_3:
      *(v28 + 32) = v30;
      *v8 = v27;
      v8[8] = 0;
      v31 = *MEMORY[0x277D5BC30];
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF48, &qword_2683D5D20);
      OUTLINED_FUNCTION_1(v32);
      (*(v33 + 104))(v8, v31);
      v34 = v29;
      sub_268182510();
      sub_2683CBF38();
      sub_26812D9E0(v8, &qword_28024DF40, &unk_2683D5D10);

LABEL_10:
      OUTLINED_FUNCTION_29_0();
      return;
  }
}

BOOL sub_268180C50(uint64_t a1)
{
  sub_26813A144(a1, v3);
  v1 = v3[56] == 3;
  sub_26813A1A0(v3);
  return v1;
}

uint64_t sub_268180C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF20, &qword_2683FA3F0);
  v7 = sub_2683CC9C8();
  LOBYTE(v4) = *v4;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(type metadata accessor for SimpleDisambiguationItem() + 28);
  v15[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1 + v11, AssociatedTypeWitness);
  v13 = sub_2681758A8(v4, v15);

  __swift_destroy_boxed_opaque_existential_0(v15);
  return v13;
}

uint64_t sub_268180D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_268180DC8, 0, 0);
}

void sub_268180DC8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[4];
  v4 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF20, &qword_2683FA3F0);
  sub_2683CC9B8();
  sub_2683CF258();
  v6 = v5;

  v0[10] = v6;
  v8 = v1 + 16;
  v7 = *(v1 + 16);
  v16 = (*(v8 + 8) + 24);
  v17 = *v16 + **v16;
  v9 = (*v16)[1];
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_26813A870;
  v11 = v0[6];
  v12 = v0[7];
  v13 = v0[5];
  v14 = v0[2];
  v15 = v0[3];

  __asm { BRAA            X8, X16 }
}

uint64_t sub_268180F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2681342AC;

  return sub_268180D9C(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_268181044()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_26813A9F4();
}

void sub_268181110()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v4 = sub_2683CB598();
  v5 = OUTLINED_FUNCTION_0_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBE0 != -1)
  {
    swift_once();
  }

  *(v8 + 32) = sub_2683CD158();
  *(v8 + 40) = v9;
  v10 = OUTLINED_FUNCTION_15_9();
  OUTLINED_FUNCTION_23_2(v10, &off_2879014F0);
  OUTLINED_FUNCTION_20_2();
  v11 = swift_allocObject();
  sub_268128148(&v18, v11 + 16);

  __swift_destroy_boxed_opaque_existential_0(&v19);
  v12 = *(v0 + 120);
  v13 = qword_28024C8B0;

  if (v13 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_21_7(&qword_28027C890);

  sub_2683CB588();
  sub_2683CB548();
  v14 = OUTLINED_FUNCTION_19_8();
  v15(v14);
  *v3 = v8;
  v3[1] = &unk_2683D5D50;
  v3[2] = 0;
  v3[3] = &unk_2683D5D60;
  v3[4] = v11;
  v3[5] = &unk_2683D5D70;
  v3[6] = v12;
  v3[7] = sub_268181994;
  v3[8] = 0;
  v3[9] = sub_268181A20;
  v3[10] = 0;
  v3[11] = v17;
  v3[12] = v1;
  v3[13] = v16;
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_29_0();
}

void sub_268181354()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v4 = sub_2683CB598();
  v5 = OUTLINED_FUNCTION_0_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBC0 != -1)
  {
    swift_once();
  }

  *(v8 + 32) = sub_2683CD158();
  *(v8 + 40) = v9;
  v10 = OUTLINED_FUNCTION_15_9();
  OUTLINED_FUNCTION_23_2(v10, &off_2879014F0);
  OUTLINED_FUNCTION_20_2();
  v11 = swift_allocObject();
  sub_268128148(&v18, v11 + 16);

  __swift_destroy_boxed_opaque_existential_0(&v19);
  v12 = *(v0 + 120);
  v13 = qword_28024C8B8;

  if (v13 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_21_7(&qword_28027C8B0);

  sub_2683CB588();
  sub_2683CB548();
  v14 = OUTLINED_FUNCTION_19_8();
  v15(v14);
  *v3 = v8;
  v3[1] = &unk_2683D5D90;
  v3[2] = 0;
  v3[3] = &unk_2683D5DA0;
  v3[4] = v11;
  v3[5] = &unk_2683D5DB0;
  v3[6] = v12;
  v3[7] = sub_268181D88;
  v3[8] = 0;
  v3[9] = sub_268181E14;
  v3[10] = 0;
  v3[11] = v17;
  v3[12] = v1;
  v3[13] = v16;
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_29_0();
}

void sub_268181598()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_2683CB598();
  v5 = OUTLINED_FUNCTION_0_3(v4);
  v22 = v6;
  v23 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBA0 != -1)
  {
    swift_once();
  }

  *(v12 + 32) = sub_2683CD158();
  *(v12 + 40) = v13;
  sub_2681828F0(v0, v25);
  v14 = swift_allocObject();
  memcpy((v14 + 16), v25, 0x118uLL);
  v15 = swift_allocObject();
  *(v15 + 16) = &unk_2683D5DD8;
  *(v15 + 24) = v14;
  v25[3] = OUTLINED_FUNCTION_15_9();
  v25[4] = &off_2879014F0;
  v25[0] = v14;
  sub_26813CA00(v25, v24);
  OUTLINED_FUNCTION_20_2();
  v16 = swift_allocObject();
  sub_268128148(v24, v16 + 16);

  __swift_destroy_boxed_opaque_existential_0(v25);
  v18 = *(v1 + 120);
  v17 = *(v1 + 128);

  sub_2683CB588();
  v19 = sub_2683CB548();
  v21 = v20;
  (*(v22 + 8))(v11, v23);
  *v3 = v12;
  *(v3 + 8) = &unk_2683D5DE8;
  *(v3 + 16) = v15;
  *(v3 + 24) = &unk_2683D5DF8;
  *(v3 + 32) = v16;
  *(v3 + 40) = &unk_2683D5E08;
  *(v3 + 48) = v18;
  *(v3 + 56) = sub_268182380;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *(v3 + 120) = &unk_2683D5E18;
  *(v3 + 128) = v17;
  *(v3 + 136) = 1;
  *(v3 + 137) = v25[0];
  *(v3 + 140) = *(v25 + 3);
  *(v3 + 144) = sub_2683779F0;
  *(v3 + 152) = 0;
  *(v3 + 160) = v19;
  *(v3 + 168) = v21;
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268181840(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_268181860, 0, 0);
}

uint64_t sub_268181860()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_3(v1);

  return sub_26819AC3C(v2);
}

uint64_t sub_2681818E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_26819E760(a1, a2);
}

uint64_t sub_268181994()
{
  v0 = sub_2683CE1C8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_2683CE1B8();
  v4 = sub_2683CDD18();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_2683CDD08();
  sub_2683CDCF8();
  sub_2683CDE78();

  return v3;
}

id sub_268181A20(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *a1;
  sub_268129504(0, &qword_280253310, 0x277CD4220);
  v10 = sub_2683CB0D8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
  v11 = v9;
  v12 = sub_26835E66C(v9, 0, 0, 0, 0, v8, v6, 0, 0, 0, 0, 0, 0, 0);
  sub_2681828AC(&qword_28024D578, &qword_280253310, 0x277CD4220);
  return v12;
}

uint64_t sub_268181B9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268137D60;

  return sub_2681FF464(a1);
}

uint64_t sub_268181C34(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_268181C54, 0, 0);
}

uint64_t sub_268181C54()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_3(v1);

  return sub_26819AB2C(v2);
}

uint64_t sub_268181CDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_26819E3EC(a1, a2);
}

uint64_t sub_268181D88()
{
  v0 = sub_2683CE008();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_2683CDFF8();
  v4 = sub_2683CD9C8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_2683CD9B8();
  sub_2683CD988();
  sub_2683CDE78();

  return v3;
}

id sub_268181E14(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *a1;
  sub_268129504(0, &qword_28024D350, 0x277CD3E00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2683D2250;
  sub_268129504(0, &qword_28024CDC0, 0x277CD4250);
  v11 = [v9 spokenPhrase];
  sub_2683CFA78();

  *(v10 + 32) = sub_2681807A0();
  v12 = sub_2683CB0D8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v12);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  v13 = sub_2683B9B90(0, v10, 0, v8, v6);
  sub_2681828AC(&qword_28024D4B8, &qword_28024D350, 0x277CD3E00);
  return v13;
}

uint64_t sub_268182000(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26813D6E8;

  return sub_2681FF234(a1);
}

uint64_t sub_268182098(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_268182144(a1, a2);
}

uint64_t sub_268182144(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_268182168, 0, 0);
}

uint64_t sub_268182168()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[4];
  v2 = v0[2];
  v3 = [objc_allocWithZone(MEMORY[0x277CD4240]) initWithDateComponentsRange_];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_26839D0D0(v3);
  sub_2683CFB38();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_26818222C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26818224C, 0, 0);
}

uint64_t sub_26818224C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_3(v1);

  return sub_26819AD4C(v2);
}

uint64_t sub_2681822D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_26819E638(a1, a2);
}

uint64_t sub_268182380()
{
  v0 = sub_2683CE1C8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_2683CE1B8();
  v4 = sub_2683CDD18();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_2683CDD08();
  v7 = sub_2683CDFA8();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_2683CDF98();
  v10 = sub_2683CDCB8();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_2683CDCA8();
  sub_2683CDF68();

  sub_2683CDCC8();

  sub_2683CDE78();

  return v3;
}

uint64_t sub_268182478(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26813D6E8;

  return sub_2681FF34C(a1);
}

unint64_t sub_268182510()
{
  result = qword_28024DF50;
  if (!qword_28024DF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024DF40, &unk_2683D5D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DF50);
  }

  return result;
}

uint64_t sub_268182574()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_268181840(v3, v4);
}

uint64_t sub_2681825F8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_268133EC8;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_2681818E8(v3, v4);
}

uint64_t sub_26818268C()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_3(v1);

  return sub_268181B9C(v3);
}

uint64_t sub_268182710()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_268181C34(v3, v4);
}

uint64_t sub_268182794()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_268181CDC(v3, v4);
}

uint64_t sub_268182828()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_3(v1);

  return sub_268182000(v3);
}

uint64_t sub_2681828AC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_268129504(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268182928()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_268182098(v3, v4);
}

uint64_t sub_2681829BC()
{
  OUTLINED_FUNCTION_13_3();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_1_3(v3);
  *v4 = v5;
  v4[1] = sub_2681342AC;
  v6 = OUTLINED_FUNCTION_0_8();

  return v7(v6);
}

uint64_t sub_268182A70()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_26818222C(v3, v4);
}

uint64_t sub_268182AF4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_2681822D4(v3, v4);
}

uint64_t sub_268182B88()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_3(v1);

  return sub_268182478(v3);
}

uint64_t sub_268182C0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_268182C94(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
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

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 >= a2)
  {
LABEL_26:
    v18 = (result + v7 + 1) & ~v7;
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *(((v9 + v18) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(v18, v6, v4);
    }
  }

  else
  {
    v10 = ((v9 + ((v7 + 1) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 136;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
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

    switch(v15)
    {
      case 1:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v8 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_268182DEC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
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
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 136;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFF78)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v12] = 0;
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
        *&a1[v12] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v19 = &a1[v10 + 1] & ~v10;
          if (v8 < 0x7FFFFFFF)
          {
            v20 = (v11 + v19) & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v20 + 104) = 0u;
              *(v20 + 88) = 0u;
              *(v20 + 72) = 0u;
              *(v20 + 56) = 0u;
              *(v20 + 40) = 0u;
              *(v20 + 24) = 0u;
              *(v20 + 8) = 0u;
              *(v20 + 120) = 0u;
              *v20 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v20 + 24) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFF78)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) != 0xFFFFFF78)
    {
      v18 = ~v9 + a2;
      bzero(a1, ((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 136);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        break;
      case 2:
        *&a1[v12] = v17;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v12] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_268183020(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 280))
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

uint64_t sub_268183060(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_4_10()
{
  *(v1 + 112) = v5;
  *(v1 + 120) = v0;
  *(v1 + 128) = v4;
  *(v1 + 136) = 1;
  v7 = *(v6 - 120);
  *(v1 + 140) = *(v6 - 117);
  *(v1 + 137) = v7;
  *(v1 + 144) = sub_2683779DC;
  *(v1 + 152) = 0;
  *(v1 + 160) = v2;
  *(v1 + 168) = v3;
}

uint64_t OUTLINED_FUNCTION_15_9()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));

  return type metadata accessor for SearchForNotebookItemsCATPatternsExecutor();
}

uint64_t OUTLINED_FUNCTION_19_8()
{
  v2 = *(v1 - 168);
  v3 = *(*(v1 - 176) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_21_7@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  *(v2 - 192) = a1[2];
  *(v2 - 184) = v4;
  v7 = *(v1 + 128);
}

uint64_t OUTLINED_FUNCTION_22_5()
{
  v2 = *(v0 + 24);

  return sub_2683CC9B8();
}

uint64_t OUTLINED_FUNCTION_23_7()
{

  return sub_26813CA00(v1 + 80, v0 + 400);
}

uint64_t type metadata accessor for SnoozeTasksCATsSimple()
{
  result = qword_28024DFF0;
  if (!qword_28024DFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268183294(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681832A8()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = 0x676972547478656ELL;
  *(v2 + 40) = 0xEF656D6954726567;
  v3 = 0;
  if (v1)
  {
    v3 = sub_2683CF038();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v7 = OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2681833F0;
  v5 = v0[3];

  return (v7)(0xD000000000000022, 0x80000002683FD940, v2);
}

uint64_t sub_2681833F0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_5();

    return v14(v13);
  }
}

uint64_t sub_26818351C()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2681835B0()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_2683D1EC0;
  strcpy((v3 + 32), "valueToConfirm");
  *(v3 + 47) = -18;
  sub_2681840DC(v2, v1, &unk_28024E7C0, &unk_2683D6CA0);
  v4 = sub_2683CF168();
  v5 = OUTLINED_FUNCTION_12_7(v4);
  v6 = v0[4];
  if (v5 == 1)
  {
    sub_268184140(v0[4], &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_23_0(v2);
    (*(v7 + 32))();
  }

  v8 = *(MEMORY[0x277D55C70] + 4);
  v12 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_26812B1E8;
  v10 = v0[3];

  return v12(0xD000000000000018, 0x80000002683FD920, v3);
}

uint64_t sub_268183768(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26818377C()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = 0x736D657469;
  *(v2 + 40) = 0xE500000000000000;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  *(v2 + 48) = v1;
  v6 = OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2681838B0;
  v4 = v0[3];

  return (v6)(0xD00000000000001DLL, 0x80000002683FD900, v2);
}

uint64_t sub_2681838B0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_5();

    return v14(v13);
  }
}

uint64_t sub_2681839DC()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_268183A74()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[5];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = xmmword_2683D2890;
  *(v3 + 32) = 0x6154656C676E6973;
  *(v3 + 40) = 0xEF656C7469546B73;
  sub_2681840DC(v2, v1, &unk_28024E7C0, &unk_2683D6CA0);
  v4 = sub_2683CF168();
  v5 = OUTLINED_FUNCTION_12_7(v4);
  v6 = v0[5];
  if (v5 == 1)
  {
    sub_268184140(v0[5], &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_23_0(v2);
    (*(v7 + 32))();
  }

  v8 = v0[3];
  *(v3 + 80) = 0x6E6F697461727564;
  *(v3 + 88) = 0xE800000000000000;
  v9 = 0;
  if (v8)
  {
    v9 = sub_2683CF038();
  }

  else
  {
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  *(v3 + 96) = v8;
  *(v3 + 120) = v9;
  v13 = OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_268183C6C;
  v11 = v0[4];

  return (v13)(0xD000000000000021, 0x80000002683FD8D0, v3);
}

uint64_t sub_268183C6C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    v14 = OUTLINED_FUNCTION_10();

    return v15(v14);
  }
}

uint64_t sub_268183D9C()
{
  OUTLINED_FUNCTION_14();
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_268183E04(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_268183E58(a1, a2);
}

uint64_t sub_268183E58(uint64_t a1, uint64_t a2)
{
  v5 = sub_2683CF238();
  v6 = OUTLINED_FUNCTION_19(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_2681840DC(a1, &v18 - v15, &qword_28024D258, &unk_2683D1F60);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_2683CF178();
  (*(v8 + 8))(a2, v2);
  sub_268184140(a1, &qword_28024D258, &unk_2683D1F60);
  return v16;
}

uint64_t sub_268183FD4(uint64_t a1, uint64_t a2)
{
  v5 = sub_2683CF238();
  v6 = OUTLINED_FUNCTION_19(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_2683CF188();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_2681840DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_23_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_268184140(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_23_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_12_7(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t type metadata accessor for SetTaskAttributeV2CATs()
{
  result = qword_28024E000;
  if (!qword_28024E000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268184258(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268184270()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  v4 = OUTLINED_FUNCTION_14_8(v3);
  OUTLINED_FUNCTION_4(v4, xmmword_2683D1EC0);
  *(v1 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E010, &qword_2683D6078);
  *(v1 + 48) = v2;
  OUTLINED_FUNCTION_1_15(MEMORY[0x277D55BF0]);

  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7_8(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_2_12(v6);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_268184360()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26815FC74, 0, 0);
  }

  else
  {
    v9 = *(v3 + 40);

    OUTLINED_FUNCTION_40();

    return v10();
  }
}

uint64_t sub_268184480(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268184498()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  v4 = OUTLINED_FUNCTION_14_8(v3);
  OUTLINED_FUNCTION_4(v4, xmmword_2683D1EC0);
  *(v1 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  *(v1 + 48) = v2;
  OUTLINED_FUNCTION_1_15(MEMORY[0x277D55BF0]);

  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7_8(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_2_12(v6);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_268184588(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681845A0()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  v4 = OUTLINED_FUNCTION_14_8(v3);
  OUTLINED_FUNCTION_4(v4, xmmword_2683D1EC0);
  *(v1 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  *(v1 + 48) = v2;
  OUTLINED_FUNCTION_1_15(MEMORY[0x277D55BF0]);

  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7_8(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_2_12(v6);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_268184690()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26815FA00, 0, 0);
  }

  else
  {
    v9 = *(v3 + 40);

    OUTLINED_FUNCTION_40();

    return v10();
  }
}

uint64_t sub_2681847B0()
{
  OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  OUTLINED_FUNCTION_10_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_268133EC8;
  v3 = OUTLINED_FUNCTION_18_9();

  return v5(v3, 0xD000000000000033);
}

uint64_t sub_268184868(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268184880()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  v4 = OUTLINED_FUNCTION_14_8(v3);
  *(v4 + 16) = xmmword_2683D1EC0;
  *(v4 + 32) = 0x746361746E6F63;
  *(v4 + 40) = 0xE700000000000000;
  v5 = 0;
  if (v2)
  {
    v5 = sub_2683CEF98();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_11(v5);
  OUTLINED_FUNCTION_1_15(MEMORY[0x277D55BF0]);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_7_8(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_2_12(v7);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_268184984()
{
  OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  OUTLINED_FUNCTION_10_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_18_9();

  return v5(v3, 0xD000000000000046);
}

uint64_t sub_268184A3C()
{
  OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  OUTLINED_FUNCTION_10_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_18_9();

  return v5(v3, 0xD000000000000044);
}

uint64_t sub_268184AF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268184B0C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  v4 = OUTLINED_FUNCTION_14_8(v3);
  v5 = OUTLINED_FUNCTION_3_10(v4, xmmword_2683D1EC0);
  if (v2)
  {
    v5 = sub_2683CF138();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_11(v5);
  OUTLINED_FUNCTION_1_15(MEMORY[0x277D55BF0]);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_7_8(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_2_12(v7);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_268184BF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268184C0C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  v4 = OUTLINED_FUNCTION_14_8(v3);
  v5 = OUTLINED_FUNCTION_3_10(v4, xmmword_2683D1EC0);
  if (v2)
  {
    v5 = sub_2683CF138();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_11(v5);
  OUTLINED_FUNCTION_1_15(MEMORY[0x277D55BF0]);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_7_8(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_2_12(v7);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_268184CF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268184D0C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  v4 = OUTLINED_FUNCTION_14_8(v3);
  v5 = OUTLINED_FUNCTION_3_10(v4, xmmword_2683D1EC0);
  if (v2)
  {
    v5 = sub_2683CF138();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_11(v5);
  OUTLINED_FUNCTION_1_15(MEMORY[0x277D55BF0]);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_7_8(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_2_12(v7);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_268184DF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268184E0C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  v4 = OUTLINED_FUNCTION_14_8(v3);
  v5 = OUTLINED_FUNCTION_3_10(v4, xmmword_2683D1EC0);
  if (v2)
  {
    v5 = sub_2683CF138();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_11(v5);
  OUTLINED_FUNCTION_1_15(MEMORY[0x277D55BF0]);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_7_8(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_2_12(v7);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_268184EF4()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268184F90, 0, 0);
}

uint64_t sub_268184F90()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v1 = v0[5];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  v0[6] = v3;
  *(v3 + 16) = xmmword_2683D1EC0;
  *(v3 + 32) = 0xD000000000000010;
  *(v3 + 40) = 0x80000002683FDA70;
  sub_26812C2A8(v2, v1, &unk_28024E7C0, &unk_2683D6CA0);
  v4 = sub_2683CF168();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v4);
  v6 = v0[5];
  if (EnumTagSinglePayload == 1)
  {
    sub_26812C310(v0[5], &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(*(v4 - 8) + 32))(boxed_opaque_existential_0, v6, v4);
  }

  OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  OUTLINED_FUNCTION_10_2();
  v0[7] = v8;
  *v8 = v9;
  v8[1] = sub_268185138;
  v10 = v0[4];
  v11 = v0[2];
  OUTLINED_FUNCTION_20_9();

  return v16(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_268185138()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26815F4AC, 0, 0);
  }

  else
  {
    v10 = v3[5];
    v9 = v3[6];

    OUTLINED_FUNCTION_40();

    return v11();
  }
}

uint64_t sub_268185264(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26818527C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  v4 = OUTLINED_FUNCTION_14_8(v3);
  v5 = OUTLINED_FUNCTION_3_10(v4, xmmword_2683D1EC0);
  if (v2)
  {
    v5 = sub_2683CF138();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_11(v5);
  OUTLINED_FUNCTION_1_15(MEMORY[0x277D55BF0]);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_7_8(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_2_12(v7);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_268185364(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26818537C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  v4 = OUTLINED_FUNCTION_14_8(v3);
  v5 = OUTLINED_FUNCTION_3_10(v4, xmmword_2683D1EC0);
  if (v2)
  {
    v5 = sub_2683CF138();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_11(v5);
  OUTLINED_FUNCTION_1_15(MEMORY[0x277D55BF0]);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_7_8(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_2_12(v7);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_268185464(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26818547C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  v4 = OUTLINED_FUNCTION_14_8(v3);
  v5 = OUTLINED_FUNCTION_3_10(v4, xmmword_2683D1EC0);
  if (v2)
  {
    v5 = sub_2683CF138();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_11(v5);
  OUTLINED_FUNCTION_1_15(MEMORY[0x277D55BF0]);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_7_8(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_2_12(v7);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_268185564(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2681855B8(a1, a2);
}

uint64_t sub_2681855B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2683CF238();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_26812C2A8(a1, &v14 - v11, &qword_28024D258, &unk_2683D1F60);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_2683CF0A8();
  (*(v5 + 8))(a2, v4);
  sub_26812C310(a1, &qword_28024D258, &unk_2683D1F60);
  return v12;
}

uint64_t OUTLINED_FUNCTION_1_15@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
  return v1;
}

uint64_t OUTLINED_FUNCTION_2_12(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_3_10(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 7368801;
  a1[2].n128_u64[1] = 0xE300000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_15_10@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_16_11(uint64_t result)
{
  *(v2 + 48) = v1;
  *(v2 + 72) = result;
  return result;
}

void sub_268185828()
{
  v1 = sub_2682E5FA4(v0);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = sub_2681859FC();
  sub_2682C010C(v4);
  v12 = v2;
  v13 = MEMORY[0x277D84FA0];
  v5 = sub_2683ABE58(v3);

  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D616C90](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = v7;
    v9 = sub_268158E30(&v11, v8);

    if (v9)
    {
      sub_2683D01F8();
      v10 = *(v12 + 16);
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_26818598C()
{
  sub_268185828();
  v2 = sub_268229348(v1);

  v3 = sub_2682E5D30(v0);
  if (v3)
  {
    v4 = sub_268229348(v3);
  }

  else
  {
    v4 = 0;
  }

  result = v2 + v4;
  if (__OFADD__(v2, v4))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2681859FC()
{
  v1 = sub_2682E5CA0(v0);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  result = sub_2683ABE58(v1);
  v4 = result;
  v5 = 0;
  v35 = v2 & 0xFFFFFFFFFFFFFF8;
  v36 = v2 & 0xC000000000000001;
  v30 = v2;
  v34 = v2 + 32;
  v6 = MEMORY[0x277D84F90];
  v31 = result;
  while (1)
  {
    if (v5 == v4)
    {

      return v6;
    }

    if (v36)
    {
      result = MEMORY[0x26D616C90](v5, v30);
    }

    else
    {
      if (v5 >= *(v35 + 16))
      {
        goto LABEL_45;
      }

      result = *(v34 + 8 * v5);
    }

    v7 = __OFADD__(v5++, 1);
    if (v7)
    {
      break;
    }

    v8 = result;
    v9 = [v8 tasks];
    sub_268186108();
    v10 = sub_2683CFCA8();

    if (v10 >> 62)
    {
      v11 = sub_2683D00A8();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v6 >> 62;
    if (v6 >> 62)
    {
      result = sub_2683D00A8();
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
    if (!result)
    {
      if (v12)
      {
LABEL_20:
        sub_2683D00A8();
      }

      else
      {
        v14 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_19:
        v15 = *(v14 + 16);
      }

      result = sub_2683D01B8();
      v6 = result;
      v14 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_22;
    }

    if (v12)
    {
      goto LABEL_20;
    }

    v14 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v13 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_19;
    }

LABEL_22:
    v16 = *(v14 + 16);
    v17 = (*(v14 + 24) >> 1) - v16;
    v18 = v14 + 8 * v16;
    v37 = v14;
    if (v10 >> 62)
    {
      v21 = sub_2683D00A8();
      if (v21)
      {
        v22 = v21;
        result = sub_2683D00A8();
        if (v17 < result)
        {
          goto LABEL_50;
        }

        if (v22 < 1)
        {
          goto LABEL_51;
        }

        v32 = result;
        v33 = v6;
        v23 = v18 + 32;
        sub_26818614C();
        for (i = 0; i != v22; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E018, &unk_2683E3D10);
          v25 = sub_2683ABCD0(v38, i, v10);
          v27 = *v26;
          (v25)(v38, 0);
          *(v23 + 8 * i) = v27;
        }

        v6 = v33;
        v4 = v31;
        v19 = v32;
        goto LABEL_32;
      }

LABEL_36:

      if (v11 > 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_36;
      }

      if (v17 < v19)
      {
        goto LABEL_49;
      }

      v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      swift_arrayInitWithCopy();
LABEL_32:

      if (v19 < v11)
      {
        goto LABEL_47;
      }

      if (v19 > 0)
      {
        v28 = *(v37 + 16);
        v7 = __OFADD__(v28, v19);
        v29 = v28 + v19;
        if (v7)
        {
          goto LABEL_48;
        }

        *(v37 + 16) = v29;
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

void sub_268185D44()
{
  v1 = sub_2681859FC();
  sub_2682B4500(v1);
  v3 = v2;
  v4 = sub_2682E5FA4(v0);
  if (!v4)
  {

    return;
  }

  v5 = v4;
  v24 = MEMORY[0x277D84F90];
  v6 = sub_2683ABE58(v4);
  v7 = 0;
  v22 = v5 & 0xFFFFFFFFFFFFFF8;
  v23 = v5 & 0xC000000000000001;
  v21 = v5 + 32;
  v20 = v5;
  while (1)
  {
LABEL_3:
    if (v7 == v6)
    {

      return;
    }

    if (v23)
    {
      v8 = MEMORY[0x26D616C90](v7, v20);
    }

    else
    {
      if (v7 >= *(v22 + 16))
      {
        goto LABEL_21;
      }

      v8 = *(v21 + 8 * v7);
    }

    v9 = v8;
    if (__OFADD__(v7++, 1))
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v11 = v8;
      v12 = sub_2683D00D8();

      if ((v12 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (*(v3 + 16))
      {
        sub_268186108();
        v13 = *(v3 + 40);
        v14 = sub_2683CFF58();
        v15 = ~(-1 << *(v3 + 32));
        while (1)
        {
          v16 = v14 & v15;
          if (((*(v3 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
          {
            break;
          }

          v17 = *(*(v3 + 48) + 8 * v16);
          v18 = sub_2683CFF68();

          v14 = v16 + 1;
          if (v18)
          {

            goto LABEL_3;
          }
        }
      }

LABEL_16:
      sub_2683D01F8();
      v19 = *(v24 + 16);
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_268185F40()
{
  v1 = sub_2682E5D30(v0);
  if (v1 && (v2 = sub_268229348(v1), , v2 > 0))
  {
    return 25;
  }

  else
  {
    return 50;
  }
}

void sub_268185F90()
{
  v1 = sub_2682E5CA0(v0);
  if (v1)
  {
    v2 = v1;
    v11 = MEMORY[0x277D84F90];
    v3 = sub_2683ABE58(v1);
    for (i = 0; ; ++i)
    {
      if (v3 == i)
      {

        return;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D616C90](i, v2);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v7 = [v5 tasks];
      sub_268186108();
      v8 = sub_2683CFCA8();

      if (v8 >> 62)
      {
        v9 = sub_2683D00A8();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9)
      {
        sub_2683D01F8();
        v10 = *(v11 + 16);
        sub_2683D0238();
        sub_2683D0248();
        sub_2683D0208();
      }

      else
      {
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }
}

unint64_t sub_268186108()
{
  result = qword_280253310;
  if (!qword_280253310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280253310);
  }

  return result;
}

unint64_t sub_26818614C()
{
  result = qword_28024E020;
  if (!qword_28024E020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024E018, &unk_2683E3D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E020);
  }

  return result;
}

uint64_t sub_2681861B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a1;
  v6 = [v5 title];
  v7 = [v6 spokenPhrase];

  v8 = sub_2683CFA78();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = [v5 title];
    v13 = [v12 spokenPhrase];

    v14 = sub_2683CFA78();
    v16 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_280252FB0, &qword_2683F1C00);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2683D1EC0;

    v18 = sub_2681D2F90(v5, a2);
    *(v17 + 56) = &type metadata for CasinoCommands.PunchoutToNotebookItem;
    *(v17 + 64) = &off_2879030B8;
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    *(v17 + 48) = v20;
    v21 = swift_allocObject();
    *(v21 + 16) = v14;
    *(v21 + 24) = v16;
    *(v21 + 32) = 0;
    *(v21 + 40) = 0;
    *(v21 + 48) = 1;
    *(v21 + 52) = 1;
    *(v21 + 56) = 0x4000000000000000;
    *(v21 + 64) = 0;
    *(v21 + 72) = &unk_2878FB328;
    *(v21 + 80) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_2683D1EC0;
    *(v22 + 32) = &unk_2683D6088;
    *(v22 + 40) = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    v24 = &unk_2683D8170;
  }

  else
  {

    v23 = 0;
    v24 = &unk_2683DC910;
  }

  v25 = [v5 contents];
  sub_268186954();
  v26 = sub_2683CFCA8();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280252FB0, &qword_2683F1C00);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2683D1EC0;

  v28 = sub_2681D2F90(v5, a2);
  *(v27 + 56) = &type metadata for CasinoCommands.PunchoutToNotebookItem;
  *(v27 + 64) = &off_2879030B8;
  *(v27 + 32) = v28;
  *(v27 + 40) = v29;
  *(v27 + 48) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = v26;
  *(v31 + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_2683D2890;
  *(v32 + 32) = v24;
  *(v32 + 40) = v23;
  *(v32 + 48) = &unk_2683D6098;
  *(v32 + 56) = v31;

  result = swift_allocObject();
  *(result + 16) = v32;
  *a3 = &unk_2683D60A0;
  a3[1] = result;
  return result;
}

uint64_t sub_268186518()
{
  OUTLINED_FUNCTION_14();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_6_3(v2);
  *v3 = v4;
  v3[1] = sub_2681865A4;

  return sub_26833CF60(v1);
}

uint64_t sub_2681865A4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v4 = *(v3 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_268186690(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268186BA4;

  return sub_26833CFFC();
}

uint64_t sub_268186738()
{
  OUTLINED_FUNCTION_14();
  memcpy((v0 + 16), v1, 0x48uLL);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_2681867D8;

  return sub_26833D294();
}

uint64_t sub_2681867D8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v4 = *(v3 + 88);
  v5 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_2681868C4()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

unint64_t sub_268186954()
{
  result = qword_28024D4C0;
  if (!qword_28024D4C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024D4C0);
  }

  return result;
}

uint64_t sub_268186998()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_268186A28()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_268186AB8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v0);
}

uint64_t OUTLINED_FUNCTION_0_20(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_268186BD4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_2683CFEA8();
  v4 = *(v2 + 8);

  return v4();
}

BOOL sub_268186C3C(uint64_t a1)
{
  sub_26813A144(a1, v3);
  v1 = v3[56] == 4;
  sub_26813A1A0(v3);
  return v1;
}

uint64_t sub_268186C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D410, &qword_2683D2390);
  v7 = sub_2683CC9C8();
  LOBYTE(v4) = *v4;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(type metadata accessor for SimpleDisambiguationItem() + 28);
  v15[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1 + v11, AssociatedTypeWitness);
  v13 = sub_2681DFC70(v4, v15);

  __swift_destroy_boxed_opaque_existential_0(v15);
  return v13;
}

uint64_t sub_268186D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_268186DC8, 0, 0);
}

void sub_268186DC8()
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[4];
  v5 = *(v2 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D410, &qword_2683D2390);
  sub_2683CC9B8();
  sub_2683CF258();
  OUTLINED_FUNCTION_7_9();
  v1[10] = v0;
  v7 = v2 + 16;
  v6 = *(v2 + 16);
  v15 = (*(v7 + 8) + 24);
  v16 = *v15 + **v15;
  v8 = (*v15)[1];
  v9 = swift_task_alloc();
  v1[11] = v9;
  *v9 = v1;
  v9[1] = sub_26813A870;
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[5];
  v13 = v1[2];
  v14 = v1[3];

  __asm { BRAA            X8, X16 }
}

uint64_t sub_268186F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2681342AC;

  return sub_268186D9C(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_26818703C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_26813A9F4();
}

void sub_268187108()
{
  OUTLINED_FUNCTION_30_0();
  v66 = v0;
  v67 = v1;
  v3 = v2;
  v4 = sub_2683CB598();
  v5 = OUTLINED_FUNCTION_0_3(v4);
  v63 = v6;
  v64 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v11 = v10 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E028, &unk_2683D60C0);
  v12 = OUTLINED_FUNCTION_1(v65);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v63 - v15;
  v17 = sub_2683CC748();
  v18 = OUTLINED_FUNCTION_0_3(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v63 - v26;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D410, &qword_2683D2390);
  v69 = v3;
  sub_2683CC9E8();
  sub_2683CC738();
  v28 = *(v20 + 8);
  v28(v27, v17);
  v29 = sub_268381174();
  switch(v29)
  {
    case 1:
      OUTLINED_FUNCTION_25_8();
      sub_2681879A0();
      OUTLINED_FUNCTION_30_4();
      sub_26813C7E0(v17 + 144, (v25 + 224));
      sub_26813CA00(v17 + 192, (v25 + 272));
      v42 = sub_2683CC9B8();
      OUTLINED_FUNCTION_23_8(v42);
      v70[0] = 1;
      OUTLINED_FUNCTION_42_4();
      OUTLINED_FUNCTION_22_6();
      sub_268189424(v70);
      v43 = OUTLINED_FUNCTION_8_10();
      v44(v43);

      OUTLINED_FUNCTION_31_4();
      v40 = &qword_28024E058;
      v41 = &qword_2683D6108;
      goto LABEL_9;
    case 2:
    case 3:
    case 6:
      v30 = sub_26837EECC(v29);
      v32 = v31;
      sub_26812C6B8();
      v33 = swift_allocError();
      v35 = v33;
      *v34 = v30;
      *(v34 + 8) = v32;
      *(v34 + 16) = 0;
      *(v34 + 24) = 0;
      v36 = 2;
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_25_8();
      sub_268187C00();
      OUTLINED_FUNCTION_30_4();
      sub_26813C7E0(v17 + 144, (v25 + 224));
      sub_26813CA00(v17 + 192, (v25 + 272));
      v52 = sub_2683CC9B8();
      OUTLINED_FUNCTION_23_8(v52);
      v70[0] = 4;
      OUTLINED_FUNCTION_42_4();
      OUTLINED_FUNCTION_22_6();
      sub_268189198(v70);
      v53 = OUTLINED_FUNCTION_8_10();
      v54(v53);

      OUTLINED_FUNCTION_31_4();
      v40 = &qword_28024E048;
      v41 = &qword_2683D60E0;
      goto LABEL_9;
    case 5:
      v55 = v66;
      v56 = *(v66 + 120);
      v57 = *(v66 + 136);

      sub_2683CB588();
      v58 = sub_2683CB548();
      v60 = v59;
      (*(v63 + 8))(v11, v64);
      sub_26813CA00(v55 + 80, &v78);
      sub_26813C7E0(v55 + 144, &v79);
      sub_26813CA00(v55 + 192, v80);
      v61 = v69;
      v80[5] = sub_2683CC9B8();
      v71 = &unk_2683D60F0;
      v72 = v56;
      v73 = sub_268187F80;
      v74 = 0;
      v75 = v57;
      v76 = v58;
      v77 = v60;
      v70[0] = 5;
      __swift_project_boxed_opaque_existential_1((v55 + 232), *(v55 + 256));

      v62 = sub_268189328(v70);
      v62(v67, v61);

      v40 = &qword_28024E050;
      v41 = &qword_2683D60F8;
      goto LABEL_9;
    case 7:
      sub_2683CC9E8();
      v45 = sub_2683CC738();
      v47 = v46;
      v28(v25, v17);
      sub_26812C6B8();
      v33 = swift_allocError();
      v35 = v33;
      *v34 = v45;
      *(v34 + 8) = v47;
      *(v34 + 16) = 0;
      *(v34 + 24) = 0;
      v36 = 1;
LABEL_6:
      *(v34 + 32) = v36;
      *v16 = v33;
      v16[8] = 0;
      v48 = *MEMORY[0x277D5BC30];
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E030, &qword_2683D60D0);
      OUTLINED_FUNCTION_1(v49);
      (*(v50 + 104))(v16, v48);
      v51 = v35;
      sub_26818A0C8(&qword_28024E038, &qword_28024E028, &unk_2683D60C0);
      sub_2683CBF38();
      sub_26812D9E0(v16, &qword_28024E028, &unk_2683D60C0);

      break;
    default:
      OUTLINED_FUNCTION_25_8();
      sub_268187740();
      OUTLINED_FUNCTION_30_4();
      sub_26813C7E0(v17 + 144, (v25 + 224));
      sub_26813CA00(v17 + 192, (v25 + 272));
      v37 = sub_2683CC9B8();
      OUTLINED_FUNCTION_23_8(v37);
      v70[0] = 0;
      OUTLINED_FUNCTION_42_4();
      OUTLINED_FUNCTION_22_6();
      sub_268189520(v70);
      v38 = OUTLINED_FUNCTION_8_10();
      v39(v38);

      OUTLINED_FUNCTION_31_4();
      v40 = &qword_28024E068;
      v41 = &qword_2683D6118;
LABEL_9:
      sub_26812D9E0(v70, v40, v41);
      break;
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_268187740()
{
  OUTLINED_FUNCTION_30_0();
  v4 = v3;
  v5 = sub_2683CB598();
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBE0 != -1)
  {
    swift_once();
  }

  *(v12 + 32) = sub_2683CD158();
  *(v12 + 40) = v13;
  v14 = OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_23_2(v14, &off_2878FFB60);
  OUTLINED_FUNCTION_20_2();
  v15 = swift_allocObject();
  sub_268128148(&v22, v15 + 16);

  __swift_destroy_boxed_opaque_existential_0(&v23);
  v16 = *(v0 + 120);
  v17 = qword_28024C8C0;

  if (v17 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_21_7(&qword_28027C8D0);

  sub_2683CB588();
  sub_2683CB548();
  v18 = OUTLINED_FUNCTION_19_8();
  v19(v18);
  *v4 = v12;
  v4[1] = &unk_2683D6138;
  v4[2] = 0;
  v4[3] = &unk_2683D6148;
  v4[4] = v15;
  v4[5] = &unk_2683D6158;
  v4[6] = v16;
  v4[7] = sub_268188224;
  v4[8] = 0;
  v4[9] = sub_26818823C;
  v4[10] = 0;
  v4[11] = v21;
  v4[12] = v2;
  v4[13] = v20;
  OUTLINED_FUNCTION_19_10();
  v4[18] = sub_268377A04;
  v4[19] = 0;
  v4[20] = v11;
  v4[21] = v1;
  OUTLINED_FUNCTION_29_0();
}

void sub_2681879A0()
{
  OUTLINED_FUNCTION_30_0();
  v4 = v3;
  v5 = sub_2683CB598();
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBC0 != -1)
  {
    swift_once();
  }

  *(v12 + 32) = sub_2683CD158();
  *(v12 + 40) = v13;
  v14 = OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_23_2(v14, &off_2878FFB60);
  OUTLINED_FUNCTION_20_2();
  v15 = swift_allocObject();
  sub_268128148(&v22, v15 + 16);

  __swift_destroy_boxed_opaque_existential_0(&v23);
  v16 = *(v0 + 120);
  v17 = qword_28024C8B8;

  if (v17 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_21_7(&qword_28027C8B0);

  sub_2683CB588();
  sub_2683CB548();
  v18 = OUTLINED_FUNCTION_19_8();
  v19(v18);
  *v4 = v12;
  v4[1] = &unk_2683D6180;
  v4[2] = 0;
  v4[3] = &unk_2683D6190;
  v4[4] = v15;
  v4[5] = &unk_2683D61A0;
  v4[6] = v16;
  v4[7] = sub_268188458;
  v4[8] = 0;
  v4[9] = sub_2681884E4;
  v4[10] = 0;
  v4[11] = v21;
  v4[12] = v2;
  v4[13] = v20;
  OUTLINED_FUNCTION_19_10();
  v4[18] = sub_2683779DC;
  v4[19] = 0;
  v4[20] = v11;
  v4[21] = v1;
  OUTLINED_FUNCTION_29_0();
}

void sub_268187C00()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_2683CB598();
  v5 = OUTLINED_FUNCTION_0_3(v4);
  v22 = v6;
  v23 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBA0 != -1)
  {
    swift_once();
  }

  *(v12 + 32) = sub_2683CD158();
  *(v12 + 40) = v13;
  sub_268189954(v0, v25);
  v14 = swift_allocObject();
  memcpy((v14 + 16), v25, 0x118uLL);
  v15 = swift_allocObject();
  *(v15 + 16) = &unk_2683D61E8;
  *(v15 + 24) = v14;
  v25[3] = OUTLINED_FUNCTION_28_6();
  v25[4] = &off_2878FFB60;
  v25[0] = v14;
  sub_26813CA00(v25, v24);
  OUTLINED_FUNCTION_20_2();
  v16 = swift_allocObject();
  sub_268128148(v24, v16 + 16);

  __swift_destroy_boxed_opaque_existential_0(v25);
  sub_268189954(v1, v25);
  v17 = swift_allocObject();
  memcpy((v17 + 16), v25, 0x118uLL);
  v18 = *(v1 + 128);

  sub_2683CB588();
  v19 = sub_2683CB548();
  v21 = v20;
  (*(v22 + 8))(v11, v23);
  *v3 = v12;
  *(v3 + 8) = &unk_2683D61F8;
  *(v3 + 16) = v15;
  *(v3 + 24) = &unk_2683D6208;
  *(v3 + 32) = v16;
  *(v3 + 40) = &unk_2683D6218;
  *(v3 + 48) = v17;
  *(v3 + 56) = sub_268188C88;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *(v3 + 120) = &unk_2683D6228;
  *(v3 + 128) = v18;
  *(v3 + 136) = 2;
  *(v3 + 137) = v25[0];
  *(v3 + 140) = *(v25 + 3);
  *(v3 + 144) = sub_268377A1C;
  *(v3 + 152) = 0;
  *(v3 + 160) = v19;
  *(v3 + 168) = v21;
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268187ED4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_268184258(a1, a2);
}

uint64_t sub_268187F80(uint64_t a1, uint64_t a2)
{
  v4 = sub_2683CE0B8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_2683CE0A8();
  v8 = sub_2683CDD18();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_2683CDD08();
  sub_268369814(a1, a2);
  sub_2683CDCC8();

  sub_2683CE188();

  return v7;
}

uint64_t sub_268188034(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = [v3 title];
  sub_2683CFEA8();

  v5 = *(v2 + 8);

  return v5();
}

uint64_t sub_2681880D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2681880F4, 0, 0);
}

uint64_t sub_2681880F4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_3(v1);

  return sub_268162C20(v3);
}

uint64_t sub_268188178(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_268184480(a1, a2);
}

void *sub_26818823C(void **a1)
{
  v1 = *a1;
  sub_26813F368();
  v2 = v1;
  return v1;
}

uint64_t sub_268188270(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268137D60;

  return sub_2681F25CC(a1);
}

uint64_t sub_268188308(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_268188328, 0, 0);
}

uint64_t sub_268188328()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_3(v1);

  return sub_268162D30(v3);
}

uint64_t sub_2681883AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_268184588(a1, a2);
}

uint64_t sub_268188470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = sub_2683CE0B8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_2683CE0A8();
  sub_26836945C();
  a5();

  return v9;
}

id sub_2681884E4(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *a1;
  sub_268186108();
  v10 = sub_2683CB0D8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
  v11 = v9;
  v12 = sub_26835E66C(v9, 0, 0, 0, 0, v8, v6, 0, 0, 0, 0, 0, 0, 0);
  sub_26813F368();
  return v12;
}

uint64_t sub_26818861C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26813D6E8;

  return sub_2681F26F0(a1);
}

uint64_t sub_2681886B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_268188760(a1, a2);
}

uint64_t sub_268188760(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268188800, 0, 0);
}

uint64_t sub_268188800()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_26839D0D0(v1);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  if (v4)
  {
    v5 = *(v0 + 40);
    sub_2683CFB38();

    v6 = sub_2683CF168();
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
    (*(*(v6 - 8) + 32))(v3, v2, v6);
  }

  else
  {
    v7 = sub_2683CF168();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
    sub_2683CFB38();
    if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
    {
      sub_26812D9E0(*(v0 + 40), &unk_28024E7C0, &unk_2683D6CA0);
    }
  }

  v8 = *(v0 + 40);

  OUTLINED_FUNCTION_40();

  return v9();
}

uint64_t sub_268188958()
{
  OUTLINED_FUNCTION_7();
  v1 = v0;
  v3 = *v2;
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_1_3(v6);
  *v7 = v8;
  v7[1] = sub_2681342AC;

  return v10(v1, v3);
}

uint64_t sub_268188A50(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_268188A70, 0, 0);
}

uint64_t sub_268188A70()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_3(v1);

  return sub_2681629E4(v3);
}

uint64_t sub_268188AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_268188B14, 0, 0);
}

uint64_t sub_268188B14()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*(v0 + 24) + 120);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_4(v2);
  *v3 = v4;
  v3[1] = sub_268188BA8;
  v5 = *(v0 + 16);

  return sub_2681847B0();
}

uint64_t sub_268188BA8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5();
}

uint64_t sub_268188C88()
{
  v0 = sub_2683CE0B8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_2683CE0A8();
  v4 = sub_2683CDD18();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_2683CDD08();
  v7 = sub_2683CDFA8();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_2683CDF98();
  v10 = sub_2683CDCB8();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_2683CDCA8();
  sub_2683CDF68();

  sub_2683CDCC8();

  sub_2683CE188();

  return v3;
}

uint64_t sub_268188D80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26813D6E8;

  return sub_2681F2814();
}

void *sub_268188E10()
{
  OUTLINED_FUNCTION_12_8();
  v1[32] = v3;
  v1[33] = 0;
  v4 = *(*v1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(*v1 + 128)) = 0;
  memcpy(v1 + 2, v2, 0xC8uLL);
  sub_268128148(v0, (v1 + 27));
  return v1;
}

void *sub_268188EA4()
{
  OUTLINED_FUNCTION_12_8();
  v1[47] = v3;
  v1[48] = 0;
  v4 = *(*v1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(*v1 + 128)) = 0;
  memcpy(v1 + 2, v2, 0x140uLL);
  sub_268128148(v0, (v1 + 42));
  return v1;
}

void sub_268188F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_37_3();
  a61 = v62;
  a62 = v63;
  v65 = sub_2681340E8(v64, &a15, &qword_28024D490, &qword_2683D2670);
  OUTLINED_FUNCTION_27_4(v65);
  v66 = OUTLINED_FUNCTION_55_0();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);
  OUTLINED_FUNCTION_9_9(v68);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_16_12();
  OUTLINED_FUNCTION_0_21(&qword_28024E1B0);
  OUTLINED_FUNCTION_11_13();
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_36_4();
}

void sub_268188FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_37_3();
  a61 = v62;
  a62 = v63;
  v65 = sub_2681340E8(v64, &a15, &qword_28024D4A0, &unk_2683D2680);
  OUTLINED_FUNCTION_27_4(v65);
  v66 = OUTLINED_FUNCTION_55_0();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);
  OUTLINED_FUNCTION_9_9(v68);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_16_12();
  OUTLINED_FUNCTION_0_21(&qword_28024E198);
  OUTLINED_FUNCTION_11_13();
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_36_4();
}

void sub_268189068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_37_3();
  a61 = v62;
  a62 = v63;
  v65 = sub_2681340E8(v64, &a15, &qword_28024DF60, &unk_2683D5D30);
  OUTLINED_FUNCTION_27_4(v65);
  v66 = OUTLINED_FUNCTION_55_0();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);
  OUTLINED_FUNCTION_9_9(v68);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_16_12();
  OUTLINED_FUNCTION_0_21(&qword_28024E1E0);
  OUTLINED_FUNCTION_11_13();
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_36_4();
}

void sub_268189100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_37_3();
  a61 = v62;
  a62 = v63;
  v65 = sub_2681340E8(v64, &a15, qword_28024DF68, &unk_2683D5D40);
  OUTLINED_FUNCTION_27_4(v65);
  v66 = OUTLINED_FUNCTION_55_0();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);
  OUTLINED_FUNCTION_9_9(v68);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_16_12();
  OUTLINED_FUNCTION_0_21(&qword_28024E1C8);
  OUTLINED_FUNCTION_11_13();
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_36_4();
}

uint64_t sub_268189198(uint64_t a1)
{
  sub_2681340E8(a1, &v8, &qword_28024E048, &qword_2683D60E0);
  sub_26813CA00(v1, v7);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E0B8, &qword_2683D61D0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v8 = sub_268188EA4();
  sub_26818A0C8(&qword_28024E0C0, &qword_28024E0B8, &qword_2683D61D0);
  v5 = sub_2683CBDE8();

  return v5;
}

uint64_t sub_268189294()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_268187ED4(v3, v4);
}

uint64_t sub_268189328(uint64_t a1)
{
  sub_2681340E8(a1, &v8, &qword_28024E050, &qword_2683D60F8);
  sub_26813CA00(v1, &v7);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E0A0, &qword_2683D61C0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v8 = sub_268188E10();
  sub_26818A0C8(&qword_28024E0A8, &qword_28024E0A0, &qword_2683D61C0);
  v5 = sub_2683CBDE8();

  return v5;
}

uint64_t sub_268189424(uint64_t a1)
{
  sub_2681340E8(a1, &v8, &qword_28024E058, &qword_2683D6108);
  sub_26813CA00(v1, v7);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E088, &qword_2683D6170);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v8 = sub_268188EA4();
  sub_26818A0C8(&qword_28024E090, &qword_28024E088, &qword_2683D6170);
  v5 = sub_2683CBDE8();

  return v5;
}

uint64_t sub_268189520(uint64_t a1)
{
  sub_2681340E8(a1, &v8, &qword_28024E068, &qword_2683D6118);
  sub_26813CA00(v1, v7);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E070, &qword_2683D6120);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v8 = sub_268188EA4();
  sub_26818A0C8(&qword_28024E078, &qword_28024E070, &qword_2683D6120);
  v5 = sub_2683CBDE8();

  return v5;
}

uint64_t sub_26818961C()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_2681880D4(v3, v4);
}

uint64_t sub_2681896A0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_268133EC8;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_268188178(v3, v4);
}

uint64_t sub_268189734()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_3(v1);

  return sub_268188270(v3);
}

uint64_t sub_2681897B8()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_268188308(v3, v4);
}

uint64_t sub_26818983C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_2681883AC(v3, v4);
}

uint64_t sub_2681898D0()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_3(v1);

  return sub_26818861C(v3);
}

uint64_t sub_26818998C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_2681886B4(v3, v4);
}

uint64_t sub_268189A20()
{
  OUTLINED_FUNCTION_13_3();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_1_3(v3);
  *v4 = v5;
  v4[1] = sub_2681342AC;
  v6 = OUTLINED_FUNCTION_0_8();

  return v7(v6);
}

uint64_t sub_268189AD4()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_268188A50(v3, v4);
}

uint64_t objectdestroy_26Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v1 = *(v0 + 136);

  v2 = *(v0 + 144);

  v3 = *(v0 + 152);

  if (*(v0 + 200) == 1)
  {
    v4 = *(v0 + 160);
  }

  else if (!*(v0 + 200))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  __swift_destroy_boxed_opaque_existential_0((v0 + 248));

  return MEMORY[0x2821FE8E8](v0, 296, 7);
}

uint64_t sub_268189BF4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_268188AF4(v3, v4, v5);
}

uint64_t sub_268189C88()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26813D6E0;

  return sub_268188D80();
}

void sub_268189D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_37_3();
  a61 = v62;
  a62 = v63;
  v65 = sub_2681340E8(v64, &a15, &qword_28024E150, &qword_2683D62A0);
  OUTLINED_FUNCTION_27_4(v65);
  v66 = OUTLINED_FUNCTION_55_0();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);
  OUTLINED_FUNCTION_9_9(v68);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_16_12();
  OUTLINED_FUNCTION_0_21(&qword_28024E160);
  OUTLINED_FUNCTION_11_13();
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_36_4();
}

void sub_268189DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_37_3();
  a61 = v62;
  a62 = v63;
  v65 = sub_2681340E8(v64, &a15, &qword_28024E130, &qword_2683E3DF0);
  OUTLINED_FUNCTION_27_4(v65);
  v66 = OUTLINED_FUNCTION_55_0();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);
  OUTLINED_FUNCTION_9_9(v68);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_16_12();
  OUTLINED_FUNCTION_0_21(&qword_28024E140);
  OUTLINED_FUNCTION_11_13();
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_36_4();
}

void sub_268189E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_37_3();
  a61 = v62;
  a62 = v63;
  v65 = sub_2681340E8(v64, &a15, &qword_28024E110, &qword_2683D6270);
  OUTLINED_FUNCTION_27_4(v65);
  v66 = OUTLINED_FUNCTION_55_0();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);
  OUTLINED_FUNCTION_9_9(v68);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_16_12();
  OUTLINED_FUNCTION_0_21(&qword_28024E120);
  OUTLINED_FUNCTION_11_13();
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_36_4();
}

uint64_t sub_268189ED8(uint64_t a1)
{
  sub_2681340E8(a1, &v7, &qword_28024E0F0, &qword_2683D6258);
  sub_26813CA00(v1, &v6);
  v2 = OUTLINED_FUNCTION_55_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_9_9(v4);
  v7 = sub_268188E10();
  OUTLINED_FUNCTION_0_21(&qword_28024E100);
  sub_2683CBDE8();
  OUTLINED_FUNCTION_7_9();
  return OUTLINED_FUNCTION_55_0();
}

void sub_268189F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_37_3();
  a61 = v62;
  a62 = v63;
  v65 = sub_2681340E8(v64, &a15, &qword_28024E0D0, &qword_2683D6240);
  OUTLINED_FUNCTION_27_4(v65);
  v66 = OUTLINED_FUNCTION_55_0();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);
  OUTLINED_FUNCTION_9_9(v68);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_16_12();
  OUTLINED_FUNCTION_0_21(&qword_28024E0E0);
  OUTLINED_FUNCTION_11_13();
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_36_4();
}

void sub_26818A030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_37_3();
  a61 = v62;
  a62 = v63;
  v65 = sub_2681340E8(v64, &a15, &qword_28024E170, &unk_2683D9BD0);
  OUTLINED_FUNCTION_27_4(v65);
  v66 = OUTLINED_FUNCTION_55_0();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);
  OUTLINED_FUNCTION_9_9(v68);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_16_12();
  OUTLINED_FUNCTION_0_21(&qword_28024E180);
  OUTLINED_FUNCTION_11_13();
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_36_4();
}

uint64_t sub_26818A0C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26818A110(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26818A198(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
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

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 >= a2)
  {
LABEL_26:
    v18 = (result + v7 + 1) & ~v7;
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *(((v9 + v18) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(v18, v6, v4);
    }
  }

  else
  {
    v10 = ((v9 + ((v7 + 1) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 136;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
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

    switch(v15)
    {
      case 1:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v8 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26818A2F0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
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
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 136;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFF78)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v12] = 0;
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
        *&a1[v12] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v19 = &a1[v10 + 1] & ~v10;
          if (v8 < 0x7FFFFFFF)
          {
            v20 = (v11 + v19) & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v20 + 104) = 0u;
              *(v20 + 88) = 0u;
              *(v20 + 72) = 0u;
              *(v20 + 56) = 0u;
              *(v20 + 40) = 0u;
              *(v20 + 24) = 0u;
              *(v20 + 8) = 0u;
              *(v20 + 120) = 0u;
              *v20 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v20 + 24) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFF78)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) != 0xFFFFFF78)
    {
      v18 = ~v9 + a2;
      bzero(a1, ((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 136);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        break;
      case 2:
        *&a1[v12] = v17;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v12] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_21(unint64_t *a1)
{

  return sub_26818A0C8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_7_9()
{
}

uint64_t OUTLINED_FUNCTION_9_9(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_11_13()
{

  return sub_2683CBDE8();
}

void OUTLINED_FUNCTION_19_10()
{
  *(v1 + 112) = v3;
  *(v1 + 120) = v0;
  *(v1 + 128) = v2;
  *(v1 + 136) = 1;
  v5 = *(v4 - 120);
  *(v1 + 140) = *(v4 - 117);
  *(v1 + 137) = v5;
}

uint64_t OUTLINED_FUNCTION_22_6()
{

  return sub_2681340E8(v0 + 552, v0 + 56, v1, v2);
}

void *OUTLINED_FUNCTION_23_8(uint64_t a1)
{
  *(v1 + 544) = a1;

  return memcpy((v2 + 8), (v1 + 552), 0xB0uLL);
}

void *OUTLINED_FUNCTION_26_6()
{

  return sub_268188EA4();
}

uint64_t OUTLINED_FUNCTION_27_4(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_26813CA00(v1, va);
}

uint64_t OUTLINED_FUNCTION_28_6()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));

  return type metadata accessor for SetTaskAttributeCATPatternsExecutor();
}

uint64_t OUTLINED_FUNCTION_30_4()
{

  return sub_26813CA00(v1 + 80, v0 + 416);
}

uint64_t OUTLINED_FUNCTION_31_4()
{

  return sub_26812D9E0(v0 + 552, v1, v2);
}

void sub_26818A750()
{
  qword_28027C7C0 = 0xD000000000000028;
  *algn_28027C7C8 = 0x80000002683FD670;
  qword_28027C7D0 = 0x6156676E69727473;
  unk_28027C7D8 = 0xEB0000000065756CLL;
}

uint64_t sub_26818A798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2683D0598();
  }
}

uint64_t sub_26818A7B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2683D0598();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26818A83C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E298, &qword_2683D6550);
  v3 = OUTLINED_FUNCTION_0_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26818AD88();
  sub_2683D0718();
  sub_2683D0518();
  return (*(v5 + 8))(v9, v2);
}

uint64_t sub_26818A970(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E288, &qword_2683D6548);
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v14 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26818AD88();
  sub_2683D06F8();
  if (!v1)
  {
    v12 = sub_2683D0478();
    (*(v6 + 8))(v10, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v12;
}

uint64_t sub_26818AAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26818A7B4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26818AAF0(uint64_t a1)
{
  v2 = sub_26818AD88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26818AB2C(uint64_t a1)
{
  v2 = sub_26818AD88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26818AB68@<X0>(void *a1@<X8>)
{
  if (qword_28024C890 != -1)
  {
    swift_once();
  }

  v2 = *algn_28027C7C8;
  v3 = qword_28027C7D0;
  v4 = unk_28027C7D8;
  *a1 = qword_28027C7C0;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_26818ABF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26818A970(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_26818AC24(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_26818A83C(a1);
}

unint64_t sub_26818AC54(void *a1)
{
  a1[1] = sub_26818AC8C();
  a1[2] = sub_26818ACE0();
  result = sub_26818AD34();
  a1[3] = result;
  return result;
}

unint64_t sub_26818AC8C()
{
  result = qword_28024E270;
  if (!qword_28024E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E270);
  }

  return result;
}

unint64_t sub_26818ACE0()
{
  result = qword_28024E278;
  if (!qword_28024E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E278);
  }

  return result;
}

unint64_t sub_26818AD34()
{
  result = qword_28024E280;
  if (!qword_28024E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E280);
  }

  return result;
}

unint64_t sub_26818AD88()
{
  result = qword_28024E290;
  if (!qword_28024E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E290);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DIStringValue.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_26818AE8C()
{
  result = qword_28024E2A0;
  if (!qword_28024E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E2A0);
  }

  return result;
}

unint64_t sub_26818AEE4()
{
  result = qword_28024E2A8;
  if (!qword_28024E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E2A8);
  }

  return result;
}

unint64_t sub_26818AF3C()
{
  result = qword_28024E2B0;
  if (!qword_28024E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E2B0);
  }

  return result;
}

uint64_t sub_26818AFA4()
{
  OUTLINED_FUNCTION_14();
  v0[86] = v1;
  v0[85] = v2;
  v3 = sub_2683CB668();
  v0[87] = v3;
  v4 = *(v3 - 8);
  v0[88] = v4;
  v5 = *(v4 + 64) + 15;
  v0[89] = swift_task_alloc();
  v6 = sub_2683CCBA8();
  v0[90] = v6;
  v7 = *(v6 - 8);
  v0[91] = v7;
  v8 = *(v7 + 64) + 15;
  v0[92] = swift_task_alloc();
  v0[93] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26818B0CC, 0, 0);
}

uint64_t sub_26818B0CC()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v44 = *(v0 + 712);
  v4 = *(v0 + 688);
  v5 = *(v0 + 680);
  v6 = v4[3];
  v7 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v6);
  v8 = (*(v7 + 32))(v6, v7);
  v9 = *(v2 + 16);
  v10 = OUTLINED_FUNCTION_18_10();
  v48 = v11;
  v11(v10);
  sub_26813CA00(v4, v0 + 384);
  OUTLINED_FUNCTION_20_2();
  v49 = swift_allocObject();
  sub_268128148((v0 + 384), v49 + 16);
  v12 = v4[3];
  v13 = v4[4];
  v14 = __swift_project_boxed_opaque_existential_1(v4, v12);
  *(v0 + 448) = v12;
  *(v0 + 456) = *(v13 + 16);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 424));
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, v14, v12);
  *(v0 + 664) = sub_268129504(0, &qword_28024D340, 0x277CD4058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E2B8, &qword_2683D66C8);
  v16 = sub_2683CFAD8();
  v46 = v17;
  v47 = v16;
  *(v0 + 464) = 0u;
  *(v0 + 480) = 0u;
  *(v0 + 496) = 0;
  sub_2683CCC48();
  v18 = *(v0 + 536);
  __swift_project_boxed_opaque_existential_1((v0 + 504), *(v0 + 528));
  OUTLINED_FUNCTION_9_10();
  sub_2683CC088();
  sub_26818F510(v0 + 464, v0 + 584, &qword_28024E2C0, &unk_2683D66D0);
  if (*(v0 + 608))
  {
    OUTLINED_FUNCTION_20_2();
    v19 = swift_allocObject();
    v20 = *(v0 + 600);
    *(v19 + 16) = *(v0 + 584);
    *(v19 + 32) = v20;
    *(v19 + 48) = *(v0 + 616);
    v21 = &off_287900140;
    v22 = &type metadata for NotebookReferenceResolver;
  }

  else
  {
    sub_26812D9E0(v0 + 584, &qword_28024E2C0, &unk_2683D66D0);
    v19 = 0;
    v22 = 0;
    v21 = 0;
    *(v0 + 552) = 0u;
  }

  v42 = *(v0 + 736);
  v43 = *(v0 + 744);
  v45 = *(v0 + 728);
  v41 = *(v0 + 720);
  v23 = *(v0 + 712);
  v24 = *(v0 + 704);
  *(v0 + 544) = v19;
  *(v0 + 568) = v22;
  v25 = *(v0 + 696);
  *(v0 + 576) = v21;
  if (v8)
  {
    v26 = "reminderListType";
  }

  else
  {
    v26 = "reateNote";
  }

  if (v8)
  {
    v27 = 0xD000000000000015;
  }

  else
  {
    v27 = 0xD000000000000013;
  }

  v28 = v26 | 0x8000000000000000;
  v29 = type metadata accessor for InstalledAppProvider();
  *(v0 + 648) = v29;
  *(v0 + 656) = &off_2879042B8;
  v30 = __swift_allocate_boxed_opaque_existential_0((v0 + 624));
  v31 = *(v24 + 16);
  v31(v30 + *(v29 + 20), v23, v25);
  *v30 = 0;
  v32 = type metadata accessor for RegexAppSearcher();
  *(v0 + 80) = v32;
  *(v0 + 88) = &off_28790BB20;
  v33 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  sub_26813CA00(v0 + 624, v33);
  v31(v33 + *(v32 + 20), v23, v25);
  *(v0 + 120) = &type metadata for InferredAppResolver;
  *(v0 + 128) = &off_287902D60;
  v34 = swift_allocObject();
  *(v0 + 96) = v34;
  sub_26813CA00(v0 + 624, v34 + 32);
  sub_26818F510(v0 + 544, v34 + 72, &qword_28024E2C8, &unk_2683D6950);
  *(v34 + 16) = v27;
  *(v34 + 24) = v28;
  (*(v24 + 8))(v23, v25);
  sub_26813CA00(v0 + 624, v0 + 16);
  sub_26812D9E0(v0 + 544, &qword_28024E2C8, &unk_2683D6950);
  __swift_destroy_boxed_opaque_existential_0((v0 + 624));
  *(v0 + 136) = 0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 504));
  *(v0 + 168) = &type metadata for AppResolver;
  *(v0 + 176) = &off_28790B8A0;
  v35 = swift_allocObject();
  *(v0 + 144) = v35;
  sub_26818CE54(v0 + 16, v35 + 16);
  sub_26818F510(v0 + 424, v0 + 224, &qword_28024E2D0, &qword_2683D66E0);
  *(v0 + 184) = v47;
  *(v0 + 192) = v46;
  *(v0 + 200) = 0;
  *(v0 + 208) = &unk_2683D66B0;
  *(v0 + 216) = 0;
  sub_26818CEB0(v0 + 144, v0 + 264);
  v36 = OUTLINED_FUNCTION_18_10();
  v48(v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E2D8, &qword_2683D66E8);
  swift_allocObject();
  v37 = sub_2681E514C((v0 + 264), v42, &unk_2683D66C0, v49);
  (*(v45 + 8))(v43, v41);
  sub_26812D9E0(v0 + 424, &qword_28024E2D0, &qword_2683D66E0);
  sub_26818DAA0(v0 + 144);
  sub_26818DAF4(v0 + 16);
  sub_26812D9E0(v0 + 464, &qword_28024E2C0, &unk_2683D66D0);
  *(v0 + 672) = v37;
  sub_26818A0C8(&qword_28024E2E0, &qword_28024E2D8, &qword_2683D66E8);
  sub_2683CBF28();

  v38 = OUTLINED_FUNCTION_1_16();

  return v39(v38);
}

uint64_t sub_26818B6B0()
{
  v1 = type metadata accessor for StringLocalizer();
  *(v0 + 56) = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  *(v0 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26818B740, 0, 0);
}

uint64_t sub_26818B740()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[8];
  sub_2683CCC48();
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_9_10();
  sub_2683CC088();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_28024C8D0 != -1)
  {
    OUTLINED_FUNCTION_7_10();
  }

  v3 = qword_28027C938;
  *(v0[8] + *(v0[7] + 20)) = qword_28027C938;
  v4 = v3;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26818B860;
  v6 = v0[8];

  return sub_2681E5AB8();
}

uint64_t sub_26818B860()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  sub_26818F054(v3, type metadata accessor for StringLocalizer);

  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_9_0();

  return v8(v7);
}

uint64_t sub_26818B994(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26818B9B4, 0, 0);
}

uint64_t sub_26818B9B4()
{
  OUTLINED_FUNCTION_14();
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_26818BA70;

  return sub_2681347D4(dword_2683D66F8);
}

uint64_t sub_26818BA70()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1_16();

  return v7(v6);
}

uint64_t sub_26818BB70(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_26818BB90, 0, 0);
}

uint64_t sub_26818BB90()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 32);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_26818BC40;

  return sub_2681299E4(v3, v2);
}

uint64_t sub_26818BC40()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  v6 = *(v4 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 56) = v3;

    return MEMORY[0x2822009F8](sub_26818BD7C, 0, 0);
  }
}