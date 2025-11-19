uint64_t sub_23129C7C8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_28();
  sub_23129C844();
  v0 = OUTLINED_FUNCTION_5_16();
  v1(v0);

  v2 = OUTLINED_FUNCTION_13_15();

  return v3(v2);
}

void sub_23129C844()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v50 = sub_231369D00();
  v3 = OUTLINED_FUNCTION_0_0(v50);
  v47 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_1();
  v44 = v7;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  v46 = v9;
  OUTLINED_FUNCTION_18();
  v10 = sub_231366880();
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v18 = v17 - v16;
  v49 = sub_2313668A0();
  v19 = OUTLINED_FUNCTION_0_0(v49);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_4();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v28 = OUTLINED_FUNCTION_40_0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_1();
  v48 = v31;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_23_11();
  sub_23129CC40(v2, v0);
  sub_231366870();
  v33 = *(v13 + 104);
  v33(v18, *MEMORY[0x277CC9980], v10);
  v45 = sub_231366890();
  v34 = *(v13 + 8);
  v35 = OUTLINED_FUNCTION_80();
  v34(v35);
  v36 = *(v21 + 8);
  v36(v26, v49);
  sub_231366870();
  v33(v18, *MEMORY[0x277CC99B8], v10);
  v37 = sub_231366890();
  v38 = OUTLINED_FUNCTION_80();
  v34(v38);
  v39 = v48;
  v36(v26, v49);
  sub_2311E66F0(v0, v48, &qword_27DD43358, &qword_23136FA90);
  v40 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_19_13(v40, v41, v50);
  if (v42)
  {
    sub_2311D1F18(v0, &qword_27DD43358, &qword_23136FA90);
  }

  else
  {
    (*(v47 + 32))(v46, v48, v50);
    if ((v45 - 5) <= 4 && (v37 - 7) >= 0xFFFFFFFFFFFFFFFBLL)
    {
      sub_231369CB0();
      sub_231369CF0();
      v43 = *(v47 + 8);
      v43(v44, v50);
      v43(v46, v50);
      sub_2311D1F18(v0, &qword_27DD43358, &qword_23136FA90);
      goto LABEL_8;
    }

    (*(v47 + 8))(v46, v50);
    v39 = v0;
  }

  sub_2311D1F18(v39, &qword_27DD43358, &qword_23136FA90);
LABEL_8:
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_23129CC40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_231369630();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C68, &qword_231378D20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v47 = &v46 - v13;
  v14 = sub_2313696B0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v51 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v23 = a1;
  v24 = v10;
  __swift_project_boxed_opaque_existential_1(v23, v21);
  sub_2313683A0();
  v25 = sub_23136A200();

  v27 = 0;
  v62 = *(v25 + 16);
  v57 = v15 + 16;
  v56 = *MEMORY[0x277D1EAB0];
  v54 = (v4 + 8);
  v55 = (v4 + 104);
  v53 = (v15 + 8);
  v59 = v15;
  v50 = (v15 + 32);
  v52 = MEMORY[0x277D84F90];
  v58 = v25;
  while (v62 != v27)
  {
    if (v27 >= *(v25 + 16))
    {
      __break(1u);
      return result;
    }

    v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v28 = *(v59 + 72);
    v63 = v27;
    v60 = v28;
    (*(v59 + 16))(v20, v25 + v61 + v28 * v27, v14);
    sub_231369680();
    (*v55)(v8, v56, v3);
    sub_2312A0900(&qword_27DD43C18, MEMORY[0x277D1EB58]);
    sub_23136A140();
    sub_23136A140();
    if (v66 == v64 && v67 == v65)
    {
      v34 = *v54;
      (*v54)(v8, v3);
      v34(v24, v3);

LABEL_11:
      v35 = *v50;
      (*v50)(v51, v20, v14);
      v36 = v52;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v36;
      v68 = v36;
      v49 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2311F5958(0, *(v36 + 16) + 1, 1);
        v38 = v68;
      }

      v39 = v63;
      v41 = v60;
      v40 = v61;
      v43 = *(v38 + 16);
      v42 = *(v38 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_2311F5958(v42 > 1, v43 + 1, 1);
        v39 = v63;
        v38 = v68;
      }

      v27 = v39 + 1;
      *(v38 + 16) = v43 + 1;
      v52 = v38;
      result = (v49)(v38 + v40 + v43 * v41, v51, v14);
      v25 = v58;
    }

    else
    {
      v30 = sub_23136A900();
      v31 = v14;
      v32 = v8;
      v33 = *v54;
      (*v54)(v32, v3);
      v33(v24, v3);
      v8 = v32;
      v14 = v31;

      if (v30)
      {
        goto LABEL_11;
      }

      result = (*v53)(v20, v31);
      v27 = v63 + 1;
      v25 = v58;
    }
  }

  v44 = v47;
  sub_231217DAC(v52, v47);

  if (__swift_getEnumTagSinglePayload(v44, 1, v14) == 1)
  {
    sub_2311D1F18(v44, &qword_27DD43C68, &qword_231378D20);
    v45 = sub_231369D00();
    return __swift_storeEnumTagSinglePayload(v48, 1, 1, v45);
  }

  else
  {
    sub_231369670();
    return (*v53)(v44, v14);
  }
}

uint64_t sub_23129D1F8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311F93E8;

  return sub_23129C724();
}

uint64_t sub_23129D290()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_231366750();
  v1[4] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_43();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23129D334()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_28();
  sub_23129D3B0();
  v0 = OUTLINED_FUNCTION_5_16();
  v1(v0);

  v2 = OUTLINED_FUNCTION_13_15();

  return v3(v2);
}

void sub_23129D3B0()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v53 = sub_231369D00();
  v3 = OUTLINED_FUNCTION_0_0(v53);
  v51 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_0();
  v50 = v8;
  OUTLINED_FUNCTION_18();
  v9 = sub_231366880();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v17 = v16 - v15;
  v18 = sub_2313668A0();
  v19 = OUTLINED_FUNCTION_0_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_4();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v28 = OUTLINED_FUNCTION_40_0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_1();
  v52 = v31;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_23_11();
  sub_23129CC40(v2, v0);
  sub_231366870();
  v33 = *(v12 + 104);
  v33(v17, *MEMORY[0x277CC9980], v9);
  v49 = sub_231366890();
  v34 = *(v12 + 8);
  v35 = OUTLINED_FUNCTION_53_3();
  v34(v35);
  v36 = *(v21 + 8);
  v36(v26, v18);
  sub_231366870();
  v33(v17, *MEMORY[0x277CC99B8], v9);
  v37 = sub_231366890();
  v38 = OUTLINED_FUNCTION_53_3();
  v34(v38);
  v36(v26, v18);
  v39 = v52;
  sub_2311E66F0(v0, v52, &qword_27DD43358, &qword_23136FA90);
  OUTLINED_FUNCTION_12_14(v52);
  if (v40)
  {
    sub_2311D1F18(v0, &qword_27DD43358, &qword_23136FA90);
    v0 = v52;
LABEL_14:
    sub_2311D1F18(v0, &qword_27DD43358, &qword_23136FA90);
    goto LABEL_15;
  }

  (*(v51 + 32))(v50, v52, v53);
  if ((v37 - 7) < 0xFFFFFFFFFFFFFFFBLL)
  {
    v41 = *(v51 + 8);
    v42 = OUTLINED_FUNCTION_32_10();
    v43(v42);
    goto LABEL_14;
  }

  if ((v49 - 5) > 6)
  {
    if ((v49 - 15) < 4)
    {
      sub_231369CB0();
      OUTLINED_FUNCTION_54_0();
      sub_231369CF0();
      v46 = OUTLINED_FUNCTION_33_10();
      v52(v46);
      v47 = OUTLINED_FUNCTION_32_10();
      v52(v47);
      sub_2311D1F18(v0, &qword_27DD43358, &qword_23136FA90);
      goto LABEL_15;
    }

    v39 = *(v51 + 8);
    goto LABEL_13;
  }

  sub_231369CB0();
  OUTLINED_FUNCTION_54_0();
  sub_231369CF0();
  v44 = OUTLINED_FUNCTION_33_10();
  v52(v44);
  if ((v26 & 1) == 0)
  {
LABEL_13:
    v48 = OUTLINED_FUNCTION_32_10();
    v39(v48);
    goto LABEL_14;
  }

  v45 = OUTLINED_FUNCTION_32_10();
  v52(v45);
  sub_2311D1F18(v0, &qword_27DD43358, &qword_23136FA90);
LABEL_15:
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_23129D830()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311F93E8;

  return sub_23129D290();
}

uint64_t sub_23129D8C8()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_231366750();
  v1[4] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_43();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23129D96C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_28();
  sub_23129D9E8();
  v0 = OUTLINED_FUNCTION_5_16();
  v1(v0);

  v2 = OUTLINED_FUNCTION_13_15();

  return v3(v2);
}

void sub_23129D9E8()
{
  OUTLINED_FUNCTION_11_0();
  v42 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  OUTLINED_FUNCTION_40_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - v5;
  v7 = sub_231369D00();
  v8 = OUTLINED_FUNCTION_0_0(v7);
  v41 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_1();
  v40 = v12;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = sub_231366880();
  v17 = OUTLINED_FUNCTION_0_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_4();
  v24 = v23 - v22;
  v25 = sub_2313668A0();
  v26 = OUTLINED_FUNCTION_0_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_4();
  v33 = v32 - v31;
  sub_231366870();
  (*(v19 + 104))(v24, *MEMORY[0x277CC9980], v16);
  v34 = sub_231366890();
  (*(v19 + 8))(v24, v16);
  (*(v28 + 8))(v33, v25);
  if ((v34 - 12) <= 7)
  {
    sub_23129CC40(v42, v6);
    OUTLINED_FUNCTION_19_13(v6, 1, v7);
    if (v35)
    {
      sub_2311D1F18(v6, &qword_27DD43358, &qword_23136FA90);
    }

    else
    {
      v36 = v41;
      (*(v41 + 32))(v15, v6, v7);
      v37 = v40;
      sub_231369CB0();
      sub_231369CF0();
      v38 = *(v36 + 8);
      v38(v37, v7);
      v38(v15, v7);
    }
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_23129DD20()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311F93E8;

  return sub_23129D8C8();
}

uint64_t sub_23129DDB8(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_23129DDCC()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_23129DE30();
  v5 = v0[1];
  v7 = v6 & 1;

  return v5(v7);
}

void sub_23129DE30()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v83 = v3;
  v82 = v4;
  v85 = sub_231369BE0();
  v5 = OUTLINED_FUNCTION_0_0(v85);
  v84 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_6_3(v10 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C68, &qword_231378D20);
  OUTLINED_FUNCTION_40_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_6_3(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  OUTLINED_FUNCTION_40_0(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_4_3(v20);
  v91 = sub_231369D00();
  v21 = OUTLINED_FUNCTION_0_0(v91);
  v88 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_4_3(v26);
  v97 = sub_231369630();
  v27 = OUTLINED_FUNCTION_0_0(v97);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_1();
  v101 = v32;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_17_0();
  v100 = v34;
  OUTLINED_FUNCTION_18();
  v35 = sub_2313696B0();
  v36 = OUTLINED_FUNCTION_0_0(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_8_7();
  v104 = v42;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_17_0();
  v105 = v45;
  v46 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2313683A0();
  v47 = sub_23136A200();

  v48 = 0;
  v99 = *(v47 + 16);
  v96 = *MEMORY[0x277D1EB18];
  v94 = (v29 + 8);
  v95 = (v29 + 104);
  v103 = (v38 + 8);
  v102 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v99 == v48)
    {

      v61 = 0;
      v0 = 0;
      v62 = v102;
      v63 = *(v102 + 16);
      v64 = MEMORY[0x277D84F90];
      while (v63 != v61)
      {
        if (v61 >= *(v62 + 16))
        {
          goto LABEL_42;
        }

        (*(v38 + 16))(v104, v62 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v61, v35);
        if (sub_23129E848())
        {
          OUTLINED_FUNCTION_29_9();
          v66 = *v65;
          (*v65)(v92, v104, v35);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2311F5958(0, *(v64 + 16) + 1, 1);
          }

          v68 = *(v64 + 16);
          v67 = *(v64 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_2311F5958(v67 > 1, v68 + 1, 1);
          }

          ++v61;
          *(v64 + 16) = v68 + 1;
          OUTLINED_FUNCTION_29_9();
          v66();
          v62 = v102;
        }

        else
        {
          (*v103)(v104, v35);
          ++v61;
          v62 = v102;
        }
      }

      sub_231217DAC(v64, v89);

      OUTLINED_FUNCTION_19_13(v89, 1, v35);
      if (v52)
      {
        sub_2311D1F18(v89, &qword_27DD43C68, &qword_231378D20);
        v71 = v90;
        v69 = OUTLINED_FUNCTION_28_1();
        __swift_storeEnumTagSinglePayload(v69, v70, 1, v91);
      }

      else
      {
        v71 = v90;
        sub_231369670();
        (*v103)(v89, v35);
        v72 = OUTLINED_FUNCTION_28_1();
        OUTLINED_FUNCTION_19_13(v72, v73, v91);
        if (!v74)
        {
          (*(v88 + 32))(v87, v90, v91);
          (*(v88 + 16))(v86, v87, v91);
          v75 = (*(v88 + 88))(v86, v91);
          if (v75 == *MEMORY[0x277D729F8])
          {
            (*(v88 + 96))(v86, v91);
            v76 = *v86;
            v77 = swift_projectBox();
            (*(v84 + 16))(v81, v77, v85);

            if (sub_231369BA0() != v82 || v78 != v83)
            {
              sub_23136A900();
            }

            (*(v84 + 8))(v81, v85);
            (*(v88 + 8))(v87, v91);
          }

          else
          {
            v80 = *(v88 + 8);
            v80(v87, v91);
            v80(v86, v91);
          }

          goto LABEL_32;
        }
      }

      sub_2311D1F18(v71, &qword_27DD43358, &qword_23136FA90);
LABEL_32:
      OUTLINED_FUNCTION_9_0();
      return;
    }

    if (v48 >= *(v47 + 16))
    {
      break;
    }

    v0 = v47;
    v98 = *(v38 + 72);
    v49 = v47 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + v98 * v48;
    v50 = v35;
    (*(v38 + 16))(v105, v49, v35);
    sub_231369680();
    (*v95)(v101, v96, v97);
    OUTLINED_FUNCTION_7_15();
    sub_2312A0900(&qword_27DD43C18, v51);
    OUTLINED_FUNCTION_54_0();
    sub_23136A140();
    OUTLINED_FUNCTION_54_0();
    sub_23136A140();
    v52 = v108 == v106 && v109 == v107;
    if (v52)
    {
      v55 = *v94;
      (*v94)(v101, v97);
      v55(v100, v97);

LABEL_11:
      OUTLINED_FUNCTION_29_9();
      v57 = *v56;
      v35 = v50;
      (*v56)(v93, v105, v50);
      v58 = v102;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2311F5958(0, *(v102 + 16) + 1, 1);
        v58 = v102;
      }

      v47 = v0;
      v0 = v98;
      v60 = *(v58 + 16);
      v59 = *(v58 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_2311F5958(v59 > 1, v60 + 1, 1);
        v58 = v102;
      }

      ++v48;
      *(v58 + 16) = v60 + 1;
      v102 = v58;
      OUTLINED_FUNCTION_29_9();
      v57();
    }

    else
    {
      v53 = sub_23136A900();
      v54 = *v94;
      (*v94)(v101, v97);
      v54(v100, v97);

      if (v53)
      {
        goto LABEL_11;
      }

      v35 = v50;
      (*v103)(v105, v50);
      ++v48;
      v47 = v0;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);

  (*v103)(v104, v35);

  __break(1u);
}

uint64_t sub_23129E848()
{
  v0 = sub_231369D50();
  v41 = *(v0 - 8);
  v1 = *(v41 + 64);
  MEMORY[0x28223BE20](v0);
  v38 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B0, &unk_23136DFC0);
  v3 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v42 = &v37 - v4;
  v5 = sub_231368290();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B8, &qword_23136FA60);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v39 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v37 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  sub_231369670();
  v23 = sub_231369D00();
  if (__swift_getEnumTagSinglePayload(v13, 1, v23) == 1)
  {
    sub_2311D1F18(v13, &qword_27DD43358, &qword_23136FA90);
    v24 = 1;
  }

  else
  {
    sub_231369CC0();
    (*(*(v23 - 8) + 8))(v13, v23);
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v22, v24, 1, v0);
  v25 = swift_allocObject();
  (*(v6 + 104))(v9, *MEMORY[0x277D60F08], v5);
  v26 = sub_231368280();
  v28 = v27;
  (*(v6 + 8))(v9, v5);
  v25[2] = v26;
  v25[3] = v28;
  v25[4] = 0xD000000000000017;
  v25[5] = 0x800000023137F730;
  *v20 = v25;
  v29 = v41;
  (*(v41 + 104))(v20, *MEMORY[0x277D72D28], v0);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v0);
  v30 = *(v40 + 48);
  v31 = v42;
  sub_2311E66F0(v22, v42, &qword_27DD437B8, &qword_23136FA60);
  sub_2311E66F0(v20, v31 + v30, &qword_27DD437B8, &qword_23136FA60);
  if (__swift_getEnumTagSinglePayload(v31, 1, v0) != 1)
  {
    v33 = v39;
    sub_2311E66F0(v31, v39, &qword_27DD437B8, &qword_23136FA60);
    if (__swift_getEnumTagSinglePayload(v31 + v30, 1, v0) != 1)
    {
      v34 = v38;
      (*(v29 + 32))(v38, v31 + v30, v0);
      sub_2312A0900(&qword_27DD43360, MEMORY[0x277D72D58]);
      v32 = sub_231369F60();
      v35 = *(v29 + 8);
      v35(v34, v0);
      sub_2311D1F18(v20, &qword_27DD437B8, &qword_23136FA60);
      sub_2311D1F18(v22, &qword_27DD437B8, &qword_23136FA60);
      v35(v39, v0);
      sub_2311D1F18(v31, &qword_27DD437B8, &qword_23136FA60);
      return v32 & 1;
    }

    sub_2311D1F18(v20, &qword_27DD437B8, &qword_23136FA60);
    sub_2311D1F18(v22, &qword_27DD437B8, &qword_23136FA60);
    (*(v29 + 8))(v33, v0);
    goto LABEL_9;
  }

  sub_2311D1F18(v20, &qword_27DD437B8, &qword_23136FA60);
  sub_2311D1F18(v22, &qword_27DD437B8, &qword_23136FA60);
  if (__swift_getEnumTagSinglePayload(v31 + v30, 1, v0) != 1)
  {
LABEL_9:
    sub_2311D1F18(v31, &qword_27DD437B0, &unk_23136DFC0);
    v32 = 0;
    return v32 & 1;
  }

  sub_2311D1F18(v31, &qword_27DD437B8, &qword_23136FA60);
  v32 = 1;
  return v32 & 1;
}

uint64_t sub_23129EE7C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2311F93E8;

  return sub_23129DDB8(v6, a2);
}

uint64_t sub_23129EF14(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v30 = v1;
    v31 = MEMORY[0x277D84F90];
    sub_2311F4E34();
    v5 = 32;
    v6 = v31;
    v7 = "GEOPOICategoryStore";
    v8 = "GEOPOICategoryPark";
    v9 = 0xD000000000000013;
    v10 = "GEOPOICategoryFitnessCenter";
    v11 = 0xD000000000000012;
    v12 = "GEOPOICategoryAirport";
    v13 = "GEOPOICategoryNightlife";
    v14 = 0xD000000000000015;
    v15 = "LocationConditionEntity";
    do
    {
      v16 = "GEOPOICategoryFoodMarket";
      v17 = 0xD000000000000018;
      switch(*(a1 + v5))
      {
        case 1:
          v16 = v7;
          break;
        case 2:
          v17 = v9;
          v16 = v8;
          break;
        case 3:
          v17 = v11;
          v16 = v10;
          break;
        case 4:
          v17 = 0xD00000000000001BLL;
          v16 = v12;
          break;
        case 5:
          v17 = v14;
          v16 = v13;
          break;
        case 6:
          v17 = 0xD000000000000017;
          v16 = v15;
          break;
        default:
          break;
      }

      v18 = *(v31 + 16);
      if (v18 >= *(v31 + 24) >> 1)
      {
        v23 = v13;
        v24 = v12;
        v21 = v15;
        v22 = v14;
        v28 = v8;
        v29 = v7;
        v26 = v10;
        v27 = v9;
        v25 = v11;
        sub_2311F4E34();
        v15 = v21;
        v14 = v22;
        v13 = v23;
        v12 = v24;
        v11 = v25;
        v10 = v26;
        v9 = v27;
        v8 = v28;
        v7 = v29;
      }

      *(v31 + 16) = v18 + 1;
      v19 = v31 + 16 * v18;
      *(v19 + 32) = v17;
      *(v19 + 40) = v16 | 0x8000000000000000;
      ++v5;
      --v4;
    }

    while (v4);

    v2 = v30;
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  *(v2 + 16) = v6;
  return v2;
}

uint64_t sub_23129F11C(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_23129F134()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[17];
  v2 = v1[3];
  v0[20] = v2;
  v0[21] = v1[4];
  v0[22] = __swift_project_boxed_opaque_existential_1(v1, v2);
  v0[23] = sub_231368300();
  swift_getObjectType();
  v3 = *(MEMORY[0x277D61330] + 4);
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_23129F21C;

  return MEMORY[0x2821C7770](v0 + 2);
}

uint64_t sub_23129F21C()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v7 = *v0;

  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23129F328()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = sub_231368300();
  v6 = v5;
  v0[25] = v4;
  v0[26] = v5;
  v0[27] = swift_getObjectType();
  v7 = v0[5];
  v8 = v0[6];
  v9 = __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v0[10] = v7;
  v0[11] = *(v8 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v9, v7);
  v11 = *(*(v6 + 8) + 8);
  v13 = sub_23136A260();

  return MEMORY[0x2822009F8](sub_23129F42C, v13, v12);
}

uint64_t sub_23129F42C()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  sub_231369430();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23129F4C0()
{
  OUTLINED_FUNCTION_8();
  if (v0[15])
  {
    sub_2313692F0();
    v1 = swift_dynamicCast();
    v2 = v0[16];
    if (v1)
    {
      v3 = v0[16];
    }
  }

  else
  {
    sub_2311D1F18((v0 + 12), &qword_27DD443C0, &unk_23136E000);
  }

  v4 = v0[18];
  v5 = v0[19];
  sub_23129F594();
  v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v8 = v0[1];

  return v8(v7 & 1);
}

void sub_23129F594()
{
  OUTLINED_FUNCTION_11_0();
  v203 = v2;
  v4 = v3;
  v5 = sub_231369CA0();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_4_3(v12 - v11);
  v186 = sub_231369C90();
  v13 = OUTLINED_FUNCTION_0_0(v186);
  v185 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_4_3(v18 - v17);
  v211 = sub_231369630();
  v19 = OUTLINED_FUNCTION_0_0(v211);
  v202 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_1();
  v210 = v23;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_17_0();
  v206 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C68, &qword_231378D20);
  OUTLINED_FUNCTION_40_0(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_6_3(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  OUTLINED_FUNCTION_40_0(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_4_3(v35);
  v196 = sub_231369D00();
  v36 = OUTLINED_FUNCTION_0_0(v196);
  v192 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_4_3(v41);
  v42 = sub_2313696B0();
  v43 = OUTLINED_FUNCTION_0_0(v42);
  v212 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_17_0();
  v213 = v48;
  OUTLINED_FUNCTION_18();
  v49 = sub_231367D20();
  v50 = OUTLINED_FUNCTION_0_0(v49);
  v209 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_6_3(v55 - v54);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444C8, &unk_2313744B0);
  v56 = OUTLINED_FUNCTION_11(v208);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_1_1();
  v207 = v59;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_23_11();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444D0, &unk_231373E70);
  v62 = OUTLINED_FUNCTION_40_0(v61);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_8_7();
  v205 = v66;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_8_7();
  v69 = v68;
  OUTLINED_FUNCTION_36();
  v71 = MEMORY[0x28223BE20](v70);
  v73 = &v182 - v72;
  MEMORY[0x28223BE20](v71);
  v75 = &v182 - v74;
  v183 = v0;
  v189 = v5;
  v188 = v8;
  v197 = v42;
  if (v4)
  {
    sub_231369240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F70, &qword_2313744C0);
    v76 = swift_dynamicCast() ^ 1;
    v77 = v75;
  }

  else
  {
    v77 = &v182 - v74;
    v76 = 1;
  }

  __swift_storeEnumTagSinglePayload(v77, v76, 1, v49);
  v78 = *MEMORY[0x277D60B30];
  v204 = *(v209 + 104);
  v204(v73, v78, v49);
  __swift_storeEnumTagSinglePayload(v73, 0, 1, v49);
  v79 = v208;
  v80 = *(v208 + 48);
  OUTLINED_FUNCTION_37_11();
  sub_2311E66F0(v81, v82, v83, v84);
  OUTLINED_FUNCTION_37_11();
  v85 = v49;
  sub_2311E66F0(v86, v87, v88, v89);
  OUTLINED_FUNCTION_12_14(v1);
  if (v91)
  {
    sub_2311D1F18(v73, &qword_27DD444D0, &unk_231373E70);
    OUTLINED_FUNCTION_19_13(v1 + v80, 1, v49);
    if (v91)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v90 = v69;
  sub_2311E66F0(v1, v69, &qword_27DD444D0, &unk_231373E70);
  OUTLINED_FUNCTION_19_13(v1 + v80, 1, v49);
  if (v91)
  {
    sub_2311D1F18(v73, &qword_27DD444D0, &unk_231373E70);
    (*(v209 + 8))(v69, v49);
LABEL_12:
    sub_2311D1F18(v1, &qword_27DD444C8, &unk_2313744B0);
LABEL_13:
    v92 = v205;
    v204(v205, *MEMORY[0x277D60B40], v85);
    __swift_storeEnumTagSinglePayload(v92, 0, 1, v85);
    v93 = *(v79 + 48);
    v94 = v207;
    OUTLINED_FUNCTION_37_11();
    sub_2311E66F0(v95, v96, v97, v98);
    OUTLINED_FUNCTION_37_11();
    sub_2311E66F0(v99, v100, v101, v102);
    OUTLINED_FUNCTION_12_14(v94);
    if (!v91)
    {
      sub_2311E66F0(v94, v200, &qword_27DD444D0, &unk_231373E70);
      OUTLINED_FUNCTION_12_14(v94 + v93);
      if (!v103)
      {
        v114 = v209;
        v115 = v201;
        (*(v209 + 32))(v201, v94 + v93, v49);
        OUTLINED_FUNCTION_8_16();
        sub_2312A0900(v116, v117);
        v118 = sub_231369F60();
        v119 = *(v114 + 8);
        (v119)(v115, v49);
        sub_2311D1F18(v92, &qword_27DD444D0, &unk_231373E70);
        v120 = OUTLINED_FUNCTION_80();
        v119(v120);
        sub_2311D1F18(v94, &qword_27DD444D0, &unk_231373E70);
        if (v118)
        {
          goto LABEL_27;
        }

LABEL_49:
        sub_2311D1F18(v75, &qword_27DD444D0, &unk_231373E70);
        OUTLINED_FUNCTION_9_0();
        return;
      }

      sub_2311D1F18(v92, &qword_27DD444D0, &unk_231373E70);
      v104 = *(v209 + 8);
      v105 = OUTLINED_FUNCTION_80();
      v106(v105);
LABEL_22:
      sub_2311D1F18(v94, &qword_27DD444C8, &unk_2313744B0);
      goto LABEL_49;
    }

    sub_2311D1F18(v92, &qword_27DD444D0, &unk_231373E70);
    OUTLINED_FUNCTION_12_14(v94 + v93);
    if (!v91)
    {
      goto LABEL_22;
    }

    v1 = v94;
LABEL_18:
    sub_2311D1F18(v1, &qword_27DD444D0, &unk_231373E70);
    goto LABEL_27;
  }

  v107 = v209;
  v108 = v201;
  (*(v209 + 32))(v201, v1 + v80, v49);
  OUTLINED_FUNCTION_8_16();
  sub_2312A0900(v109, v110);
  v198 = v90;
  v111 = sub_231369F60();
  v112 = *(v107 + 8);
  v113 = v108;
  v79 = v208;
  v112(v113, v49);
  sub_2311D1F18(v73, &qword_27DD444D0, &unk_231373E70);
  v112(v198, v49);
  v85 = v49;
  sub_2311D1F18(v1, &qword_27DD444D0, &unk_231373E70);
  if ((v111 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_27:
  v193 = v75;
  v121 = v203[4];
  __swift_project_boxed_opaque_existential_1(v203, v203[3]);
  sub_2313683A0();
  v122 = sub_23136A200();

  v123 = 0;
  v209 = *(v122 + 16);
  v205 = v212 + 16;
  LODWORD(v204) = *MEMORY[0x277D1EA90];
  v124 = v202++;
  v203 = v124 + 13;
  v201 = (v212 + 8);
  v198 = (v212 + 32);
  v200 = MEMORY[0x277D84F90];
  v125 = v210;
  v126 = v197;
LABEL_28:
  v127 = v211;
  while (1)
  {
    if (v209 == v123)
    {

      v146 = v194;
      sub_231217DAC(v200, v194);

      OUTLINED_FUNCTION_19_13(v146, 1, v126);
      if (v91)
      {
        sub_2311D1F18(v146, &qword_27DD43C68, &qword_231378D20);
        v149 = v195;
        v147 = OUTLINED_FUNCTION_28_1();
        __swift_storeEnumTagSinglePayload(v147, v148, 1, v196);
        v75 = v193;
      }

      else
      {
        v149 = v195;
        sub_231369670();
        (*v201)(v146, v126);
        v150 = OUTLINED_FUNCTION_28_1();
        v151 = v196;
        OUTLINED_FUNCTION_19_13(v150, v152, v196);
        v75 = v193;
        if (!v153)
        {
          v154 = v192;
          v155 = v191;
          (*(v192 + 32))(v191, v149, v151);
          v156 = v190;
          (*(v154 + 16))(v190, v155, v151);
          v157 = (*(v154 + 88))(v156, v151);
          if (v157 == *MEMORY[0x277D72A58])
          {
            (*(v154 + 96))(v156, v151);
            v158 = *v156;
            v159 = swift_projectBox();
            v160 = v188;
            v161 = v187;
            v162 = v189;
            (*(v188 + 16))(v187, v159, v189);
            if ((*(v160 + 88))(v161, v162) == *MEMORY[0x277D729D0])
            {
              (*(v160 + 96))(v161, v162);
              v163 = v185;
              v164 = v184;
              v165 = v186;
              (*(v185 + 32))(v184, v161, v186);

              v166 = sub_231369C80();
              v167 = sub_2312A0890(v166);
              if (v168)
              {
                v169 = *(v183 + 16);
                v217 = v167;
                v218 = v168;
                MEMORY[0x28223BE20](v167);
                *(&v182 - 2) = &v217;
                sub_231217FE8(sub_23128D8E8, (&v182 - 4), v170);
                (*(v163 + 8))(v164, v165);
                v171 = *(v154 + 8);
                v172 = OUTLINED_FUNCTION_21_15();
                v173(v172);
              }

              else
              {
                (*(v163 + 8))(v164, v165);
                v179 = *(v154 + 8);
                v180 = OUTLINED_FUNCTION_21_15();
                v181(v180);
              }

              v75 = v193;
            }

            else
            {
              v176 = *(v154 + 8);
              v177 = OUTLINED_FUNCTION_21_15();
              v178(v177);
              (*(v160 + 8))(v161, v162);
            }
          }

          else
          {
            v174 = *(v154 + 8);
            v175 = OUTLINED_FUNCTION_21_15();
            v174(v175);
            (v174)(v156, v151);
          }

          goto LABEL_49;
        }
      }

      sub_2311D1F18(v149, &qword_27DD43358, &qword_23136FA90);
      goto LABEL_49;
    }

    if (v123 >= *(v122 + 16))
    {
      break;
    }

    v128 = v122;
    v208 = (*(v212 + 80) + 32) & ~*(v212 + 80);
    v207 = *(v212 + 72);
    v129 = v122 + v208 + v207 * v123;
    v130 = v126;
    (*(v212 + 16))(v213, v129, v126);
    sub_231369680();
    (*v203)(v125, v204, v127);
    OUTLINED_FUNCTION_7_15();
    sub_2312A0900(&qword_27DD43C18, v131);
    OUTLINED_FUNCTION_53_3();
    sub_23136A140();
    OUTLINED_FUNCTION_53_3();
    sub_23136A140();
    if (v217 == v214 && v218 == v215)
    {
      v138 = *v202;
      (*v202)(v125, v127);
      v139 = OUTLINED_FUNCTION_21_15();
      (v138)(v139);

LABEL_38:
      v140 = *v198;
      v126 = v130;
      (*v198)(v199, v213, v130);
      v141 = v200;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v216 = v141;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2311F5958(0, *(v141 + 16) + 1, 1);
        v141 = v216;
      }

      v125 = v210;
      v122 = v128;
      v143 = v208;
      v145 = *(v141 + 16);
      v144 = *(v141 + 24);
      if (v145 >= v144 >> 1)
      {
        sub_2311F5958(v144 > 1, v145 + 1, 1);
        v141 = v216;
      }

      ++v123;
      *(v141 + 16) = v145 + 1;
      v200 = v141;
      v140(v141 + v143 + v145 * v207, v199, v126);
      goto LABEL_28;
    }

    v133 = sub_23136A900();
    v134 = v125;
    v135 = v133;
    v136 = *v202;
    (*v202)(v134, v127);
    v137 = OUTLINED_FUNCTION_21_15();
    (v136)(v137);

    if (v135)
    {
      goto LABEL_38;
    }

    v126 = v130;
    (*v201)(v213, v130);
    ++v123;
    v125 = v210;
    v127 = v211;
    v122 = v128;
  }

  __break(1u);
}

uint64_t sub_2312A0608(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2311F4480;

  return sub_23129F11C(a1, a2);
}

uint64_t sub_2312A06B0()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v0;
  v2 = sub_231366BF0();
  v1[3] = v2;
  OUTLINED_FUNCTION_0(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_43();
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312A0754()
{
  OUTLINED_FUNCTION_26();
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_231366BE0();
  v5 = OUTLINED_FUNCTION_28();
  sub_2312A0948(v5);
  v6 = OUTLINED_FUNCTION_5_16();
  v7(v6);

  v8 = OUTLINED_FUNCTION_13_15();

  return v9(v8);
}

uint64_t sub_2312A0800()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311F93E8;

  return sub_2312A06B0();
}

uint64_t sub_2312A0890(void *a1)
{
  v2 = [a1 category];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231369FD0();

  return v3;
}

uint64_t sub_2312A0900(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2312A0948(uint64_t a1)
{
  v50 = a1;
  v1 = sub_2313698C0();
  v53 = *(v1 - 8);
  v54 = v1;
  v2 = *(v53 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v49 = &v45 - v5;
  v6 = sub_231366C00();
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_231366C20();
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_231366BD0();
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_231366BF0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v50, v19);
  sub_231366C10();
  (*(v20 + 8))(v23, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444F0, &qword_2313740D8);
  v24 = *(v10 + 72);
  v25 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_23136C1C0;
  v27 = v26 + v25;
  v28 = *(v11 + 104);
  v28(v27, *MEMORY[0x277D55780], v9);
  v28(v27 + v24, *MEMORY[0x277D55778], v9);
  sub_231366BC0();
  v56 = v14;
  LOBYTE(v20) = sub_2312180C8(sub_2312A0FEC, v55, v26);
  swift_setDeallocating();
  sub_231322AA0();
  (*(v11 + 8))(v14, v9);
  if ((v20 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444F8, &qword_2313740E0);
    v29 = v48;
    v30 = *(v48 + 72);
    v31 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_23136D290;
    v33 = v32 + v31;
    v34 = *(v29 + 104);
    v34(v33, *MEMORY[0x277D556F8], v6);
    v34(v33 + v30, *MEMORY[0x277D55708], v6);
    v34(v33 + 2 * v30, *MEMORY[0x277D556F0], v6);
    v34(v33 + 3 * v30, *MEMORY[0x277D55700], v6);
    v35 = v47;
    v36 = sub_231366BB0();
    MEMORY[0x28223BE20](v36);
    *(&v45 - 2) = v35;
    v37 = sub_231218098(sub_2312A100C, (&v45 - 4), v32);
    swift_setDeallocating();
    sub_231322AB8();
    (*(v29 + 8))(v35, v6);
    if (!v37)
    {
      v38 = v46;
      sub_2313690F0();
      v39 = sub_2313698A0();
      v43 = sub_23136A390();
      if (!os_log_type_enabled(v39, v43))
      {
        v42 = 1;
        goto LABEL_9;
      }

      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2311CB000, v39, v43, "MusicSubscriptionFilter:: user has music subscription - returns true", v41, 2u);
      v42 = 1;
      goto LABEL_8;
    }
  }

  v38 = v49;
  sub_2313690F0();
  v39 = sub_2313698A0();
  v40 = sub_23136A390();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_2311CB000, v39, v40, "MusicSubscriptionFilter:: no valid music subscription - returns false", v41, 2u);
    v42 = 0;
LABEL_8:
    MEMORY[0x23192B930](v41, -1, -1);
    goto LABEL_9;
  }

  v42 = 0;
LABEL_9:

  (*(v53 + 8))(v38, v54);
  (*(v51 + 8))(v18, v52);
  return v42;
}

uint64_t sub_2312A1078()
{
  v1[7] = v0;
  v2 = sub_2313698C0();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44508, qword_231374120);
  v6 = *(MEMORY[0x277D610B8] + 4);
  v7 = swift_task_alloc();
  v1[12] = v7;
  *v7 = v1;
  v7[1] = sub_2312A11BC;

  return MEMORY[0x2821C72A8](v5);
}

uint64_t sub_2312A11BC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 96);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v7 + 104) = v6;

  v8 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312A12BC()
{
  v50 = v0;
  result = v0[13];
  if (!result)
  {
    v26 = v0[11];
    sub_2313690F0();
    v27 = sub_2313698A0();
    v28 = sub_23136A390();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[11];
    v31 = v0[8];
    v32 = v0[9];
    if (v29)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2311CB000, v27, v28, "No instances configured in lifecycle", v33, 2u);
      OUTLINED_FUNCTION_29();
    }

    v34 = *(v32 + 8);
    v35 = OUTLINED_FUNCTION_28_0();
    v36(v35);
    goto LABEL_18;
  }

  v48 = *(result + 16);
  if (!v48)
  {
LABEL_14:

LABEL_18:
    v37 = v0[10];
    v38 = v0[11];
    v39 = v0[7];

    v40 = v0[1];
    v41 = v0[7];

    return v40(v41);
  }

  v2 = 0;
  v42 = v0[7];
  v45 = (v0[9] + 8);
  v46 = result + 32;
  v47 = v0[13];
  while (v2 < *(result + 16))
  {
    v3 = v0[10];
    v4 = v0[7];
    v5 = (v46 + 16 * v2);
    v6 = *v5;
    v7 = v5[1];

    sub_231369EE0();
    sub_2313690F0();

    sub_231369EE0();
    v8 = sub_2313698A0();
    v9 = sub_23136A3A0();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[10];
    if (v10)
    {
      v44 = v0[8];
      v12 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v12 = 136315394;
      sub_23120EB78();
      v43 = v11;
      v14 = v13;
      v16 = v15;

      v17 = sub_2311CFD58(v14, v16, &v49);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_2311CFD58(*(v42 + 128), *(v42 + 136), &v49);
      _os_log_impl(&dword_2311CB000, v8, v9, "adding lifecycle instance against key: %s to builder of type: %s", v12, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*v45)(v43, v44);
    }

    else
    {

      v18 = *v45;
      v19 = OUTLINED_FUNCTION_28_0();
      v21(v19, v20);
    }

    v22 = *(v7 + 16);
    if (v22)
    {
      v23 = v7 + 32;
      sub_231369EE0();
      do
      {
        v24 = v0[7];
        sub_2311CF324(v23, (v0 + 2));
        v25 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
        sub_23120FA10();
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
        v23 += 40;
        --v22;
      }

      while (v22);
      swift_bridgeObjectRelease_n();
    }

    else
    {
    }

    ++v2;
    result = v47;
    if (v2 == v48)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2312A165C()
{
  OUTLINED_FUNCTION_8();
  v0[255] = v1;
  v0[254] = v2;
  v0[253] = v3;
  v0[252] = v4;
  memcpy(v0 + 2, v5, 0x1A8uLL);
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312A16D0()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 2016);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44500, &qword_2313740F0);
  swift_allocObject();
  v2 = sub_2311E96AC();
  *(v0 + 2048) = v2;
  *(v0 + 2008) = v2;
  if (v1)
  {
    v3 = *(v0 + 2024);
    v4 = *(v0 + 2016);
    swift_unknownObjectRetain();
    v5 = swift_task_alloc();
    *(v0 + 2056) = v5;
    *v5 = v0;
    v5[1] = sub_2312A1878;

    return (sub_2312A1078)(v4, v3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C48, &unk_231370DE0);
    *(swift_allocObject() + 16) = xmmword_23136B670;
    type metadata accessor for DonotShowPolicy();
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_18_14(v7, &off_2845F62F0);
    swift_setDeallocating();
    sub_231322A34();
    sub_2311D38A8((v0 + 1928), v0 + 1968);
    v8 = OUTLINED_FUNCTION_2_17();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_2312A1878()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 2056);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312A1968()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 2016);
  swift_unknownObjectRelease();
  v2 = *(v0 + 2048);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C48, &unk_231370DE0);
  *(swift_allocObject() + 16) = xmmword_23136B670;
  type metadata accessor for DonotShowPolicy();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_18_14(v3, &off_2845F62F0);
  swift_setDeallocating();
  sub_231322A34();
  sub_2311D38A8((v0 + 1928), v0 + 1968);
  v4 = OUTLINED_FUNCTION_2_17();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312A1A3C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[256];
  v2 = v0[250];
  __swift_project_boxed_opaque_existential_1(v0 + 246, v0[249]);
  sub_23120FA10();
  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312A1AC4()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 246);
  memcpy(v0 + 55, v0 + 2, 0x1A8uLL);
  v1 = swift_task_alloc();
  v0[258] = v1;
  *v1 = v0;
  v1[1] = sub_2312A1B78;
  v2 = v0[255];
  v3 = v0[254];

  return sub_2312A2194((v0 + 251), (v0 + 55), v3, v2);
}

uint64_t sub_2312A1B78()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 2064);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312A1C5C()
{
  OUTLINED_FUNCTION_8();
  memcpy(v0 + 223, v0 + 27, 0x48uLL);
  sub_2311E6694((v0 + 27), (v0 + 232));
  v1 = swift_task_alloc();
  v0[259] = v1;
  *v1 = v0;
  v1[1] = sub_2312A1D10;
  v2 = v0[254];

  return sub_2312A26D0((v0 + 251), v0 + 223, v2);
}

uint64_t sub_2312A1D10()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = v1[259];
  v5 = *v0;
  *v3 = *v0;

  memcpy(v2 + 214, v2 + 223, 0x48uLL);
  sub_231286838((v2 + 214));
  memcpy(v2 + 108, v2 + 2, 0x1A8uLL);
  v6 = swift_task_alloc();
  v2[260] = v6;
  *v6 = v5;
  v6[1] = sub_2312A1E78;
  v7 = v1[254];

  return sub_2312A2A44((v2 + 251), (v2 + 108), v7);
}

uint64_t sub_2312A1E78()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = v1[260];
  v5 = *v0;
  *v3 = *v0;

  memcpy(v2 + 161, v2 + 2, 0x1A8uLL);
  v6 = swift_task_alloc();
  v2[261] = v6;
  *v6 = v5;
  v6[1] = sub_2312A1FDC;
  v7 = v1[255];
  v8 = v1[254];

  return sub_2312A3260((v2 + 251), (v2 + 161), v7, v8);
}

uint64_t sub_2312A1FDC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 2088);
  v3 = *(v1 + 2048);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312A20D4()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 2048);
  *(v0 + 2096) = sub_2311E99C4();
  v2 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2312A2134()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[256];

  v2 = v0[1];
  v3 = v0[262];

  return v2(v3);
}

uint64_t sub_2312A2194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = a4;
  *(v4 + 96) = a1;
  v6 = sub_231367D80();
  *(v4 + 120) = v6;
  v7 = *(v6 - 8);
  *(v4 + 128) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  v9 = sub_231367020();
  *(v4 + 144) = v9;
  v10 = *(v9 - 8);
  *(v4 + 152) = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *(a2 + 272);
  *(v4 + 160) = v12;
  *(v4 + 168) = v13;
  *(v4 + 176) = *(a2 + 280);
  *(v4 + 184) = *(a2 + 288);
  *(v4 + 200) = *(a2 + 304);

  return MEMORY[0x2822009F8](sub_2312A22D4, 0, 0);
}

uint64_t sub_2312A22D4()
{
  OUTLINED_FUNCTION_70_1();
  v6 = sub_231367010();
  *(v3 + 208) = v6;
  v9 = *(v6 + 16);
  *(v3 + 216) = v9;
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = 0;
  *(v3 + 280) = *(*(v3 + 152) + 80);
  *(v3 + 284) = *MEMORY[0x277D60BA0];
  while (1)
  {
    *(v3 + 224) = v10;
    if (v10 >= *(v6 + 16))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v6, v7, v8);
    }

    OUTLINED_FUNCTION_22_13();
    v11 = *(v3 + 160);
    v12 = *(v3 + 168);
    OUTLINED_FUNCTION_21_16();
    v16 = *(v15 + 16);
    v15 += 16;
    v18 = v13 + v14 + *(v15 + 56) * v17;
    *(v3 + 232) = v16;
    *(v3 + 240) = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v16(v19, v18);
    v20 = OUTLINED_FUNCTION_15_17();
    *(v3 + 248) = v20;
    v21 = *(v20 + 16);
    *(v3 + 256) = v21;
    if (v21)
    {
      break;
    }

    v22 = OUTLINED_FUNCTION_17_10();
    v23(v22);
    if (v0 == v1)
    {
      v30 = *(v3 + 208);
LABEL_11:

      v31 = *(v3 + 160);
      v32 = *(v3 + 136);

      OUTLINED_FUNCTION_56_0();
      OUTLINED_FUNCTION_14_19();

      __asm { BRAA            X1, X16 }
    }

    v10 = *(v3 + 224) + 1;
    v6 = *(v3 + 208);
  }

  *(v3 + 264) = **(v3 + 96);
  *(v3 + 272) = 0;
  OUTLINED_FUNCTION_27_11();
  v24 = *(v3 + 120);
  v25 = *(v3 + 128);
  sub_2311CF324(v26 + 32, v3 + 56);
  v5(v12, v2, v4);
  v27 = OUTLINED_FUNCTION_24_15();
  v28(v27);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_14_19();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312A248C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[33];
  v2 = v0[16];
  v3 = v0[15];
  sub_2311E3ED8(v0[17], (v0 + 7));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_28_0();
  v6(v5);
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312A2520()
{
  OUTLINED_FUNCTION_70_1();
  v7 = *(v3 + 272) + 1;
  if (v7 == *(v3 + 256))
  {
    v8 = *(v3 + 248);
    while (1)
    {

      v9 = OUTLINED_FUNCTION_17_10();
      v11 = v10(v9);
      if (v0 == v1)
      {
        v33 = *(v3 + 208);

        v34 = *(v3 + 160);
        v35 = *(v3 + 136);

        OUTLINED_FUNCTION_56_0();
        OUTLINED_FUNCTION_14_19();

        __asm { BRAA            X1, X16 }
      }

      v14 = *(v3 + 224) + 1;
      *(v3 + 224) = v14;
      if (v14 >= *(*(v3 + 208) + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_22_13();
      v15 = *(v3 + 160);
      v5 = *(v3 + 168);
      OUTLINED_FUNCTION_21_16();
      v19 = *(v18 + 16);
      v18 += 16;
      v21 = v16 + v17 + *(v18 + 56) * v20;
      *(v3 + 232) = v19;
      *(v3 + 240) = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v19();
      v22 = OUTLINED_FUNCTION_15_17();
      *(v3 + 248) = v22;
      v23 = *(v22 + 16);
      *(v3 + 256) = v23;
      if (v23)
      {
        v7 = 0;
        *(v3 + 264) = **(v3 + 96);
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
    v24 = *(v3 + 264);
    v25 = *(v3 + 248);
LABEL_8:
    *(v3 + 272) = v7;
    OUTLINED_FUNCTION_27_11();
    v28 = *(v3 + 120);
    v29 = *(v3 + 128);
    sub_2311CF324(v26 + 40 * v27 + 32, v3 + 56);
    v6(v5, v2, v4);
    v30 = OUTLINED_FUNCTION_24_15();
    v31(v30);
    OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_14_19();
  }

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2312A26D0(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[16] = a1;
  v3[17] = a3;
  v5 = sub_231367C70();
  v3[18] = v5;
  v6 = *(v5 - 8);
  v3[19] = v6;
  v7 = *(v6 + 64) + 15;
  v3[20] = swift_task_alloc();
  memcpy(v3 + 2, a2, 0x48uLL);

  return MEMORY[0x2822009F8](sub_2312A27A4, 0, 0);
}

uint64_t sub_2312A27A4()
{
  OUTLINED_FUNCTION_16();
  v1 = sub_231364F30(v0 + 16, *(v0 + 136));
  *(v0 + 168) = v1;
  v2 = *(v1 + 16);
  *(v0 + 176) = v2;
  if (!v2)
  {

    v12 = *(v0 + 160);

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_86();

    __asm { BRAA            X1, X16 }
  }

  v3 = **(v0 + 128);
  v4 = *MEMORY[0x277D60AE0];
  *(v0 + 200) = v4;
  *(v0 + 184) = v3;
  *(v0 + 192) = 0;
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 144);
  sub_2311CF324(v1 + 32, v0 + 88);
  (*(v6 + 104))(v5, v4, v7);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312A28A8()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v0[14]);
  OUTLINED_FUNCTION_19_14();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_28_0();
  v8(v7);
  v9 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2312A294C()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 192) + 1;
  if (v1 == *(v0 + 176))
  {
    v2 = *(v0 + 168);

    v3 = *(v0 + 160);

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_86();

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 192) = v1;
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v8 = *(v0 + 160);
  v9 = *(v0 + 144);
  v10 = *(v0 + 152);
  sub_2311CF324(*(v0 + 168) + 40 * v1 + 32, v0 + 88);
  (*(v10 + 104))(v8, v6, v9);
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2312A2A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  v5 = sub_231367C70();
  *(v3 + 72) = v5;
  v6 = *(v5 - 8);
  *(v3 + 80) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = *(a2 + 392);
  *(v3 + 112) = *(a2 + 408);
  sub_231369EE0();

  return MEMORY[0x2822009F8](sub_2312A2B24, 0, 0);
}

uint64_t sub_2312A2B24()
{
  OUTLINED_FUNCTION_70_1();
  v39 = v1;
  v3 = *(v1 + 112);
  v4 = *(v1 + 64);
  v37 = *(v1 + 96);
  v38 = v3;
  v5 = sub_23123EAD8(&v37, v4);
  *(v1 + 120) = v5;

  v6 = *(v5 + 16);
  *(v1 + 128) = v6;
  if (v6)
  {
    v7 = **(v1 + 56);
    v8 = *MEMORY[0x277D60E68];
    v9 = *MEMORY[0x277D60DC0];
    *(v1 + 168) = v8;
    *(v1 + 172) = v9;
    v10 = *MEMORY[0x277D60E18];
    v11 = *MEMORY[0x277D60AC0];
    *(v1 + 176) = v10;
    *(v1 + 180) = v11;
    *(v1 + 136) = v7;
    *(v1 + 144) = 0;
    v13 = *(v1 + 80);
    v12 = *(v1 + 88);
    v14 = *(v1 + 72);
    sub_2311CF324(*(v1 + 120) + 32, v1 + 16);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8);
    v16 = OUTLINED_FUNCTION_30_11(v15);
    OUTLINED_FUNCTION_7_0(v16);
    (*(v17 + 104))(v12, v8);
    v18 = sub_2313681A0();
    OUTLINED_FUNCTION_7_0(v18);
    (*(v19 + 104))(v12, v9);
    v20 = sub_231368210();
    OUTLINED_FUNCTION_7_0(v20);
    (*(v21 + 104))(&v2[v12], v10);
    (*(v13 + 104))(v12, v11, v14);
    v22 = sub_2312A2E08;
  }

  else
  {

    v23 = *MEMORY[0x277D60E68];
    v24 = *MEMORY[0x277D60DC0];
    v25 = *MEMORY[0x277D60E18];
    v26 = *MEMORY[0x277D60AC0];
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_29_10();
    *(v1 + 152) = sub_2312E9250(1);
    v7 = *v2;
    *(v1 + 160) = *v2;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8);
    v28 = OUTLINED_FUNCTION_30_11(v27);
    OUTLINED_FUNCTION_7_0(v28);
    (*(v29 + 104))(v0, v23);
    v30 = sub_2313681A0();
    OUTLINED_FUNCTION_7_0(v30);
    (*(v31 + 104))(v0, v24);
    v32 = sub_231368210();
    OUTLINED_FUNCTION_7_0(v32);
    (*(v33 + 104))(&v2[v0], v25);
    v34 = OUTLINED_FUNCTION_8_17();
    v35(v34);
    v22 = sub_2312A3114;
  }

  return MEMORY[0x2822009F8](v22, v7, 0);
}

uint64_t sub_2312A2E08()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[17];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_19_14();

  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_28_0();
  v8(v7);
  v9 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2312A2EA4()
{
  v3 = *(v1 + 128);
  v4 = *(v1 + 144) + 1;
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  if (v4 == v3)
  {
    v5 = *(v1 + 120);

    v7 = *(v1 + 176);
    v6 = *(v1 + 180);
    v9 = *(v1 + 168);
    v8 = *(v1 + 172);
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_29_10();
    *(v1 + 152) = sub_2312E9250(1);
    v10 = *v2;
    *(v1 + 160) = *v2;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8);
    v12 = OUTLINED_FUNCTION_30_11(v11);
    OUTLINED_FUNCTION_7_0(v12);
    (*(v13 + 104))(v0, v9);
    v14 = sub_2313681A0();
    OUTLINED_FUNCTION_7_0(v14);
    (*(v15 + 104))(v0, v8);
    v16 = sub_231368210();
    OUTLINED_FUNCTION_7_0(v16);
    (*(v17 + 104))(&v2[v0], v7);
    v18 = OUTLINED_FUNCTION_8_17();
    v19(v18);
    v20 = sub_2312A3114;
  }

  else
  {
    v10 = *(v1 + 136);
    v21 = *(v1 + 144);
    *(v1 + 144) = v21 + 1;
    v23 = *(v1 + 176);
    v22 = *(v1 + 180);
    v25 = *(v1 + 168);
    v24 = *(v1 + 172);
    v27 = *(v1 + 80);
    v26 = *(v1 + 88);
    v28 = *(v1 + 72);
    sub_2311CF324(*(v1 + 120) + 40 * v21 + 72, v1 + 16);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8);
    v30 = OUTLINED_FUNCTION_30_11(v29);
    OUTLINED_FUNCTION_7_0(v30);
    (*(v31 + 104))(v26, v25);
    v32 = sub_2313681A0();
    OUTLINED_FUNCTION_7_0(v32);
    (*(v33 + 104))(v26, v24);
    v34 = sub_231368210();
    OUTLINED_FUNCTION_7_0(v34);
    (*(v35 + 104))(&v2[v26], v23);
    v36 = OUTLINED_FUNCTION_8_17();
    v37(v36);
    v20 = sub_2312A2E08;
  }

  return MEMORY[0x2822009F8](v20, v10, 0);
}

uint64_t sub_2312A3114()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43010, qword_231374B70);
  v6 = swift_allocBox();
  (*(v4 + 16))(v7, v3, v5);
  OUTLINED_FUNCTION_6_16();
  sub_2312A3B88(v1, v6, v2, v8, v9);

  (*(v4 + 8))(v3, v5);
  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2312A31FC()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 152);
  v2 = *(v0 + 88);

  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t sub_2312A3260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a1;
  v4[27] = a4;
  v6 = sub_231367D80();
  v4[28] = v6;
  v7 = *(v6 - 8);
  v4[29] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *(a2 + 344);
  v4[30] = v9;
  v4[31] = v10;

  return MEMORY[0x2822009F8](sub_2312A3328, 0, 0);
}

uint64_t sub_2312A3328()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C48, &unk_231370DE0);
  inited = swift_initStackObject();
  *(v0 + 256) = inited;
  *(inited + 16) = xmmword_23136C1C0;
  v8 = type metadata accessor for NotExposedTooManySuggestionsPolicy();
  *(v0 + 264) = v8;
  OUTLINED_FUNCTION_29_10();
  *(inited + 32) = sub_2312E9240(2, 1);
  inited += 32;
  *(inited + 24) = v8;
  *(inited + 32) = &off_2845F6330;
  sub_2311CF324(v5, v0 + 128);
  HasNoEngagementPolicy = type metadata accessor for HasNoEngagementPolicy();
  *(v0 + 272) = HasNoEngagementPolicy;
  swift_allocObject();
  v10 = sub_2312E8D30((v0 + 128), v2, 0);
  *(inited + 64) = HasNoEngagementPolicy;
  *(inited + 72) = &off_2845F6340;
  *(inited + 40) = v10;
  *(v0 + 280) = *v6;
  sub_2311CF324(inited, v0 + 168);
  *(v0 + 376) = *MEMORY[0x277D60B78];
  v11 = *(v4 + 104);
  *(v0 + 288) = v11;
  *(v0 + 296) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v11(v1);
  v12 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2312A34A4()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[35];
  v2 = v0[29];
  v3 = v0[28];
  sub_2311E3ED8(v0[30], (v0 + 21));

  v0[38] = *(v2 + 8);
  v0[39] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4 = OUTLINED_FUNCTION_28_0();
  v5(v4);
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312A353C()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 376);
  v4 = *(v0 + 280);
  v5 = *(v0 + 256);
  v6 = *(v0 + 240);
  v7 = *(v0 + 224);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));
  sub_2311CF324(v5 + 72, v0 + 168);
  v2(v6, v3, v7);
  v8 = OUTLINED_FUNCTION_2_17();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312A35E8()
{
  OUTLINED_FUNCTION_16();
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[35];
  v4 = v0[28];
  sub_2311E3ED8(v0[30], (v0 + 21));

  v5 = OUTLINED_FUNCTION_28_0();
  v2(v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312A3670()
{
  OUTLINED_FUNCTION_70_1();
  v15 = v0;
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 376);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 256);
  v7 = *(v0 + 224);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));
  swift_setDeallocating();
  sub_231322A34();
  OUTLINED_FUNCTION_36_2();
  v8 = swift_allocObject();
  *(v0 + 320) = v8;
  OUTLINED_FUNCTION_10_18(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43008, &unk_23136B8E0);
  *(v0 + 328) = swift_allocBox();
  v2(v9, v3, v7);
  sub_2313690A0();
  swift_allocObject();
  *(v0 + 336) = sub_2312E8D30(&v14, 0, 1);
  v10 = OUTLINED_FUNCTION_2_17();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2312A3778()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  v4 = v0[35];
  OUTLINED_FUNCTION_36_2();
  v5 = swift_allocObject();
  *(v5 + 16) = v3 | 0x2000000000000000;
  *(v5 + 24) = v1 | 0x8000000000000000;

  OUTLINED_FUNCTION_5_17();
  sub_2312A3B88(v2, v5 | 0xC000000000000000, v4, v6, v7);

  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312A3860()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[35];
  v2 = v0[33];
  OUTLINED_FUNCTION_36_2();
  v3 = swift_allocObject();
  v0[43] = v3;
  OUTLINED_FUNCTION_10_18(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43010, qword_231374B70);
  v4 = swift_allocBox();
  v6 = v5;
  v0[44] = v4;
  v7 = *MEMORY[0x277D60AC8];
  v8 = sub_231367C70();
  OUTLINED_FUNCTION_7_0(v8);
  (*(v9 + 104))(v6, v7);
  OUTLINED_FUNCTION_29_10();
  v0[45] = sub_2312E9250(1);
  v10 = OUTLINED_FUNCTION_2_17();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2312A3950()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  v4 = v0[35];
  OUTLINED_FUNCTION_36_2();
  v5 = swift_allocObject();
  *(v5 + 16) = v3 | 0x2000000000000000;
  *(v5 + 24) = v1;

  OUTLINED_FUNCTION_6_16();
  sub_2312A3B88(v2, v5 | 0xC000000000000000, v4, v6, v7);

  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312A3A28()
{
  v8 = v0;
  v2 = v0[34];
  v1 = v0[35];
  sub_2313690A0();
  swift_allocObject();
  v0[46] = sub_2312E8D30(&v7, 0, 1);
  v3 = OUTLINED_FUNCTION_2_17();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_2312A3ABC()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[46];
  v2 = v0[35];
  v3 = v0[30];
  OUTLINED_FUNCTION_36_2();
  v4 = swift_allocObject();
  *(v4 + 16) = 0xD000000000000010;
  *(v4 + 24) = 0x800000023137F830;
  OUTLINED_FUNCTION_5_17();
  sub_2312A3B88(v1, v5 | 0x2000000000000000, v2, v6, v7);

  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_86();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2312A3B88(uint64_t a1, unint64_t a2, void *a3, uint64_t (*a4)(void), _UNKNOWN **a5)
{
  v10 = sub_2313698C0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v42 = a5;
  v52 = a4(0);
  v53 = a5;
  v41 = v52;
  v51[0] = a1;

  sub_2313690F0();
  sub_2311CF324(v51, &v48);
  v12 = a2 & 0x1FFFFFFFFFFFFFFFLL;

  v13 = sub_2313698A0();
  v14 = sub_23136A3A0();

  if (os_log_type_enabled(v13, v14))
  {
    v40 = v10;
    v15 = swift_slowAlloc();
    *&v43 = swift_slowAlloc();
    *v15 = 136315650;
    sub_2311CF324(&v48, &v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43020, &qword_23136BD80);
    v16 = sub_23136A010();
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1Tm(&v48);
    v19 = sub_2311CFD58(v16, v18, &v43);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    sub_23120EB78();
    v22 = sub_2311CFD58(v20, v21, &v43);

    *(v15 + 14) = v22;
    v12 = a2 & 0x1FFFFFFFFFFFFFFFLL;
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_2311CFD58(a3[16], a3[17], &v43);
    _os_log_impl(&dword_2311CB000, v13, v14, "adding %s against %s for provider of type %s", v15, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v23 = OUTLINED_FUNCTION_23_12();
    v25 = v40;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v48);
    v23 = OUTLINED_FUNCTION_23_12();
    v25 = v10;
  }

  v24(v23, v25);
  swift_beginAccess();
  v26 = a3[14];
  sub_231369EE0();
  v27 = sub_2312177D0(a2, v26);

  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = *(v28 + 16);
    sub_23126DD64();
    v28 = v38;
  }

  v29 = *(v28 + 16);
  if (v29 >= *(v28 + 24) >> 1)
  {
    sub_23126DD64();
    v28 = v39;
  }

  *(&v49 + 1) = v41;
  v50 = v42;
  *&v48 = a1;
  *(v28 + 16) = v29 + 1;
  sub_2311D38A8(&v48, v28 + 40 * v29 + 32);
  swift_beginAccess();

  v30 = a3[14];
  swift_isUniquelyReferenced_nonNull_native();
  *&v45 = a3[14];
  sub_231259AFC();
  a3[14] = v45;
  swift_endAccess();
  if (a2 >> 61 == 6)
  {
    v31 = *(v12 + 24);
    sub_231210ACC(&v48, *(v12 + 16));
    sub_231210ACC(&v45, v31);
    v32 = type metadata accessor for JointProviderKeyExtractor();
    v33 = swift_allocObject();
    v34 = v49;
    *(v33 + 16) = v48;
    *(v33 + 32) = v34;
    v35 = v46;
    *(v33 + 56) = v45;
    *(v33 + 48) = v50;
    *(v33 + 72) = v35;
    *(v33 + 88) = v47;
    *(&v49 + 1) = v32;
    v50 = &off_2845F5A70;
    *&v48 = v33;
  }

  else
  {
    sub_231210ACC(&v48, a2);
  }

  sub_2312108A0(&v48, &v43);
  if (v44)
  {
    sub_2311D38A8(&v43, &v45);
    __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
    sub_23120E294();
    sub_231210910(&v48);
    __swift_destroy_boxed_opaque_existential_1Tm(&v45);
  }

  else
  {
    sub_231210910(&v48);
    sub_231210910(&v43);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v51);
}

uint64_t OUTLINED_FUNCTION_17_10()
{
  v1 = v0[27];
  result = v0[20];
  v3 = v0[18];
  v4 = v0[28] + 1;
  v5 = *(v0[19] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[7] = v3;
  v2[8] = a2;
  v2[4] = a1;

  return sub_2311CF324((v2 + 4), v4 + 1928);
}

uint64_t OUTLINED_FUNCTION_28_12()
{
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[7];

  return type metadata accessor for NotExposedTooManySuggestionsPolicy();
}

uint64_t sub_2312A4110(uint64_t a1, void *a2)
{
  v4 = sub_231368180();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  (*(v8 + 16))(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_231367AD0();
  v10 = sub_231367710();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  return sub_2313676E0();
}

uint64_t sub_2312A425C(__int128 *a1)
{
  swift_defaultActor_initialize();
  *(v1 + 216) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 152) = 0u;
  sub_2311D38A8(a1, v1 + 112);
  return v1;
}

uint64_t sub_2312A42AC()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2313698C0();
  OUTLINED_FUNCTION_4_17(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_62_0();
  v1[7] = OUTLINED_FUNCTION_23_13(v7);
  v8 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312A4350()
{
  v32 = v0;
  v1 = v0[7];
  v2 = v0[2];
  sub_2313690F0();
  sub_231369EE0();
  v3 = sub_2313698A0();
  v4 = sub_23136A3A0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  if (v5)
  {
    v9 = v0[2];
    v10 = OUTLINED_FUNCTION_60();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 136315138;
    v12 = MEMORY[0x23192A860](v9, MEMORY[0x277D837D0]);
    v14 = sub_2311CFD58(v12, v13, &v31);

    *(v10 + 4) = v14;
    OUTLINED_FUNCTION_19_1(&dword_2311CB000, v15, v16, "AppInstallAutoCompleteIndexUpdater got called with appInstalled - %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  v17 = *(v8 + 8);
  v18 = OUTLINED_FUNCTION_28_0();
  v17(v18);
  v0[8] = v17;
  v19 = v0[3];
  v20 = v19[17];
  v21 = v19[18];
  OUTLINED_FUNCTION_3_2(v19 + 14);
  v22 = *(v21 + 24);
  OUTLINED_FUNCTION_3_3();
  v30 = v23 + *v23;
  v25 = *(v24 + 4);
  v26 = swift_task_alloc();
  v0[9] = v26;
  *v26 = v0;
  v27 = OUTLINED_FUNCTION_10_19(v26);

  return v28(v27);
}

uint64_t sub_2312A455C()
{
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_9();
  *v7 = v6;
  v2[10] = v0;

  if (v0)
  {
    v8 = v2[3];

    return MEMORY[0x2822009F8](sub_2312A4690, v8, 0);
  }

  else
  {
    v10 = v2[6];
    v9 = v2[7];

    OUTLINED_FUNCTION_56_0();

    return v11();
  }
}

uint64_t sub_2312A4690()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_18_15();
  sub_2313690F0();
  v2 = sub_2313698A0();
  v3 = sub_23136A3B0();
  if (OUTLINED_FUNCTION_40_1(v3))
  {
    v4 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v4);
    OUTLINED_FUNCTION_0_26();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_20_17();

  v10 = OUTLINED_FUNCTION_28_0();
  v1(v10);
  v12 = *(v0 + 48);
  v11 = *(v0 + 56);

  OUTLINED_FUNCTION_56_0();

  return v13();
}

uint64_t sub_2312A4760()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2313698C0();
  OUTLINED_FUNCTION_4_17(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_62_0();
  v1[7] = OUTLINED_FUNCTION_23_13(v7);
  v8 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312A4804()
{
  v32 = v0;
  v1 = v0[7];
  v2 = v0[2];
  sub_2313690F0();
  sub_231369EE0();
  v3 = sub_2313698A0();
  v4 = sub_23136A3A0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  if (v5)
  {
    v9 = v0[2];
    v10 = OUTLINED_FUNCTION_60();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 136315138;
    v12 = MEMORY[0x23192A860](v9, MEMORY[0x277D837D0]);
    v14 = sub_2311CFD58(v12, v13, &v31);

    *(v10 + 4) = v14;
    OUTLINED_FUNCTION_19_1(&dword_2311CB000, v15, v16, "AppInstallAutoCompleteIndexUpdater got called with appUnInstalled - %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  v17 = *(v8 + 8);
  v18 = OUTLINED_FUNCTION_28_0();
  v17(v18);
  v0[8] = v17;
  v19 = v0[3];
  v20 = v19[17];
  v21 = v19[18];
  OUTLINED_FUNCTION_3_2(v19 + 14);
  v22 = *(v21 + 32);
  OUTLINED_FUNCTION_3_3();
  v30 = v23 + *v23;
  v25 = *(v24 + 4);
  v26 = swift_task_alloc();
  v0[9] = v26;
  *v26 = v0;
  v27 = OUTLINED_FUNCTION_10_19(v26);

  return v28(v27);
}

uint64_t sub_2312A4A10()
{
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_9();
  *v7 = v6;
  v2[10] = v0;

  if (v0)
  {
    v8 = v2[3];

    return MEMORY[0x2822009F8](sub_2312A4B44, v8, 0);
  }

  else
  {
    v10 = v2[6];
    v9 = v2[7];

    OUTLINED_FUNCTION_56_0();

    return v11();
  }
}

uint64_t sub_2312A4B44()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_18_15();
  sub_2313690F0();
  v2 = sub_2313698A0();
  v3 = sub_23136A3B0();
  if (OUTLINED_FUNCTION_40_1(v3))
  {
    v4 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v4);
    OUTLINED_FUNCTION_0_26();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_20_17();

  v10 = OUTLINED_FUNCTION_28_0();
  v1(v10);
  v12 = *(v0 + 48);
  v11 = *(v0 + 56);

  OUTLINED_FUNCTION_56_0();

  return v13();
}

uint64_t sub_2312A4C14()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2313698C0();
  OUTLINED_FUNCTION_4_17(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_62_0();
  v1[7] = OUTLINED_FUNCTION_23_13(v7);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312A4CD0()
{
  OUTLINED_FUNCTION_60_0();
  if (v0[2] == 1)
  {
    v1 = v0[9];
    sub_231369100();
    v2 = sub_2313698A0();
    v3 = sub_23136A3A0();
    if (OUTLINED_FUNCTION_40_1(v3))
    {
      v4 = OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_68(v4);
      OUTLINED_FUNCTION_0_26();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_9_10();
    }

    v10 = v0[9];
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[3];

    v0[10] = *(v12 + 8);
    v14 = OUTLINED_FUNCTION_28_0();
    v15(v14);
    v16 = v13[17];
    v17 = v13[18];
    OUTLINED_FUNCTION_3_2(v13 + 14);
    v18 = *(v17 + 40);
    OUTLINED_FUNCTION_3_3();
    v39 = (v19 + *v19);
    v21 = *(v20 + 4);
    v22 = swift_task_alloc();
    v0[11] = v22;
    *v22 = v0;
    v22[1] = sub_2312A4F30;

    return v39(1, v16, v17);
  }

  else
  {
    v24 = v0[7];
    sub_231369100();
    v25 = sub_2313698A0();
    v26 = sub_23136A3A0();
    v27 = OUTLINED_FUNCTION_40_1(v26);
    v28 = v0[5];
    if (v27)
    {
      v29 = OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_68(v29);
      OUTLINED_FUNCTION_0_26();
      _os_log_impl(v30, v31, v32, v33, v34, 2u);
      OUTLINED_FUNCTION_9_10();
    }

    v35 = v0[8];
    v36 = v0[9];
    v37 = v0[6];
    (*(v28 + 8))(v0[7], v0[4]);

    OUTLINED_FUNCTION_56_0();

    return v38();
  }
}

uint64_t sub_2312A4F30()
{
  v2 = *v1;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *(v2 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_9();
  *v7 = v6;
  *(v9 + 96) = v8;
  *(v9 + 104) = v0;

  v10 = *(v2 + 24);
  if (v0)
  {
    v11 = sub_2312A5164;
  }

  else
  {
    v11 = sub_2312A505C;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_2312A505C()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 64);
  sub_231369100();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v3))
  {
    v4 = *(v0 + 96);
    v5 = OUTLINED_FUNCTION_60();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    OUTLINED_FUNCTION_0_26();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    OUTLINED_FUNCTION_9_10();
  }

  v11 = *(v0 + 40);

  v12 = *(v0 + 72);
  v13 = *(v0 + 56);
  v14 = *(v0 + 48);
  (*(v0 + 80))(*(v0 + 64), *(v0 + 32));

  OUTLINED_FUNCTION_56_0();

  return v15();
}

uint64_t sub_2312A5164()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_18_15();
  sub_2313690F0();
  v1 = sub_2313698A0();
  v2 = sub_23136A3B0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 104);
  v5 = *(v0 + 40);
  if (v3)
  {
    *OUTLINED_FUNCTION_63() = 0;
    OUTLINED_FUNCTION_19_0(&dword_2311CB000, v6, v7, "Error BuildAutoCompleteIndex on GM status change");
    OUTLINED_FUNCTION_29();
  }

  v8 = *(v0 + 72);
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  (*(v0 + 80))(*(v0 + 48), *(v0 + 32));

  OUTLINED_FUNCTION_56_0();

  return v11();
}

uint64_t sub_2312A526C()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v0;
  v2 = sub_2313698C0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  OUTLINED_FUNCTION_3_3();
  v1[4] = v4;
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_62_0();
  v7 = swift_task_alloc();
  v1[7] = OUTLINED_FUNCTION_23_13(v7);
  v8 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312A5324()
{
  OUTLINED_FUNCTION_60_0();
  v1 = v0[7];
  sub_231369100();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v3))
  {
    v4 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v4);
    OUTLINED_FUNCTION_0_26();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_9_10();
  }

  v10 = v0[7];
  v11 = v0[3];
  v12 = v0[4];
  v13 = v0[2];

  v0[8] = *(v12 + 8);
  v14 = OUTLINED_FUNCTION_28_0();
  v15(v14);
  v16 = v13[17];
  v17 = v13[18];
  OUTLINED_FUNCTION_3_2(v13 + 14);
  v18 = *(v17 + 40);
  OUTLINED_FUNCTION_3_3();
  v24 = (v19 + *v19);
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v0[9] = v22;
  *v22 = v0;
  v22[1] = sub_2312A54B4;

  return (v24)(0, v16, v17);
}

uint64_t sub_2312A54B4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *(v2 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_9();
  *v7 = v6;
  *(v9 + 80) = v8;
  *(v9 + 88) = v0;

  v10 = *(v2 + 16);
  if (v0)
  {
    v11 = sub_2312A56E0;
  }

  else
  {
    v11 = sub_2312A55E0;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_2312A55E0()
{
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_18_15();
  sub_231369100();
  v1 = sub_2313698A0();
  v2 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v2))
  {
    v3 = v0[10];
    v4 = OUTLINED_FUNCTION_60();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    OUTLINED_FUNCTION_0_26();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    OUTLINED_FUNCTION_9_10();
  }

  v10 = v0[7];
  v11 = v0[8];
  v13 = v0[5];
  v12 = v0[6];
  v14 = v0[3];
  v15 = v0[4];

  v11(v12, v14);

  OUTLINED_FUNCTION_56_0();

  return v16();
}

uint64_t sub_2312A56E0()
{
  OUTLINED_FUNCTION_60_0();
  v1 = v0[5];
  sub_2313690F0();
  v2 = sub_2313698A0();
  v3 = sub_23136A3B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[11];
  if (v4)
  {
    *OUTLINED_FUNCTION_63() = 0;
    OUTLINED_FUNCTION_19_0(&dword_2311CB000, v6, v7, "Error BuildAutoCompleteIndex OnSiriLocaleChange");
    OUTLINED_FUNCTION_29();
  }

  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[3];
  v13 = v0[4];

  v9(v10, v12);

  OUTLINED_FUNCTION_56_0();

  return v14();
}

uint64_t sub_2312A57E8(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return OUTLINED_FUNCTION_8_5(sub_2312A5808, v2);
}

uint64_t sub_2312A5808()
{
  OUTLINED_FUNCTION_60_0();
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = sub_231368E60();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v7 = sub_231368E50();
  sub_231366F90();
  v8 = MEMORY[0x277D611E8];
  v0[5] = v4;
  v0[6] = v8;
  v0[2] = v7;
  swift_beginAccess();

  sub_2312A5F70((v0 + 2), v2 + 152);
  swift_endAccess();
  v9 = sub_231366FB0();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v12 = sub_231366FA0();
  sub_231366F90();
  v13 = MEMORY[0x277D607C8];
  v0[5] = v9;
  v0[6] = v13;

  v0[2] = v12;
  swift_beginAccess();
  sub_2312A5F70((v0 + 2), v2 + 192);
  swift_endAccess();
  OUTLINED_FUNCTION_56_0();

  return v14();
}

uint64_t sub_2312A5984()
{
  v1 = v0[13];
  swift_beginAccess();
  if (*(v1 + 176))
  {
    sub_2311CF324(v1 + 152, (v0 + 2));
    v2 = v0[5];
    v3 = v0[6];
    OUTLINED_FUNCTION_3_2(v0 + 2);
    OUTLINED_FUNCTION_28_0();
    sub_231368C30();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  v4 = v0[13];
  swift_beginAccess();
  if (*(v4 + 216))
  {
    sub_2311CF324(v4 + 192, (v0 + 2));
    v5 = v0[5];
    v6 = v0[6];
    OUTLINED_FUNCTION_3_2(v0 + 2);
    OUTLINED_FUNCTION_28_0();
    sub_231368C30();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  OUTLINED_FUNCTION_56_0();

  return v7();
}

uint64_t sub_2312A5A70()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  sub_2312A5FE0(v0 + 152);
  sub_2312A5FE0(v0 + 192);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2312A5AA8()
{
  sub_2312A5A70();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2312A5AF8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2312A6048;

  return sub_2312A42AC();
}

uint64_t sub_2312A5B90()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2312A6048;

  return sub_2312A4760();
}

uint64_t sub_2312A5C28()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2312A6048;

  return sub_2312A4C14();
}

uint64_t sub_2312A5CC0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2312A5D50;

  return sub_2312A526C();
}

uint64_t sub_2312A5D50()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_9();
  *v3 = v2;

  OUTLINED_FUNCTION_56_0();

  return v4();
}

uint64_t sub_2312A5E38(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2312A6048;

  return sub_2312A57E8(a1, a2);
}

uint64_t sub_2312A5EE0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2312A6048;

  return sub_2312A5968();
}

uint64_t sub_2312A5F70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44510, &qword_231374330);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2312A5FE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44510, &qword_231374330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_23_13(uint64_t a1)
{
  *(v1 + 48) = a1;

  return swift_task_alloc();
}

uint64_t sub_2312A6070(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E6604(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2312ADA24(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_2312A60DC(uint64_t *a1)
{
  v2 = type metadata accessor for SignalGenerator.NewSuggestionResult(0);
  OUTLINED_FUNCTION_40_0(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E667C(v5);
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v9[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9[1] = v7;
  result = sub_2312ADB28(v9);
  *a1 = v5;
  return result;
}

uint64_t sub_2312A6180(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, __int128 *a5)
{
  v6 = v5;
  v11 = sub_2313698C0();
  OUTLINED_FUNCTION_21();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_4();
  v19 = v18 - v17;
  v20 = *a3;
  v26 = *a4;
  sub_2311CF324(a2, v6 + 56);
  sub_2311CF324(a1, v6 + 16);
  sub_231369100();
  v21 = sub_2313698A0();
  v22 = sub_23136A3A0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2311CB000, v21, v22, "Warming up signal configurators by getting configurators for HomeScreenTier1 signal.", v23, 2u);
    OUTLINED_FUNCTION_29();
  }

  (*(v13 + 8))(v19, v11);
  sub_2311CF324(v6 + 16, v28);
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2313707C0;
  sub_2313692F0();
  *(v24 + 32) = sub_231369270();
  sub_2313685B0();

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  *(v6 + 96) = v20;
  *(v6 + 104) = v26;
  sub_2311D38A8(a5, v6 + 112);
  return v6;
}

uint64_t sub_2312A639C()
{
  OUTLINED_FUNCTION_8();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = sub_231367C70();
  v1[16] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[17] = v6;
  v8 = *(v7 + 64);
  v1[18] = OUTLINED_FUNCTION_43();
  v9 = sub_2313698C0();
  v1[19] = v9;
  OUTLINED_FUNCTION_0(v9);
  v1[20] = v10;
  v12 = *(v11 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2312A64A4()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[15];
  v2 = v1[10];
  v3 = v1[11];
  OUTLINED_FUNCTION_3_2(v1 + 7);
  v4 = *(MEMORY[0x277D611F0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[23] = v5;
  *v5 = v6;
  v5[1] = sub_2312A6558;
  v7 = v0[12];
  v8 = v0[13];

  return MEMORY[0x2821C74E8](v0 + 2, v7, v8, v2, v3);
}

uint64_t sub_2312A6558()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 184);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312A663C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  a19 = v21;
  a20 = v22;
  a18 = v20;
  if (v20[5])
  {
    v23 = v20[6];
    OUTLINED_FUNCTION_3_2(v20 + 2);
    v24 = *(MEMORY[0x277D60C70] + 4);
    v25 = swift_task_alloc();
    v20[24] = v25;
    *v25 = v20;
    v25[1] = sub_2312A68CC;
    v27 = v20[12];
    v26 = v20[13];
    OUTLINED_FUNCTION_40();

    return MEMORY[0x2821C6B98](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
  }

  else
  {
    sub_2311D1F18((v20 + 2), &qword_27DD43220, &qword_23136BCC0);
    v20[26] = MEMORY[0x277D84F90];
    v36 = v20[22];
    sub_231369150();
    sub_231369EE0();
    v37 = sub_2313698A0();
    v38 = sub_23136A390();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v20[22];
    v41 = v20[19];
    v42 = v20[20];
    if (v39)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      a9 = v44;
      *v43 = 136315138;
      v45 = sub_2313692F0();
      v46 = MEMORY[0x23192A860](MEMORY[0x277D84F90], v45);
      v48 = sub_2311CFD58(v46, v47, &a9);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_2311CB000, v37, v38, "SignalGenerator: got signals: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    v49 = *(v42 + 8);
    v50 = OUTLINED_FUNCTION_28_0();
    v49(v50);
    OUTLINED_FUNCTION_51_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436C0, &qword_23136D378);
    OUTLINED_FUNCTION_1_27();
    sub_2312AFBEC(v51, 255, v52);
    OUTLINED_FUNCTION_28_0();
    v53 = sub_231369EC0();
    OUTLINED_FUNCTION_31_14(v53);
    OUTLINED_FUNCTION_39_9();
    v54 = swift_task_alloc();
    v20[29] = v54;
    *v54 = v20;
    OUTLINED_FUNCTION_11_18(v54);
    OUTLINED_FUNCTION_40();

    return sub_2312A703C();
  }
}

uint64_t sub_2312A68CC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 192);
  *v2 = *v0;
  *(v1 + 200) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312A69B4()
{
  v22 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[25];
  v0[26] = v1;
  v2 = v0[22];
  sub_231369150();
  sub_231369EE0();
  v3 = sub_2313698A0();
  v4 = sub_23136A390();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  if (v5)
  {
    v20 = v0[22];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v11 = sub_2313692F0();
    v12 = MEMORY[0x23192A860](v1, v11);
    v14 = sub_2311CFD58(v12, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2311CB000, v3, v4, "SignalGenerator: got signals: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v7 + 8))(v20, v8);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  OUTLINED_FUNCTION_51_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436C0, &qword_23136D378);
  OUTLINED_FUNCTION_1_27();
  sub_2312AFBEC(v15, 255, v16);
  v17 = sub_231369EC0();
  OUTLINED_FUNCTION_31_14(v17);
  OUTLINED_FUNCTION_39_9();
  v18 = swift_task_alloc();
  v0[29] = v18;
  *v18 = v0;
  OUTLINED_FUNCTION_11_18(v18);

  return sub_2312A703C();
}

uint64_t sub_2312A6BCC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = v4[29];
  v6 = v4[28];
  v7 = v4[26];
  v8 = v4[18];
  v9 = v4[17];
  v10 = v4[16];
  v11 = *v0;
  OUTLINED_FUNCTION_2();
  *v12 = v11;
  *(v2 + 240) = v13;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
  (*(v9 + 8))(v8, v10);
  v14 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

void sub_2312A6D54()
{
  v33 = v0;
  v1 = *(v0 + 240);
  v2 = *(v1 + 64);
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_30_12();
  v6 = v5 & v4;
  v8 = (63 - v7) >> 6;
  sub_231369EE0();
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      if (!v6)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= v8)
          {
            goto LABEL_18;
          }

          v6 = *(v1 + 64 + 8 * v11);
          ++v9;
          if (v6)
          {
            v9 = v11;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

LABEL_7:
      v12 = (v9 << 9) | (8 * __clz(__rbit64(v6)));
      v13 = *(*(v1 + 56) + v12);
      v14 = *(v13 + 16);
      v15 = *(v10 + 16);
      if (__OFADD__(v15, v14))
      {
        goto LABEL_22;
      }

      v16 = *(*(v1 + 56) + v12);
      sub_231369EE0();
      if (!swift_isUniquelyReferenced_nonNull_native() || v15 + v14 > *(v10 + 24) >> 1)
      {
        OUTLINED_FUNCTION_44_8();
        sub_23126DF64();
        v10 = v17;
      }

      v6 &= v6 - 1;
      if (!*(v13 + 16))
      {
        break;
      }

      if ((*(v10 + 24) >> 1) - *(v10 + 16) < v14)
      {
        goto LABEL_23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
      swift_arrayInitWithCopy();

      if (v14)
      {
        v18 = *(v10 + 16);
        v19 = __OFADD__(v18, v14);
        v20 = v18 + v14;
        if (v19)
        {
          goto LABEL_24;
        }

        *(v10 + 16) = v20;
      }
    }
  }

  while (!v14);
  __break(1u);
LABEL_18:
  v21 = v31[30];

  v32 = v10;
  sub_231369EE0();
  sub_2312A6070(&v32);
  v22 = v31[27];
  v24 = v31[21];
  v23 = v31[22];
  v25 = v31[19];
  v26 = v31[20];
  v27 = v31[18];

  v28 = v32;
  sub_231369170();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
  sub_231369890();
  v29 = OUTLINED_FUNCTION_26_1();
  v22(v29);

  OUTLINED_FUNCTION_14();

  v30(v28);
}

uint64_t sub_2312A703C()
{
  OUTLINED_FUNCTION_8();
  v1[37] = v2;
  v1[38] = v0;
  v1[35] = v3;
  v1[36] = v4;
  v1[33] = v5;
  v1[34] = v6;
  v1[31] = v7;
  v1[32] = v8;
  v1[30] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44518, &qword_231374430);
  v1[39] = v10;
  OUTLINED_FUNCTION_40_0(v10);
  v12 = *(v11 + 64);
  v1[40] = OUTLINED_FUNCTION_43();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44520, &qword_231374438);
  OUTLINED_FUNCTION_40_0(v13);
  v15 = *(v14 + 64) + 15;
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44528, &qword_231374440);
  OUTLINED_FUNCTION_40_0(v16);
  v18 = *(v17 + 64);
  v1[43] = OUTLINED_FUNCTION_43();
  v19 = sub_231367E50();
  v1[44] = v19;
  OUTLINED_FUNCTION_0(v19);
  v1[45] = v20;
  v22 = *(v21 + 64) + 15;
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v23 = type metadata accessor for SignalGenerator.NewSuggestionResult(0);
  v1[48] = v23;
  OUTLINED_FUNCTION_0(v23);
  v1[49] = v24;
  v26 = *(v25 + 64);
  v1[50] = OUTLINED_FUNCTION_43();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44530, &qword_231374448);
  OUTLINED_FUNCTION_40_0(v27);
  v29 = *(v28 + 64);
  v1[51] = OUTLINED_FUNCTION_43();
  v30 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_2312A7218()
{
  v1 = v0[31];
  if (v1 >> 62)
  {
    goto LABEL_42;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_43:
    v72 = v0[35];
    v74 = v0[50];
    v73 = v0[51];
    v76 = v0[46];
    v75 = v0[47];
    v78 = v0[42];
    v77 = v0[43];
    v80 = v0[40];
    v79 = v0[41];
    sub_231369EE0();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_35();

    __asm { BRAA            X2, X16 }
  }

LABEL_3:
  v2 = v0[38];
  v3 = v0[31];
  v4 = sub_231369EE0();
  v5 = sub_23125566C(v4);
  v6 = sub_2312594B8(v5);

  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v84 = v6;
  OUTLINED_FUNCTION_37_12();
  v8 = sub_2313685B0();
  v0 = (v8 + 64);
  v9 = *(v8 + 64);
  v10 = *(v8 + 32);
  OUTLINED_FUNCTION_30_12();
  v13 = v12 & v11;
  v15 = (63 - v14) >> 6;
  v87 = v16;
  sub_231369EE0();
  v17 = 0;
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v85 = v15;
  v86 = v0;
  if (v13)
  {
LABEL_4:
    v90 = v17;
    v20 = v88;
    goto LABEL_10;
  }

LABEL_5:
  v20 = v88;
  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      if (!sub_23136A5A0())
      {
        goto LABEL_43;
      }

      goto LABEL_3;
    }

    if (v21 >= v15)
    {
      break;
    }

    v13 = v0[v21];
    ++v18;
    if (v13)
    {
      v90 = v17;
      v18 = v21;
LABEL_10:
      v22 = v20[37];
      v23 = v20[38];
      v89 = v20[36];
      v24 = v20[32];
      v25 = v20[30];
      v26 = (v18 << 9) | (8 * __clz(__rbit64(v13)));
      v27 = *(v87[6] + v26);
      v28 = *(v87[7] + v26);
      v29 = swift_task_alloc();
      v29[2] = v23;
      v29[3] = v27;
      v29[4] = v25;
      v29[5] = v22;
      v29[6] = v24;
      v29[7] = v89;

      sub_231369EE0();
      v17 = v90;
      v30 = sub_2312E3730(sub_2312AF8B4, v29, v28);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_18();
        sub_23126E2DC();
        v19 = v32;
      }

      v31 = *(v19 + 16);
      v15 = v85;
      v0 = v86;
      if (v31 >= *(v19 + 24) >> 1)
      {
        OUTLINED_FUNCTION_44_8();
        sub_23126E2DC();
        v19 = v33;
      }

      v13 &= v13 - 1;
      *(v19 + 16) = v31 + 1;
      *(v19 + 8 * v31 + 32) = v30;
      if (v13)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  v0 = v87;

  v34 = 0;
  v35 = *(v19 + 16);
  v36 = MEMORY[0x277D84F90];
  while (1)
  {
    *(v88 + 416) = v36;
    if (v35 == v34)
    {
      break;
    }

    if (v34 >= *(v19 + 16))
    {
      goto LABEL_37;
    }

    v37 = v19 + 8 * v34;
    v38 = *(v37 + 32);
    v39 = *(v38 + 16);
    v40 = *(v36 + 16);
    v41 = v40 + v39;
    if (__OFADD__(v40, v39))
    {
      goto LABEL_38;
    }

    v42 = *(v37 + 32);
    sub_231369EE0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v41 > *(v36 + 24) >> 1)
    {
      if (v40 <= v41)
      {
        v44 = v40 + v39;
      }

      else
      {
        v44 = v40;
      }

      sub_23126E29C(isUniquelyReferenced_nonNull_native, v44, 1, v36);
      v36 = v45;
    }

    if (*(v38 + 16))
    {
      v0 = ((*(v36 + 24) >> 1) - *(v36 + 16));
      v46 = *(type metadata accessor for SignalGenerator.NewSuggestionRequest(0) - 8);
      if (v0 < v39)
      {
        goto LABEL_40;
      }

      v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v48 = *(v46 + 72);
      swift_arrayInitWithCopy();

      if (v39)
      {
        v49 = *(v36 + 16);
        v50 = __OFADD__(v49, v39);
        v51 = v49 + v39;
        if (v50)
        {
          goto LABEL_41;
        }

        *(v36 + 16) = v51;
      }
    }

    else
    {

      if (v39)
      {
        goto LABEL_39;
      }
    }

    ++v34;
  }

  v52 = *(v88 + 408);
  v53 = *(v88 + 304);
  v54 = *(v88 + 272);
  v55 = *(v88 + 280);
  v56 = *(v88 + 264);

  v57 = sub_2312A8A38(v84);

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44538, &qword_231374450);
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v58);
  sub_2311CF324(v56, v88 + 72);
  v59 = swift_allocObject();
  *(v88 + 424) = v59;
  *(v59 + 16) = v53;
  *(v59 + 24) = v54;
  sub_2311D38A8((v88 + 72), v59 + 32);
  *(v59 + 72) = v55;
  *(v59 + 80) = v57 & 1;
  v60 = *(MEMORY[0x277D60B28] + 4);
  sub_231369EE0();

  v61 = swift_task_alloc();
  *(v88 + 432) = v61;
  type metadata accessor for SignalGenerator.NewSuggestionRequest(0);
  *v61 = v88;
  v61[1] = sub_2312A7774;
  v62 = *(v88 + 408);
  v63 = *(v88 + 384);
  OUTLINED_FUNCTION_35();

  return MEMORY[0x2821C6B08](v64, v65, v66, v67, v68, v69, v70, v71);
}

void sub_2312A7774()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 432);
  *v4 = *v1;
  v3[55] = v7;

  if (v0)
  {
  }

  else
  {
    v9 = v3[52];
    v8 = v3[53];
    sub_2311D1F18(v3[51], &qword_27DD44530, &qword_231374448);

    v10 = OUTLINED_FUNCTION_1();

    MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_2312A78BC()
{
  v78 = v0;
  v1 = v0[55];
  v2 = v0[38];
  sub_2312ACCD8(v1, v0[31], v0[34]);
  v69 = v1;
  v66 = *(v1 + 16);
  if (!v66)
  {
    v50 = v0[35];
    sub_231369EE0();

    v47 = v0[35];
    v3 = v47;
LABEL_39:
    if (*(v47 + 16) < *(v0[38] + 96))
    {
      v51 = v0[31];
      v52 = sub_231369EE0();
      v53 = sub_23125566C(v52);
      v54 = sub_2312594B8(v53);
      v0[56] = v54;

      result = sub_23125D7A0(v54);
      v0[57] = result;
      if (result)
      {
        v55 = v0[34];
        v0[58] = v55 + 1;
        if (!__OFADD__(v55, 1))
        {
          v0[59] = v3;
          v56 = v0[56] & 0xC000000000000001;
          sub_23120DE34(0, v56 == 0);
          v57 = v0[56];
          if (v56)
          {
            v58 = MEMORY[0x23192AD10](0, v57);
          }

          else
          {
            v58 = *(v57 + 32);
          }

          v0[60] = v58;
          v0[61] = 1;
          if (v0[30])
          {
            v61 = v0[30];
          }

          else
          {

            v61 = v58;
          }

          v0[62] = v61;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_2313707C0;
          *(inited + 32) = v58;

          v0[63] = sub_2312A8FE0(inited);
          swift_setDeallocating();
          sub_231322A48();
          v63 = swift_task_alloc();
          v0[64] = v63;
          *v63 = v0;
          OUTLINED_FUNCTION_12_15(v63);
          OUTLINED_FUNCTION_33_0();

          return sub_2312A703C();
        }

LABEL_57:
        __break(1u);
        return result;
      }
    }

    OUTLINED_FUNCTION_50_6();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_33_0();

    __asm { BRAA            X2, X16 }
  }

  v65 = v0[48];
  v3 = v0[35];
  v68 = v0[49];
  v67 = v0[55] + ((*(v68 + 80) + 32) & ~*(v68 + 80));
  v71 = (v0[45] + 16);
  result = sub_231369EE0();
  v5 = 0;
  while (1)
  {
    if (v5 >= *(v69 + 16))
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v6 = v0[50];
    v70 = v5;
    sub_2312AFA7C(v67 + *(v68 + 72) * v5, v6);
    v75 = *(*v6 + 16);
    if (v75)
    {
      break;
    }

LABEL_33:
    v5 = v70 + 1;
    result = sub_2312AFAD8(v0[50], type metadata accessor for SignalGenerator.NewSuggestionResult);
    if (v70 + 1 == v66)
    {
      v46 = v0[55];

      v47 = v0[35];
      goto LABEL_39;
    }
  }

  v7 = 0;
  v72 = *v6 + 32;
  v73 = *(v65 + 20);
  v74 = v0[50];
  while (1)
  {
    sub_2311CF324(v72 + 40 * v7, (v0 + 14));
    if (*(v3 + 16) && (v8 = sub_2312163D4(), (v9 & 1) != 0))
    {
      v10 = *(*(v3 + 56) + 8 * v8);
      sub_231369EE0();
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    ++v7;
    v11 = *(v10 + 16);
    v12 = v10 + 32;
    sub_231369EE0();
    v13 = v11 + 1;
    while (--v13)
    {
      v14 = *(v12 + 24);
      v15 = *(v12 + 32);
      v16 = OUTLINED_FUNCTION_40_10();
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v18 = sub_231368320();
      v20 = v19;
      v21 = v0[18];
      __swift_project_boxed_opaque_existential_1(v0 + 14, v0[17]);
      if (v18 == sub_231368320() && v20 == v22)
      {

LABEL_24:

        goto LABEL_25;
      }

      v12 += 40;
      v24 = sub_23136A900();

      if (v24)
      {
        goto LABEL_24;
      }
    }

    sub_2311CF324((v0 + 14), (v0 + 24));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = *(v10 + 16);
      OUTLINED_FUNCTION_23();
      sub_23126DF64();
      v10 = v44;
      v76 = v44;
    }

    v26 = *(v10 + 16);
    if (v26 >= *(v10 + 24) >> 1)
    {
      sub_23126DF64();
      v10 = v45;
      v76 = v45;
    }

    v27 = v0[27];
    v28 = v0[28];
    v29 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 24), v27);
    OUTLINED_FUNCTION_21();
    v31 = v30;
    v33 = *(v32 + 64);
    v34 = OUTLINED_FUNCTION_43();
    (*(v31 + 16))(v34, v29, v27);
    sub_2312E6494(v26, v34, &v76, v27, v28);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

LABEL_25:
    swift_isUniquelyReferenced_nonNull_native();
    v77 = v3;
    result = sub_2312163D4();
    if (__OFADD__(*(v3 + 16), (v35 & 1) == 0))
    {
      __break(1u);
      goto LABEL_56;
    }

    v36 = result;
    v37 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44540, &qword_231374468);
    v38 = sub_23136A700();
    v3 = v77;
    if (v38)
    {
      break;
    }

LABEL_29:
    if (v37)
    {
      v41 = *(v3 + 56);
      v42 = *(v41 + 8 * v36);
      *(v41 + 8 * v36) = v10;
    }

    else
    {
      (*v71)(v0[47], v74 + v73, v0[44]);
      OUTLINED_FUNCTION_40_10();
      sub_23125A8A4();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
    if (v7 == v75)
    {
      goto LABEL_33;
    }
  }

  v39 = sub_2312163D4();
  if ((v37 & 1) == (v40 & 1))
  {
    v36 = v39;
    goto LABEL_29;
  }

  v48 = v0[44];
  OUTLINED_FUNCTION_33_0();

  return sub_23136A970();
}

uint64_t sub_2312A7F48()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = v3[64];
  v5 = v3[63];
  v6 = v3[62];
  v7 = *v0;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v10 + 520) = v9;

  v11 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2312A8064()
{
  v1 = v0[65];
  v2 = v0[59];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[29] = v2;
  sub_2312B7234(v0 + 2);
  v78 = v0[8];
  v79 = v0[2];
  v76 = v0[3];
  v4 = v0[5];
  v77 = v0[7];
  v5 = v0[6];
  v75 = (v0[4] + 64) >> 6;
  v6 = v0[59];
  result = sub_231369EE0();
  while (1)
  {
    v8 = v5;
    v9 = v4;
    v81 = isUniquelyReferenced_nonNull_native;
    if (!v5)
    {
      v10 = v4;
      while (1)
      {
        v9 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v9 >= v75)
        {
          __swift_storeEnumTagSinglePayload(v0[42], 1, 1, v0[39]);
          v80 = 0;
          goto LABEL_8;
        }

        v8 = *(v76 + 8 * v9);
        ++v10;
        if (v8)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      return result;
    }

LABEL_7:
    v11 = v0[47];
    v13 = v0[44];
    v12 = v0[45];
    v14 = v0[42];
    v15 = v0[39];
    v80 = (v8 - 1) & v8;
    v16 = __clz(__rbit64(v8)) | (v9 << 6);
    (*(v12 + 16))(v11, *(v79 + 48) + *(v12 + 72) * v16, v13);
    v17 = *(*(v79 + 56) + 8 * v16);
    v18 = v6;
    v19 = *(v15 + 48);
    (*(v12 + 32))(v14, v11, v13);
    *(v14 + v19) = v17;
    v6 = v18;
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
    sub_231369EE0();
    v10 = v9;
LABEL_8:
    v20 = v0[41];
    v21 = v0[39];
    sub_2312AFC34(v0[42], v20, &qword_27DD44520, &qword_231374438);
    v22 = 1;
    if (__swift_getEnumTagSinglePayload(v20, 1, v21) != 1)
    {
      v23 = v0[43];
      v24 = v0[40];
      sub_2312AFC34(v0[41], v24, &qword_27DD44518, &qword_231374430);
      v77(v24);
      OUTLINED_FUNCTION_37_12();
      sub_2311D1F18(v25, v26, v27);
      v22 = 0;
    }

    v28 = v0[43];
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44548, &qword_231374470);
    __swift_storeEnumTagSinglePayload(v28, v22, 1, v29);
    v30 = OUTLINED_FUNCTION_26_1();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
    if (__swift_getEnumTagSinglePayload(v28, 1, v32) == 1)
    {
      break;
    }

    v33 = v0[46];
    v35 = v0[43];
    v34 = v0[44];
    v36 = *(v0[45] + 32);
    v37 = *(v32 + 48);
    v38 = OUTLINED_FUNCTION_26_1();
    v36(v38);
    v39 = *(v35 + v37);
    v41 = sub_2312163D4();
    v42 = v6[2];
    v43 = (v40 & 1) == 0;
    result = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_41;
    }

    v44 = v40;
    if (v6[3] >= result)
    {
      if ((v81 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44540, &qword_231374468);
        sub_23136A710();
      }
    }

    else
    {
      v45 = v0[46];
      sub_2312B4AF8();
      v46 = v0[29];
      v47 = sub_2312163D4();
      if ((v44 & 1) != (v48 & 1))
      {
        v69 = v0[44];
        OUTLINED_FUNCTION_47();

        return sub_23136A970();
      }

      v41 = v47;
    }

    v6 = v0[29];
    v50 = v0[45];
    v49 = v0[46];
    v51 = v0[44];
    if (v44)
    {
      (*(v50 + 8))(v0[46], v0[44]);
      v52 = v6[7];
      v53 = *(v52 + 8 * v41);
      *(v52 + 8 * v41) = v39;
    }

    else
    {
      v6[(v41 >> 6) + 8] |= 1 << v41;
      result = (v36)(v6[6] + *(v50 + 72) * v41, v49, v51);
      *(v6[7] + 8 * v41) = v39;
      v54 = v6[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_42;
      }

      v6[2] = v56;
    }

    isUniquelyReferenced_nonNull_native = 1;
    v4 = v10;
    v5 = v80;
  }

  v57 = v6;
  v58 = v0[65];
  v60 = v0[60];
  v59 = v0[61];
  v61 = v0[57];
  sub_2311D3BBC();

  if (v59 == v61)
  {
    v62 = v0[56];

    OUTLINED_FUNCTION_50_6();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_47();

    __asm { BRAA            X2, X16 }
  }

  v65 = v0[61];
  v0[59] = v57;
  v66 = v0[56] & 0xC000000000000001;
  sub_23120DE34(v65, v66 == 0);
  v67 = v0[56];
  if (v66)
  {
    result = MEMORY[0x23192AD10](v65, v67);
    v68 = result;
  }

  else
  {
    v68 = *(v67 + 8 * v65 + 32);
  }

  v0[60] = v68;
  v0[61] = v65 + 1;
  if (__OFADD__(v65, 1))
  {
    goto LABEL_43;
  }

  if (v0[30])
  {
    v71 = v0[30];
  }

  else
  {

    v71 = v68;
  }

  v0[62] = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2313707C0;
  *(inited + 32) = v68;

  v0[63] = sub_2312A8FE0(inited);
  swift_setDeallocating();
  sub_231322A48();
  v73 = swift_task_alloc();
  v0[64] = v73;
  *v73 = v0;
  OUTLINED_FUNCTION_12_15();
  OUTLINED_FUNCTION_47();

  return sub_2312A703C();
}

uint64_t sub_2312A8654(void *a1, void *a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_231368320();
  v6 = v5;
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (v4 == sub_231368320() && v6 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_23136A900();
  }

  return v10 & 1;
}

uint64_t sub_2312A8720(void *a1)
{
  v2 = sub_231367F40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23136D280;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_231368320();
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 32) = v16;
  *(v14 + 40) = v17;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2313682B0();
  v19 = sub_2313676B0();
  if (__swift_getEnumTagSinglePayload(v13, 1, v19) == 1)
  {
    sub_2311D1F18(v13, &qword_27DD432D8, &unk_23136BED0);
LABEL_4:
    *(v14 + 64) = 0u;
    *(v14 + 80) = 0u;
    goto LABEL_6;
  }

  v20 = sub_2313676A0();
  v22 = v21;
  (*(*(v19 - 8) + 8))(v13, v19);
  if (v22)
  {
    goto LABEL_4;
  }

  *(v14 + 88) = MEMORY[0x277D839F8];
  *(v14 + 64) = v20;
LABEL_6:
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2313682B0();
  if (__swift_getEnumTagSinglePayload(v11, 1, v19) == 1)
  {
    sub_2311D1F18(v11, &qword_27DD432D8, &unk_23136BED0);
    *(v14 + 96) = 0u;
    *(v14 + 112) = 0u;
  }

  else
  {
    sub_231367680();
    (*(*(v19 - 8) + 8))(v11, v19);
    *(v14 + 120) = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v14 + 96));
    (*(v3 + 32))(boxed_opaque_existential_1, v6, v2);
  }

  return v14;
}

uint64_t sub_2312A8A38(uint64_t a1)
{
  v2 = sub_231367D20();
  OUTLINED_FUNCTION_21();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v41 = (v9 - v8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444C8, &unk_2313744B0);
  v10 = OUTLINED_FUNCTION_40_0(v46);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444D0, &unk_231373E70);
  v16 = OUTLINED_FUNCTION_40_0(v15);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v39 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v39 - v25;
  result = sub_23125D7A0(a1);
  v28 = 0;
  v48 = a1;
  v49 = a1 & 0xC000000000000001;
  v47 = a1 & 0xFFFFFFFFFFFFFF8;
  v29 = result;
  v45 = *MEMORY[0x277D60B48];
  v39 = (v4 + 32);
  v40 = result;
  v43 = (v4 + 8);
  v44 = (v4 + 104);
  while (1)
  {
    if (v29 == v28)
    {
      return v29 != v28;
    }

    if (v49)
    {
      result = MEMORY[0x23192AD10](v28, v48);
    }

    else
    {
      if (v28 >= *(v47 + 16))
      {
        goto LABEL_21;
      }

      v30 = *(v48 + 8 * v28 + 32);
    }

    if (__OFADD__(v28, 1))
    {
      break;
    }

    sub_231369240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F70, &qword_2313744C0);
    v31 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v26, v31 ^ 1u, 1, v2);
    (*v44)(v24, v45, v2);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v2);
    v32 = *(v46 + 48);
    sub_23129C608(v26, v14);
    sub_23129C608(v24, &v14[v32]);
    OUTLINED_FUNCTION_53(v14);
    if (v33)
    {

      sub_2311D1F18(v24, &qword_27DD444D0, &unk_231373E70);
      OUTLINED_FUNCTION_53(&v14[v32]);
      if (v33)
      {
        v37 = OUTLINED_FUNCTION_40_10();
        sub_2311D1F18(v37, v38, &unk_231373E70);
        sub_2311D1F18(v26, &qword_27DD444D0, &unk_231373E70);
        return v29 != v28;
      }

      goto LABEL_15;
    }

    sub_23129C608(v14, v21);
    OUTLINED_FUNCTION_53(&v14[v32]);
    if (v33)
    {

      sub_2311D1F18(v24, &qword_27DD444D0, &unk_231373E70);
      (*v43)(v21, v2);
LABEL_15:
      sub_2311D1F18(v14, &qword_27DD444C8, &unk_2313744B0);
      result = sub_2311D1F18(v26, &qword_27DD444D0, &unk_231373E70);
      goto LABEL_17;
    }

    v34 = v21;
    v35 = v41;
    (*v39)(v41, &v14[v32], v2);
    sub_2312AFBEC(&qword_27DD444D8, 255, MEMORY[0x277D60B68]);
    v42 = sub_231369F60();

    v36 = *v43;
    (*v43)(v35, v2);
    sub_2311D1F18(v24, &qword_27DD444D0, &unk_231373E70);
    v36(v34, v2);
    sub_2311D1F18(v14, &qword_27DD444D0, &unk_231373E70);
    v21 = v34;
    v29 = v40;
    result = sub_2311D1F18(v26, &qword_27DD444D0, &unk_231373E70);
    if (v42)
    {
      return v29 != v28;
    }

LABEL_17:
    ++v28;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2312A8F0C()
{
  sub_231367F40();
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  (*(v5 + 104))(v4 - v3, *MEMORY[0x277D60D30]);
  return sub_231367690();
}

uint64_t sub_2312A8FE0(uint64_t a1)
{
  result = sub_23125D7A0(a1);
  v3 = result;
  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  v34 = a1 & 0xFFFFFFFFFFFFFF8;
  v6 = MEMORY[0x277D84F90];
  v29 = a1;
  v30 = a1 & 0xC000000000000001;
  v33 = a1 + 32;
  v31 = result;
  while (1)
  {
    if (v4 == v3)
    {
      return v6;
    }

    if (v5)
    {
      result = MEMORY[0x23192AD10](v4, v29);
    }

    else
    {
      if (v4 >= *(v34 + 16))
      {
        goto LABEL_42;
      }

      v7 = *(v33 + 8 * v4);
    }

    v8 = __OFADD__(v4++, 1);
    if (v8)
    {
      break;
    }

    v9 = sub_231369280();

    if (v9 >> 62)
    {
      v10 = sub_23136A5A0();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v6 >> 62;
    if (v6 >> 62)
    {
      result = sub_23136A5A0();
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = result + v10;
    if (__OFADD__(result, v10))
    {
      goto LABEL_43;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v11)
      {
LABEL_19:
        sub_23136A5A0();
      }

      else
      {
        v13 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
        v14 = *(v13 + 16);
      }

      result = sub_23136A670();
      v6 = result;
      v13 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_21;
    }

    if (v11)
    {
      goto LABEL_19;
    }

    v13 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v12 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

LABEL_21:
    v35 = v13;
    v36 = v6;
    v15 = *(v13 + 16);
    v16 = (*(v13 + 24) >> 1) - v15;
    v17 = v13 + 8 * v15;
    if (v9 >> 62)
    {
      v20 = sub_23136A5A0();
      if (v20)
      {
        v21 = v20;
        result = sub_23136A5A0();
        if (v16 < result)
        {
          goto LABEL_47;
        }

        if (v21 < 1)
        {
          goto LABEL_48;
        }

        v32 = result;
        v22 = v17 + 32;
        sub_2312AF9B4();
        for (i = 0; i != v21; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44550, &unk_231374478);
          v24 = sub_23120DD0C(v37, i, v9);
          v26 = *v25;

          (v24)(v37, 0);
          *(v22 + 8 * i) = v26;
        }

        v5 = v30;
        v3 = v31;
        v19 = v32;
        goto LABEL_31;
      }

LABEL_35:

      if (v10 > 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_35;
      }

      if (v16 < v18)
      {
        goto LABEL_46;
      }

      v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2313692F0();
      swift_arrayInitWithCopy();
LABEL_31:

      v6 = v36;
      if (v19 < v10)
      {
        goto LABEL_44;
      }

      if (v19 > 0)
      {
        v27 = *(v35 + 16);
        v8 = __OFADD__(v27, v19);
        v28 = v27 + v19;
        if (v8)
        {
          goto LABEL_45;
        }

        *(v35 + 16) = v28;
      }
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_2312A92F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = *v6;
  *(v7 + 324) = a6;
  *(v7 + 88) = a5;
  *(v7 + 96) = v8;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  v9 = type metadata accessor for SignalGenerator.NewSuggestionRequest(0);
  *(v7 + 104) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  v11 = sub_2313698C0();
  *(v7 + 128) = v11;
  v12 = *(v11 - 8);
  *(v7 + 136) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 144) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0) - 8) + 64) + 15;
  *(v7 + 152) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810) - 8) + 64) + 15;
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  v16 = sub_2313694E0();
  *(v7 + 176) = v16;
  v17 = *(v16 - 8);
  *(v7 + 184) = v17;
  v18 = *(v17 + 64) + 15;
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  v19 = sub_2313676B0();
  *(v7 + 208) = v19;
  v20 = *(v19 - 8);
  *(v7 + 216) = v20;
  v21 = *(v20 + 64) + 15;
  *(v7 + 224) = swift_task_alloc();
  v22 = sub_231367E50();
  *(v7 + 232) = v22;
  v23 = *(v22 - 8);
  *(v7 + 240) = v23;
  v24 = *(v23 + 64) + 15;
  *(v7 + 248) = swift_task_alloc();
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312A95D0, 0, 0);
}

uint64_t sub_2312A95D0()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 264);
  v2 = *(v0 + 64);
  v3 = *(*(v0 + 104) + 20);
  *(v0 + 320) = v3;
  v4 = v2 + v3;
  v5 = *(v2 + v3 + 24);
  v6 = *(v2 + v3 + 32);
  v7 = OUTLINED_FUNCTION_28_0();
  __swift_project_boxed_opaque_existential_1(v7, v8);
  OUTLINED_FUNCTION_26_1();
  sub_231368DE0();
  v9 = *(v4 + 24);
  v10 = *(v4 + 32);
  v11 = OUTLINED_FUNCTION_28_0();
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v13 = *(MEMORY[0x277D611D0] + 4);
  v14 = swift_task_alloc();
  *(v0 + 272) = v14;
  *v14 = v0;
  v14[1] = sub_2312A96B4;
  v15 = *(v0 + 64);
  OUTLINED_FUNCTION_37_12();

  return MEMORY[0x2821C74A8]();
}

uint64_t sub_2312A96B4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 24) = v5;
  *(v1 + 16) = v0;
  v7 = *(v6 + 272);
  *v2 = *v0;
  *(v1 + 325) = v5;
  *(v1 + 280) = v4;

  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_2312A97AC()
{
  v2 = *(v1 + 280);
  v3 = *(v1 + 232);
  v4 = *(v1 + 240);
  if (*(v1 + 325) != 1)
  {
    v25 = *(v1 + 32);
    v26 = *(v1 + 264);
    v27 = *(v1 + 56);
    OUTLINED_FUNCTION_53_8();
    (*(v4 + 32))(&v27[v28], v26, v3);
    goto LABEL_18;
  }

  v5 = *(v1 + 320);
  v0 = *(v1 + 256);
  v6 = *(v1 + 224);
  v7 = *(v1 + 88);
  v9 = *(v1 + 64);
  v8 = *(v1 + 72);
  v10 = *(v1 + 280);

  sub_2312A8F0C();
  v11 = *(v9 + v5 + 24);
  v12 = *(v9 + v5 + 32);
  v13 = OUTLINED_FUNCTION_67_0();
  __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_231368DE0();
  v15 = sub_231210C48(v0, v7);
  v16 = *(v4 + 8);
  v17 = OUTLINED_FUNCTION_28_0();
  v16(v17);
  if (v15)
  {
    if (*(v15 + 16))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v29 = *(v1 + 168);
    v30 = *(v1 + 80);
    v31 = *(v1 + 64);
    v105 = v30[4];
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    sub_231369EC0();
    sub_2313687D0();
    v32 = sub_231367D80();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v32);
    v34 = *(v1 + 200);
    v110 = v16;
    if (EnumTagSinglePayload == 1)
    {
      v36 = *(v1 + 176);
      v35 = *(v1 + 184);
      sub_2311D1F18(*(v1 + 168), &qword_27DD42F18, &unk_23136B810);
      (*(v35 + 104))(v34, *MEMORY[0x277D61380], v36);
    }

    else
    {
      v37 = *(v1 + 184);
      v38 = *(v1 + 192);
      v39 = *(v1 + 168);
      v40 = *(v1 + 176);
      sub_231367D50();
      (*(*(v32 - 8) + 8))(v39, v32);
      (*(v37 + 32))(v34, v38, v40);
    }

    v41 = *(v1 + 264);
    v42 = *(v1 + 216);
    v43 = *(v1 + 224);
    v45 = *(v1 + 200);
    v44 = *(v1 + 208);
    v46 = *(v1 + 184);
    v101 = *(v1 + 176);
    v0 = *(v1 + 152);
    v47 = *(v1 + 160);
    v48 = *(v1 + 64);
    sub_2313687D0();
    (*(v42 + 16))(v0, v43, v44);
    __swift_storeEnumTagSinglePayload(v0, 0, 1, v44);
    v15 = sub_231368BD0();

    sub_2311D1F18(v0, &qword_27DD432D8, &unk_23136BED0);
    sub_2311D1F18(v47, &qword_27DD42F18, &unk_23136B810);
    (*(v46 + 8))(v45, v101);
    if (!v15)
    {
      v58 = *(v1 + 144);
      v60 = *(v1 + 112);
      v59 = *(v1 + 120);
      v61 = *(v1 + 64);
      sub_231369150();
      sub_2312AFA7C(v61, v59);
      sub_2312AFA7C(v61, v60);
      v0 = sub_2313698A0();
      v62 = sub_23136A3B0();
      if (os_log_type_enabled(v0, v62))
      {
        v63 = *(v1 + 248);
        v64 = *(v1 + 232);
        v103 = *(v1 + 136);
        v65 = *(v1 + 120);
        v106 = *(v1 + 128);
        v108 = *(v1 + 144);
        v66 = *(v1 + 104);
        v102 = *(v1 + 112);
        v67 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        *v67 = 136315394;
        v68 = (v65 + *(v66 + 20));
        v69 = v68[4];
        __swift_project_boxed_opaque_existential_1(v68, v68[3]);
        sub_231368DE0();
        OUTLINED_FUNCTION_1_27();
        sub_2312AFBEC(v70, 255, v71);
        v72 = sub_23136A8B0();
        v74 = v73;
        v75 = OUTLINED_FUNCTION_26_1();
        v110(v75);
        sub_2312AFAD8(v65, type metadata accessor for SignalGenerator.NewSuggestionRequest);
        v76 = sub_2311CFD58(v72, v74, &v112);

        *(v67 + 4) = v76;
        *(v67 + 12) = 2080;
        *(v1 + 48) = sub_2313687A0();
        sub_2313692F0();
        sub_2312AFBEC(&qword_280F7C900, 255, MEMORY[0x277D612D0]);
        v77 = sub_23136A8B0();
        v79 = v78;

        sub_2312AFAD8(v102, type metadata accessor for SignalGenerator.NewSuggestionRequest);
        v80 = sub_2311CFD58(v77, v79, &v112);

        *(v67 + 14) = v80;
        _os_log_impl(&dword_2311CB000, v0, v62, "SignalGenerator - Unable to find suggestion in repository of id %s return from subscription to signal %s", v67, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_29();

        (*(v103 + 8))(v108, v106);
      }

      else
      {
        v82 = *(v1 + 136);
        v81 = *(v1 + 144);
        v84 = *(v1 + 120);
        v83 = *(v1 + 128);
        v85 = *(v1 + 112);

        v0 = type metadata accessor for SignalGenerator.NewSuggestionRequest;
        sub_2312AFAD8(v85, type metadata accessor for SignalGenerator.NewSuggestionRequest);
        (*(v82 + 8))(v81, v83);
        sub_2312AFAD8(v84, type metadata accessor for SignalGenerator.NewSuggestionRequest);
      }

      v86 = *(v1 + 264);
      v87 = *(v1 + 240);
      v88 = *(v1 + 248);
      v89 = *(v1 + 232);
      v109 = *(v1 + 224);
      v90 = *(v1 + 216);
      v104 = v86;
      v107 = *(v1 + 208);
      v27 = *(v1 + 56);
      v91 = (*(v1 + 64) + *(v1 + 320));
      OUTLINED_FUNCTION_53_8();
      (*(v87 + 16))(&v27[v92], v86, v89);
      v112 = 0;
      v113 = 0xE000000000000000;
      sub_23136A650();

      v112 = 0xD000000000000014;
      v113 = 0x800000023137FA00;
      v93 = v91[4];
      __swift_project_boxed_opaque_existential_1(v91, v91[3]);
      sub_231368DE0();
      OUTLINED_FUNCTION_1_27();
      sub_2312AFBEC(v94, 255, v95);
      v96 = sub_23136A8B0();
      MEMORY[0x23192A730](v96);

      (v110)(v88, v89);
      MEMORY[0x23192A730](0x20656874206E6920, 0xED00002E6F706572);
      v25 = v112;
      v2 = v113;
      (*(v90 + 8))(v109, v107);
      (v110)(v104, v89);
LABEL_18:
      *v27 = MEMORY[0x277D84F90];
      v97 = &v27[*(v0 + 24)];
      *v97 = v25;
      v97[1] = v2;
      OUTLINED_FUNCTION_29_11();

      v98 = *(v1 + 8);
      OUTLINED_FUNCTION_35();

      __asm { BRAA            X1, X16 }
    }

    v16 = v110;
    if (*(v15 + 16))
    {
LABEL_4:
      *(v1 + 288) = v15;
      v18 = *(v1 + 324);
      v19 = *(v1 + 88);
      v20 = *(v1 + 64);
      v21 = swift_task_alloc();
      *(v1 + 296) = v21;
      *(v21 + 16) = v19;
      *(v21 + 24) = v20;
      *(v21 + 32) = v18;
      v22 = swift_task_alloc();
      *(v1 + 304) = v22;
      *v22 = v1;
      v22[1] = sub_2312AA0CC;
      OUTLINED_FUNCTION_35();

      __asm { BR              X3 }
    }
  }

  v111 = v16;
  v49 = *(v1 + 264);
  v50 = *(v1 + 232);
  v51 = *(v1 + 240);
  v53 = *(v1 + 216);
  v52 = *(v1 + 224);
  v54 = *(v1 + 208);
  v27 = *(v1 + 56);

  OUTLINED_FUNCTION_53_8();
  v55 = *(v51 + 16);
  OUTLINED_FUNCTION_37_12();
  v56();
  v2 = 0x800000023137FA20;
  (*(v53 + 8))(v52, v54);
  v57 = OUTLINED_FUNCTION_26_1();
  v111(v57);
  v25 = 0xD000000000000040;
  goto LABEL_18;
}

void sub_2312AA0CC()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  v8 = *(v7 + 304);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;

  if (v0)
  {
  }

  else
  {
    v11 = v5[36];
    v12 = v5[37];

    v5[39] = v3;

    OUTLINED_FUNCTION_13();

    MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_2312AA1FC()
{
  v1 = v0[39];
  v2 = v0[33];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[7];
  (*(v0[27] + 8))(v0[28], v0[26]);
  v6 = type metadata accessor for SignalGenerator.NewSuggestionResult(0);
  (*(v4 + 32))(&v5[*(v6 + 20)], v2, v3);
  *v5 = v1;
  v7 = &v5[*(v6 + 24)];
  *v7 = 0;
  *(v7 + 1) = 0;
  OUTLINED_FUNCTION_29_11();

  v8 = v0[1];

  return v8();
}

uint64_t sub_2312AA33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 164) = a5;
  *(v5 + 48) = a3;
  *(v5 + 56) = a4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v6 = sub_231367E50();
  *(v5 + 64) = v6;
  v7 = *(v6 - 8);
  *(v5 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312AA404, 0, 0);
}

uint64_t sub_2312AA404()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v28 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = v4[3];
  v7 = v4[4];
  OUTLINED_FUNCTION_3_2(v4);
  OUTLINED_FUNCTION_28_0();
  v8 = sub_231368300();
  *(v0 + 16) = v8;
  *(v0 + 88) = v8;
  *(v0 + 96) = v9;
  *(v0 + 24) = v9;
  v10 = *(type metadata accessor for SignalGenerator.NewSuggestionRequest(0) + 20);
  *(v0 + 160) = v10;
  v11 = *(v3 + v10 + 32);
  __swift_project_boxed_opaque_existential_1((v3 + v10), *(v3 + v10 + 24));
  sub_231368DE0();
  v12 = sub_231210C48(v1, v5);
  (*(v2 + 8))(v1, v28);
  if (v12)
  {

    v13 = (*(v0 + 56) + *(v0 + 160));
    v14 = v13[3];
    v15 = v13[4];
    OUTLINED_FUNCTION_3_2(v13);
    v16 = *(MEMORY[0x277D611C8] + 4);
    v17 = swift_task_alloc();
    *(v0 + 152) = v17;
    *v17 = v0;
    v17[1] = sub_2312AAAB8;
    v18 = *(v0 + 56);
    OUTLINED_FUNCTION_40();

    return MEMORY[0x2821C7498](v19, v20, v21, v22);
  }

  else
  {
    v24 = *(v0 + 56);
    *(v0 + 104) = swift_getObjectType();
    *(v0 + 112) = sub_2313687A0();
    v25 = swift_task_alloc();
    *(v0 + 120) = v25;
    *v25 = v0;
    v25[1] = sub_2312AA5F4;
    OUTLINED_FUNCTION_67_0();
    OUTLINED_FUNCTION_40();

    return sub_23132CC50();
  }
}

uint64_t sub_2312AA5F4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 120);
  v3 = *(v1 + 112);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312AA6F4()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[7];
  v0[16] = sub_2313687B0();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_2312AA798;
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];

  return sub_23132CEE8();
}

uint64_t sub_2312AA798()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = v1[17];
  v5 = v1[16];
  v6 = *v0;
  *v3 = *v0;

  v7 = swift_task_alloc();
  v2[18] = v7;
  *v7 = v6;
  v7[1] = sub_2312AA91C;
  v8 = v1[13];
  v9 = v1[12];
  v10 = v1[11];
  v11 = *(v2 + 164);

  return Context.setConversationalContinuer(value:)();
}

uint64_t sub_2312AA91C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 144);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312AAA00()
{
  OUTLINED_FUNCTION_26();
  v1 = (*(v0 + 56) + *(v0 + 160));
  v2 = v1[3];
  v3 = v1[4];
  OUTLINED_FUNCTION_3_2(v1);
  v4 = *(MEMORY[0x277D611C8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 152) = v5;
  *v5 = v6;
  v5[1] = sub_2312AAAB8;
  v7 = *(v0 + 56);

  return MEMORY[0x2821C7498](v0 + 16, v7, v2, v3);
}

uint64_t sub_2312AAAB8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312AAB9C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[10];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  swift_unknownObjectRelease();
  v5 = OUTLINED_FUNCTION_28_0();
  sub_2311CF324(v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2312AAC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = OUTLINED_FUNCTION_1();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312AAC48()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[5];
  v2 = *(v0[7] + 16);
  v3 = MEMORY[0x277D84F90];
  v0[9] = 0;
  v0[10] = v3;
  v0[8] = v2;
  if (v2)
  {
    v4 = sub_231367490();
    OUTLINED_FUNCTION_40_0(v4);
    v6 = *(v5 + 80);
    v14 = v1 + *v1;
    v7 = v1[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[11] = v8;
    *v8 = v9;
    OUTLINED_FUNCTION_20_18(v8);
    OUTLINED_FUNCTION_41_11();

    return v10();
  }

  else
  {
    OUTLINED_FUNCTION_14();
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }
}

uint64_t sub_2312AADB0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (v0)
  {
    v9 = *(v3 + 80);
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2312AAEB0()
{
  v1 = v0[2];
  v2 = v0[10];
  v3 = v0[3];
  v4 = v0[4];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0[10];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = *(v6 + 16);
    OUTLINED_FUNCTION_23();
    sub_23126E060();
    v6 = v24;
  }

  v7 = *(v6 + 16);
  if (v7 >= *(v6 + 24) >> 1)
  {
    sub_23126E060();
    v6 = v25;
  }

  *(v6 + 16) = v7 + 1;
  v8 = (v6 + 24 * v7);
  v8[4] = v1;
  v8[5] = v3;
  v8[6] = v4;
  v9 = v0[8];
  v10 = v0[9] + 1;
  v0[9] = v10;
  v0[10] = v6;
  if (v10 == v9)
  {
    OUTLINED_FUNCTION_14();

    return v11(v12);
  }

  else
  {
    v14 = v0[7];
    v15 = v0[5];
    v16 = sub_231367490();
    OUTLINED_FUNCTION_0(v16);
    v19 = v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v18 + 72) * v10;
    v26 = (v15 + *v15);
    v20 = v15[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[11] = v21;
    *v21 = v22;
    OUTLINED_FUNCTION_20_18();

    return (v26)(v0 + 2, v19);
  }
}

uint64_t sub_2312AB0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = OUTLINED_FUNCTION_1();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312AB0FC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[8];
  v2 = *(v0[10] + 16);
  v3 = MEMORY[0x277D84F90];
  v0[12] = 0;
  v0[13] = v3;
  v0[11] = v2;
  if (v2)
  {
    v10 = v1 + *v1;
    v4 = v1[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[14] = v5;
    *v5 = v6;
    v7 = OUTLINED_FUNCTION_8_18(v5);
  }

  else
  {
    OUTLINED_FUNCTION_14();
    v7 = MEMORY[0x277D84F90];
  }

  return v8(v7);
}

uint64_t sub_2312AB234()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (v0)
  {
    v9 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2312AB334()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 104);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = *(v3 + 16);
    OUTLINED_FUNCTION_23();
    sub_23126E580();
    v3 = v20;
  }

  v4 = *(v3 + 16);
  if (v4 >= *(v3 + 24) >> 1)
  {
    sub_23126E580();
    v3 = v21;
  }

  *(v3 + 16) = v4 + 1;
  v5 = (v3 + 48 * v4);
  v6 = *(v0 + 16);
  v7 = *(v0 + 48);
  v5[3] = *(v0 + 32);
  v5[4] = v7;
  v5[2] = v6;
  v8 = *(v0 + 88);
  v9 = *(v0 + 96) + 1;
  *(v0 + 96) = v9;
  *(v0 + 104) = v3;
  if (v9 == v8)
  {
    OUTLINED_FUNCTION_14();
    v12 = v11;
  }

  else
  {
    v13 = *(v0 + 80) + 48 * v9;
    OUTLINED_FUNCTION_0_27(*(v0 + 64));
    v15 = *(v14 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v0 + 112) = v16;
    *v16 = v17;
    v12 = OUTLINED_FUNCTION_8_18(v16);
  }

  return v10(v12);
}

uint64_t sub_2312AB4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_2312AB4D4, 0, 0);
}

uint64_t sub_2312AB4D4()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[8];
  v2 = *(v0[10] + 16);
  v3 = MEMORY[0x277D84F90];
  v0[12] = 0;
  v0[13] = v3;
  v0[11] = v2;
  if (v2)
  {
    v10 = v1 + *v1;
    v4 = v1[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[14] = v5;
    *v5 = v6;
    v7 = OUTLINED_FUNCTION_8_18(v5);
  }

  else
  {
    OUTLINED_FUNCTION_14();
    v7 = MEMORY[0x277D84F90];
  }

  return v8(v7);
}

uint64_t sub_2312AB60C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (v0)
  {
    v9 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2312AB70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39();
  v13 = *(v12 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v12 + 56) = v13;
  v15 = (v12 + 56);
  v16 = *(v12 + 104);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v44 = *(v16 + 16);
    OUTLINED_FUNCTION_23();
    sub_23126DF64();
    v16 = v45;
    *v15 = v45;
  }

  v17 = *(v16 + 16);
  if (v17 >= *(v16 + 24) >> 1)
  {
    sub_23126DF64();
    v16 = v46;
    *v15 = v46;
  }

  v18 = *(v12 + 40);
  v19 = *(v12 + 48);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v12 + 16, v18);
  OUTLINED_FUNCTION_21();
  v22 = v21;
  v24 = *(v23 + 64);
  v25 = OUTLINED_FUNCTION_43();
  (*(v22 + 16))(v25, v20, v18);
  sub_2312E6494(v17, v25, (v12 + 56), v18, v19);
  __swift_destroy_boxed_opaque_existential_1Tm((v12 + 16));

  v26 = *(v12 + 88);
  v27 = *(v12 + 96) + 1;
  *(v12 + 96) = v27;
  *(v12 + 104) = v16;
  if (v27 == v26)
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_40();
  }

  else
  {
    v36 = *(v12 + 80) + 40 * v27;
    OUTLINED_FUNCTION_0_27(*(v12 + 64));
    a9 = v37;
    v39 = *(v38 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v12 + 112) = v40;
    *v40 = v41;
    v40[1] = sub_2312AB60C;
    v42 = *(v12 + 72);
    OUTLINED_FUNCTION_41_11();
    OUTLINED_FUNCTION_40();
  }

  return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_2312AB934()
{
  OUTLINED_FUNCTION_8();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DA8, &qword_231370E90);
  OUTLINED_FUNCTION_0(v4);
  v0[5] = v5;
  v7 = *(v6 + 64);
  v0[6] = OUTLINED_FUNCTION_43();
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312AB9E4()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[2];
  v2 = *(v0[4] + 16);
  v3 = MEMORY[0x277D84F90];
  v0[8] = 0;
  v0[9] = v3;
  v0[7] = v2;
  if (v2)
  {
    v4 = type metadata accessor for SuggestionViewDetails(0);
    OUTLINED_FUNCTION_40_0(v4);
    v6 = *(v5 + 80);
    v15 = v1 + *v1;
    v7 = v1[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[10] = v8;
    *v8 = v9;
    OUTLINED_FUNCTION_16_19(v8);
    OUTLINED_FUNCTION_41_11();

    return v10();
  }

  else
  {
    v12 = v0[6];

    OUTLINED_FUNCTION_14();
    v14 = MEMORY[0x277D84F90];

    return v13(v14);
  }
}

uint64_t sub_2312ABB50()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    v9 = *(v3 + 72);
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2312ABC50()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[9];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = v0[9];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = OUTLINED_FUNCTION_4_18();
    sub_23126F32C(v22, v23, v24, v25);
    v3 = v26;
  }

  v4 = *(v3 + 16);
  if (v4 >= *(v3 + 24) >> 1)
  {
    OUTLINED_FUNCTION_44_8();
    sub_23126F32C(v27, v28, v29, v30);
    v3 = v31;
  }

  v6 = v0[5];
  v5 = v0[6];
  *(v3 + 16) = v4 + 1;
  sub_2312AFC34(v5, v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, &qword_27DD43DA8, &qword_231370E90);
  v7 = v0[7];
  v8 = v0[8] + 1;
  v0[8] = v8;
  v0[9] = v3;
  if (v8 == v7)
  {
    v9 = v0[6];

    OUTLINED_FUNCTION_14();

    return v10(v3);
  }

  else
  {
    v12 = v0[4];
    v13 = v0[2];
    v14 = type metadata accessor for SuggestionViewDetails(0);
    OUTLINED_FUNCTION_0(v14);
    v17 = v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v16 + 72) * v8;
    v32 = (v13 + *v13);
    v18 = v13[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[10] = v19;
    *v19 = v20;
    v21 = OUTLINED_FUNCTION_16_19();

    return v32(v21, v17);
  }
}

uint64_t sub_2312ABE54()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_2312ABEB4()
{
  OUTLINED_FUNCTION_8();
  v0[4] = v1;
  v0[5] = v2;
  v0[3] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DC0, &unk_231370710);
  OUTLINED_FUNCTION_0(v4);
  v0[6] = v5;
  v7 = *(v6 + 64);
  v0[7] = OUTLINED_FUNCTION_43();
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312ABF64()
{
  OUTLINED_FUNCTION_26();
  result = sub_23125D7A0(v0[5]);
  v2 = MEMORY[0x277D84F90];
  v0[8] = result;
  v0[9] = v2;
  if (result)
  {
    v3 = v0[5];
    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x23192AD10](0);
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v4 = *(v3 + 32);
    }

    v0[10] = v5;
    v0[11] = 1;
    v6 = v0[3];
    v0[2] = v5;
    OUTLINED_FUNCTION_0_27(v6);
    v16 = v7;
    v9 = *(v8 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[12] = v10;
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_17_11(v10);

    return v16(v12, v0 + 2);
  }

  else
  {
    v13 = v0[7];

    OUTLINED_FUNCTION_14();
    v15 = MEMORY[0x277D84F90];

    return v14(v15);
  }
}

uint64_t sub_2312AC0A8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (v0)
  {
    v9 = *(v3 + 72);
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2312AC1A8()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[9];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = v0[9];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = OUTLINED_FUNCTION_4_18();
    sub_23126F354(v20, v21, v22, v23);
    v3 = v24;
  }

  v4 = *(v3 + 16);
  if (v4 >= *(v3 + 24) >> 1)
  {
    OUTLINED_FUNCTION_44_8();
    sub_23126F354(v25, v26, v27, v28);
    v3 = v29;
  }

  v5 = v0[10];
  v7 = v0[6];
  v6 = v0[7];

  *(v3 + 16) = v4 + 1;
  result = sub_2312AFC34(v6, v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4, &qword_27DD43DC0, &unk_231370710);
  v9 = v0[11];
  v0[9] = v3;
  if (v9 == v0[8])
  {
    v10 = v0[7];

    OUTLINED_FUNCTION_14();

    return v11(v3);
  }

  v12 = v0[5];
  if ((v12 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x23192AD10](v9);
  }

  else
  {
    if (v9 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v13 = *(v12 + 8 * v9 + 32);
  }

  v0[10] = result;
  v0[11] = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v14 = v0[3];
  v0[2] = result;
  OUTLINED_FUNCTION_0_27(v14);
  v16 = *(v15 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[12] = v17;
  *v17 = v18;
  OUTLINED_FUNCTION_17_11(v17);
  OUTLINED_FUNCTION_41_11();

  return v19();
}

uint64_t sub_2312AC388()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_2312AC3F4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v81 = a8;
  v76 = a4;
  v77 = a6;
  v83 = a1;
  v12 = sub_231367E50();
  v72 = *(v12 - 8);
  v73 = v12;
  v13 = *(v72 + 64);
  MEMORY[0x28223BE20](v12);
  v71 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2313698C0();
  v79 = *(v15 - 8);
  v80 = v15;
  v16 = *(v79 + 64);
  MEMORY[0x28223BE20](v15);
  v78 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v70 - v20;
  v22 = sub_231367D80();
  v74 = *(v22 - 8);
  v75 = v22;
  v23 = *(v74 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a2[13];
  v82 = a3;
  v27 = sub_2313692D0();
  if (!*(v26 + 16))
  {
    goto LABEL_8;
  }

  v29 = sub_231215F6C(v27, v28);
  v31 = v30;

  if ((v31 & 1) == 0)
  {
    goto LABEL_9;
  }

  v32 = *(*(v26 + 56) + 8 * v29);
  v33 = v83[4];
  __swift_project_boxed_opaque_existential_1(v83, v83[3]);
  sub_231369EE0();
  v34 = sub_231368DC0();
  if (!*(v32 + 16))
  {

LABEL_8:

    goto LABEL_9;
  }

  v36 = sub_231215F6C(v34, v35);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
    goto LABEL_8;
  }

  v39 = *(*(v32 + 56) + 16 * v36 + 8);

  if (v39)
  {

LABEL_10:
    v41 = v78;
    sub_231369150();
    sub_2311CF324(v83, v84);

    v42 = sub_2313698A0();
    v43 = sub_23136A390();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v85 = v83;
      *v44 = 136315394;
      __swift_project_boxed_opaque_existential_1(v84, v84[3]);
      v45 = v71;
      sub_231368DE0();
      sub_2312AFBEC(&qword_280F7CA08, 255, MEMORY[0x277D60CC0]);
      v46 = v73;
      v47 = sub_23136A8B0();
      v49 = v48;
      (*(v72 + 8))(v45, v46);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      v50 = sub_2311CFD58(v47, v49, &v85);

      *(v44 + 4) = v50;
      *(v44 + 12) = 2080;
      v51 = sub_2313692D0();
      v53 = sub_2311CFD58(v51, v52, &v85);

      *(v44 + 14) = v53;
      _os_log_impl(&dword_2311CB000, v42, v43, "Excluding suggestion %s for signal: %s as there is a override exclusion configured", v44, 0x16u);
      v54 = v83;
      swift_arrayDestroy();
      MEMORY[0x23192B930](v54, -1, -1);
      MEMORY[0x23192B930](v44, -1, -1);

      (*(v79 + 8))(v41, v80);
    }

    else
    {

      (*(v79 + 8))(v41, v80);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
    }

    v68 = type metadata accessor for SignalGenerator.NewSuggestionRequest(0);
    v66 = v81;
    v67 = 1;
    return __swift_storeEnumTagSinglePayload(v66, v67, 1, v68);
  }

LABEL_9:
  v40 = sub_23136A900();

  if (v40)
  {
    goto LABEL_10;
  }

  v80 = v21;
  v55 = a7;
  v56 = v76;
  if (!v76)
  {
    v56 = v82;
  }

  v57 = a2[17];
  v58 = a2[18];
  __swift_project_boxed_opaque_existential_1(a2 + 14, v57);
  v59 = *(v58 + 8);

  v60 = v77;
  v59(a5, v77, v55, v56, v82, v57, v58);

  sub_2311CF324(v60, v84);
  v62 = v74;
  v61 = v75;
  v63 = v80;
  (*(v74 + 16))(v80, v25, v75);
  __swift_storeEnumTagSinglePayload(v63, 0, 1, v61);

  v64 = v81;
  sub_2313687C0();
  (*(v62 + 8))(v25, v61);
  v65 = type metadata accessor for SignalGenerator.NewSuggestionRequest(0);
  sub_2311CF324(v83, v64 + *(v65 + 20));
  v66 = v64;
  v67 = 0;
  v68 = v65;
  return __swift_storeEnumTagSinglePayload(v66, v67, 1, v68);
}

uint64_t sub_2312ACA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 72) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2312ACAAC, 0, 0);
}

uint64_t sub_2312ACAAC()
{
  OUTLINED_FUNCTION_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43450, &qword_23136C980);
  v1 = OUTLINED_FUNCTION_24_0();
  v2 = type metadata accessor for SignalGenerator.NewSuggestionResult(v1);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v0 + 56) = v7;
  *(v7 + 16) = xmmword_23136B670;
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 64) = v8;
  *v8 = v9;
  v8[1] = sub_2312ACBD4;
  v10 = *(v0 + 72);
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  v14 = *(v0 + 24);
  v13 = *(v0 + 32);
  v15 = *(v0 + 16);

  return sub_2312A92F0(v7 + v6, v15, v13, v11, v12, v10);
}

uint64_t sub_2312ACBD4()
{
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = *(v1 + 56);

  return v5(v6);
}

uint64_t sub_2312ACCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2313698C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_bridgeObjectRetain_n();
  sub_231369EE0();
  sub_231369170();
  v11 = sub_2313698A0();
  v12 = sub_23136A390();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = v6;
    v14 = v13;
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315394;
    v16 = sub_2312ACF1C(a1, a2, a3);
    v18 = sub_2311CFD58(v16, v17, &v24);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = sub_2312AD434(a1);
    v21 = sub_2311CFD58(v19, v20, &v24);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_2311CB000, v11, v12, "%s\n\n %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23192B930](v15, -1, -1);
    MEMORY[0x23192B930](v14, -1, -1);

    swift_bridgeObjectRelease_n();

    return (*(v7 + 8))(v10, v23);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_2312ACF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a2;
  v48 = a3;
  v46 = sub_231367E50();
  v51 = *(v46 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v46);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SignalGenerator.NewSuggestionResult(0);
  v7 = *(v50 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v50);
  v49 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  v16 = 0;
  v17 = *(a1 + 16);
  v18 = MEMORY[0x277D84F90];
  while (v17 != v16)
  {
    v19 = v6;
    v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v21 = *(v7 + 72);
    sub_2312AFA7C(a1 + v20 + v21 * v16, v15);
    if (*(*v15 + 16))
    {
      sub_2312AFA18(v15, v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53[0] = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = *(v18 + 16);
        sub_2311F5F8C();
        v18 = v53[0];
      }

      v24 = *(v18 + 16);
      v25 = v24 + 1;
      if (v24 >= *(v18 + 24) >> 1)
      {
        v44 = *(v18 + 16);
        v45 = v24 + 1;
        sub_2311F5F8C();
        v24 = v44;
        v25 = v45;
        v18 = v53[0];
      }

      ++v16;
      *(v18 + 16) = v25;
      sub_2312AFA18(v13, v18 + v20 + v24 * v21);
      v6 = v19;
    }

    else
    {
      sub_2312AFAD8(v15, type metadata accessor for SignalGenerator.NewSuggestionResult);
      ++v16;
      v6 = v19;
    }
  }

  v53[0] = v18;

  sub_2312A60DC(v53);

  v26 = v53[0];
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  sub_23136A650();
  MEMORY[0x23192A730](0x20736C616E676953, 0xE900000000000027);
  sub_2313692F0();
  v27 = sub_231367920();
  MEMORY[0x23192A730](v27);

  MEMORY[0x23192A730](0xD000000000000033, 0x800000023137F9C0);
  v52 = v48;
  v28 = sub_23136A8B0();
  MEMORY[0x23192A730](v28);

  MEMORY[0x23192A730](2618, 0xE200000000000000);
  v29 = *(v26 + 16);
  if (v29)
  {
    v52 = MEMORY[0x277D84F90];
    sub_2311F5F34(0, v29, 0);
    v30 = *(v7 + 80);
    v48 = v26;
    v31 = v26 + ((v30 + 32) & ~v30);
    v32 = *(v7 + 72);
    v33 = v52;
    v34 = (v51 + 16);
    v35 = v46;
    do
    {
      v36 = v49;
      sub_2312AFA7C(v31, v49);
      (*v34)(v6, v36 + *(v50 + 20), v35);
      sub_2312AFAD8(v36, type metadata accessor for SignalGenerator.NewSuggestionResult);
      v52 = v33;
      v37 = v6;
      v39 = *(v33 + 16);
      v38 = *(v33 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_2311F5F34(v38 > 1, v39 + 1, 1);
        v33 = v52;
      }

      *(v33 + 16) = v39 + 1;
      (*(v51 + 32))(v33 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v39, v37, v35);
      v31 += v32;
      --v29;
      v6 = v37;
    }

    while (v29);
  }

  v40 = sub_231367BB0();
  v42 = v41;

  MEMORY[0x23192A730](v40, v42);

  return v53[0];
}

uint64_t sub_2312AD434(uint64_t a1)
{
  v2 = sub_2313698C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SignalGenerator.NewSuggestionResult(0);
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v26);
  v28 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = 0;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  while (v13 != v12)
  {
    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = *(v6 + 72);
    sub_2312AFA7C(a1 + v15 + v16 * v12, v11);
    if (*(*v11 + 16))
    {
      sub_2312AFAD8(v11, type metadata accessor for SignalGenerator.NewSuggestionResult);
      ++v12;
    }

    else
    {
      sub_2312AFA18(v11, v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v14;
      v24 = v3;
      v25 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = *(v14 + 16);
        sub_2311F5F8C();
        v14 = v29;
      }

      v19 = *(v14 + 16);
      if (v19 >= *(v14 + 24) >> 1)
      {
        sub_2311F5F8C();
        v14 = v29;
      }

      ++v12;
      *(v14 + 16) = v19 + 1;
      sub_2312AFA18(v28, v14 + v15 + v19 * v16);
      v3 = v24;
      v2 = v25;
    }
  }

  v29 = v14;

  sub_2312A60DC(&v29);

  v20 = v27;
  sub_231369150();
  v21 = sub_231369870();

  (*(v3 + 8))(v20, v2);
  return v21;
}

uint64_t sub_2312AD760(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23136C1C0;
  v3 = type metadata accessor for SignalGenerator.NewSuggestionResult(0);
  v4 = *(v3 + 20);
  v5 = sub_231367E50();
  *(v2 + 56) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a1 + v4, v5);
  v7 = (a1 + *(v3 + 24));
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
    v10 = MEMORY[0x277D837D0];
  }

  else
  {
    v9 = 0;
    v10 = 0;
    *(v2 + 80) = 0;
  }

  *(v2 + 64) = v9;
  *(v2 + 72) = v8;
  *(v2 + 88) = v10;
  sub_231369EE0();
  return v2;
}

uint64_t *sub_2312AD854()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[13];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  return v0;
}

uint64_t sub_2312AD88C()
{
  sub_2312AD854();

  return swift_deallocClassInstance();
}

uint64_t sub_2312AD8E4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311DDECC;

  return sub_2312A639C();
}

uint64_t sub_2312ADA24(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23136A8A0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2312AE020(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2312ADC54(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2312ADB28(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23136A8A0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SignalGenerator.NewSuggestionResult(0);
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7 = type metadata accessor for SignalGenerator.NewSuggestionResult(0);
      OUTLINED_FUNCTION_40_0(v7);
      v9[0] = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v9[1] = v5;
      sub_2312AE7E4(v9, v10, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2312ADDFC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2312ADC54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
    while (2)
    {
      v21 = a3;
      v7 = v6;
      v17 = v5;
      while (1)
      {
        sub_2311CF324(v5, &v19);
        sub_2311CF324(v5 - 40, v18);
        __swift_project_boxed_opaque_existential_1(&v19, v20);
        v8 = sub_231368320();
        v10 = v9;
        __swift_project_boxed_opaque_existential_1(v18, v18[3]);
        if (v8 == sub_231368320() && v10 == v11)
        {
          break;
        }

        v13 = sub_23136A900();

        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v19);
        if (v13)
        {
          if (!v4)
          {
            __break(1u);
            return result;
          }

          sub_2311D38A8(v5, &v19);
          v14 = *(v5 - 24);
          *v5 = *(v5 - 40);
          *(v5 + 16) = v14;
          *(v5 + 32) = *(v5 - 8);
          result = sub_2311D38A8(&v19, v5 - 40);
          v5 -= 40;
          if (!__CFADD__(v7++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v19);
LABEL_14:
      a3 = v21 + 1;
      v5 = v17 + 40;
      --v6;
      if (v21 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2312ADDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = type metadata accessor for SignalGenerator.NewSuggestionResult(0);
  v8 = *(*(v37 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v37);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
    while (2)
    {
      v34 = v21;
      v35 = a3;
      v32 = v24;
      v33 = v23;
      v25 = v37;
      do
      {
        sub_2312AFA7C(v24, v18);
        sub_2312AFA7C(v21, v14);
        v26 = *(v25 + 20);
        v27 = sub_231367E40();
        sub_2312AFAD8(v14, type metadata accessor for SignalGenerator.NewSuggestionResult);
        result = sub_2312AFAD8(v18, type metadata accessor for SignalGenerator.NewSuggestionResult);
        if ((v27 & 1) == 0)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return result;
        }

        sub_2312AFA18(v24, v11);
        v25 = v37;
        swift_arrayInitWithTakeFrontToBack();
        result = sub_2312AFA18(v11, v21);
        v21 += v22;
        v24 += v22;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v35 + 1;
      v21 = v34 + v30;
      v23 = v33 - 1;
      v24 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2312AE020(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    i = MEMORY[0x277D84F90];
LABEL_105:
    v111 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_107;
    }

    goto LABEL_141;
  }

  v5 = 0;
  i = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v5;
    v8 = (v5 + 1);
    if ((v5 + 1) < v4)
    {
      v9 = *a3;
      sub_2311CF324(*a3 + 40 * v8, &v115);
      sub_2311CF324(v9 + 40 * v7, v113);
      v10 = v117;
      LODWORD(v111) = sub_2312A8654(&v115, v113);
      v117 = v10;
      if (v10)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v113);
        __swift_destroy_boxed_opaque_existential_1Tm(&v115);
LABEL_115:

        return;
      }

      v103 = i;
      __swift_destroy_boxed_opaque_existential_1Tm(v113);
      __swift_destroy_boxed_opaque_existential_1Tm(&v115);
      v11 = v9 + 40 * v7;
      v12 = v7;
      v13 = 40 * v7;
      v14 = v11 + 80;
      v105 = v12;
      v15 = (v12 + 2);
      while (1)
      {
        v16 = v15;
        if (v8 + 1 >= v4)
        {
          break;
        }

        v17 = v4;
        sub_2311CF324(v14, &v115);
        sub_2311CF324(v14 - 40, v113);
        __swift_project_boxed_opaque_existential_1(&v115, v116);
        v18 = sub_231368320();
        v20 = v19;
        __swift_project_boxed_opaque_existential_1(v113, v114);
        if (v18 == sub_231368320() && v20 == v21)
        {
          v23 = 0;
        }

        else
        {
          v23 = sub_23136A900();
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v113);
        __swift_destroy_boxed_opaque_existential_1Tm(&v115);
        v14 += 40;
        ++v8;
        v15 = v16 + 1;
        v4 = v17;
        if ((v111 ^ v23))
        {
          goto LABEL_16;
        }
      }

      v8 = v4;
LABEL_16:
      if (v111)
      {
        i = v103;
        v24 = v105;
        if (v8 < v105)
        {
          goto LABEL_140;
        }

        if (v105 >= v8)
        {
          v7 = v105;
        }

        else
        {
          if (v4 >= v16)
          {
            v25 = v16;
          }

          else
          {
            v25 = v4;
          }

          v26 = 40 * v25 - 40;
          v27 = v8;
          do
          {
            if (v24 != --v27)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_145;
              }

              v29 = v8;
              v30 = v28 + v13;
              v31 = v28 + v26;
              sub_2311D38A8((v28 + v13), &v115);
              v32 = *(v31 + 32);
              v33 = *(v31 + 16);
              *v30 = *v31;
              *(v30 + 16) = v33;
              *(v30 + 32) = v32;
              sub_2311D38A8(&v115, v31);
              v8 = v29;
            }

            ++v24;
            v26 -= 40;
            v13 += 40;
          }

          while (v24 < v27);
          i = v103;
          v7 = v105;
        }
      }

      else
      {
        i = v103;
        v7 = v105;
      }
    }

    v34 = a3[1];
    if (v8 < v34)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_137;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v8 < v7)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v91 = *(i + 16);
      sub_23126DB78();
      i = v92;
    }

    v49 = *(i + 16);
    v50 = v49 + 1;
    v111 = v8;
    if (v49 >= *(i + 24) >> 1)
    {
      sub_23126DB78();
      i = v93;
    }

    *(i + 16) = v50;
    v51 = i + 32;
    v52 = (i + 32 + 16 * v49);
    *v52 = v7;
    v52[1] = v111;
    v110 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        v54 = (v51 + 16 * (v50 - 1));
        v55 = (i + 16 * v50);
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v56 = *(i + 32);
          v57 = *(i + 40);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_73:
          if (v59)
          {
            goto LABEL_123;
          }

          v71 = *v55;
          v70 = v55[1];
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_126;
          }

          v75 = v54[1];
          v76 = v75 - *v54;
          if (__OFSUB__(v75, *v54))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v73, v76))
          {
            goto LABEL_131;
          }

          if (v73 + v76 >= v58)
          {
            if (v58 < v76)
            {
              v53 = v50 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        if (v50 < 2)
        {
          goto LABEL_125;
        }

        v78 = *v55;
        v77 = v55[1];
        v66 = __OFSUB__(v77, v78);
        v73 = v77 - v78;
        v74 = v66;
LABEL_88:
        if (v74)
        {
          goto LABEL_128;
        }

        v80 = *v54;
        v79 = v54[1];
        v66 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v66)
        {
          goto LABEL_130;
        }

        if (v81 < v73)
        {
          goto LABEL_102;
        }

LABEL_95:
        if (v53 - 1 >= v50)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
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
          goto LABEL_139;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v85 = i;
        v86 = (v51 + 16 * (v53 - 1));
        i = *v86;
        v87 = v51 + 16 * v53;
        v88 = *(v87 + 8);
        v89 = v117;
        sub_2312AF064((*a3 + 40 * *v86), (*a3 + 40 * *v87), *a3 + 40 * v88, v110);
        v117 = v89;
        if (v89)
        {
          goto LABEL_115;
        }

        if (v88 < i)
        {
          goto LABEL_118;
        }

        v90 = *(v85 + 16);
        if (v53 > v90)
        {
          goto LABEL_119;
        }

        *v86 = i;
        v86[1] = v88;
        if (v53 >= v90)
        {
          goto LABEL_120;
        }

        v50 = v90 - 1;
        sub_2311E6448((v87 + 16), v90 - 1 - v53, (v51 + 16 * v53));
        i = v85;
        *(v85 + 16) = v90 - 1;
        if (v90 <= 2)
        {
          goto LABEL_102;
        }
      }

      v60 = v51 + 16 * v50;
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_121;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_122;
      }

      v67 = v55[1];
      v68 = v67 - *v55;
      if (__OFSUB__(v67, *v55))
      {
        goto LABEL_124;
      }

      v66 = __OFADD__(v58, v68);
      v69 = v58 + v68;
      if (v66)
      {
        goto LABEL_127;
      }

      if (v69 >= v63)
      {
        v83 = *v54;
        v82 = v54[1];
        v66 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v66)
        {
          goto LABEL_135;
        }

        if (v58 < v84)
        {
          v53 = v50 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_73;
    }

LABEL_102:
    v5 = v111;
    v4 = a3[1];
    if (v111 >= v4)
    {
      goto LABEL_105;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_138;
  }

  if (&v7[a4] >= v34)
  {
    v35 = a3[1];
  }

  else
  {
    v35 = &v7[a4];
  }

  if (v35 < v7)
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    i = sub_2311E6430(i);
LABEL_107:
    v94 = i;
    v95 = (i + 16);
    for (i = *(i + 16); i >= 2; *v95 = i)
    {
      if (!*a3)
      {
        goto LABEL_144;
      }

      v96 = (v94 + 16 * i);
      v97 = *v96;
      v98 = &v95[2 * i];
      v99 = *(v98 + 1);
      v100 = v117;
      sub_2312AF064((*a3 + 40 * *v96), (*a3 + 40 * *v98), *a3 + 40 * v99, v111);
      v117 = v100;
      if (v100)
      {
        break;
      }

      if (v99 < v97)
      {
        goto LABEL_132;
      }

      if (i - 2 >= *v95)
      {
        goto LABEL_133;
      }

      *v96 = v97;
      v96[1] = v99;
      v101 = *v95 - i;
      if (*v95 < i)
      {
        goto LABEL_134;
      }

      i = *v95 - 1;
      sub_2311E6448(v98 + 16, v101, v98);
    }

    goto LABEL_115;
  }

  if (v8 == v35)
  {
    goto LABEL_53;
  }

  v36 = v7;
  v37 = *a3;
  v38 = *a3 + 40 * v8;
  v104 = i;
  v106 = v36;
  v39 = &v36[-v8];
  v108 = v35;
LABEL_40:
  v109 = v38;
  v111 = v8;
  v40 = v39;
  while (1)
  {
    sub_2311CF324(v38, &v115);
    sub_2311CF324(v38 - 40, v113);
    __swift_project_boxed_opaque_existential_1(&v115, v116);
    v41 = sub_231368320();
    v43 = v42;
    __swift_project_boxed_opaque_existential_1(v113, v114);
    if (v41 == sub_231368320() && v43 == v44)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v113);
      __swift_destroy_boxed_opaque_existential_1Tm(&v115);
LABEL_51:
      v8 = (v111 + 1);
      v38 = v109 + 40;
      --v39;
      if (v111 + 1 == v108)
      {
        v8 = v108;
        i = v104;
        v7 = v106;
        goto LABEL_53;
      }

      goto LABEL_40;
    }

    v46 = sub_23136A900();

    __swift_destroy_boxed_opaque_existential_1Tm(v113);
    __swift_destroy_boxed_opaque_existential_1Tm(&v115);
    if ((v46 & 1) == 0)
    {
      goto LABEL_51;
    }

    if (!v37)
    {
      break;
    }

    sub_2311D38A8(v38, &v115);
    v47 = *(v38 - 24);
    *v38 = *(v38 - 40);
    *(v38 + 16) = v47;
    *(v38 + 32) = *(v38 - 8);
    sub_2311D38A8(&v115, v38 - 40);
    v38 -= 40;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

void sub_2312AE7E4(uint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for SignalGenerator.NewSuggestionResult(0);
  OUTLINED_FUNCTION_21();
  v117 = v10;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v13);
  v112 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v121 = &v105 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v122 = &v105 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v105 - v20;
  v119 = a3;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_103:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_144;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_105:
      v99 = v24 + 16;
      v100 = *(v24 + 2);
      for (i = v24; v100 >= 2; v24 = i)
      {
        if (!*v119)
        {
          goto LABEL_141;
        }

        v101 = &v24[16 * v100];
        v102 = *v101;
        v24 = &v99[2 * v100];
        v103 = *(v24 + 1);
        sub_2312AF3C4(*v119 + *(v117 + 72) * *v101, *v119 + *(v117 + 72) * *v24, *v119 + *(v117 + 72) * v103, v5);
        if (v6)
        {
          break;
        }

        if (v103 < v102)
        {
          goto LABEL_129;
        }

        if (v100 - 2 >= *v99)
        {
          goto LABEL_130;
        }

        *v101 = v102;
        *(v101 + 1) = v103;
        v104 = *v99 - v100;
        if (*v99 < v100)
        {
          goto LABEL_131;
        }

        v100 = *v99 - 1;
        sub_2311E6448(v24 + 16, v104, v24);
        *v99 = v100;
      }

LABEL_113:

      return;
    }

LABEL_138:
    v24 = sub_2311E6430(v24);
    goto LABEL_105;
  }

  v107 = a4;
  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  v123 = v9;
  v113 = &v105 - v20;
  while (1)
  {
    v25 = v23++;
    i = v24;
    v109 = v25;
    if (v23 < v22)
    {
      v26 = *v119;
      v5 = *(v117 + 72);
      v27 = v25;
      v28 = *v119 + v5 * v23;
      v116 = v22;
      sub_2312AFA7C(v28, v21);
      sub_2312AFA7C(v26 + v5 * v27, v122);
      v29 = *(v9 + 20);
      LODWORD(v115) = sub_231367E40();
      v30 = OUTLINED_FUNCTION_40_10();
      sub_2312AFAD8(v30, v31);
      sub_2312AFAD8(v21, type metadata accessor for SignalGenerator.NewSuggestionResult);
      v32 = v116;
      v33 = v109 + 2;
      v118 = v5;
      v24 = (v26 + v5 * (v109 + 2));
      while (1)
      {
        v34 = v33;
        if (++v23 >= v32)
        {
          break;
        }

        sub_2312AFA7C(v24, v21);
        v5 = v122;
        sub_2312AFA7C(v28, v122);
        v35 = *(v123 + 20);
        v36 = sub_231367E40() & 1;
        sub_2312AFAD8(v5, type metadata accessor for SignalGenerator.NewSuggestionResult);
        sub_2312AFAD8(v21, type metadata accessor for SignalGenerator.NewSuggestionResult);
        v24 += v118;
        v28 += v118;
        v33 = v34 + 1;
        v32 = v116;
        if ((v115 & 1) != v36)
        {
          goto LABEL_9;
        }
      }

      v23 = v32;
LABEL_9:
      if (v115)
      {
        v25 = v109;
        if (v23 < v109)
        {
          goto LABEL_135;
        }

        if (v109 >= v23)
        {
          v24 = i;
          v9 = v123;
          goto LABEL_32;
        }

        v106 = v6;
        if (v32 >= v34)
        {
          v37 = v34;
        }

        else
        {
          v37 = v32;
        }

        v38 = v118 * (v37 - 1);
        v39 = v109;
        v40 = v118 * v37;
        v41 = v109 * v118;
        v42 = v23;
        v24 = i;
        do
        {
          if (v39 != --v42)
          {
            v5 = *v119;
            if (!*v119)
            {
              goto LABEL_142;
            }

            sub_2312AFA18(v5 + v41, v112);
            v43 = v41 < v38 || v5 + v41 >= v5 + v40;
            if (v43)
            {
              OUTLINED_FUNCTION_45_5();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v41 != v38)
            {
              OUTLINED_FUNCTION_45_5();
              swift_arrayInitWithTakeBackToFront();
            }

            sub_2312AFA18(v112, v5 + v38);
            v24 = i;
          }

          ++v39;
          v38 -= v118;
          v40 -= v118;
          v41 += v118;
        }

        while (v39 < v42);
        v6 = v106;
      }

      else
      {
        v24 = i;
      }

      v9 = v123;
      v25 = v109;
    }

LABEL_32:
    v44 = v119[1];
    if (v23 < v44)
    {
      if (__OFSUB__(v23, v25))
      {
        goto LABEL_134;
      }

      if (v23 - v25 < v107)
      {
        break;
      }
    }

LABEL_50:
    if (v23 < v25)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_18();
      sub_23126DB78();
      v24 = v97;
    }

    v55 = *(v24 + 2);
    v56 = v55 + 1;
    if (v55 >= *(v24 + 3) >> 1)
    {
      OUTLINED_FUNCTION_44_8();
      sub_23126DB78();
      v24 = v98;
    }

    *(v24 + 2) = v56;
    v57 = v24 + 32;
    v58 = &v24[16 * v55 + 32];
    *v58 = v109;
    *(v58 + 1) = v23;
    v118 = *v108;
    if (!v118)
    {
      goto LABEL_143;
    }

    v59 = v21;
    if (v55)
    {
      i = v24;
      while (1)
      {
        v60 = v56 - 1;
        v61 = &v57[16 * v56 - 16];
        v62 = &v24[16 * v56];
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v63 = *(v24 + 4);
          v64 = *(v24 + 5);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_71:
          if (v66)
          {
            goto LABEL_120;
          }

          v78 = *v62;
          v77 = *(v62 + 1);
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_123;
          }

          v82 = *(v61 + 1);
          v83 = v82 - *v61;
          if (__OFSUB__(v82, *v61))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v80, v83))
          {
            goto LABEL_128;
          }

          if (v80 + v83 >= v65)
          {
            if (v65 < v83)
            {
              v60 = v56 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        if (v56 < 2)
        {
          goto LABEL_122;
        }

        v85 = *v62;
        v84 = *(v62 + 1);
        v73 = __OFSUB__(v84, v85);
        v80 = v84 - v85;
        v81 = v73;
LABEL_86:
        if (v81)
        {
          goto LABEL_125;
        }

        v87 = *v61;
        v86 = *(v61 + 1);
        v73 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v73)
        {
          goto LABEL_127;
        }

        if (v88 < v80)
        {
          goto LABEL_100;
        }

LABEL_93:
        if (v60 - 1 >= v56)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
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
          goto LABEL_137;
        }

        if (!*v119)
        {
          goto LABEL_140;
        }

        v92 = &v57[16 * v60 - 16];
        v93 = *v92;
        v94 = v57;
        v5 = v60;
        v24 = &v57[16 * v60];
        v95 = *(v24 + 1);
        sub_2312AF3C4(*v119 + *(v117 + 72) * *v92, *v119 + *(v117 + 72) * *v24, *v119 + *(v117 + 72) * v95, v118);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v95 < v93)
        {
          goto LABEL_115;
        }

        v6 = *(i + 2);
        if (v5 > v6)
        {
          goto LABEL_116;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        if (v5 >= v6)
        {
          goto LABEL_117;
        }

        v56 = v6 - 1;
        sub_2311E6448(v24 + 16, v6 - 1 - v5, v24);
        v24 = i;
        *(i + 2) = v6 - 1;
        v96 = v6 > 2;
        v6 = 0;
        v9 = v123;
        v59 = v113;
        v57 = v94;
        if (!v96)
        {
          goto LABEL_100;
        }
      }

      v67 = &v57[16 * v56];
      v68 = *(v67 - 8);
      v69 = *(v67 - 7);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_118;
      }

      v72 = *(v67 - 6);
      v71 = *(v67 - 5);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_119;
      }

      v74 = *(v62 + 1);
      v75 = v74 - *v62;
      if (__OFSUB__(v74, *v62))
      {
        goto LABEL_121;
      }

      v73 = __OFADD__(v65, v75);
      v76 = v65 + v75;
      if (v73)
      {
        goto LABEL_124;
      }

      if (v76 >= v70)
      {
        v90 = *v61;
        v89 = *(v61 + 1);
        v73 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v73)
        {
          goto LABEL_132;
        }

        if (v65 < v91)
        {
          v60 = v56 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_71;
    }

LABEL_100:
    v22 = v119[1];
    v21 = v59;
    if (v23 >= v22)
    {
      goto LABEL_103;
    }
  }

  v45 = v25 + v107;
  if (__OFADD__(v25, v107))
  {
    goto LABEL_136;
  }

  if (v45 >= v44)
  {
    v45 = v119[1];
  }

  if (v45 < v25)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v23 == v45)
  {
    goto LABEL_50;
  }

  v106 = v6;
  v46 = *v119;
  v47 = *(v117 + 72);
  v5 = *v119 + v47 * (v23 - 1);
  v48 = -v47;
  v49 = v25 - v23;
  v110 = v47;
  v111 = v45;
  v50 = v46 + v23 * v47;
LABEL_41:
  v118 = v23;
  v114 = v50;
  v115 = v49;
  v116 = v5;
  while (1)
  {
    sub_2312AFA7C(v50, v21);
    v51 = v122;
    sub_2312AFA7C(v5, v122);
    v52 = *(v9 + 20);
    v53 = sub_231367E40();
    sub_2312AFAD8(v51, type metadata accessor for SignalGenerator.NewSuggestionResult);
    sub_2312AFAD8(v21, type metadata accessor for SignalGenerator.NewSuggestionResult);
    if ((v53 & 1) == 0)
    {
      v9 = v123;
LABEL_48:
      v23 = v118 + 1;
      v5 = v116 + v110;
      v49 = v115 - 1;
      v50 = v114 + v110;
      if (v118 + 1 == v111)
      {
        v23 = v111;
        v6 = v106;
        v24 = i;
        v25 = v109;
        goto LABEL_50;
      }

      goto LABEL_41;
    }

    if (!v46)
    {
      break;
    }

    v54 = v121;
    sub_2312AFA18(v50, v121);
    v9 = v123;
    swift_arrayInitWithTakeFrontToBack();
    sub_2312AFA18(v54, v5);
    v5 += v48;
    v50 += v48;
    v43 = __CFADD__(v49++, 1);
    if (v43)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_2312AF064(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_231270E00(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_39;
      }

      sub_2311CF324(v6, v42);
      sub_2311CF324(v4, v40);
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v12 = sub_231368320();
      v14 = v13;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      v16 = v12 == sub_231368320() && v14 == v15;
      if (v16)
      {
        break;
      }

      v17 = sub_23136A900();

      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      if ((v17 & 1) == 0)
      {
        goto LABEL_16;
      }

      v18 = v6;
      v16 = v7 == v6;
      v6 += 40;
      if (!v16)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 40;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
LABEL_16:
    v18 = v4;
    v16 = v7 == v4;
    v4 += 40;
    if (v16)
    {
      goto LABEL_18;
    }

LABEL_17:
    v19 = *v18;
    v20 = *(v18 + 1);
    *(v7 + 4) = *(v18 + 4);
    *v7 = v19;
    *(v7 + 1) = v20;
    goto LABEL_18;
  }

  sub_231270E00(a2, (a3 - a2) / 40, a4);
  v21 = &v4[40 * v9];
  v44 = v4;
  v39 = v7;
LABEL_20:
  v22 = (v6 - 40);
  v5 -= 40;
  for (i = (v21 - 40); ; i -= 40)
  {
    v10 = (i + 40);
    if (i + 40 <= v4 || v6 <= v7)
    {
      break;
    }

    v25 = v6;
    sub_2311CF324(i, v42);
    sub_2311CF324(v22, v40);
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v26 = sub_231368320();
    v28 = v27;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    if (v26 == sub_231368320() && v28 == v29)
    {
      v31 = 0;
    }

    else
    {
      v31 = sub_23136A900();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    if (v31)
    {
      v21 = (i + 40);
      v16 = v5 + 40 == v25;
      v6 = v22;
      v4 = v44;
      v7 = v39;
      if (!v16)
      {
        v34 = *v22;
        v35 = *(v22 + 16);
        *(v5 + 32) = *(v22 + 32);
        *v5 = v34;
        *(v5 + 16) = v35;
        v6 = v22;
      }

      goto LABEL_20;
    }

    v6 = v25;
    v7 = v39;
    if (v10 != (v5 + 40))
    {
      v32 = *i;
      v33 = *(i + 16);
      *(v5 + 32) = *(i + 32);
      *v5 = v32;
      *(v5 + 16) = v33;
    }

    v5 -= 40;
    v4 = v44;
  }

LABEL_39:
  v36 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v36])
  {
    memmove(v6, v4, 40 * v36);
  }

  return 1;
}

uint64_t sub_2312AF3C4(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = OUTLINED_FUNCTION_24_0();
  v59 = type metadata accessor for SignalGenerator.NewSuggestionResult(v8);
  v9 = *(*(v59 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v59);
  v58 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v17 = a2 - v4;
  v18 = a2 - v4 == 0x8000000000000000 && v16 == -1;
  if (v18)
  {
    goto LABEL_60;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v21 = v17 / v16;
  v62 = v4;
  v61 = a4;
  v22 = v19 / v16;
  if (v17 / v16 >= v19 / v16)
  {
    sub_23126F92C(a2, v19 / v16, a4);
    v32 = a4 + v22 * v16;
    v33 = -v16;
    v34 = v32;
    v54 = v4;
    v55 = v33;
LABEL_36:
    v56 = a2 + v33;
    v57 = a2;
    v35 = a3;
    v36 = v34;
    v53 = v34;
    while (1)
    {
      if (v32 <= a4)
      {
        v62 = v57;
        v60 = v36;
        goto LABEL_58;
      }

      if (v57 <= v4)
      {
        break;
      }

      v52 = v36;
      v37 = a4;
      v38 = v35 + v33;
      v39 = v32 + v33;
      v40 = v35;
      sub_2312AFA7C(v32 + v33, v14);
      v41 = v14;
      v42 = v58;
      sub_2312AFA7C(v56, v58);
      v43 = *(v59 + 20);
      v44 = sub_231367E40();
      v45 = v42;
      v14 = v41;
      sub_2312AFAD8(v45, type metadata accessor for SignalGenerator.NewSuggestionResult);
      sub_2312AFAD8(v41, type metadata accessor for SignalGenerator.NewSuggestionResult);
      if (v44)
      {
        v48 = v40 < v57 || v38 >= v57;
        a4 = v37;
        if (v48)
        {
          a2 = v56;
          OUTLINED_FUNCTION_25_12();
          swift_arrayInitWithTakeFrontToBack();
          a3 = v38;
          v34 = v52;
          v4 = v54;
          v33 = v55;
        }

        else
        {
          v18 = v40 == v57;
          v33 = v55;
          v49 = v56;
          a2 = v56;
          a3 = v38;
          v34 = v52;
          v4 = v54;
          if (!v18)
          {
            OUTLINED_FUNCTION_25_12();
            v34 = v50;
            swift_arrayInitWithTakeBackToFront();
            a2 = v49;
          }
        }

        goto LABEL_36;
      }

      v46 = v40 < v32 || v38 >= v32;
      a4 = v37;
      if (v46)
      {
        OUTLINED_FUNCTION_25_12();
        swift_arrayInitWithTakeFrontToBack();
        v35 = v38;
        v32 = v39;
        v36 = v39;
        v4 = v54;
        v33 = v55;
        v34 = v53;
      }

      else
      {
        v36 = v39;
        v18 = v32 == v40;
        v35 = v38;
        v32 = v39;
        v47 = v38;
        v4 = v54;
        v33 = v55;
        v34 = v53;
        if (!v18)
        {
          OUTLINED_FUNCTION_25_12();
          swift_arrayInitWithTakeBackToFront();
          v35 = v47;
          v32 = v39;
          v36 = v39;
        }
      }
    }

    v62 = v57;
    v60 = v34;
  }

  else
  {
    sub_23126F92C(v4, v17 / v16, a4);
    v57 = a4 + v21 * v16;
    v60 = v57;
    while (a4 < v57 && a2 < a3)
    {
      v24 = a3;
      sub_2312AFA7C(a2, v14);
      v25 = a2;
      v26 = v58;
      sub_2312AFA7C(a4, v58);
      v27 = *(v59 + 20);
      v28 = sub_231367E40();
      sub_2312AFAD8(v26, type metadata accessor for SignalGenerator.NewSuggestionResult);
      sub_2312AFAD8(v14, type metadata accessor for SignalGenerator.NewSuggestionResult);
      if (v28)
      {
        a2 = v25 + v16;
        v29 = v4 < v25 || v4 >= a2;
        v30 = v25;
        if (v29)
        {
          OUTLINED_FUNCTION_25_12();
          swift_arrayInitWithTakeFrontToBack();
          a3 = v24;
        }

        else
        {
          a3 = v24;
          if (v4 != v30)
          {
            OUTLINED_FUNCTION_25_12();
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v25;
        if (v4 < a4 || v4 >= a4 + v16)
        {
          OUTLINED_FUNCTION_67_0();
          OUTLINED_FUNCTION_25_12();
          swift_arrayInitWithTakeFrontToBack();
          a3 = v24;
        }

        else
        {
          a3 = v24;
          if (v4 != a4)
          {
            OUTLINED_FUNCTION_67_0();
            OUTLINED_FUNCTION_25_12();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v61 = a4 + v16;
        a4 += v16;
      }

      v4 += v16;
      v62 = v4;
    }
  }

LABEL_58:
  sub_23120C4E4(&v62, &v61, &v60);
  return 1;
}

uint64_t sub_2312AF824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44518, &qword_231374430) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44548, &qword_231374470) + 48);
  v6 = *(a1 + v4);
  result = sub_231361F28();
  *(a2 + v5) = result;
  return result;
}

uint64_t sub_2312AF8F8()
{
  OUTLINED_FUNCTION_16();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_231204BD4;
  v7 = OUTLINED_FUNCTION_28_0();

  return sub_2312ACA80(v7, v8, v3, v9, v4, v5);
}

unint64_t sub_2312AF9B4()
{
  result = qword_27DD44558;
  if (!qword_27DD44558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD44550, &unk_231374478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44558);
  }

  return result;
}

uint64_t sub_2312AFA18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignalGenerator.NewSuggestionResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2312AFA7C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_24_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_11(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_2312AFAD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_11(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2312AFB30()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_2311D44D4;

  return sub_2312AA33C(v5, v3, v6, v7, v8);
}

uint64_t sub_2312AFBEC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2312AFC34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_11(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

unint64_t sub_2312AFCBC()
{
  result = sub_2313687E0();
  if (v1 <= 0x3F)
  {
    result = sub_2312AFD40();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2312AFD40()
{
  result = qword_280F7C960;
  if (!qword_280F7C960)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280F7C960);
  }

  return result;
}

void sub_2312AFDC4()
{
  sub_2312AFE60();
  if (v0 <= 0x3F)
  {
    sub_231367E50();
    if (v1 <= 0x3F)
    {
      sub_2312AFEC4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2312AFE60()
{
  if (!qword_280F7C838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD432E8, &qword_23136D380);
    v0 = sub_23136A250();
    if (!v1)
    {
      atomic_store(v0, &qword_280F7C838);
    }
  }
}

void sub_2312AFEC4()
{
  if (!qword_280F85A68)
  {
    v0 = sub_23136A4D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280F85A68);
    }
  }
}

uint64_t OUTLINED_FUNCTION_17_11(uint64_t a1)
{
  *(a1 + 8) = sub_2312AC0A8;
  result = *(v1 + 56);
  v3 = *(v1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_6()
{
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[46];
  v4 = v0[47];
  v7 = v0[42];
  v6 = v0[43];
  v9 = v0[40];
  v8 = v0[41];
}

uint64_t OUTLINED_FUNCTION_51_7()
{
  v1[27] = v0;
  v3 = v1[18];
  v4 = v1[12];

  return sub_231367E50();
}

uint64_t OUTLINED_FUNCTION_53_8()
{
  result = type metadata accessor for SignalGenerator.NewSuggestionResult(0);
  v1 = *(result + 20);
  return result;
}

void sub_2312AFF9C(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  v6 = a3 + 32;
  if (v4)
  {
    while (1)
    {
      a1(&v15, v6);
      if (v3)
      {

        return;
      }

      v7 = v15;
      v8 = *(v15 + 16);
      v9 = *(v5 + 16);
      if (__OFADD__(v9, v8))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v9 + v8 > *(v5 + 24) >> 1)
      {
        sub_23126E300();
        v5 = v10;
      }

      if (*(v7 + 16))
      {
        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v8)
        {
          goto LABEL_19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v11 = *(v5 + 16);
          v12 = __OFADD__(v11, v8);
          v13 = v11 + v8;
          if (v12)
          {
            goto LABEL_20;
          }

          *(v5 + 16) = v13;
        }
      }

      else
      {

        if (v8)
        {
          goto LABEL_18;
        }
      }

      v6 += 40;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }
}

uint64_t sub_2312B0108@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for OwnershipExtractorDelegate();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  a2[3] = v4;
  a2[4] = &protocol witness table for OwnershipExtractorDelegate;
  *a2 = v5;

  return sub_231369EE0();
}

void OwnershipExtractorDelegate.extract(interaction:environment:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4[2] = a1;
  v4[3] = a2;
  sub_2312AFF9C(sub_2312B024C, v4, v3);
}

uint64_t sub_2312B01D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  result = (*(v8 + 8))(a2, a3, v7, v8);
  *a4 = result;
  return result;
}

uint64_t OwnershipExtractorDelegate.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t OwnershipExtractorDelegate.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t InteractionOwnershipExtractor.extract(interaction:environment:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435F8, &qword_231374530);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23136B670;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = *(v3 + 8);
  sub_231367AD0();
  return v2;
}

uint64_t ValidOpenAppsOwnershipExtractor.extract(interaction:environment:)(uint64_t a1, void *a2)
{
  v2 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = sub_2313683E0();
  v4 = *(v3 + 16);
  if (v4)
  {
    v19 = MEMORY[0x277D84F90];
    sub_2311F59B0(0, v4, 0);
    v5 = v19;
    v6 = sub_2313694A0();
    v7 = (v3 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v6 + 48);
      v11 = *(v6 + 52);
      swift_allocObject();
      sub_231369EE0();
      v12 = sub_231367790();
      v19 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2311F59B0(v13 > 1, v14 + 1, 1);
        v5 = v19;
      }

      v17 = v6;
      v18 = sub_2312B0504();
      *&v16 = v12;
      *(v5 + 16) = v14 + 1;
      sub_2311E6A28(&v16, v5 + 40 * v14 + 32);
      v7 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

unint64_t sub_2312B0504()
{
  result = qword_280F7C8D0;
  if (!qword_280F7C8D0)
  {
    sub_2313694A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7C8D0);
  }

  return result;
}

uint64_t EducationalChannelGenerator.channel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SiriSuggestions27EducationalChannelGenerator_channel;
  v4 = sub_231369330();
  v5 = OUTLINED_FUNCTION_11(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t EducationalChannelGenerator.__allocating_init(firstUseSuggestionsEnabled:)(unsigned __int8 a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  EducationalChannelGenerator.init(firstUseSuggestionsEnabled:)(a1);
  return v5;
}

uint64_t EducationalChannelGenerator.init(firstUseSuggestionsEnabled:)(unsigned __int8 a1)
{
  v2 = a1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC15SiriSuggestions27EducationalChannelGenerator_channel;
  v5 = *MEMORY[0x277D612F8];
  v6 = sub_231369330();
  OUTLINED_FUNCTION_11(v6);
  (*(v7 + 104))(v1 + v4, v5);
  if (v3 == 2)
  {
    v8 = sub_231367570();
    v11[3] = v8;
    v11[4] = sub_2312B281C(&qword_280F7CAC0, MEMORY[0x277D60980]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
    (*(*(v8 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60958], v8);
    v2 = sub_231366960();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  *(v1 + OBJC_IVAR____TtC15SiriSuggestions27EducationalChannelGenerator_firstUseSuggestionsEnabled) = v2 & 1;
  return v1;
}

uint64_t EducationalChannelGenerator.generateCandidateSuggestions(interaction:environment:factory:)()
{
  OUTLINED_FUNCTION_8();
  v1[24] = v2;
  v1[25] = v0;
  v1[23] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810) - 8) + 64);
  v1[26] = OUTLINED_FUNCTION_43();
  v5 = sub_2313694E0();
  v1[27] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[28] = v6;
  v8 = *(v7 + 64);
  v1[29] = OUTLINED_FUNCTION_43();
  v9 = sub_231367E50();
  v1[30] = v9;
  OUTLINED_FUNCTION_0(v9);
  v1[31] = v10;
  v12 = *(v11 + 64);
  v1[32] = OUTLINED_FUNCTION_43();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44560, &qword_231374670) - 8) + 64);
  v1[33] = OUTLINED_FUNCTION_43();
  v14 = sub_231367C70();
  v1[34] = v14;
  OUTLINED_FUNCTION_0(v14);
  v1[35] = v15;
  v17 = *(v16 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v18 = sub_2313698C0();
  v1[39] = v18;
  OUTLINED_FUNCTION_0(v18);
  v1[40] = v19;
  v21 = *(v20 + 64) + 15;
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312B0A88, 0, 0);
}

uint64_t sub_2312B0A88()
{
  v1 = MEMORY[0x277D60AC0];
  if (*(v0[25] + OBJC_IVAR____TtC15SiriSuggestions27EducationalChannelGenerator_firstUseSuggestionsEnabled) != 1)
  {
    v44 = v0[41];
    sub_231369170();
    v45 = sub_2313698A0();
    v46 = sub_23136A3A0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2311CB000, v45, v46, "EducationalChannelGenerator: firstUseSuggestions feature flag disabled", v47, 2u);
      OUTLINED_FUNCTION_29();
    }

    v49 = v0[40];
    v48 = v0[41];
    v50 = v0[39];
    v52 = v0[35];
    v51 = v0[36];
    v53 = v0[34];
    v54 = v0[23];

    (*(v49 + 8))(v48, v50);
    v55 = v54[4];
    __swift_project_boxed_opaque_existential_1(v54, v54[3]);
    sub_2313677D0();
    v56 = (*(v52 + 88))(v51, v53);
    v57 = v0[35];
    v58 = v0[36];
    v59 = v0[34];
    if (v56 == *v1)
    {
      (*(v57 + 96))(v0[36], v59);
      v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
      v61 = sub_2313681A0();
      v62 = *(v61 - 8);
      v63 = (*(v62 + 88))(v58, v61);
      v64 = *MEMORY[0x277D60DB8];
      v65 = sub_231368210();
      OUTLINED_FUNCTION_0_2(v65);
      (*(v66 + 8))(v58 + v60);
      (*(v62 + 8))(v58, v61);
      if (v63 == v64)
      {
        v68 = v0[31];
        v67 = v0[32];
        v70 = v0[29];
        v69 = v0[30];
        v72 = v0[27];
        v71 = v0[28];
        v73 = v0[26];
        OUTLINED_FUNCTION_8_19();
        *v74 = v75;
        v74[1] = 0xEB00000000706C65;
        v76 = *MEMORY[0x277D60CB0];
        (*(v77 + 104))();
        v0[49] = sub_231369EC0();
        (*(v71 + 104))(v70, *MEMORY[0x277D61380], v72);
        v78 = *MEMORY[0x277D60B78];
        v79 = sub_231367D80();
        OUTLINED_FUNCTION_11(v79);
        (*(v80 + 104))(v73, v78, v79);
        OUTLINED_FUNCTION_12_16();
        v81 = *(MEMORY[0x277D611F8] + 4);
        v144 = *MEMORY[0x277D611F8] + MEMORY[0x277D611F8];
        v82 = swift_task_alloc();
        v0[50] = v82;
        *v82 = v0;
        v82[1] = sub_2312B1AC0;
        v83 = v0[29];
        v84 = v0[26];
        v85 = v0[24];
        OUTLINED_FUNCTION_9_19(v0[32]);
        OUTLINED_FUNCTION_40();

        __asm { BR              X4 }
      }
    }

    else
    {
      (*(v57 + 8))(v0[36], v59);
    }

LABEL_33:
    v101 = v0[42];
    v100 = v0[43];
    v102 = v0[41];
    v104 = v0[37];
    v103 = v0[38];
    v105 = v0[36];
    v107 = v0[32];
    v106 = v0[33];
    v108 = v0[29];
    v109 = v0[26];

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_40();

    __asm { BRAA            X2, X16 }
  }

  v2 = v0[43];
  v3 = v0[23];
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v5 = sub_2313677F0();
  sub_231369170();
  v6 = sub_2313698A0();
  v7 = sub_23136A3A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v5 & 1;
    _os_log_impl(&dword_2311CB000, v6, v7, "EducationalChannelGenerator: isFirstInvocation %{BOOL}d", v8, 8u);
    OUTLINED_FUNCTION_29();
  }

  v143 = v5;
  v9 = v0[43];
  v11 = v0[39];
  v10 = v0[40];
  v12 = v0[38];
  v13 = v0[34];
  v14 = v0[35];
  v15 = v0[23];

  v16 = *(v10 + 8);
  v0[44] = v16;
  v0[45] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v9, v11);
  v17 = v3[4];
  __swift_project_boxed_opaque_existential_1(v15, v3[3]);
  sub_2313677D0();
  if ((*(v14 + 88))(v12, v13) != *MEMORY[0x277D60AC0])
  {
LABEL_32:
    (*(v0[35] + 8))(v0[38], v0[34]);
    goto LABEL_33;
  }

  v18 = v0[37];
  v19 = v0[34];
  v20 = v0[35];
  (*(v20 + 16))(v18, v0[38], v19);
  (*(v20 + 96))(v18, v19);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
  v22 = sub_2313681A0();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 88))(v18, v22);
  if (v24 != *MEMORY[0x277D60DC0])
  {
    if (v24 == *MEMORY[0x277D60DB8])
    {
      OUTLINED_FUNCTION_6_17();
      v89 = v88;
      v90 = *(v88 + 16);
      v91 = *(v88 + 24) >> 1;
      v92 = v90 + 1;
      if ((v143 & 1) == 0)
      {
        v93 = 0xEB00000000706C65;
        if (v91 > v90)
        {
LABEL_41:
          OUTLINED_FUNCTION_8_19();
          goto LABEL_42;
        }

LABEL_52:
        OUTLINED_FUNCTION_7_16();
        v89 = v140;
        goto LABEL_41;
      }

      v93 = 0xEB00000000697269;
      if (v91 <= v90)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v97 = v0[37];
    v98 = sub_231368210();
    OUTLINED_FUNCTION_0_2(v98);
    (*(v99 + 8))(v18 + v21);
    (*(v23 + 8))(v97, v22);
    goto LABEL_32;
  }

  v25 = v0[37];
  (*(v23 + 96))(v25, v22);
  v26 = sub_231368270();
  v27 = *(v26 - 8);
  if ((*(v27 + 88))(v25, v26) != *MEMORY[0x277D60E60])
  {
    (*(v27 + 8))(v0[37], v26);
    v95 = sub_231368210();
    OUTLINED_FUNCTION_0_2(v95);
    (*(v96 + 8))(v18 + v21);
    goto LABEL_32;
  }

  v28 = v3[3];
  v29 = v3[4];
  __swift_project_boxed_opaque_existential_1(v0[23], v28);
  MEMORY[0x231927EB0](v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
  v30 = sub_231367780();
  v31 = swift_dynamicCast();
  v32 = v0[20];
  v33 = *(v30 + 48);
  v34 = *(v30 + 52);
  swift_allocObject();
  v35 = sub_231367790();
  if (v31 && v32)
  {
    v0[21] = v32;
    v0[22] = v35;
    sub_2312B281C(&qword_27DD44570, MEMORY[0x277D60A20]);
    v36 = sub_231369F60();

    v37 = v0[21];

    if (v36)
    {
      v39 = v3[3];
      v38 = v3[4];
      __swift_project_boxed_opaque_existential_1(v0[23], v39);
      v40 = sub_231367810();
      sub_231210B54(0x614E746E65746E69, 0xEA0000000000656DLL, v40);

      if (v0[5])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43300, &qword_23136BF00);
        if (swift_dynamicCast())
        {
          if (v0[18] == 0xD000000000000010 && 0x800000023137FB80 == v0[19])
          {
            v135 = v0[19];

            goto LABEL_49;
          }

          v42 = v0[19];
          v43 = sub_23136A900();

          if (v43)
          {
LABEL_49:
            OUTLINED_FUNCTION_6_17();
            v89 = v136;
            v137 = *(v136 + 16);
            v138 = *(v136 + 24) >> 1;
            v90 = v137 + 1;
            if (v138 <= v137)
            {
              sub_23126DC90();
              v89 = v141;
              v138 = *(v141 + 24) >> 1;
            }

            v93 = 0xEB00000000706C65;
            *(v89 + 16) = v90;
            v139 = v89 + 16 * v137;
            *(v139 + 32) = 0x4F6874695777656ELL;
            *(v139 + 40) = 0xE900000000000053;
            v92 = v137 + 2;
            if (v138 >= v92)
            {
              goto LABEL_41;
            }

            goto LABEL_52;
          }
        }
      }

      else
      {
        sub_2312777C0((v0 + 2), &qword_27DD432F8, &qword_23136DEE0);
      }
    }
  }

  else
  {
  }

  if (v143)
  {
    v93 = 0xEB00000000697269;
    OUTLINED_FUNCTION_6_17();
    v89 = v112;
    v90 = *(v112 + 16);
    v92 = v90 + 1;
    if (v90 >= *(v112 + 24) >> 1)
    {
LABEL_39:
      OUTLINED_FUNCTION_7_16();
      v89 = v113;
    }

LABEL_29:
    v94 = 0x536874695777656ELL;
LABEL_42:
    *(v89 + 16) = v92;
    v114 = v89 + 16 * v90;
    *(v114 + 32) = v94;
    *(v114 + 40) = v93;
    goto LABEL_44;
  }

  v89 = MEMORY[0x277D84F90];
LABEL_44:
  v0[46] = v89;
  v115 = v0[38];
  v116 = v0[34];
  v117 = v0[35];
  v118 = v0[33];
  v119 = v0[24];
  v120 = sub_231368210();
  OUTLINED_FUNCTION_0_2(v120);
  (*(v121 + 8))(v18 + v21);
  (*(v117 + 8))(v115, v116);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44568, &qword_231374678);
  __swift_storeEnumTagSinglePayload(v118, 1, 1, v122);
  v123 = *(MEMORY[0x277D60B28] + 4);

  v124 = swift_task_alloc();
  v0[47] = v124;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
  *v124 = v0;
  v124[1] = sub_2312B1688;
  v125 = v0[33];
  v126 = v0[24];
  OUTLINED_FUNCTION_40();

  return MEMORY[0x2821C6B08](v127, v128, v129, v130, v131, v132, v133, v134);
}