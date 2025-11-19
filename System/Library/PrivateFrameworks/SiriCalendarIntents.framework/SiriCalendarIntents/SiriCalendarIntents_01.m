uint64_t sub_266561758(uint64_t a1)
{
  v2 = sub_266669E88();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_266669E48();
  v59 = *(v6 - 8);
  v7 = v59[8];
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26666B208();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_266669E58();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v53 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v55 = &v53 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v53 - v27;
  v29 = *(v18 + 16);
  v58 = a1;
  v30 = a1;
  v31 = v29;
  v29(&v53 - v27, v30, v17);
  v32 = (*(v18 + 88))(v28, v17);
  if (v32 == *MEMORY[0x277D5C128])
  {
    (*(v18 + 96))(v28, v17);
    (*(v12 + 32))(v16, v28, v11);
    v33 = sub_266561D98(v16);
    (*(v12 + 8))(v16, v11);
  }

  else if (v32 == *MEMORY[0x277D5C150])
  {
    (*(v18 + 96))(v28, v17);
    v34 = v59;
    (v59[4])(v10, v28, v6);
    sub_26656212C(v10);
    v33 = v35;
    (v34[1])(v10, v6);
  }

  else if (v32 == *MEMORY[0x277D5C160])
  {
    (*(v18 + 96))(v28, v17);
    v37 = v56;
    v36 = v57;
    v38 = v54;
    (*(v56 + 32))(v54, v28, v57);
    v33 = sub_266562508(v38);
    (*(v37 + 8))(v38, v36);
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v39 = sub_26666C168();
    __swift_project_value_buffer(v39, qword_28156D7E8);
    v40 = v55;
    v31(v55, v58, v17);
    v41 = sub_26666C148();
    v42 = sub_26666C618();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = v59;
      *v43 = 136315138;
      v31(v53, v40, v17);
      v44 = sub_26666C318();
      v45 = v40;
      v46 = v44;
      v48 = v47;
      v49 = *(v18 + 8);
      v49(v45, v17);
      v50 = sub_2665BFC90(v46, v48, &v60);

      *(v43 + 4) = v50;
      _os_log_impl(&dword_266549000, v41, v42, "[ConfirmationResponse] parse failed. Unsupported parse type: %s", v43, 0xCu);
      v51 = v59;
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x266789690](v51, -1, -1);
      MEMORY[0x266789690](v43, -1, -1);
    }

    else
    {

      v49 = *(v18 + 8);
      v49(v40, v17);
    }

    v49(v28, v17);
    return 2;
  }

  return v33;
}

uint64_t sub_266561D28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2D0, &qword_26666E618);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_266561D98(uint64_t a1)
{
  v2 = type metadata accessor for CalendarNLv3Intent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26666B208();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v13 = sub_26666C168();
  __swift_project_value_buffer(v13, qword_28156D7E8);
  v28 = *(v8 + 16);
  v28(v12, a1, v7);
  v14 = sub_26666C148();
  v15 = sub_26666C618();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = v2;
    v17 = v16;
    v25 = swift_slowAlloc();
    v26 = v6;
    v29 = v25;
    *v17 = 136315138;
    sub_266563A94(&qword_28007D2E0, MEMORY[0x277D5F458]);
    v18 = sub_26666CAA8();
    v19 = a1;
    v21 = v20;
    (*(v8 + 8))(v12, v7);
    v22 = sub_2665BFC90(v18, v21, &v29);
    a1 = v19;

    *(v17 + 4) = v22;
    _os_log_impl(&dword_266549000, v14, v15, "[ConfirmationResponse] parsing nlIntent %s", v17, 0xCu);
    v23 = v25;
    __swift_destroy_boxed_opaque_existential_1(v25);
    v6 = v26;
    MEMORY[0x266789690](v23, -1, -1);
    MEMORY[0x266789690](v17, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  v28(v6, a1, v7);
  if (qword_28007CE38 != -1)
  {
    swift_once();
  }

  sub_266563A94(&qword_28007D2D8, type metadata accessor for CalendarNLv3Intent);
  sub_26666A528();
  sub_266563A38(v6);
  return 0x201000000020100uLL >> (8 * v30);
}

void sub_26656212C(uint64_t a1)
{
  v2 = sub_266669E48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v46 - v10;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v12 = sub_26666C168();
  __swift_project_value_buffer(v12, qword_28156D7E8);
  v13 = *(v3 + 16);
  v13(v11, a1, v2);
  v14 = sub_26666C148();
  v15 = sub_26666C618();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v47 = v8;
    v17 = v16;
    v18 = swift_slowAlloc();
    v48 = a1;
    v49 = v18;
    v19 = v18;
    *v17 = 136315138;
    v20 = sub_266669E28();
    v46 = v13;
    v22 = v21;
    (*(v3 + 8))(v11, v2);
    v23 = sub_2665BFC90(v20, v22, &v49);
    v13 = v46;

    *(v17 + 4) = v23;
    _os_log_impl(&dword_266549000, v14, v15, "[ConfirmationResponse] parsing direct invocation with id: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v24 = v19;
    a1 = v48;
    MEMORY[0x266789690](v24, -1, -1);
    v25 = v17;
    v8 = v47;
    MEMORY[0x266789690](v25, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v11, v2);
  }

  v13(v8, a1, v2);
  sub_2665629D8();
  if (v26 - 2 < 2)
  {
    v27 = sub_266669E28();
    v29 = v28;
    v30 = sub_266669628();
    v31 = [v30 identifier];

    v32 = sub_26666C308();
    v34 = v33;

    if (v27 == v32 && v29 == v34)
    {
    }

    else
    {
      v36 = sub_26666CAC8();

      if ((v36 & 1) == 0)
      {
        v37 = sub_266669E28();
        v39 = v38;
        v40 = sub_266669618();
        v41 = [v40 identifier];

        v42 = sub_26666C308();
        v44 = v43;

        if (v37 != v42 || v39 != v44)
        {
          sub_26666CAC8();
        }
      }
    }
  }
}

uint64_t sub_266562508(uint64_t a1)
{
  v54 = sub_266669EE8();
  v52 = *(v54 - 8);
  v2 = *(v52 + 64);
  MEMORY[0x28223BE20](v54, v3);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2F8, &unk_266677220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v53 = &v46 - v8;
  v9 = sub_266669F98();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v49 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_266669E88();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v46 - v22;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v24 = sub_26666C168();
  __swift_project_value_buffer(v24, qword_28156D7E8);
  v25 = *(v15 + 16);
  v51 = a1;
  v25(v23, a1, v14);
  v26 = sub_26666C148();
  v27 = sub_26666C618();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v48 = v9;
    v29 = v28;
    v30 = swift_slowAlloc();
    v47 = v10;
    v31 = v30;
    v55 = v30;
    *v29 = 136315138;
    v25(v20, v23, v14);
    v32 = sub_26666C318();
    v34 = v33;
    (*(v15 + 8))(v23, v14);
    v35 = sub_2665BFC90(v32, v34, &v55);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_266549000, v26, v27, "[ConfirmationResponse] parsing usoParse %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v36 = v31;
    v10 = v47;
    MEMORY[0x266789690](v36, -1, -1);
    v37 = v29;
    v9 = v48;
    MEMORY[0x266789690](v37, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v23, v14);
  }

  v38 = v50;
  sub_266669E78();
  v39 = sub_266669ED8();
  (*(v52 + 8))(v38, v54);
  v40 = v53;
  sub_2665EC518(v39, v53);

  if (__swift_getEnumTagSinglePayload(v40, 1, v9) == 1)
  {
    sub_266557D74(v40, &qword_28007D2F8, &unk_266677220);
    return 2;
  }

  else
  {
    v42 = v49;
    (*(v10 + 32))(v49, v40, v9);
    if (sub_266669F38())
    {
      (*(v10 + 8))(v42, v9);
      return 0;
    }

    else
    {
      v43 = sub_266669F48();
      v44 = v42;
      v45 = v43;
      (*(v10 + 8))(v44, v9);
      if (v45)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }
  }
}

void sub_2665629D8()
{
  OUTLINED_FUNCTION_28_0();
  v5 = OUTLINED_FUNCTION_30_0(*MEMORY[0x277D85DE8]);
  v6 = OUTLINED_FUNCTION_1_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x266788710](46, 0xE100000000000000);
  MEMORY[0x266788710](0xD000000000000014, 0x800000026667DA00);
  if (v2 == 0xD000000000000028 && v0 == 0x800000026667D640)
  {
  }

  else
  {
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_37();

    if ((v2 & 1) == 0)
    {
      v15 = OUTLINED_FUNCTION_2_4();
      v16(v15);
      goto LABEL_19;
    }
  }

  v17 = sub_266669E38();
  v18 = MEMORY[0x277D84F70];
  if (!v17)
  {
    sub_26666C258();
  }

  v19 = objc_opt_self();
  OUTLINED_FUNCTION_32();
  v20 = OUTLINED_FUNCTION_33();
  v21 = OUTLINED_FUNCTION_16_1(v20, sel_dataWithJSONObject_options_error_);

  v22 = 0;
  if (v21)
  {
    sub_266668C68();
    OUTLINED_FUNCTION_29_0();
    v23 = sub_266668918();
    OUTLINED_FUNCTION_7(v23);
    sub_266668908();
    sub_266563ADC();
    OUTLINED_FUNCTION_8_2();
    if (!v19)
    {
      v46 = OUTLINED_FUNCTION_2_4();
      v47(v46);
      OUTLINED_FUNCTION_24_0();

      goto LABEL_19;
    }

    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    v24 = v22;
    v25 = sub_266668BF8();

    swift_willThrow();
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v26 = sub_26666C168();
  __swift_project_value_buffer(v26, qword_28156D7E8);
  v27 = OUTLINED_FUNCTION_3_4();
  (v18)(v27);
  v28 = OUTLINED_FUNCTION_23_0();
  (v18)(v28);
  v29 = sub_26666C148();
  v30 = sub_26666C5F8();
  if (OUTLINED_FUNCTION_21_0(v30))
  {
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_31_0(4.8752e-34);
    v31 = OUTLINED_FUNCTION_4_4();
    v32(v31);
    v33 = OUTLINED_FUNCTION_19_0();
    sub_2665BFC90(v33, v4, v34);
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_12_1();
    sub_266669E38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2E8, &unk_26666E620);
    sub_26666C318();
    v35 = OUTLINED_FUNCTION_6_2();
    v3(v35);
    v36 = OUTLINED_FUNCTION_19_0();
    sub_2665BFC90(v36, v1, v37);
    OUTLINED_FUNCTION_34();
    *(v18 + 14) = v3;
    OUTLINED_FUNCTION_9_2(&dword_266549000, v38, v39, "JSON Serializer failed to convert %{public}s with userData of %s to typed object");
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_4_2();

    v40 = OUTLINED_FUNCTION_7_3();
    v3(v40);
  }

  else
  {

    v41 = *(v8 + 8);
    v42 = OUTLINED_FUNCTION_7_3();
    v41(v42);
    v43 = OUTLINED_FUNCTION_13_1();
    v41(v43);
    v44 = OUTLINED_FUNCTION_14_0();
    v41(v44);
  }

LABEL_19:
  v45 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_27_0();
}

void sub_266562DD4()
{
  OUTLINED_FUNCTION_28_0();
  v5 = OUTLINED_FUNCTION_30_0(*MEMORY[0x277D85DE8]);
  v6 = OUTLINED_FUNCTION_1_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_15_0("com.apple.siri.calendar.directInvocation");
  MEMORY[0x266788710](0x6156676E69727473, 0xEB0000000065756CLL);
  if (v2 == v48 && v0 == v49)
  {
  }

  else
  {
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_37();

    if ((v2 & 1) == 0)
    {
      v15 = OUTLINED_FUNCTION_2_4();
      v16(v15);
      goto LABEL_19;
    }
  }

  v17 = sub_266669E38();
  v18 = MEMORY[0x277D84F70];
  if (!v17)
  {
    sub_26666C258();
  }

  v19 = objc_opt_self();
  OUTLINED_FUNCTION_32();
  v20 = OUTLINED_FUNCTION_33();
  v21 = OUTLINED_FUNCTION_16_1(v20, sel_dataWithJSONObject_options_error_);

  v22 = 0;
  if (v21)
  {
    sub_266668C68();
    OUTLINED_FUNCTION_29_0();
    v23 = sub_266668918();
    OUTLINED_FUNCTION_7(v23);
    sub_266668908();
    sub_266563B88();
    OUTLINED_FUNCTION_8_2();
    if (!v19)
    {
      v46 = OUTLINED_FUNCTION_2_4();
      v47(v46);
      OUTLINED_FUNCTION_24_0();

      goto LABEL_19;
    }

    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    v24 = v22;
    v25 = sub_266668BF8();

    swift_willThrow();
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v26 = sub_26666C168();
  __swift_project_value_buffer(v26, qword_28156D7E8);
  v27 = OUTLINED_FUNCTION_3_4();
  (v18)(v27);
  v28 = OUTLINED_FUNCTION_23_0();
  (v18)(v28);
  v29 = sub_26666C148();
  v30 = sub_26666C5F8();
  if (OUTLINED_FUNCTION_21_0(v30))
  {
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_31_0(4.8752e-34);
    v31 = OUTLINED_FUNCTION_4_4();
    v32(v31);
    v33 = OUTLINED_FUNCTION_19_0();
    sub_2665BFC90(v33, v4, v34);
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_12_1();
    sub_266669E38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2E8, &unk_26666E620);
    sub_26666C318();
    v35 = OUTLINED_FUNCTION_6_2();
    v3(v35);
    v36 = OUTLINED_FUNCTION_19_0();
    sub_2665BFC90(v36, v1, v37);
    OUTLINED_FUNCTION_34();
    *(v18 + 14) = v3;
    OUTLINED_FUNCTION_9_2(&dword_266549000, v38, v39, "JSON Serializer failed to convert %{public}s with userData of %s to typed object");
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_4_2();

    v40 = OUTLINED_FUNCTION_7_3();
    v3(v40);
  }

  else
  {

    v41 = *(v8 + 8);
    v42 = OUTLINED_FUNCTION_7_3();
    v41(v42);
    v43 = OUTLINED_FUNCTION_13_1();
    v41(v43);
    v44 = OUTLINED_FUNCTION_14_0();
    v41(v44);
  }

LABEL_19:
  v45 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_27_0();
}

void sub_2665631B4()
{
  OUTLINED_FUNCTION_28_0();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_30_0(*MEMORY[0x277D85DE8]);
  v7 = OUTLINED_FUNCTION_1_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v7, v12);
  v57 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_26_0();
  swift_beginAccess();
  v16 = qword_28007E888;
  v17 = off_28007E890;
  v59 = static EventRecurrencePromptResult.identifier;
  v60 = off_28007E880;
  swift_bridgeObjectRetain_n();

  MEMORY[0x266788710](46, 0xE100000000000000);
  MEMORY[0x266788710](v16, v17);

  if (v3 == v59 && v1 == v60)
  {
  }

  else
  {
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_37();

    if ((v3 & 1) == 0)
    {
      v19 = OUTLINED_FUNCTION_2_4();
      v20(v19);
      goto LABEL_19;
    }
  }

  v21 = sub_266669E38();
  v22 = MEMORY[0x277D84F70];
  if (!v21)
  {
    sub_26666C258();
  }

  v23 = objc_opt_self();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_33();
  v59 = 0;
  v24 = [v23 dataWithJSONObject:v22 options:0 error:&v59];

  v25 = v59;
  if (v24)
  {
    sub_266668C68();
    OUTLINED_FUNCTION_29_0();
    v26 = sub_266668918();
    OUTLINED_FUNCTION_7(v26);
    sub_266668908();
    sub_266563DE0();
    OUTLINED_FUNCTION_8_2();
    if (!v23)
    {
      v52 = OUTLINED_FUNCTION_2_4();
      v53(v52);
      OUTLINED_FUNCTION_24_0();

      goto LABEL_19;
    }

    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    v27 = v25;
    v28 = sub_266668BF8();

    swift_willThrow();
  }

  v29 = v5;
  v30 = v57;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v31 = sub_26666C168();
  __swift_project_value_buffer(v31, qword_28156D7E8);
  v32 = *(v9 + 16);
  v32(v2, v29, v0);
  v32(v30, v29, v0);
  v33 = sub_26666C148();
  v34 = sub_26666C5F8();
  if (OUTLINED_FUNCTION_21_0(v34))
  {
    OUTLINED_FUNCTION_36();
    v56 = OUTLINED_FUNCTION_20_0();
    v59 = v56;
    v35 = OUTLINED_FUNCTION_31_0(4.8752e-34);
    v37 = v36;
    v55 = *(v9 + 8);
    v38 = OUTLINED_FUNCTION_14_0();
    v39(v38);
    sub_2665BFC90(v35, v37, &v59);
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_12_1();
    v58 = sub_266669E38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2E8, &unk_26666E620);
    v40 = sub_26666C318();
    v42 = v41;
    v43 = OUTLINED_FUNCTION_7_3();
    v44 = v55;
    v55(v43);
    sub_2665BFC90(v40, v42, &v59);
    OUTLINED_FUNCTION_34();
    *(v30 + 14) = v40;
    OUTLINED_FUNCTION_9_2(&dword_266549000, v45, v46, "JSON Serializer failed to convert %{public}s with userData of %s to typed object");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_4_2();

    v47 = OUTLINED_FUNCTION_13_1();
    v44(v47);
  }

  else
  {

    v48 = *(v9 + 8);
    v49 = OUTLINED_FUNCTION_13_1();
    v48(v49);
    (v48)(v30, v0);
    v50 = OUTLINED_FUNCTION_14_0();
    v48(v50);
  }

LABEL_19:
  v51 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_27_0();
}

void sub_266563654()
{
  OUTLINED_FUNCTION_28_0();
  v5 = OUTLINED_FUNCTION_30_0(*MEMORY[0x277D85DE8]);
  v6 = OUTLINED_FUNCTION_1_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_15_0("com.apple.siri.calendar.directInvocation");
  MEMORY[0x266788710](0x6F4674706D6F7270, 0xEE00656C74695472);
  if (v2 == v48 && v0 == v49)
  {
  }

  else
  {
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_37();

    if ((v2 & 1) == 0)
    {
      v15 = OUTLINED_FUNCTION_2_4();
      v16(v15);
      goto LABEL_19;
    }
  }

  v17 = sub_266669E38();
  v18 = MEMORY[0x277D84F70];
  if (!v17)
  {
    sub_26666C258();
  }

  v19 = objc_opt_self();
  OUTLINED_FUNCTION_32();
  v20 = OUTLINED_FUNCTION_33();
  v21 = OUTLINED_FUNCTION_16_1(v20, sel_dataWithJSONObject_options_error_);

  v22 = 0;
  if (v21)
  {
    sub_266668C68();
    OUTLINED_FUNCTION_29_0();
    v23 = sub_266668918();
    OUTLINED_FUNCTION_7(v23);
    sub_266668908();
    sub_266563E34();
    OUTLINED_FUNCTION_8_2();
    if (!v19)
    {
      v46 = OUTLINED_FUNCTION_2_4();
      v47(v46);
      OUTLINED_FUNCTION_24_0();

      goto LABEL_19;
    }

    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    v24 = v22;
    v25 = sub_266668BF8();

    swift_willThrow();
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v26 = sub_26666C168();
  __swift_project_value_buffer(v26, qword_28156D7E8);
  v27 = OUTLINED_FUNCTION_3_4();
  (v18)(v27);
  v28 = OUTLINED_FUNCTION_23_0();
  (v18)(v28);
  v29 = sub_26666C148();
  v30 = sub_26666C5F8();
  if (OUTLINED_FUNCTION_21_0(v30))
  {
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_31_0(4.8752e-34);
    v31 = OUTLINED_FUNCTION_4_4();
    v32(v31);
    v33 = OUTLINED_FUNCTION_19_0();
    sub_2665BFC90(v33, v4, v34);
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_12_1();
    sub_266669E38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2E8, &unk_26666E620);
    sub_26666C318();
    v35 = OUTLINED_FUNCTION_6_2();
    v3(v35);
    v36 = OUTLINED_FUNCTION_19_0();
    sub_2665BFC90(v36, v1, v37);
    OUTLINED_FUNCTION_34();
    *(v18 + 14) = v3;
    OUTLINED_FUNCTION_9_2(&dword_266549000, v38, v39, "JSON Serializer failed to convert %{public}s with userData of %s to typed object");
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_4_2();

    v40 = OUTLINED_FUNCTION_7_3();
    v3(v40);
  }

  else
  {

    v41 = *(v8 + 8);
    v42 = OUTLINED_FUNCTION_7_3();
    v41(v42);
    v43 = OUTLINED_FUNCTION_13_1();
    v41(v43);
    v44 = OUTLINED_FUNCTION_14_0();
    v41(v44);
  }

LABEL_19:
  v45 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_266563A38(uint64_t a1)
{
  v2 = type metadata accessor for CalendarNLv3Intent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266563A94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266563ADC()
{
  result = qword_28007D2F0;
  if (!qword_28007D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D2F0);
  }

  return result;
}

uint64_t sub_266563B30(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_266563B88()
{
  result = qword_28007D300;
  if (!qword_28007D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D300);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19SiriCalendarIntents11TaskParsing_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_266563C08(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_266563C5C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19SiriCalendarIntents0B4TaskOSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 5)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_19SiriCalendarIntents16ConfirmationTaskO(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_266563D08(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[49])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266563D4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

double sub_266563D9C(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *a1 = a2 + 1;
  }

  return result;
}

unint64_t sub_266563DE0()
{
  result = qword_28007D308;
  if (!qword_28007D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D308);
  }

  return result;
}

unint64_t sub_266563E34()
{
  result = qword_28007D310;
  if (!qword_28007D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D310);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventDisambiguationStrategy.ActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_266563F20(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266563FFC()
{
  result = qword_28007D318;
  if (!qword_28007D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D318);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_2()
{
  result = v0;
  v3 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return sub_2666688F8();
}

void OUTLINED_FUNCTION_9_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_10_1()
{

  return sub_266669E28();
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return sub_26666CAC8();
}

void OUTLINED_FUNCTION_15_0(uint64_t a1@<X8>)
{
  *(v1 - 104) = 0xD000000000000028;
  *(v1 - 96) = (a1 - 32) | 0x8000000000000000;

  JUMPOUT(0x266788710);
}

id OUTLINED_FUNCTION_16_1(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_17_0()
{
  v2 = *(v0 - 128);

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_18_0()
{

  JUMPOUT(0x266789690);
}

uint64_t OUTLINED_FUNCTION_20_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_21_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return sub_266563B30(v1, v0);
}

void OUTLINED_FUNCTION_29_0()
{
}

uint64_t OUTLINED_FUNCTION_30_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;

  return sub_266669E48();
}

uint64_t OUTLINED_FUNCTION_31_0(float a1)
{
  *v1 = a1;

  return sub_266669E28();
}

uint64_t OUTLINED_FUNCTION_32()
{

  return sub_26666C248();
}

uint64_t OUTLINED_FUNCTION_33()
{
}

uint64_t OUTLINED_FUNCTION_34()
{
}

uint64_t OUTLINED_FUNCTION_35()
{
}

uint64_t OUTLINED_FUNCTION_36()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_37()
{
}

uint64_t sub_2665643AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  *(v15 + 104) = a14;
  *(v15 + 112) = v14;
  *(v15 + 96) = a13;
  *(v15 + 80) = a12;
  *(v15 + 138) = a11;
  *(v15 + 137) = a10;
  *(v15 + 136) = a9;
  *(v15 + 64) = a7;
  *(v15 + 72) = a8;
  *(v15 + 48) = a5;
  *(v15 + 56) = a6;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = OUTLINED_FUNCTION_31();
  return OUTLINED_FUNCTION_34_0(v16, v17, v18);
}

uint64_t sub_26656440C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = *(v15 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v17 = swift_allocObject();
  *(v15 + 120) = v17;
  *(v17 + 16) = xmmword_26666E050;
  *(v17 + 32) = v16;
  v18 = v16;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v15 + 128) = v19;
  *v19 = v20;
  v19[1] = sub_266564528;
  v21 = *(v15 + 112);
  v22 = *(v15 + 64);
  v23 = *(v15 + 72);
  v24 = *(v15 + 48);
  v25 = *(v15 + 56);
  v26 = *(v15 + 24);
  v27 = *(v15 + 32);
  v28 = *(v15 + 16);
  v35 = *(v15 + 96);
  v36 = *(v15 + 104);
  v34 = *(v15 + 80);
  v33 = *(v15 + 138);
  v32 = *(v15 + 137);
  v31 = *(v15 + 136);

  return sub_266564624(v28, v26, v27, v17, v24, v25, v22, v23, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_266564528()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 128);
  v3 = *(v1 + 120);
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  OUTLINED_FUNCTION_24_1();

  return v6();
}

uint64_t sub_266564624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_14();
  *(v16 + 264) = a15;
  *(v16 + 272) = v15;
  *(v16 + 248) = a13;
  *(v16 + 256) = a14;
  *(v16 + 232) = v17;
  *(v16 + 240) = a12;
  *(v16 + 498) = a11;
  *(v16 + 497) = a10;
  *(v16 + 496) = a9;
  *(v16 + 216) = v18;
  *(v16 + 224) = v19;
  *(v16 + 200) = v20;
  *(v16 + 208) = v21;
  *(v16 + 184) = v22;
  *(v16 + 192) = v23;
  *(v16 + 176) = v24;
  v25 = type metadata accessor for Snippet();
  *(v16 + 280) = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  *(v16 + 288) = swift_task_alloc();
  *(v16 + 296) = swift_task_alloc();
  *(v16 + 304) = swift_task_alloc();
  *(v16 + 312) = swift_task_alloc();
  v27 = sub_266669708();
  *(v16 + 320) = v27;
  OUTLINED_FUNCTION_3_1(v27);
  *(v16 + 328) = v28;
  v30 = *(v29 + 64) + 15;
  *(v16 + 336) = swift_task_alloc();
  v31 = sub_266669CA8();
  *(v16 + 344) = v31;
  OUTLINED_FUNCTION_3_1(v31);
  *(v16 + 352) = v32;
  v34 = *(v33 + 64) + 15;
  *(v16 + 360) = swift_task_alloc();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_1(v35);
  *(v16 + 368) = v36;
  *(v16 + 376) = *(v37 + 64);
  *(v16 + 384) = swift_task_alloc();
  *(v16 + 392) = swift_task_alloc();
  *(v16 + 400) = swift_task_alloc();
  *(v16 + 408) = swift_task_alloc();
  *(v16 + 416) = swift_task_alloc();
  *(v16 + 424) = swift_task_alloc();
  v38 = *(a14 - 8);
  *(v16 + 432) = v38;
  *(v16 + 440) = *(v38 + 64);
  *(v16 + 448) = swift_task_alloc();
  v39 = OUTLINED_FUNCTION_31();
  return OUTLINED_FUNCTION_34_0(v39, v40, v41);
}

uint64_t sub_26656489C()
{
  if (sub_2665C485C(*(v0 + 200)))
  {
    v1 = *(v0 + 200);
    v2 = v1 & 0xC000000000000001;
    sub_2665C4864(0, (v1 & 0xC000000000000001) == 0, v1);
    v3 = *(v0 + 200);
    if (v2)
    {
      v4 = MEMORY[0x266788B60](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;
    v6 = [v4 catId];

    v101 = sub_26666C308();
    v104 = v7;
  }

  else
  {
    v101 = 0;
    v104 = 0;
  }

  v86 = *(v0 + 440);
  v8 = *(v0 + 424);
  v9 = *(v0 + 432);
  v83 = v8;
  v84 = *(v0 + 448);
  v10 = *(v0 + 416);
  v102 = *(v0 + 408);
  v11 = *(v0 + 376);
  v85 = *(v0 + 368);
  v100 = *(v0 + 360);
  v12 = *(v0 + 328);
  v89 = *(v0 + 336);
  v90 = *(v0 + 320);
  v13 = *(v0 + 272);
  v103 = *(v0 + 280);
  v99 = *(v0 + 248);
  v97 = *(v0 + 240);
  v98 = *(v0 + 499);
  v96 = *(v0 + 498);
  v92 = *(v0 + 497);
  v94 = *(v0 + 496);
  v93 = *(v0 + 224);
  v91 = *(v0 + 216);
  v87 = *(v0 + 232);
  v88 = *(v0 + 208);
  v15 = *(v0 + 184);
  v14 = *(v0 + 192);
  v95 = v15;
  v82 = *(v0 + 256);
  v16 = *(v0 + 256);
  (*(v9 + 16))();
  sub_266566430(v14, v8, &unk_28007DE30, &unk_26666EAF0);
  v17 = v10;
  sub_266566430(v15, v10, &unk_28007DE30, &unk_26666EAF0);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = *(v85 + 80);
  v20 = (v86 + v19 + v18) & ~v19;
  v21 = (v11 + v19 + v20) & ~v19;
  v22 = swift_allocObject();
  *(v0 + 456) = v22;
  *(v22 + 16) = v82;
  (*(v9 + 32))(v22 + v18, v84, v16);
  sub_266566150(v83, v22 + v20);
  sub_266566150(v17, v22 + v21);
  (*(v12 + 16))(v89, v87, v90);
  v23 = swift_task_alloc();
  *(v23 + 16) = v92;
  *(v23 + 24) = v88;
  *(v23 + 32) = v91;
  *(v23 + 40) = v101;
  *(v23 + 48) = v104;
  *(v23 + 56) = v93;
  *(v23 + 64) = v94;
  *(v23 + 72) = v97;
  *(v23 + 80) = v96;
  *(v23 + 88) = sub_2665661C0;
  *(v23 + 96) = v22;
  *(v23 + 104) = v98;
  *(v23 + 112) = v99;
  sub_266669BC8();

  sub_266566430(v95, v102, &unk_28007DE30, &unk_26666EAF0);
  if (__swift_getEnumTagSinglePayload(v102, 1, v103) == 1)
  {
    v24 = (v0 + 408);
    goto LABEL_10;
  }

  v25 = *(v0 + 400);
  v26 = *(v0 + 280);
  v27 = *(v0 + 192);
  sub_26656630C(*(v0 + 408), *(v0 + 312));
  sub_266566430(v27, v25, &unk_28007DE30, &unk_26666EAF0);
  if (OUTLINED_FUNCTION_17_1(v25) == 1)
  {
    v24 = (v0 + 400);
    sub_2665663D4(*(v0 + 312));
LABEL_10:
    v28 = *v24;
    v29 = *(v0 + 392);
    v30 = *(v0 + 280);
    v31 = *(v0 + 184);
    sub_266566494(v28, &unk_28007DE30, &unk_26666EAF0);
    OUTLINED_FUNCTION_33_0();
    if (OUTLINED_FUNCTION_17_1(v29) == 1)
    {
      v32 = *(v0 + 384);
      v33 = *(v0 + 280);
      v34 = *(v0 + 192);
      sub_266566494(*(v0 + 392), &unk_28007DE30, &unk_26666EAF0);
      OUTLINED_FUNCTION_33_0();
      if (OUTLINED_FUNCTION_17_1(v32) == 1)
      {
        sub_266566494(*(v0 + 384), &unk_28007DE30, &unk_26666EAF0);
        v35 = *(MEMORY[0x277D5BE58] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_23_1();
        *(v0 + 488) = v36;
        *v36 = v37;
        v36[1] = sub_2665654F8;
        v38 = *(v0 + 360);
        v39 = *(v0 + 264);
        v40 = *(v0 + 272);
        v41 = *(v0 + 256);
        v42 = *(v0 + 200);
        v43 = *(v0 + 176);
        OUTLINED_FUNCTION_20_1();

        return MEMORY[0x2821BB488]();
      }

      else
      {
        v72 = *(v0 + 280);
        sub_26656630C(*(v0 + 384), *(v0 + 288));
        *(v0 + 40) = v72;
        OUTLINED_FUNCTION_2_5();
        *(v0 + 48) = sub_2665664E8(v73, v74);
        __swift_allocate_boxed_opaque_existential_1((v0 + 16));
        v75 = OUTLINED_FUNCTION_29_1();
        sub_266566370(v75, v76);
        v77 = *(MEMORY[0x277D5BE48] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_23_1();
        *(v0 + 480) = v78;
        *v78 = v79;
        OUTLINED_FUNCTION_13_2(v78);
        OUTLINED_FUNCTION_20_1();

        return MEMORY[0x2821BB478]();
      }
    }

    else
    {
      v45 = *(v0 + 280);
      sub_26656630C(*(v0 + 392), *(v0 + 296));
      *(v0 + 80) = v45;
      OUTLINED_FUNCTION_2_5();
      *(v0 + 88) = sub_2665664E8(v46, v47);
      __swift_allocate_boxed_opaque_existential_1((v0 + 56));
      v48 = OUTLINED_FUNCTION_29_1();
      sub_266566370(v48, v49);
      v50 = *(MEMORY[0x277D5BE38] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      *(v0 + 472) = v51;
      *v51 = v52;
      OUTLINED_FUNCTION_13_2(v51);
      OUTLINED_FUNCTION_20_1();

      return MEMORY[0x2821BB468]();
    }
  }

  v54 = *(v0 + 304);
  v55 = *(v0 + 280);
  sub_26656630C(*(v0 + 400), v54);
  *(v0 + 120) = v55;
  OUTLINED_FUNCTION_2_5();
  v58 = sub_2665664E8(v56, v57);
  *(v0 + 128) = v58;
  __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  v59 = OUTLINED_FUNCTION_29_1();
  sub_266566370(v59, v60);
  *(v0 + 160) = v55;
  *(v0 + 168) = v58;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
  sub_266566370(v54, boxed_opaque_existential_1);
  v62 = *(MEMORY[0x277D5BE30] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v0 + 464) = v63;
  *v63 = v64;
  v63[1] = sub_266564F78;
  v65 = *(v0 + 360);
  v66 = *(v0 + 264);
  v67 = *(v0 + 272);
  v68 = *(v0 + 256);
  v69 = *(v0 + 200);
  v70 = *(v0 + 176);
  OUTLINED_FUNCTION_20_1();

  return MEMORY[0x2821BB460]();
}

uint64_t sub_266564F78()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 464);
  v6 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1((v2 + 136));
  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v8 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266565064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_30_1();
  v15 = v14[57];
  v17 = v14[44];
  v16 = v14[45];
  v18 = v14[43];
  v20 = v14[38];
  v19 = v14[39];

  sub_2665663D4(v20);
  sub_2665663D4(v19);
  v21 = *(v17 + 8);
  v22 = OUTLINED_FUNCTION_31_1();
  v23(v22);
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_26();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_266565158()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 472);
  v6 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v8 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26656523C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_30_1();
  v15 = v14[57];
  v17 = v14[44];
  v16 = v14[45];
  v18 = v14[43];
  v19 = v14[37];

  sub_2665663D4(v19);
  v20 = *(v17 + 8);
  v21 = OUTLINED_FUNCTION_31_1();
  v22(v21);
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_26();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_266565328()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 480);
  v6 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v8 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26656540C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_30_1();
  v15 = v14[57];
  v17 = v14[44];
  v16 = v14[45];
  v18 = v14[43];
  v19 = v14[36];

  sub_2665663D4(v19);
  v20 = *(v17 + 8);
  v21 = OUTLINED_FUNCTION_31_1();
  v22(v21);
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_26();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2665654F8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 488);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2665655DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_30_1();
  v15 = v14[57];
  v17 = v14[44];
  v16 = v14[45];
  v18 = v14[43];

  v19 = *(v17 + 8);
  v20 = OUTLINED_FUNCTION_31_1();
  v21(v20);
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_26();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2665656BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v16 - v7;
  sub_266566430(a1, &v16 - v7, &unk_28007DE30, &unk_26666EAF0);
  v9 = type metadata accessor for Snippet();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_266566494(v8, &unk_28007DE30, &unk_26666EAF0);
    return 2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2665663D4(v8);
  if (EnumCaseMultiPayload || __swift_getEnumTagSinglePayload(a2, 1, v9) != 1)
  {
    return 2;
  }

  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v11 = sub_26666C168();
  __swift_project_value_buffer(v11, qword_28156D7E8);
  v12 = sub_26666C148();
  v13 = sub_26666C618();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    MEMORY[0x266789690](v14, -1, -1);
  }

  return 1;
}

uint64_t sub_266565890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t), char *a6, uint64_t a7, char a8, uint64_t a9, char a10, unsigned __int8 (*a11)(uint64_t), uint64_t a12, char a13, uint64_t a14)
{
  v91 = a5;
  v92 = a6;
  v103 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v104 = &v87 - v20;
  v100 = sub_266669788();
  v95 = *(v100 - 8);
  v21 = *(v95 + 64);
  MEMORY[0x28223BE20](v100, v22);
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  v26 = *(*(v25 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v25 - 8, v27);
  v99 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v87 - v31;
  v33 = sub_26666BB08();
  v97 = *(v33 - 8);
  v34 = *(v97 + 64);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v98 = &v87 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v94 = &v87 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v96 = &v87 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v93 = &v87 - v46;
  v48 = MEMORY[0x28223BE20](v45, v47);
  v102 = &v87 - v49;
  MEMORY[0x28223BE20](v48, v50);
  v101 = &v87 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8, v54);
  v56 = &v87 - v55;
  sub_266669C28();
  if (!a4)
  {
  }

  sub_266669C18();
  sub_266566430(a7, v56, &qword_28007D338, &qword_26666EEB0);
  sub_266669C38();
  if (a8 == 2)
  {
    sub_266669C48();
  }

  v58 = v102;
  v57 = v103;
  v59 = v101;
  sub_266669C58();
  sub_266566430(v57, v32, &unk_28007DE20, &unk_26666EAE0);
  if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
  {
    sub_266566494(v32, &unk_28007DE20, &unk_26666EAE0);
  }

  else
  {
    v60 = v97;
    (*(v97 + 32))(v59, v32, v33);
    sub_266669BD8();
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v92 = v24;
    v61 = sub_26666C168();
    __swift_project_value_buffer(v61, qword_28156D7E8);
    v62 = *(v60 + 16);
    v63 = v93;
    v62(v93, v58, v33);
    v91 = v62;
    v62(v96, v59, v33);
    v64 = sub_26666C148();
    v65 = sub_26666C618();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v105[0] = v90;
      *v66 = 136315394;
      sub_2665664E8(&qword_28007D340, MEMORY[0x277D61CC8]);
      v89 = v64;
      v67 = sub_26666CAA8();
      v69 = v68;
      v88 = v65;
      v70 = *(v60 + 8);
      v70(v63, v33);
      v71 = sub_2665BFC90(v67, v69, v105);
      v59 = v101;

      v87 = v66;
      *(v66 + 4) = v71;
      *(v66 + 12) = 2080;
      v72 = v96;
      v73 = sub_26666CAA8();
      v75 = v74;
      v70(v72, v33);
      v76 = sub_2665BFC90(v73, v75, v105);
      v57 = v103;

      v77 = v87;
      *(v87 + 14) = v76;
      v78 = v89;
      _os_log_impl(&dword_266549000, v89, v88, "[ResponseGenerating] overriding default response mode of %s to %s", v77, 0x16u);
      v79 = v90;
      swift_arrayDestroy();
      MEMORY[0x266789690](v79, -1, -1);
      v80 = v77;
      v58 = v102;
      MEMORY[0x266789690](v80, -1, -1);
    }

    else
    {

      v70 = *(v60 + 8);
      v70(v96, v33);
      v70(v63, v33);
    }

    v91(v94, v59, v33);
    sub_266669BE8();
    v70(v58, v33);
    v70(v59, v33);
    v24 = v92;
  }

  v81 = v57;
  v82 = v99;
  sub_266566430(v81, v99, &unk_28007DE20, &unk_26666EAE0);
  if (__swift_getEnumTagSinglePayload(v82, 1, v33) == 1)
  {
    sub_266669BD8();
    if (__swift_getEnumTagSinglePayload(v82, 1, v33) != 1)
    {
      sub_266566494(v82, &unk_28007DE20, &unk_26666EAE0);
    }
  }

  else
  {
    (*(v97 + 32))(v98, v82, v33);
  }

  v83 = sub_266669BE8();
  if (a10 == 2 && a11(v83) == 2)
  {
    sub_266669C88();
  }

  sub_266669C98();
  if (a13 == 2)
  {
    sub_266669C68();
  }

  v84 = v100;
  sub_266669C78();
  v85 = v104;
  sub_266566430(a14, v104, &qword_28007D330, &unk_26666EEA0);
  if (__swift_getEnumTagSinglePayload(v85, 1, v84) == 1)
  {
    sub_266669BF8();
    if (__swift_getEnumTagSinglePayload(v104, 1, v84) != 1)
    {
      sub_266566494(v104, &qword_28007D330, &unk_26666EEA0);
    }
  }

  else
  {
    (*(v95 + 32))(v24, v104, v84);
  }

  return sub_266669C08();
}

uint64_t sub_266566150(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2665661C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_32_0();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_1(v7);
  v9 = v8;
  v11 = v10;
  v12 = *(v9 + 80);
  return sub_2665656BC(v0 + ((v4 + v6 + v12) & ~v12), v0 + ((*(v11 + 64) + v12 + ((v4 + v6 + v12) & ~v12)) & ~v12));
}

uint64_t sub_26656630C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266566370(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2665663D4(uint64_t a1)
{
  v2 = type metadata accessor for Snippet();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266566430(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_5(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_266566494(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_5(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2665664E8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_29_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_5()
{
  v2 = v0[56];
  v3 = v0[52];
  v4 = v0[53];
  v6 = v0[50];
  v5 = v0[51];
  v8 = v0[48];
  v7 = v0[49];
  v9 = v0[45];
  v10 = v0[42];
  v11 = v0[38];
  v13 = v0[37];
  v14 = v0[36];
}

uint64_t OUTLINED_FUNCTION_8_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_11_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_12_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_13_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[45];
  v4 = v2[33];
  v5 = v2[34];
  v6 = v2[32];
  v7 = v2[25];
  return v2[22];
}

uint64_t OUTLINED_FUNCTION_17_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_18_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_24_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_1(uint64_t a1)
{
  v2 = *(a1 + 32);

  return sub_266668998();
}

uint64_t OUTLINED_FUNCTION_26_1(uint64_t a1)
{
  v2 = *(a1 + 32);

  return sub_266668998();
}

uint64_t OUTLINED_FUNCTION_27_1()
{
  v3 = v1 + *(v0 + 48);

  return type metadata accessor for Snippet.Event.RecurrenceRule(0);
}

uint64_t OUTLINED_FUNCTION_28_1()
{
  v3 = v0 + *(v1 + 48);

  return type metadata accessor for Snippet.Event.RecurrenceRule(0);
}

uint64_t OUTLINED_FUNCTION_33_0()
{

  return sub_266566430(v1, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_2665667CC()
{
  sub_26656704C(v0);
  if (v1)
  {

    return 0;
  }

  v2 = [v0 dateTimeRange];
  if (v2)
  {
    goto LABEL_4;
  }

  if (sub_2665670B0(v0))
  {
    v4 = sub_2665C485C();

    if (v4)
    {
      return 0;
    }
  }

  v2 = [v0 location];
  if (v2)
  {
LABEL_4:

    return 0;
  }

  return 1;
}

id sub_266566874(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCode:a1 userActivity:0];
  sub_266567154(a2, v3);
  return v3;
}

id sub_2665668D4(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, unint64_t a5, char a6, void *a7, uint64_t a8, char a9)
{
  v10 = v9;
  v18 = sub_26656704C(v9);
  v20 = v19;
  if (a2)
  {
    if (a2 == 1)
    {
      v37 = 0;
      v21 = 0;
    }

    else
    {
      v37 = a1;
      v21 = a2;
    }

    v20 = v21;
  }

  else
  {
    v37 = v18;
  }

  sub_266567120(a1, a2);
  v22 = [v10 dateTimeRange];
  v23 = v22;
  if (a3 == 1)
  {
    v25 = 0;
  }

  else if (a3)
  {
    v25 = a3;
  }

  else
  {
    v24 = v22;
    v25 = v23;
  }

  sub_26654C590(a3);

  v26 = sub_2665670B0(v10);
  v27 = sub_266566E24(v26, a4, a5, a6);

  v28 = [v10 location];
  v29 = v28;
  if (a7 == 1)
  {
    v31 = 0;
  }

  else if (a7)
  {
    v31 = a7;
  }

  else
  {
    v30 = v28;
    v31 = v29;
  }

  sub_26654C590(a7);

  v32 = [v10 requestedEventAttribute];
  if (a8)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32;
  }

  if (a9)
  {
    v34 = v33;
  }

  else
  {
    v34 = a8;
  }

  v35 = objc_allocWithZone(MEMORY[0x277CD3C10]);
  return sub_26660B190(v37, v20, v25, v27, v31, v34);
}

id sub_266566AA0(id a1, char a2)
{
  if ((a2 & 1) != 0 && (v4 = [v2 dateTimeRange]) != 0)
  {
    v5 = v4;
    sub_266552C44(0, &qword_28007D168, 0x277CD3B68);
    v6 = [a1 dateTimeRange];
    sub_2665D23CC();
    v8 = v7;
  }

  else
  {
    v8 = [a1 dateTimeRange];
  }

  v9 = v8;
  v10 = sub_26656704C(a1);
  v12 = v11;
  v13 = sub_2665670B0(a1);
  v14 = sub_266566FE4(v13);
  v16 = v15;
  v18 = v17;

  v19 = [a1 location];
  v20 = [a1 requestedEventAttribute];
  if (v20)
  {
    v21 = [a1 requestedEventAttribute];
  }

  else
  {
    v21 = 0;
  }

  if (v12)
  {
    v22 = v10;
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_2665668D4(v22, v12, v9, v14, v16, v18, v19, v21, v20 == 0);
  sub_2665671D8(v9);

  sub_2665671E8(v14, v16, v18);
  sub_2665671D8(v9);

  return v23;
}

uint64_t sub_266566C70()
{
  result = [v0 dateTimeRange];
  if (result)
  {

    sub_26656704C(v0);
    if (v2)
    {
    }

    else
    {
      v3 = sub_2665670B0(v0);
      if (!v3 || (v4 = sub_2665C485C(v3), , !v4))
      {
        v5 = [v0 location];
        if (!v5)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

id sub_266566D1C(char a1, unint64_t a2, char a3)
{
  switch(a1)
  {
    case 2:
      OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_1_6();
      v9 = 1;
      goto LABEL_12;
    case 3:
      if (a3)
      {
        a2 = 1;
      }

      if (a3)
      {
        v12 = 3;
      }

      else
      {
        v12 = 0;
      }

      v13 = sub_2665668D4(0, 0, 0, a2, 0, v12, 0, 0, 1);
      sub_2665671E8(a2, 0, v12);
      return v13;
    case 4:
      OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_1_6();
      v9 = 0;
      v10 = 1;
      return sub_2665668D4(v3, v4, v5, v6, v7, v8, v9, v10, v15);
    default:
      OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_1_6();
      v9 = 0;
LABEL_12:
      v10 = 0;
      return sub_2665668D4(v3, v4, v5, v6, v7, v8, v9, v10, v15);
  }
}

unint64_t sub_266566E24(unint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v6 = a1;
  switch(a4)
  {
    case 1:

      return a2;
    case 2:
      if (!a1 || !sub_2665C485C(a1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_26666E050;
        *(v6 + 32) = a2;
        v15 = a2;
        return v6;
      }

      result = sub_2665C485C(v6);
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }

      v13 = result;

      if (v13 <= a3)
      {
        return v6;
      }

      sub_266567134(a2, a3, 2);
      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!result || v6 >> 62)
      {
        result = sub_2665A1DCC(v6);
        v6 = result;
      }

      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a3 + 0x20);
        *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a3 + 0x20) = a2;

        return v6;
      }

      goto LABEL_28;
    case 3:
      if (!(a2 | a3))
      {
        goto LABEL_21;
      }

      return 0;
    default:
      if (!a1)
      {
        goto LABEL_21;
      }

      result = sub_2665C485C(a1);
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_26:
        __break(1u);
      }

      else
      {
        if (result <= a2)
        {
LABEL_21:

          return v6;
        }

        result = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (!result || v6 >> 62)
        {
          result = sub_2665A1DCC(v6);
          v6 = result;
        }

        v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v8 > a2)
        {
          v9 = v8 - 1;
          v10 = v8 - 1 - a2;
          v11 = ((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 32);
          v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20);
          sub_2665C7428(v11 + 8, v10, v11);
          *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;

          return v6;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
      return result;
  }
}

unint64_t sub_266566FE4(unint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1 >> 62)
    {
      if (sub_26666C768())
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:

      return v1;
    }

    return 0;
  }

  return v1;
}

uint64_t sub_26656704C(void *a1)
{
  v1 = [a1 searchQuery];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26666C308();

  return v3;
}

uint64_t sub_2665670B0(void *a1)
{
  v1 = [a1 participants];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
  v3 = sub_26666C498();

  return v3;
}

uint64_t sub_266567120(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

id sub_266567134(id result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
    return result;
  }

  if (a3 == 1)
  {
  }

  return result;
}

void sub_266567154(uint64_t a1, void *a2)
{
  sub_266552C44(0, &qword_28156C110, 0x277CD3AD8);
  v3 = sub_26666C488();

  [a2 setEvents_];
}

void sub_2665671D8(id a1)
{
  if (a1 >= 2)
  {
  }
}

void sub_2665671E8(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 == 1)
  {
  }
}

id sub_266567228(void *a1)
{
  v2 = sub_266668BE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D160, &qword_26666E0B0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v33 - v15;
  v17 = [a1 nameComponents];
  if (v17)
  {
    v18 = v17;
    sub_266668BB8();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v19, 1, v2);
  sub_266567590(v13, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v2))
  {
    sub_266567600(v16);
    v20 = 0;
  }

  else
  {
    (*(v3 + 16))(v7, v16, v2);
    sub_266567600(v16);
    sub_266668BD8();
    v20 = v21;
    (*(v3 + 8))(v7, v2);
  }

  v22 = [a1 personHandle];
  if (v22)
  {
    v23 = v22;
    sub_2665A9C74(v22);
    if (v24)
    {
      v25 = [v23 type];
      if (v25 == 1)
      {
        if (v20)
        {
          v26 = sub_26666C2F8();
        }

        else
        {
          v26 = 0;
        }

        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v29 = sub_26666C2F8();

        v30 = [ObjCClassFromMetadata attendeeWithName:v26 emailAddress:v29];
        goto LABEL_22;
      }

      if (v25 == 2)
      {
        if (v20)
        {
          v26 = sub_26666C2F8();
        }

        else
        {
          v26 = 0;
        }

        v28 = swift_getObjCClassFromMetadata();
        v29 = sub_26666C2F8();

        v30 = [v28 attendeeWithName:v26 phoneNumber:v29];
LABEL_22:
        v27 = v30;

        a1 = v23;
        goto LABEL_23;
      }
    }

    else
    {
    }
  }

  v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_23:

  return v27;
}

uint64_t sub_266567590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D160, &qword_26666E0B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266567600(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D160, &qword_26666E0B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266567668(uint64_t a1, void *a2, uint64_t a3)
{
  v44 = a2;
  v45 = a1;
  v4 = sub_266669E58();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v5, v10);
  v42 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v41 - v14;
  v16 = qword_28156C150;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v17 = sub_26666C168();
  v18 = __swift_project_value_buffer(v17, qword_28156D7E8);
  v19 = *(v7 + 16);
  v19(v15, v45, v4);
  v43 = v18;
  v20 = sub_26666C148();
  v21 = sub_26666C618();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_21();
    v41 = a3;
    v23 = v22;
    v24 = OUTLINED_FUNCTION_13_0();
    v46[0] = v24;
    *v23 = 136315138;
    v19(v42, v15, v4);
    v25 = sub_26666C318();
    v27 = v26;
    (*(v7 + 8))(v15, v4);
    v28 = sub_2665BFC90(v25, v27, v46);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_266549000, v20, v21, "[DisambiguationResponseParser] Parsing parse: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_4_1();
    a3 = v41;
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    (*(v7 + 8))(v15, v4);
  }

  if (sub_2665DA448(v45))
  {

    return 0;
  }

  else
  {
    v30 = *__swift_project_boxed_opaque_existential_1(v44, v44[3]);

    v29 = sub_2665687C4(v45, v30, a3);
    v32 = v31;
    sub_2665695E4(v29, v31);
    v33 = sub_26666C148();
    v34 = sub_26666C618();
    sub_2665695F8(v29, v32);
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_21();
      v36 = OUTLINED_FUNCTION_13_0();
      v46[1] = v32;
      v47 = v36;
      *v35 = 136315138;
      v46[0] = v29;
      sub_2665695E4(v29, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D348, &unk_26666E870);
      v37 = sub_26666C318();
      v39 = sub_2665BFC90(v37, v38, &v47);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_266549000, v33, v34, "[DisambiguationResponseParser] returning: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }
  }

  return v29;
}

uint64_t sub_266567A00(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v45 = a2;
  v5 = sub_266669E58();
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v6, v11);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v43 - v16;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v18 = sub_26666C168();
  v19 = __swift_project_value_buffer(v18, qword_28156D7E8);
  v20 = *(v8 + 16);
  v46 = a1;
  v20(v17, a1, v5);
  v43[1] = v19;
  v21 = sub_26666C148();
  v22 = sub_26666C618();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_21();
    v43[0] = a3;
    v24 = v23;
    v25 = OUTLINED_FUNCTION_13_0();
    v47[0] = v25;
    *v24 = 136315138;
    v20(v14, v17, v5);
    v26 = sub_26666C318();
    v28 = v27;
    (*(v8 + 8))(v17, v5);
    v29 = sub_2665BFC90(v26, v28, v47);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_266549000, v21, v22, "[DisambiguationResponseParser] Parsing parse: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_4_1();
    a3 = v43[0];
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    (*(v8 + 8))(v17, v5);
  }

  v30 = v46;
  if (sub_2665DA448(v46))
  {
    return 0;
  }

  v32 = __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  v31 = sub_266568EDC(v30, v45, a3, *v32);
  v34 = v33;
  sub_2665695E4(v31, v33);
  v35 = sub_26666C148();
  v36 = sub_26666C618();
  sub_2665695F8(v31, v34);
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_21();
    v38 = OUTLINED_FUNCTION_13_0();
    v47[1] = v34;
    v48 = v38;
    *v37 = 136315138;
    v47[0] = v31;
    sub_2665695E4(v31, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D348, &unk_26666E870);
    v39 = sub_26666C318();
    v41 = sub_2665BFC90(v39, v40, &v48);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_266549000, v35, v36, "[DisambiguationResponseParser] returning: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  return v31;
}

uint64_t sub_266567D7C(uint64_t a1)
{
  v2 = type metadata accessor for CalendarNLv3Intent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26666B208();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  if (qword_28007CE78 != -1)
  {
    swift_once();
  }

  sub_26656960C();
  sub_26666A528();
  sub_266563A38(v6);
  if (v9[1])
  {
    return v9[0];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266567EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26666C228();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v42 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED70, &qword_266671CC0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v43 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v41 - v16;
  v47 = &type metadata for CalendarReferenceResolver;
  v48 = &off_28780BAC8;
  v46[0] = a2;

  v18 = sub_26656C1C0();
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v19 = sub_26666C168();
  __swift_project_value_buffer(v19, qword_28156D7E8);

  v20 = sub_26666C148();
  v21 = sub_26666C618();

  if (os_log_type_enabled(v20, v21))
  {
    v41[0] = v6;
    v41[1] = a3;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v45[0] = v23;
    *v22 = 136315138;
    v24 = v5;
    if (v18)
    {
      v25 = sub_26666B218();
      v27 = v26;
    }

    else
    {
      v27 = 0xE500000000000000;
      v25 = 0x3E6C696E3CLL;
    }

    v29 = sub_2665BFC90(v25, v27, v45);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_266549000, v20, v21, "[DisambiguationResponseParser] Selected UsoEntity: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x266789690](v23, -1, -1);
    MEMORY[0x266789690](v22, -1, -1);

    v28 = v47;
    v5 = v24;
    v6 = v41[0];
  }

  else
  {

    v28 = &type metadata for CalendarReferenceResolver;
  }

  v30 = *__swift_project_boxed_opaque_existential_1(v46, v28);
  v45[4] = &off_28780BAC8;
  v45[3] = &type metadata for CalendarReferenceResolver;
  v45[0] = v30;
  sub_26655358C(v45, v44);

  __swift_destroy_boxed_opaque_existential_1(v45);
  if (!v18)
  {
    __swift_destroy_boxed_opaque_existential_1(v44);
    goto LABEL_14;
  }

  v31 = *__swift_project_boxed_opaque_existential_1(v44, v44[3]);

  sub_26663D2D0();
  v33 = v32;

  __swift_destroy_boxed_opaque_existential_1(v44);
  if (!v33)
  {
LABEL_14:
    v35 = sub_26666C148();
    v36 = sub_26666C618();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_266549000, v35, v36, "[DisambiguationResponseParser] Did not find any RREntities for selected entity", v37, 2u);
      MEMORY[0x266789690](v37, -1, -1);
    }

    goto LABEL_17;
  }

  sub_2665EC548(v33, v17);

  v34 = v43;
  sub_266569664(v17, v43);
  if (__swift_getEnumTagSinglePayload(v34, 1, v5) != 1)
  {
    v40 = v42;
    (*(v6 + 32))(v42, v34, v5);
    v38 = sub_26666C208();
    (*(v6 + 8))(v40, v5);
    sub_2665696D4(v17);

    goto LABEL_18;
  }

  sub_2665696D4(v17);
LABEL_17:

  v38 = 0;
LABEL_18:
  __swift_destroy_boxed_opaque_existential_1(v46);

  return v38;
}

uint64_t sub_266568338(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_26666C228();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED70, &qword_266671CC0);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v45 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v43 - v19;
  v49 = &type metadata for CalendarReferenceResolver;
  v50 = &off_28780BAC8;
  v48[0] = a4;

  v21 = a2(a1);
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v22 = sub_26666C168();
  __swift_project_value_buffer(v22, qword_28156D7E8);

  v23 = sub_26666C148();
  v24 = sub_26666C618();

  if (os_log_type_enabled(v23, v24))
  {
    v43 = v12;
    v44 = v8;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v47[0] = v26;
    *v25 = 136315138;
    v27 = v7;
    if (v21)
    {
      v28 = sub_26666B218();
      v30 = v29;
    }

    else
    {
      v30 = 0xE500000000000000;
      v28 = 0x3E6C696E3CLL;
    }

    v32 = sub_2665BFC90(v28, v30, v47);

    *(v25 + 4) = v32;
    _os_log_impl(&dword_266549000, v23, v24, "[DisambiguationResponseParser] Selected UsoEntity: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x266789690](v26, -1, -1);
    MEMORY[0x266789690](v25, -1, -1);

    v31 = v49;
    v7 = v27;
    v12 = v43;
    v8 = v44;
  }

  else
  {

    v31 = &type metadata for CalendarReferenceResolver;
  }

  v33 = *__swift_project_boxed_opaque_existential_1(v48, v31);
  v47[4] = &off_28780BAC8;
  v47[3] = &type metadata for CalendarReferenceResolver;
  v47[0] = v33;
  sub_26655358C(v47, v46);

  __swift_destroy_boxed_opaque_existential_1(v47);
  if (!v21)
  {
    __swift_destroy_boxed_opaque_existential_1(v46);
    goto LABEL_14;
  }

  v34 = *__swift_project_boxed_opaque_existential_1(v46, v46[3]);

  sub_26663D2D0();
  v36 = v35;

  __swift_destroy_boxed_opaque_existential_1(v46);
  if (!v36)
  {
LABEL_14:
    v38 = sub_26666C148();
    v39 = sub_26666C618();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_266549000, v38, v39, "[DisambiguationResponseParser] Did not find any RREntities for selected entity", v40, 2u);
      MEMORY[0x266789690](v40, -1, -1);
    }

    goto LABEL_17;
  }

  sub_2665EC548(v36, v20);

  v37 = v45;
  sub_266569664(v20, v45);
  if (__swift_getEnumTagSinglePayload(v37, 1, v7) != 1)
  {
    (*(v8 + 32))(v12, v37, v7);
    v41 = sub_26666C208();
    (*(v8 + 8))(v12, v7);
    sub_2665696D4(v20);

    goto LABEL_18;
  }

  sub_2665696D4(v20);
LABEL_17:

  v41 = 0;
LABEL_18:
  __swift_destroy_boxed_opaque_existential_1(v48);
  return v41;
}

uint64_t sub_2665687C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = a1;
  v73 = a3;
  v4 = sub_266669E88();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v64 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_266669E48();
  v69 = *(v8 - 8);
  v70 = v8;
  v9 = *(v69 + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v67 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v68 = &v63 - v14;
  v71 = sub_26666B208();
  v15 = *(v71 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v71, v17);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_266669E58();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v63 - v29;
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v63 - v32;
  v77 = &type metadata for CalendarReferenceResolver;
  v78 = &off_28780BAC8;
  v76[0] = a2;
  v34 = *(v21 + 16);
  v34(&v63 - v32, v72, v20);
  v35 = (*(v21 + 88))(v33, v20);
  if (v35 == *MEMORY[0x277D5C128])
  {
    v34(v30, v33, v20);
    (*(v21 + 96))(v30, v20);
    v36 = v30;
    v37 = v71;
    (*(v15 + 32))(v19, v36, v71);

    v38 = sub_266567D7C(v19);
    (*(v15 + 8))(v19, v37);
LABEL_15:
    v48 = v33;
    goto LABEL_22;
  }

  v39 = v73;
  if (v35 == *MEMORY[0x277D5C150])
  {
    v34(v26, v33, v20);
    (*(v21 + 96))(v26, v20);
    v41 = v68;
    v40 = v69;
    v42 = v70;
    (*(v69 + 32))(v68, v26, v70);

    v43 = sub_266669E28();
    v45 = v44;
    v74 = 0xD000000000000028;
    v75 = 0x800000026667D640;
    MEMORY[0x266788710](46, 0xE100000000000000);
    MEMORY[0x266788710](0x6156676E69727473, 0xEB0000000065756CLL);
    if (v43 == v74 && v45 == v75)
    {
    }

    else
    {
      v47 = sub_26666CAC8();

      if ((v47 & 1) == 0)
      {
        (*(v40 + 8))(v41, v42);
        goto LABEL_17;
      }
    }

    (*(v40 + 16))(v67, v41, v42);
    sub_266562DD4();
    v38 = v54;
    v56 = v55;
    (*(v40 + 8))(v41, v42);
    if (!v56)
    {
      v38 = 0;
    }

    goto LABEL_15;
  }

  if (v35 == *MEMORY[0x277D5C160])
  {
    v48 = v33;
    v34(v30, v33, v20);
    (*(v21 + 96))(v30, v20);
    v49 = v64;
    v50 = v65;
    v51 = v30;
    v52 = v66;
    (*(v65 + 32))(v64, v51, v66);
    v53 = *__swift_project_boxed_opaque_existential_1(v76, v77);
    swift_retain_n();

    v38 = sub_266567EA0(v49, v53, v39);
    (*(v50 + 8))(v49, v52);
    goto LABEL_22;
  }

LABEL_17:
  v48 = v33;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v57 = sub_26666C168();
  __swift_project_value_buffer(v57, qword_28156D7E8);
  v58 = sub_26666C148();
  v59 = sub_26666C618();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_266549000, v58, v59, "[DisambiguationResponseParser] parse failed. Unsupported parse type", v60, 2u);
    v61 = v60;
    v48 = v33;
    MEMORY[0x266789690](v61, -1, -1);
  }

  v38 = 0;
LABEL_22:
  (*(v21 + 8))(v48, v20);
  __swift_destroy_boxed_opaque_existential_1(v76);

  return v38;
}

uint64_t sub_266568EDC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v64 = a3;
  v62 = a2;
  v71 = a1;
  v65 = sub_266669E88();
  v63 = *(v65 - 8);
  v5 = *(v63 + 64);
  MEMORY[0x28223BE20](v65, v6);
  v61 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_266669E48();
  v67 = *(v8 - 8);
  v68 = v8;
  v9 = *(v67 + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v66 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v70 = &v61 - v14;
  v69 = sub_26666B208();
  v15 = *(v69 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v69, v17);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_266669E58();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v61 - v29;
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v61 - v32;
  v75 = &type metadata for CalendarReferenceResolver;
  v76 = &off_28780BAC8;
  v74[0] = a4;
  v34 = *(v21 + 16);
  v34(&v61 - v32, v71, v20);
  v35 = (*(v21 + 88))(v33, v20);
  if (v35 == *MEMORY[0x277D5C128])
  {
    v34(v30, v33, v20);
    (*(v21 + 96))(v30, v20);
    v36 = v69;
    (*(v15 + 32))(v19, v30, v69);

    v37 = sub_266567D7C(v19);
    (*(v15 + 8))(v19, v36);
    v38 = v33;
    v39 = v21;
    goto LABEL_22;
  }

  v39 = v21;
  v40 = v20;
  if (v35 != *MEMORY[0x277D5C150])
  {
    if (v35 == *MEMORY[0x277D5C160])
    {
      v38 = v33;
      v34(v30, v33, v20);
      (*(v39 + 96))(v30, v20);
      v48 = v63;
      v49 = v61;
      v50 = v65;
      (*(v63 + 32))(v61, v30, v65);
      v51 = *__swift_project_boxed_opaque_existential_1(v74, v75);

      v37 = sub_266568338(v49, v62, v64, v51);
      (*(v48 + 8))(v49, v50);
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v34(v26, v33, v20);
  (*(v39 + 96))(v26, v20);
  v42 = v67;
  v41 = v68;
  (*(v67 + 32))(v70, v26, v68);

  v43 = sub_266669E28();
  v45 = v44;
  v72 = 0xD000000000000028;
  v73 = 0x800000026667D640;
  MEMORY[0x266788710](46, 0xE100000000000000);
  MEMORY[0x266788710](0x6156676E69727473, 0xEB0000000065756CLL);
  if (v43 == v72 && v45 == v73)
  {
  }

  else
  {
    v47 = sub_26666CAC8();

    if ((v47 & 1) == 0)
    {
      (*(v42 + 8))(v70, v41);
LABEL_17:
      v38 = v33;
      v20 = v40;
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v56 = sub_26666C168();
      __swift_project_value_buffer(v56, qword_28156D7E8);
      v57 = sub_26666C148();
      v58 = sub_26666C618();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_266549000, v57, v58, "[DisambiguationResponseParser] parse failed. Unsupported parse type", v59, 2u);
        MEMORY[0x266789690](v59, -1, -1);
      }

      v37 = 0;
      goto LABEL_22;
    }
  }

  v52 = v70;
  (*(v42 + 16))(v66, v70, v41);
  sub_266562DD4();
  v37 = v53;
  v55 = v54;
  (*(v42 + 8))(v52, v41);
  if (!v55)
  {
    v37 = 0;
  }

  v38 = v33;
  v20 = v40;
LABEL_22:
  (*(v39 + 8))(v38, v20);
  __swift_destroy_boxed_opaque_existential_1(v74);
  return v37;
}

uint64_t sub_2665695E4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2665695F8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_26656960C()
{
  result = qword_28007D2D8;
  if (!qword_28007D2D8)
  {
    type metadata accessor for CalendarNLv3Intent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D2D8);
  }

  return result;
}

uint64_t sub_266569664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED70, &qword_266671CC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2665696D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED70, &qword_266671CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26656973C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26656977C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2665697E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266569830(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_266569884(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_26656989C(void *result, int a2)
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

uint64_t sub_2665698CC(char a1)
{
  v1 = sub_26666BE18();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  OUTLINED_FUNCTION_1_0();
  sub_26666C068();
  v38[3] = &type metadata for CalendarReferenceResolver;
  v38[4] = &off_28780BAC8;
  v38[0] = sub_26666C058();
  if (qword_28156CD28 != -1)
  {
    swift_once();
  }

  v6 = qword_28156D828;
  sub_266669E68();
  type metadata accessor for CommonCATsSimple();
  sub_26666BE08();
  v32 = sub_26666BDD8();
  v7 = sub_2666699F8();
  OUTLINED_FUNCTION_7(v7);
  v8 = sub_2666699E8();
  v35[3] = &type metadata for DisambiguationResponseParser;
  v35[4] = &off_287806688;
  v35[0] = swift_allocObject();
  sub_26656CCE8(v38, v35[0] + 16);
  v9 = type metadata accessor for EventProvider();
  v34[3] = v9;
  v34[4] = &off_287806290;
  v34[0] = v6;
  type metadata accessor for EventDisambiguationStrategy();
  v10 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v35, &type metadata for DisambiguationResponseParser);
  OUTLINED_FUNCTION_17_2();
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_1_0();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15);
  __swift_mutable_project_boxed_opaque_existential_1(v34, v9);
  OUTLINED_FUNCTION_17_2();
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21, v22);
  OUTLINED_FUNCTION_1_0();
  v25 = (v24 - v23);
  (*(v26 + 16))(v24 - v23);
  v27 = *v25;
  *(v10 + 40) = &type metadata for DisambiguationResponseParser;
  *(v10 + 48) = &off_287806688;
  v28 = swift_allocObject();
  *(v10 + 16) = v28;
  v29 = *(v17 + 16);
  *(v28 + 16) = *v17;
  *(v28 + 32) = v29;
  *(v28 + 48) = *(v17 + 32);
  *(v10 + 80) = v9;
  *(v10 + 88) = &off_287806290;
  *(v10 + 56) = v27;
  *(v10 + 192) = 0;
  *(v10 + 200) = 0;
  sub_26654B7D8(&v37, v10 + 96);
  *(v10 + 136) = a1 & 1;
  *(v10 + 144) = v32;
  *(v10 + 152) = v8;
  *(v10 + 160) = v36;
  v30 = MEMORY[0x277D5BD58];
  *(v10 + 176) = v7;
  *(v10 + 184) = v30;
  *(v10 + 192) = 0;
  *(v10 + 200) = 0;

  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_26656CD44(v38);
  return v10;
}

uint64_t sub_266569C40()
{
  v1 = v0;
  v2 = sub_266669E58();
  OUTLINED_FUNCTION_17_2();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_266669DF8();

  v13 = sub_266567668(v11, v12, v0);
  v15 = v14;
  (*(v4 + 8))(v11, v2);
  if (v15)
  {
    if (v15 == 1)
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v16 = sub_26666C168();
      __swift_project_value_buffer(v16, qword_28156D7E8);
      v17 = sub_26666C148();
      v18 = sub_26666C618();
      if (os_log_type_enabled(v17, v18))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_29_2(&dword_266549000, v19, v20, "[EventDisambiguationStrategy] Disambiguation parser returned nil, ignoring.");
        OUTLINED_FUNCTION_4_1();
      }

      return sub_2666697E8();
    }

    else
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v27 = sub_26666C168();
      __swift_project_value_buffer(v27, qword_28156D7E8);

      v28 = sub_26666C148();
      v29 = sub_26666C618();
      sub_2665695F8(v13, v15);
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v33 = v31;
        *v30 = 136446210;
        *(v30 + 4) = sub_2665BFC90(v13, v15, &v33);
        _os_log_impl(&dword_266549000, v28, v29, "[EventDisambiguationStrategy] Disambiguation parser returned select id: %{public}s, handling.", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      v32 = v1[25];
      v1[24] = v13;
      v1[25] = v15;

      return sub_2666697D8();
    }
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v22 = sub_26666C168();
    __swift_project_value_buffer(v22, qword_28156D7E8);
    v23 = sub_26666C148();
    v24 = sub_26666C618();
    if (os_log_type_enabled(v23, v24))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_29_2(&dword_266549000, v25, v26, "[EventDisambiguationStrategy] Disambiguation parser returned cancel, cancelling.");
      OUTLINED_FUNCTION_4_1();
    }

    return sub_2666697C8();
  }
}

uint64_t sub_266569F78()
{
  OUTLINED_FUNCTION_14();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D358, &unk_26666EB00);
  v1[6] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[7] = v5;
  v7 = *(v6 + 64);
  v1[8] = OUTLINED_FUNCTION_19();
  v8 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26656A02C()
{
  v45 = v0;
  v3 = v0[5];
  v4 = *(v3 + 200);
  if (v4)
  {
    v5 = v0[6];
    v6 = v0[4];
    v0 = *(v3 + 192);

    v7 = sub_266669B88();
    sub_2665C485C(v7);
    OUTLINED_FUNCTION_25_2();
    while (1)
    {
      if (v1 == v2)
      {
        v17 = v0;

        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1();
        }

        v0 = v43;
        v19 = v43[7];
        v18 = v43[8];
        v20 = v43[6];
        v21 = v43[4];
        v22 = sub_26666C168();
        __swift_project_value_buffer(v22, qword_28156D7E8);
        (*(v19 + 16))(v18, v21, v20);

        v23 = sub_26666C148();
        v24 = sub_26666C608();

        v25 = os_log_type_enabled(v23, v24);
        v27 = v43[7];
        v26 = v43[8];
        v28 = v43[6];
        if (v25)
        {
          v29 = swift_slowAlloc();
          v44[0] = swift_slowAlloc();
          *v29 = 136446466;
          v30 = sub_2665BFC90(v17, v4, v44);

          *(v29 + 4) = v30;
          *(v29 + 12) = 2080;
          v31 = sub_266669B88();
          v32 = sub_26656CC50();
          v33 = MEMORY[0x2667887F0](v31, v32);
          v35 = v34;

          (*(v27 + 8))(v26, v28);
          v36 = sub_2665BFC90(v33, v35, v44);
          v0 = v43;

          *(v29 + 14) = v36;
          _os_log_impl(&dword_266549000, v23, v24, "[EventDisambiguationStrategy] Could not find id: %{public}s in %s", v29, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_4_1();
          OUTLINED_FUNCTION_4_1();
        }

        else
        {

          (*(v27 + 8))(v26, v28);
        }

        goto LABEL_26;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x266788B60](v2, v7);
      }

      else
      {
        if (v2 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v8 = *(v7 + 8 * v2 + 32);
      }

      v9 = v8;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (INCalendarEvent.id.getter() == v0 && v4 == v10)
      {

LABEL_24:

        v37 = v43[8];
        v38 = v43[3];

        v43[2] = v9;
        sub_26656CC50();
        sub_266669B18();

        OUTLINED_FUNCTION_5_3();
        goto LABEL_27;
      }

      v12 = sub_26666CAC8();

      if (v12)
      {
        goto LABEL_24;
      }

      ++v2;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (qword_28156C150 != -1)
  {
LABEL_32:
    OUTLINED_FUNCTION_1_1();
  }

  v13 = sub_26666C168();
  __swift_project_value_buffer(v13, qword_28156D7E8);
  v14 = sub_26666C148();
  v15 = sub_26666C608();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_266549000, v14, v15, "[EventDisambiguationStrategy] Not in correct state to parse disambiguation response", v16, 2u);
    OUTLINED_FUNCTION_4_1();
  }

LABEL_26:
  v40 = v0[8];
  sub_26656CBFC();
  swift_allocError();
  *v41 = 0u;
  *(v41 + 16) = 0u;
  *(v41 + 32) = 2;
  swift_willThrow();

  OUTLINED_FUNCTION_24_1();
LABEL_27:

  return v39();
}

void sub_26656A4A4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  sub_2665C485C(a3);
  OUTLINED_FUNCTION_25_2();
  while (v4 != v5)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x266788B60](v5, a3);
    }

    else
    {
      if (v5 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a3 + 8 * v5 + 32);
    }

    v9 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v8;
    v10 = a1(&v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      return;
    }

    ++v5;
  }
}

uint64_t sub_26656A58C()
{
  OUTLINED_FUNCTION_14();
  v1[33] = v2;
  v1[34] = v0;
  v1[32] = v3;
  v4 = type metadata accessor for Snippet();
  v1[35] = v4;
  OUTLINED_FUNCTION_3_3(v4);
  v6 = *(v5 + 64);
  v1[36] = OUTLINED_FUNCTION_32_1();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v7 = sub_266669CA8();
  v1[40] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[41] = v8;
  v10 = *(v9 + 64);
  v1[42] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v11);
  v13 = *(v12 + 64);
  v1[43] = OUTLINED_FUNCTION_19();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v14);
  v16 = *(v15 + 64);
  v1[44] = OUTLINED_FUNCTION_19();
  v17 = sub_266669708();
  v1[45] = v17;
  OUTLINED_FUNCTION_3_1(v17);
  v1[46] = v18;
  v20 = *(v19 + 64);
  v1[47] = OUTLINED_FUNCTION_32_1();
  v1[48] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v21);
  v23 = *(v22 + 64);
  v1[49] = OUTLINED_FUNCTION_19();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v24);
  v26 = *(v25 + 64);
  v1[50] = OUTLINED_FUNCTION_32_1();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v27);
  v29 = *(v28 + 64);
  v1[56] = OUTLINED_FUNCTION_19();
  v30 = type metadata accessor for Snippet.Event(0);
  OUTLINED_FUNCTION_3_1(v30);
  v1[57] = v31;
  v33 = *(v32 + 64);
  v1[58] = OUTLINED_FUNCTION_32_1();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v34 = sub_2666699C8();
  v1[61] = v34;
  OUTLINED_FUNCTION_3_1(v34);
  v1[62] = v35;
  v37 = *(v36 + 64);
  v1[63] = OUTLINED_FUNCTION_19();
  v38 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v38, v39, v40);
}

id sub_26656A898()
{
  v2 = v0[63];
  v3 = v0[33];
  v4 = v0[34];
  v5 = *(v4 + 200);
  *(v4 + 192) = 0;
  *(v4 + 200) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D358, &unk_26666EB00);
  v6 = sub_266669B88();

  sub_266661914(v6, v4, v2);
  v7 = v0[33];

  v8 = sub_266669B88();
  v9 = sub_2665C485C(v8);
  if (v9)
  {
    v10 = v9;
    v59 = MEMORY[0x277D84F90];
    result = sub_26666C898();
    if (v10 < 0)
    {
LABEL_25:
      __break(1u);
      return result;
    }

    v12 = v0[34];
    type metadata accessor for CalendarEventConcept(0);
    OUTLINED_FUNCTION_25_2();
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x266788B60](v1, v8);
      }

      else
      {
        v13 = *(v8 + 8 * v1 + 32);
      }

      v14 = v13;
      v1 = (v1 + 1);
      sub_26655358C(v12 + 96, (v0 + 2));
      sub_2665CA7F4(v14, v0 + 2);
      sub_26666C868();
      v15 = *(v59 + 16);
      sub_26666C8A8();
      sub_26666C8B8();
      sub_26666C878();
    }

    while (v10 != v1);

    v16 = v59;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v57 = v16;
  v0[64] = v16;
  v17 = v0[57];
  v18 = v0[33];
  v58 = v0[34];
  v19 = sub_266669B88();
  sub_2665C485C(v19);
  OUTLINED_FUNCTION_25_2();
  v20 = v19 & 0xC000000000000001;
  v21 = MEMORY[0x277D84F90];
  while (1)
  {
    v0[65] = v21;
    if (v6 == v1)
    {
      break;
    }

    sub_2665C4864(v1, v20 == 0, v19);
    if (v20)
    {
      result = MEMORY[0x266788B60](v1, v19);
    }

    else
    {
      result = *(v19 + 8 * v1 + 32);
    }

    v22 = result;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    v23 = v0[59];
    sub_26655358C(v58 + 56, (v0 + 7));
    sub_2665AAA8C(v22, (v0 + 7), v24, v25, v26, v27, v28, v29, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
    v30 = v0[60];
    v31 = v0[58];
    sub_26656CB44(v0[59], v30, type metadata accessor for Snippet.Event);
    sub_26656CB44(v30, v31, type metadata accessor for Snippet.Event);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = *(v21 + 16);
      sub_2665C68BC();
      v21 = v35;
    }

    v32 = *(v21 + 16);
    if (v32 >= *(v21 + 24) >> 1)
    {
      sub_2665C68BC();
      v21 = v36;
    }

    v33 = v0[58];
    *(v21 + 16) = v32 + 1;
    sub_26656CB44(v33, v21 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v32, type metadata accessor for Snippet.Event);
    v1 = (v1 + 1);
  }

  v37 = v0[56];
  v38 = v0[34];

  v39 = *(v38 + 144);
  *(v38 + 136);
  sub_26666C358();

  sub_26666BDA8();
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  v44 = swift_task_alloc();
  v0[66] = v44;
  *v44 = v0;
  v44[1] = sub_26656ADF8;
  v45 = v0[56];

  return sub_2665D8514();
}

uint64_t sub_26656ADF8()
{
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v6 = *(v5 + 528);
  *v4 = *v1;
  v3[67] = v7;
  v3[68] = v0;

  if (v0)
  {
    v8 = v3[65];
    v9 = v3[64];
    sub_26656CAEC(v3[56], &unk_28007D130, &unk_266671DF0);

    v10 = sub_26656C03C;
  }

  else
  {
    v11 = v3[64];
    sub_26656CAEC(v3[56], &unk_28007D130, &unk_266671DF0);

    v10 = sub_26656AF64;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_26656AF64()
{
  v2 = v0[62];
  v1 = v0[63];
  v3 = v0[61];
  v5 = v0[54];
  v4 = v0[55];
  v6 = v0[48];
  v7 = v0[49];
  v8 = v0[46];
  v126 = v0[47];
  v127 = v0[45];
  v128 = v0[67];
  v123 = v0[44];
  v124 = v0[43];
  v129 = v0[42];
  v130 = v0[53];
  v9 = v0[35];
  v131 = v0[34];
  *v4 = v0[65];
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  v125 = v7;
  (*(v2 + 16))(v7, v1, v3);
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v3);
  v16 = v6;
  sub_2666696C8();
  v17 = sub_26666BB08();
  __swift_storeEnumTagSinglePayload(v123, 1, 1, v17);
  v18 = *MEMORY[0x277D5BC50];
  v19 = sub_266669788();
  OUTLINED_FUNCTION_18_2(v19);
  (*(v20 + 104))(v124, v18, v19);
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v24 = swift_allocObject();
  v0[69] = v24;
  *(v24 + 16) = xmmword_26666E050;
  *(v24 + 32) = v128;
  v25 = *(v8 + 16);
  v26 = v128;
  v25(v126, v16, v127);
  v27 = swift_task_alloc();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v27 + 40) = v24;
  *(v27 + 48) = v7;
  *(v27 + 56) = 1;
  *(v27 + 64) = v123;
  *(v27 + 72) = v124;
  *(v27 + 80) = 514;
  sub_266669BC8();

  sub_26656CA7C(v4, v130);
  if (__swift_getEnumTagSinglePayload(v130, 1, v9) == 1)
  {
    v28 = v0 + 53;
    goto LABEL_5;
  }

  v29 = v0[53];
  v30 = v0[54];
  v31 = v0[52];
  v32 = v0[39];
  v33 = v0[35];
  OUTLINED_FUNCTION_1_7();
  sub_26656CB44(v34, v35, v36);
  sub_26656CA7C(v30, v31);
  if (__swift_getEnumTagSinglePayload(v31, 1, v33) == 1)
  {
    v28 = v0 + 52;
    sub_2665663D4(v0[39]);
LABEL_5:
    v37 = *v28;
    v38 = v0[55];
    v39 = v0[51];
    v40 = v0[35];
    sub_26656CAEC(v37, &unk_28007DE30, &unk_26666EAF0);
    sub_26656CA7C(v38, v39);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v40);
    v43 = v0[34];
    v42 = v0[35];
    if (EnumTagSinglePayload == 1)
    {
      v44 = v0[54];
      v45 = v0[50];
      sub_26656CAEC(v0[51], &unk_28007DE30, &unk_26666EAF0);
      sub_26656CA7C(v44, v45);
      if (__swift_getEnumTagSinglePayload(v45, 1, v42) == 1)
      {
        v46 = sub_26656CAEC(v0[50], &unk_28007DE30, &unk_26666EAF0);
        v47 = *(v43 + 176);
        v48 = *(v43 + 184);
        OUTLINED_FUNCTION_24_2(v46, v49, v50, v51, v52, v53, v54, v55, v123, v124, v7, v126, v127, v128, v129, v130, v131);
        v56 = *(MEMORY[0x277D5BE58] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_23_1();
        v0[73] = v57;
        *v57 = v58;
        v57[1] = sub_26656BDA8;
        v59 = v0[42];
        v60 = v0[32];
        OUTLINED_FUNCTION_19_2();

        return MEMORY[0x2821BB488]();
      }

      else
      {
        v100 = v0[50];
        v102 = v0[35];
        v101 = v0[36];
        OUTLINED_FUNCTION_1_7();
        v105 = sub_26656CB44(v103, v101, v104);
        v106 = *(v43 + 176);
        v107 = *(v43 + 184);
        OUTLINED_FUNCTION_24_2(v105, v108, v109, v110, v111, v112, v113, v114, v123, v124, v7, v126, v127, v128, v129, v130, v131);
        v0[15] = v102;
        v0[16] = sub_26656CBA4();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
        sub_266566370(v101, boxed_opaque_existential_1);
        v116 = *(MEMORY[0x277D5BE48] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_23_1();
        v0[72] = v117;
        *v117 = v118;
        v117[1] = sub_26656BB08;
        v119 = v0[42];
        v120 = v0[32];
        OUTLINED_FUNCTION_19_2();

        return MEMORY[0x2821BB478]();
      }
    }

    else
    {
      v62 = v0[37];
      OUTLINED_FUNCTION_1_7();
      sub_26656CB44(v63, v62, v64);
      v65 = *(v43 + 176);
      v66 = *(v43 + 184);
      __swift_project_boxed_opaque_existential_1((v131 + 152), v65);
      v0[20] = v42;
      v0[21] = sub_26656CBA4();
      v67 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
      sub_266566370(v62, v67);
      v68 = *(MEMORY[0x277D5BE38] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v0[71] = v69;
      *v69 = v70;
      v69[1] = sub_26656B868;
      v71 = v0[42];
      v72 = v0[32];
      OUTLINED_FUNCTION_19_2();

      return MEMORY[0x2821BB468]();
    }
  }

  v74 = v0[52];
  v76 = v0[38];
  v75 = v0[39];
  v77 = v0[34];
  v78 = v0[35];
  OUTLINED_FUNCTION_1_7();
  v81 = sub_26656CB44(v79, v76, v80);
  v82 = *(v77 + 176);
  v83 = *(v77 + 184);
  OUTLINED_FUNCTION_24_2(v81, v84, v85, v86, v87, v88, v89, v90, v123, v124, v125, v126, v127, v128, v129, v130, v131);
  v0[25] = v78;
  v91 = sub_26656CBA4();
  v0[26] = v91;
  v92 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
  sub_266566370(v75, v92);
  v0[30] = v78;
  v0[31] = v91;
  v93 = __swift_allocate_boxed_opaque_existential_1(v0 + 27);
  sub_266566370(v76, v93);
  v94 = *(MEMORY[0x277D5BE30] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  v0[70] = v95;
  *v95 = v96;
  v95[1] = sub_26656B5B8;
  v97 = v0[42];
  v98 = v0[32];
  OUTLINED_FUNCTION_19_2();

  return MEMORY[0x2821BB460]();
}

uint64_t sub_26656B5B8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = *(v4 + 560);
  v6 = *(v4 + 552);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 216));
  __swift_destroy_boxed_opaque_existential_1((v2 + 176));
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26656B868()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = *(v4 + 568);
  v6 = *(v4 + 552);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 136));
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26656BB08()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = *(v4 + 576);
  v6 = *(v4 + 552);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26656BDA8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 584);
  v3 = *(v1 + 552);
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26656C03C()
{
  (*(v0[62] + 8))(v0[63], v0[61]);
  v24 = v0[68];
  v1 = v0[63];
  v3 = v0[59];
  v2 = v0[60];
  v4 = v0[58];
  v6 = v0[55];
  v5 = v0[56];
  v8 = v0[53];
  v7 = v0[54];
  v10 = v0[51];
  v9 = v0[52];
  v13 = v0[50];
  v14 = v0[49];
  v15 = v0[48];
  v16 = v0[47];
  v17 = v0[44];
  v18 = v0[43];
  v19 = v0[42];
  v20 = v0[39];
  v21 = v0[38];
  v22 = v0[37];
  v23 = v0[36];

  OUTLINED_FUNCTION_24_1();

  return v11();
}

uint64_t sub_26656C1C0()
{
  if (*(v0 + 136))
  {
    if (sub_2665F1578())
    {
      sub_26666A808();
      goto LABEL_6;
    }

    return 0;
  }

  if (!sub_2665F17DC())
  {
    return 0;
  }

  sub_26666AC08();
LABEL_6:

  if (!v3)
  {
    return 0;
  }

  v1 = sub_26666A218();

  return v1;
}

uint64_t sub_26656C24C(void *a1)
{
  v3 = sub_26666AF28();
  OUTLINED_FUNCTION_7(v3);
  sub_26666AF18();
  sub_2665EF548(a1);
  if (v4)
  {
    sub_26666AF08();
  }

  if (*(v1 + 136))
  {
    v5 = sub_26666B078();
    OUTLINED_FUNCTION_7(v5);
    v6 = sub_26666B068();
    sub_26666AC38();
  }

  else
  {
    v7 = sub_26666B0B8();
    OUTLINED_FUNCTION_7(v7);
    v6 = sub_26666B0A8();
    sub_26666B028();
  }

  return v6;
}

uint64_t *sub_26656C308()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[18];

  sub_26656CC94((v0 + 19));
  v2 = v0[25];

  return v0;
}

uint64_t sub_26656C350()
{
  sub_26656C308();

  return MEMORY[0x2821FE8D8](v0, 208, 7);
}

_BYTE *storeEnumTagSinglePayload for EventDisambiguationStrategy.ActionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26656C498()
{
  result = qword_28007D350;
  if (!qword_28007D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D350);
  }

  return result;
}

uint64_t sub_26656C508()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656CD98;

  return sub_266569F78();
}

uint64_t sub_26656C5B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656CD98;

  return sub_26656A58C();
}

uint64_t sub_26656C658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B6A0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for EventDisambiguationStrategy();
  *v9 = v4;
  v9[1] = sub_26656CD98;

  return MEMORY[0x2821BA098](a1, a2, v10, a4);
}

uint64_t sub_26656C71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B6A8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for EventDisambiguationStrategy();
  *v9 = v4;
  v9[1] = sub_26656CD98;

  return MEMORY[0x2821BA0A0](a1, a2, v10, a4);
}

uint64_t sub_26656C7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B690] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26656C894;

  return MEMORY[0x2821BA088](a1, a2, a3);
}

uint64_t sub_26656C894()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  OUTLINED_FUNCTION_24_1();

  return v5();
}

uint64_t sub_26656C974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B698] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26656CD98;

  return MEMORY[0x2821BA090](a1, a2, a3, a4);
}

uint64_t sub_26656CA7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26656CAEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_18_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_26656CB44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_18_2(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_26656CBA4()
{
  result = qword_28007ED60;
  if (!qword_28007ED60)
  {
    type metadata accessor for Snippet();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007ED60);
  }

  return result;
}

unint64_t sub_26656CBFC()
{
  result = qword_28007D360;
  if (!qword_28007D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D360);
  }

  return result;
}

unint64_t sub_26656CC50()
{
  result = qword_28156C110;
  if (!qword_28156C110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28156C110);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_7()
{
  v3 = v0[62];
  v2 = v0[63];
  v18 = v0[67];
  v19 = v0[61];
  v20 = v0[60];
  v21 = v0[59];
  v4 = v0[55];
  v22 = v0[58];
  v23 = v0[56];
  v5 = v0[54];
  v24 = v0[53];
  v25 = v0[52];
  v26 = v0[51];
  v27 = v0[50];
  v17 = v0[49];
  v6 = v0[48];
  v8 = v0[45];
  v7 = v0[46];
  v9 = v0[43];
  v10 = v0[44];
  result = v0[42];
  v28 = v0[47];
  v12 = v0[40];
  v13 = v0[41];
  v14 = v0[38];
  *(v1 - 104) = v0[39];
  *(v1 - 96) = v14;
  v15 = v0[36];
  *(v1 - 88) = v0[37];
  *(v1 - 80) = v15;
  v16 = *(v13 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_3()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return sub_26656CAEC(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return sub_26656CAEC(v0, v2, v1);
}

void *OUTLINED_FUNCTION_24_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return __swift_project_boxed_opaque_existential_1((a17 + 152), v17);
}

void OUTLINED_FUNCTION_29_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_30_2(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_26656CAEC(a9, a2, a3);
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return swift_task_alloc();
}

double sub_26656CFCC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0xD00000000000001ALL && 0x800000026667CCE0 == a2;
  if (v6 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[24];
LABEL_7:
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v9;
    return result;
  }

  v10 = a1 == 0xD00000000000001CLL && 0x800000026667CD00 == a2;
  if (v10 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[25];
    goto LABEL_7;
  }

  v11 = a1 == 0xD00000000000001ALL && 0x800000026667CD20 == a2;
  if (v11 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[26];
    goto LABEL_7;
  }

  v13 = a1 == OUTLINED_FUNCTION_3_6() && a2 == v12;
  if (v13 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[27];
    goto LABEL_7;
  }

  v15 = a1 == OUTLINED_FUNCTION_4_6() && a2 == v14;
  if (v15 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[28];
    goto LABEL_7;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_26656D0FC()
{
  v0 = sub_26666C958();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26656D14C()
{
  result = OUTLINED_FUNCTION_3_6();
  switch(v1)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      return result;
    case 4:
      result = OUTLINED_FUNCTION_4_6();
      break;
    default:
      result = 0xD00000000000001ALL;
      break;
  }

  return result;
}

uint64_t sub_26656D1F0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_266604260();
}

uint64_t sub_26656D214@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26656D0FC();
  *a2 = result;
  return result;
}

uint64_t sub_26656D244@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_26656D14C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_26656D28C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26656D0FC();
  *a1 = result;
  return result;
}

uint64_t sub_26656D2CC(uint64_t a1)
{
  v2 = sub_26656D9E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26656D308(uint64_t a1)
{
  v2 = sub_26656D9E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26656D344()
{

  return MEMORY[0x2821FE8D8](v0, 29, 7);
}

uint64_t sub_26656D3A0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D388, &qword_26666EC58);
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v21[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26656D9E0();
  sub_26666CBE8();
  v15 = v3[24];
  v21[15] = 0;
  OUTLINED_FUNCTION_0_8();
  if (!v2)
  {
    v16 = v3[25];
    v21[14] = 1;
    OUTLINED_FUNCTION_0_8();
    v17 = v3[26];
    v21[13] = 2;
    OUTLINED_FUNCTION_0_8();
    v18 = v3[27];
    v21[12] = 3;
    OUTLINED_FUNCTION_0_8();
    v19 = v3[28];
    v21[11] = 4;
    OUTLINED_FUNCTION_0_8();
  }

  return (*(v8 + 8))(v13, v5);
}

uint64_t sub_26656D534(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_26656D5A8(a1);
  return v2;
}

uint64_t sub_26656D5A8(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D378, &qword_26666EC50);
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v17 - v12;
  *(v1 + 16) = 0;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26656D9E0();
  sub_26666CBD8();
  if (v2)
  {

    type metadata accessor for CalendarResultSetWindowIntroOptions();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v22 = 0;
    *(v1 + 24) = OUTLINED_FUNCTION_1_8() & 1;
    v21 = 1;
    *(v1 + 25) = OUTLINED_FUNCTION_1_8() & 1;
    v20 = 2;
    *(v1 + 26) = OUTLINED_FUNCTION_1_8() & 1;
    v19 = 3;
    *(v1 + 27) = OUTLINED_FUNCTION_1_8() & 1;
    v18 = 4;
    v16 = OUTLINED_FUNCTION_1_8();
    (*(v8 + 8))(v13, v5);
    *(v3 + 28) = v16 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

void *sub_26656D7D8()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_26656D820(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t (*sub_26656D86C())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26656D8E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26656D534(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26656D9A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CalendarResultSetWindowIntroOptions();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26656D9E0()
{
  result = qword_28007D380;
  if (!qword_28007D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D380);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalendarResultSetWindowIntroOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for CalendarResultSetWindowIntroOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26656DB9C()
{
  result = qword_28007D390;
  if (!qword_28007D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D390);
  }

  return result;
}

unint64_t sub_26656DBF4()
{
  result = qword_28007D398;
  if (!qword_28007D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D398);
  }

  return result;
}

unint64_t sub_26656DC4C()
{
  result = qword_28007D3A0;
  if (!qword_28007D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D3A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return sub_26666CA58();
}

uint64_t OUTLINED_FUNCTION_1_8()
{

  return sub_26666C9C8();
}

uint64_t OUTLINED_FUNCTION_2_6()
{

  return sub_26666CAC8();
}

void *sub_26656DD3C(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_26656DD94()
{
  OUTLINED_FUNCTION_14();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v4 = sub_266669708();
  v1[21] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[22] = v5;
  v7 = *(v6 + 64);
  v1[23] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v8);
  v10 = *(v9 + 64);
  v1[24] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v11);
  v13 = *(v12 + 64);
  v1[25] = OUTLINED_FUNCTION_19();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v14);
  v16 = *(v15 + 64);
  v1[26] = OUTLINED_FUNCTION_19();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v17);
  v19 = *(v18 + 64);
  v1[27] = OUTLINED_FUNCTION_32_1();
  v1[28] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v20);
  v22 = *(v21 + 64);
  v1[29] = OUTLINED_FUNCTION_32_1();
  v1[30] = swift_task_alloc();
  v23 = sub_266669AE8();
  v1[31] = v23;
  OUTLINED_FUNCTION_3_1(v23);
  v1[32] = v24;
  v26 = *(v25 + 64);
  v1[33] = OUTLINED_FUNCTION_19();
  v27 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

void sub_26656DF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v14 = sub_26666C168();
  __swift_project_value_buffer(v14, qword_28156D7E8);
  v15 = sub_26666C148();
  v16 = sub_26666C618();
  if (os_log_type_enabled(v15, v16))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_266549000, v15, v16, "[UpdateEvent UnsupportedValueStrategy] Making output", v12, 2u);
    MEMORY[0x266789690](v12, -1, -1);
  }

  v18 = v13[32];
  v17 = v13[33];
  v19 = v13[31];
  v20 = v13[19];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3A8, &qword_26666EDB0);
  sub_266669CD8();
  sub_266669AD8();
  OUTLINED_FUNCTION_18_3();
  (*(v18 + 8))(v17, v19);

  v21 = sub_26664B618();
  if (v21 == 7)
  {
    sub_26656CBFC();
    v22 = swift_allocError();
    *v23 = v15;
    v23[1] = v12;
    OUTLINED_FUNCTION_11_3(v22, v23);
    v24 = v13[33];
    OUTLINED_FUNCTION_2_7();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_4_7();

    v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
    return;
  }

  v33 = v21;

  if (sub_26664B664(v33) == 0xD000000000000015 && 0x800000026667CD60 == v34)
  {
  }

  else
  {
    v12 = sub_26666CAC8();

    if ((v12 & 1) == 0)
    {
      v36 = v13[30];
      type metadata accessor for Snippet();
      OUTLINED_FUNCTION_7_6();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
      v41 = swift_task_alloc();
      v13[37] = v41;
      *v41 = v13;
      v41[1] = sub_26656E7C4;
      v42 = v13[19];
      v43 = v13[20];
      OUTLINED_FUNCTION_4_7();

      sub_26656EE44();
      return;
    }
  }

  v45 = v13[19];
  v46 = v13[20];
  v47 = sub_266669CB8();
  sub_26658C0E0(v47);
  OUTLINED_FUNCTION_18_3();
  v48 = *__swift_project_boxed_opaque_existential_1((v46 + 64), *(v46 + 88));
  v13[5] = type metadata accessor for EventProvider();
  v13[6] = &off_287806290;
  v13[2] = v48;
  sub_26655358C((v13 + 2), (v13 + 7));

  __swift_destroy_boxed_opaque_existential_1(v13 + 2);
  if (v12)
  {
    v49 = *__swift_project_boxed_opaque_existential_1(v13 + 7, v13[10]);

    v50 = sub_26655A8B4();
    v51 = sub_26665140C(v15, v12, v50);

    swift_bridgeObjectRelease_n();
    __swift_destroy_boxed_opaque_existential_1(v13 + 7);
    if (v51)
    {
      sub_2665EF638(v51);
      if (v52)
      {
        OUTLINED_FUNCTION_18_3();
        goto LABEL_26;
      }
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13 + 7);
    v51 = 0;
  }

  v53 = [*(v13[20] + 56) searchQuery];
  if (v53)
  {
    v54 = v53;
    sub_26666C308();
    OUTLINED_FUNCTION_18_3();
  }

  else
  {

    v12 = 0;
  }

LABEL_26:
  v13[34] = v51;
  v55 = v13[19];
  v56 = sub_266669CC8();
  v57 = [v56 unsupportedReason];

  if (v57 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v57 > 0x7FFFFFFF)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v58 = *v13[20];
  v59 = v13[28];
  sub_26666C358();

  v60 = sub_26666BDA8();
  v61 = 1;
  __swift_storeEnumTagSinglePayload(v59, 0, 1, v60);
  if (v12)
  {
    v62 = v13[27];
    sub_26666C358();

    v61 = 0;
  }

  __swift_storeEnumTagSinglePayload(v13[27], v61, 1, v60);
  v63 = swift_task_alloc();
  v13[35] = v63;
  *v63 = v13;
  v63[1] = sub_26656E4EC;
  v64 = v13[27];
  v65 = v13[28];
  OUTLINED_FUNCTION_4_7();

  sub_266593890();
}

uint64_t sub_26656E4EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[12] = v2;
  v4[13] = a1;
  v4[14] = v1;
  v5 = v3[35];
  v6 = *v2;
  v4[36] = v1;

  v7 = v3[28];
  sub_266557D74(v3[27], &unk_28007D130, &unk_266671DF0);
  sub_266557D74(v7, &unk_28007D130, &unk_266671DF0);
  if (v1)
  {
    v8 = sub_26656ECD4;
  }

  else
  {
    v8 = sub_26656E664;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26656E664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_9_3();
  v15 = *(v14 + 240);

  v16 = type metadata accessor for Snippet();
  *v15 = 0;
  v15[1] = 0;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  v17 = *(v14 + 104);
  v18 = *(v14 + 232);
  v20 = *(v14 + 200);
  v19 = *(v14 + 208);
  v21 = *(v14 + 184);
  v22 = *(v14 + 192);
  v23 = *(v14 + 160);
  *(v14 + 312) = v17;
  v24 = v23[6];
  __swift_project_boxed_opaque_existential_1(v23 + 2, v23[5]);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v16);
  v28 = sub_2666699C8();
  OUTLINED_FUNCTION_5_4(v19, v29, v30, v28);
  v31 = sub_26666BB08();
  OUTLINED_FUNCTION_5_4(v20, v32, v33, v31);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  v38 = v17;
  OUTLINED_FUNCTION_15_2();
  sub_2665D5640();
  OUTLINED_FUNCTION_15_2();
  sub_26656CFC4();
  v39 = swift_task_alloc();
  *(v14 + 320) = v39;
  *v39 = v14;
  OUTLINED_FUNCTION_1_9(v39);
  OUTLINED_FUNCTION_4_7();

  return sub_2665643AC(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26656E7C4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v3[15] = v1;
  v3[16] = v2;
  v3[17] = v0;
  v4 = v3[37];
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v7 + 304) = v0;

  if (v0)
  {
    v8 = sub_26656ED84;
  }

  else
  {
    v8 = sub_26656E8D0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26656E8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_9_3();
  v15 = v14[16];
  v16 = v14[29];
  v18 = v14[25];
  v17 = v14[26];
  v19 = v14[23];
  v20 = v14[24];
  v21 = v14[20];
  v14[39] = v15;
  v22 = v21[6];
  __swift_project_boxed_opaque_existential_1(v21 + 2, v21[5]);
  v23 = type metadata accessor for Snippet();
  OUTLINED_FUNCTION_5_4(v16, v24, v25, v23);
  v26 = sub_2666699C8();
  OUTLINED_FUNCTION_5_4(v17, v27, v28, v26);
  v29 = sub_26666BB08();
  OUTLINED_FUNCTION_5_4(v18, v30, v31, v29);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  v36 = v15;
  OUTLINED_FUNCTION_15_2();
  sub_2665D5640();
  OUTLINED_FUNCTION_15_2();
  sub_26656CFC4();
  v37 = swift_task_alloc();
  v14[40] = v37;
  *v37 = v14;
  OUTLINED_FUNCTION_1_9(v37);
  OUTLINED_FUNCTION_4_7();

  return sub_2665643AC(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26656E9EC()
{
  OUTLINED_FUNCTION_5_1();
  v2 = v1[40];
  v3 = v1[39];
  v4 = v1[29];
  v5 = v1[26];
  v6 = v1[25];
  v7 = v1[24];
  v8 = v1[23];
  v9 = v1[22];
  v10 = v1[21];
  v11 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v12 = v11;

  (*(v9 + 8))(v8, v10);
  sub_266557D74(v7, &qword_28007D330, &unk_26666EEA0);
  sub_266557D74(v6, &unk_28007DE20, &unk_26666EAE0);
  sub_266557D74(v5, &qword_28007D338, &qword_26666EEB0);
  sub_266557D74(v4, &unk_28007DE30, &unk_26666EAF0);
  v13 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_26656EC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  v14 = *(v13 + 312);
  v15 = *(v13 + 264);
  OUTLINED_FUNCTION_2_7();

  sub_266557D74(v12, &unk_28007DE30, &unk_26666EAF0);

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_4_7();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_26656ECD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();

  v13 = *(v12 + 288);
  v14 = *(v12 + 264);
  OUTLINED_FUNCTION_2_7();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_4_7();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_26656ED84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  sub_266557D74(v12[30], &unk_28007DE30, &unk_26666EAF0);
  v13 = v12[38];
  v14 = v12[33];
  OUTLINED_FUNCTION_2_7();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_4_7();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_26656EE44()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_19();
  v6 = sub_266668D98();
  v1[5] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[6] = v7;
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_19();
  v10 = sub_266669AE8();
  v1[8] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v1[9] = v11;
  v13 = *(v12 + 64);
  v1[10] = OUTLINED_FUNCTION_32_1();
  v1[11] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

void sub_26656EF6C()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3A8, &qword_26666EDB0);
  sub_266669CD8();
  v5 = sub_266669AD8();
  v7 = v6;
  v8 = *(v3 + 8);
  v8(v1, v2);

  v9 = sub_26664B618();
  v10 = v9;
  if (v9 == 7)
  {
    sub_26656CBFC();
    v11 = swift_allocError();
    *v12 = v5;
    v12[1] = v7;
    OUTLINED_FUNCTION_11_3(v11, v12);
    v14 = v0[10];
    v13 = v0[11];
    v15 = v0[7];
    v16 = v0[4];

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_14_2();

    __asm { BRAA            X1, X16 }
  }

  v19 = v9;

  v20 = v0[3];
  if (v10 == 2)
  {
    v40 = *v20;
    v41 = swift_task_alloc();
    v0[12] = v41;
    *v41 = v0;
    v41[1] = sub_26656F410;
    OUTLINED_FUNCTION_14_2();

    sub_26659351C();
  }

  else
  {
    if (v10 == 4)
    {
      v21 = v0[2];
      v22 = v20[1];
      v23 = sub_266669CC8();
      v24 = [v23 unsupportedReason];

      if (v24 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v24 <= 0x7FFFFFFF)
      {
        v25 = v0[10];
        v26 = v0[8];
        v49 = v0[7];
        v27 = v0[2];
        v28 = v0[3];
        sub_266669CD8();
        v51 = sub_266669AC8();
        v50 = v29;
        v8(v25, v26);
        v30 = sub_266669CB8();
        v31 = sub_26659A2F8(v30);

        v32 = v28[17];
        __swift_project_boxed_opaque_existential_1(v28 + 13, v28[16]);
        OUTLINED_FUNCTION_15_2();
        sub_266669648();
        v33 = v0[7];
        v34 = v0[4];
        sub_26666C358();

        v35 = sub_26666BDA8();
        __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
        v36 = swift_task_alloc();
        *(v36 + 16) = v31;
        *(v36 + 24) = v33;
        v0[13] = sub_26656DD3C(sub_266570114, v36, v51, v50 & 1);

        v37 = swift_task_alloc();
        v0[14] = v37;
        *v37 = v0;
        v37[1] = sub_26656F590;
        v38 = v0[4];
        OUTLINED_FUNCTION_14_2();

        sub_2665D916C();
        return;
      }

      __break(1u);
      return;
    }

    v43 = *v20;
    if (sub_26664B664(v19) != 0xD000000000000012 || 0x800000026667CDB0 != v44)
    {
      sub_26666CAC8();
    }

    v46 = swift_task_alloc();
    v0[16] = v46;
    *v46 = v0;
    v46[1] = sub_26656F82C;
    OUTLINED_FUNCTION_14_2();

    sub_2665935D4(v47);
  }
}

uint64_t sub_26656F410(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;

  v8 = v4[11];
  v9 = v4[10];
  v10 = v4[7];
  v11 = v4[4];

  v13 = *(v6 + 8);
  if (!v1)
  {
    v12 = a1;
  }

  return v13(v12);
}

uint64_t sub_26656F590(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = v4[14];
  v8 = *v2;
  *v6 = *v2;
  v5[15] = v1;

  v9 = v4[13];
  if (v1)
  {
    sub_266557D74(v5[4], &unk_28007D130, &unk_266671DF0);

    return MEMORY[0x2822009F8](sub_26656F78C, 0, 0);
  }

  else
  {
    v11 = v5[6];
    v10 = v5[7];
    v13 = v5[4];
    v12 = v5[5];

    sub_266557D74(v13, &unk_28007D130, &unk_266671DF0);
    (*(v11 + 8))(v10, v12);
    v15 = v5[10];
    v14 = v5[11];
    v16 = v5[7];
    v17 = v5[4];

    v18 = v8[1];

    return v18(a1);
  }
}

uint64_t sub_26656F78C()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = v0[15];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];
  v5 = v0[4];

  OUTLINED_FUNCTION_24_1();

  return v6();
}

uint64_t sub_26656F82C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;

  v8 = v4[11];
  v9 = v4[10];
  v10 = v4[7];
  v11 = v4[4];

  v13 = *(v6 + 8);
  if (!v1)
  {
    v12 = a1;
  }

  return v13(v12);
}

BOOL sub_26656F9AC()
{
  v0 = sub_266669AE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3A8, &qword_26666EDB0);
  sub_266669CD8();
  v6 = sub_266669AD8();
  v8 = v7;
  (*(v1 + 8))(v5, v0);
  if (v6 == 0xD000000000000015 && 0x800000026667CD60 == v8)
  {

    return 0;
  }

  else
  {
    v10 = sub_26666CAC8();

    return (v10 & 1) == 0;
  }
}

uint64_t sub_26656FAFC()
{
  OUTLINED_FUNCTION_14();
  v0[2] = v1;
  v2 = sub_266669AE8();
  v0[3] = v2;
  OUTLINED_FUNCTION_3_1(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_32_1();
  v0[6] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26656FBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  v13 = v12[6];
  v14 = v12[3];
  v15 = v12[4];
  v16 = v12[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3A8, &qword_26666EDB0);
  sub_266669CD8();
  v17 = sub_266669AD8();
  v19 = v18;
  v20 = *(v15 + 8);
  v20(v13, v14);

  v21 = sub_26664B618();
  v22 = v12[5];
  v23 = v12[6];
  if (v21 == 7)
  {
    sub_26656CBFC();
    v24 = swift_allocError();
    *v25 = v17;
    v25[1] = v19;
    OUTLINED_FUNCTION_11_3(v24, v25);

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_4_7();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
  }

  else
  {
    v35 = v21;
    v36 = v12[2];
    v37 = v12[3];

    v38 = sub_266669CB8();
    sub_266669CD8();
    v39 = sub_266669AC8();
    v41 = v40;
    v20(v22, v37);
    sub_26663684C(v35, v39, v41 & 1);

    v42 = v12[1];
    OUTLINED_FUNCTION_4_7();

    return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
  }
}

uint64_t sub_26656FD68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656C894;

  return sub_26656DD94();
}

uint64_t sub_26656FE10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656FEA4;

  return sub_26656FAFC();
}

uint64_t sub_26656FEA4()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_5_1();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_26656FF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B4C8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26656CD98;

  return MEMORY[0x2821B9E00](a1, a2, a3, a4);
}

uint64_t sub_266570060(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_2665700A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_9(uint64_t a1)
{
  *(a1 + 8) = sub_26656E9EC;
  v6 = v3[29];
  v7 = v3[30];
  v9 = v3[25];
  v8 = v3[26];
  v10 = v3[23];
  v11 = v3[24];
  result = v3[18];
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 24) = v9;
  *(v5 + 32) = v11;
  *(v5 + 18) = 513;
  *(v5 + 17) = v4 & 1;
  *(v5 + 16) = 2;
  return result;
}

void OUTLINED_FUNCTION_2_7()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
}

uint64_t OUTLINED_FUNCTION_11_3(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;

  return swift_willThrow();
}

uint64_t sub_26657026C()
{
  if (qword_28007CE48 != -1)
  {
    swift_once();
  }

  type metadata accessor for CalendarNLv3Intent(0);
  sub_26656960C();
  sub_26666A528();
  return v1;
}

uint64_t sub_266570304()
{
  if (qword_28007CE60 != -1)
  {
    OUTLINED_FUNCTION_2_8();
  }

  type metadata accessor for CalendarNLv3Intent(0);
  sub_26656960C();
  sub_26666A528();
  if (!v1)
  {
    return 2;
  }

  return 0;
}

uint64_t sub_2665703A0()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 136) = v3;
  v4 = type metadata accessor for CalendarNLv3Intent(0);
  *(v1 + 48) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  v6 = sub_26666C0B8();
  *(v1 + 64) = v6;
  v7 = *(v6 - 8);
  *(v1 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v1 + 80) = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266570488()
{
  if (qword_28007CDA0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 136);
  v6 = sub_26666C0E8();
  *(v0 + 88) = OUTLINED_FUNCTION_11_4(v6, qword_280095698);
  sub_26666C0A8();
  *(v0 + 96) = sub_26658E0BC("CreateEventNLv3IntentWrapper#makeSiriKitIntent", 46, 2, v1);
  (*(v2 + 8))(v1, v3);
  if (v5 == 1)
  {
    sub_26655A274(*(v0 + 56));
  }

  else
  {
    sub_266571E2C(v4 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_calendarIntent, *(v0 + 56));
  }

  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  *(v0 + 104) = sub_2665709F4();
  *(v0 + 112) = v9;
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  *v10 = v0;
  v10[1] = sub_266570600;
  v11 = *(v0 + 56);
  v12 = *(v0 + 32);
  v13 = *(v0 + 40);

  return sub_266570AFC();
}

uint64_t sub_266570600()
{
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = *(v4 + 120);
  *v3 = *v0;
  *(v2 + 128) = v6;

  v7 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2665706F0()
{
  v35 = v0;
  v1 = v0[7];
  v2 = v0[5];
  v3 = sub_26657119C();
  if (qword_28007CE60 != -1)
  {
    OUTLINED_FUNCTION_2_8();
  }

  v5 = v0[6];
  v4 = v0[7];
  sub_26656960C();
  sub_26666A528();
  v6 = v0[3];
  if (v6)
  {
    v7 = v0[2];
    sub_266552C44(0, &qword_28007F370, 0x277CBFC40);
    v8 = objc_allocWithZone(MEMORY[0x277CE41F8]);

    v9 = sub_266606794([v8 init], v7, v6, 0);
  }

  else
  {
    v9 = 0;
  }

  v10 = v0[16];
  v12 = v0[13];
  v11 = v0[14];
  v13 = objc_allocWithZone(MEMORY[0x277CD3B20]);
  v14 = sub_266571D5C(v12, v11, v10, v3, v9);
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v15 = sub_26666C168();
  __swift_project_value_buffer(v15, qword_28156D7E8);
  v16 = v14;
  v17 = sub_26666C148();
  v18 = sub_26666C618();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34 = v20;
    *v19 = 136315138;
    v21 = v16;
    v22 = [v21 description];
    v23 = sub_26666C308();
    v25 = v24;

    v26 = sub_2665BFC90(v23, v25, &v34);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_266549000, v17, v18, "[CreateEventNLv3IntentWrapper] Intent: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  v28 = v0[11];
  v27 = v0[12];
  v29 = v0[10];
  v30 = v0[7];
  v31 = sub_2665EFC38();

  sub_266563A38(v30);
  sub_26658E2D0("CreateEventNLv3IntentWrapper#makeSiriKitIntent", 46, 2);

  v32 = v0[1];

  return v32(v31);
}

uint64_t sub_2665709F4()
{
  if (qword_28007CE58 != -1)
  {
    swift_once();
  }

  type metadata accessor for CalendarNLv3Intent(0);
  sub_26656960C();
  sub_26666A528();
  if (v4)
  {
    v1 = sub_2666683AC(v0 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_siriLocale, v3);
  }

  else if ((sub_26662DBB8() & 1) != 0 && sub_266571830())
  {
    v1 = sub_26666AA08();
  }

  else
  {
    return 0;
  }

  return v1;
}

uint64_t sub_266570AFC()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3D8, &unk_2666746C0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266570B90()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_dateTimeResolver), *(v0[4] + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_dateTimeResolver + 24));
  if (qword_28007CE50 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[2];
  type metadata accessor for CalendarNLv3Intent(0);
  sub_26656960C();
  sub_26666A528();
  if (qword_28156D128 != -1)
  {
    swift_once();
  }

  v3 = sub_26666B628();
  OUTLINED_FUNCTION_11_4(v3, qword_28156D830);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_266570D1C;
  v5 = v0[5];
  v6 = v0[3];

  return sub_266606830();
}

uint64_t sub_266570D1C()
{
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *(v4 + 40);
  v7 = *v0;
  OUTLINED_FUNCTION_11_2();
  *v8 = v7;
  *(v10 + 56) = v9;

  sub_266566494(v6, &qword_28007D3D8, &unk_2666746C0);
  v11 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266570E38()
{
  v24 = v0;
  if (v0[7])
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v1 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v1, qword_28156D7E8);
    v2 = sub_26666C148();
    v3 = sub_26666C618();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_20();
      *v4 = 0;
      _os_log_impl(&dword_266549000, v2, v3, "[CreateEventNLv3IntentWrapper] DateTime Resolver returned a value", v4, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v5 = v0[7];
    goto LABEL_28;
  }

  v6 = v0[2];
  if ((sub_26662DBB8() & 1) == 0)
  {
    goto LABEL_27;
  }

  v7 = v0[4];
  if (sub_266571830())
  {
    v8 = sub_26666A9E8();

    if (v8)
    {
      if ((sub_26655EC7C() & 1) == 0)
      {
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1();
        }

        v16 = sub_26666C168();
        OUTLINED_FUNCTION_11_4(v16, qword_28156D7E8);
        v12 = sub_26666C148();
        v13 = sub_26666C618();
        if (!os_log_type_enabled(v12, v13))
        {
          goto LABEL_24;
        }

        v14 = OUTLINED_FUNCTION_20();
        *v14 = 0;
        v15 = "[CreateEventNLv3IntentWrapper] Found date time range on calendar event from SRR";
        goto LABEL_23;
      }
    }
  }

  v9 = *__swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_referenceResolver), *(v0[4] + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_referenceResolver + 24));
  sub_26663DD64();
  if (!v10)
  {
LABEL_27:
    v5 = 0;
    goto LABEL_28;
  }

  v8 = v10;
  if (sub_26655EC7C())
  {

    goto LABEL_27;
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v11 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v11, qword_28156D7E8);
  v12 = sub_26666C148();
  v13 = sub_26666C618();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_20();
    *v14 = 0;
    v15 = "[CreateEventNLv3IntentWrapper] SRR returned valid common date time range";
LABEL_23:
    _os_log_impl(&dword_266549000, v12, v13, v15, v14, 2u);
    OUTLINED_FUNCTION_4_1();
  }

LABEL_24:

  if (qword_28007CDF0 != -1)
  {
    swift_once();
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3E0, &unk_26666EF80);
  __swift_project_value_buffer(v17, qword_280095790);
  v18 = sub_26666BAD8();
  v22 = v8;

  v18(&v23, &v22);

  v5 = v23;
LABEL_28:
  v19 = v0[5];

  v20 = v0[1];

  return v20(v5);
}

uint64_t sub_26657119C()
{
  v1 = sub_26666B448();
  v2 = OUTLINED_FUNCTION_3_0(v1);
  v68 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2, v6);
  v67 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3C8, &qword_26666EF68);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v64 - v15;
  v17 = sub_26666B5C8();
  v18 = OUTLINED_FUNCTION_3_0(v17);
  v70 = v19;
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v18, v22);
  v65 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v64 - v26;
  sub_26662DD18();
  v66 = v0;
  if (v28)
  {
    v29 = v28;
    v69 = v16;
    v64 = v1;
    v31 = *(v0 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_contactResolver + 24);
    v30 = *(v0 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_contactResolver + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_contactResolver), v31);
    if (qword_28007CED8 != -1)
    {
      OUTLINED_FUNCTION_3_7();
    }

    __swift_project_value_buffer(v17, qword_2800958C8);
    OUTLINED_FUNCTION_8_5();
    v32(v27);
    v37 = (*(v30 + 8))(v29, v27, v31, v30);

    (*(v0 + 8))(v27, v17);
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v38 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v38, qword_28156D7E8);

    v39 = sub_26666C148();
    v40 = sub_26666C618();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = sub_2665C485C(v37);

      v42 = "[CreateEventNLv3IntentWrapper] Resolved %ld participant(s) from nl intent";
      v43 = v40;
      v44 = v39;
      v45 = v41;
      v46 = 12;
      goto LABEL_24;
    }
  }

  else
  {
    if (sub_26662DBB8())
    {
      v33 = v66;
      v34 = *__swift_project_boxed_opaque_existential_1((v66 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_referenceResolver), *(v66 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_referenceResolver + 24));
      sub_26663E1A4();
      if (v35)
      {
        sub_26666A638();

        v36 = 0;
      }

      else
      {
        v36 = 1;
      }

      __swift_storeEnumTagSinglePayload(v16, v36, 1, v1);
      sub_266571CEC(v16, v13);
      if (__swift_getEnumTagSinglePayload(v13, 1, v1) != 1)
      {
        v69 = v16;
        v47 = v68;
        v48 = v33;
        v49 = v67;
        (*(v68 + 32))(v67, v13, v1);
        v51 = *(v48 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_contactResolver + 24);
        v50 = *(v48 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_contactResolver + 32);
        v66 = __swift_project_boxed_opaque_existential_1((v48 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_contactResolver), v51);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3D0, &unk_26666EF70);
        v52 = *(v47 + 72);
        v53 = v1;
        v54 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_26666EED0;
        v56 = v55 + v54;
        v57 = v53;
        (*(v47 + 16))(v56, v49, v53);
        if (qword_28007CED8 != -1)
        {
          OUTLINED_FUNCTION_3_7();
        }

        __swift_project_value_buffer(v17, qword_2800958C8);
        OUTLINED_FUNCTION_8_5();
        v58 = v65;
        v59(v65);
        v37 = (*(v50 + 8))(v55, v58, v51, v50);

        (v48[1])(v58, v17);
        (*(v68 + 8))(v67, v57);
        sub_266566494(v69, &qword_28007D3C8, &qword_26666EF68);
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1();
        }

        v60 = sub_26666C168();
        OUTLINED_FUNCTION_11_4(v60, qword_28156D7E8);
        v39 = sub_26666C148();
        v61 = sub_26666C618();
        if (!os_log_type_enabled(v39, v61))
        {
          goto LABEL_25;
        }

        v62 = OUTLINED_FUNCTION_20();
        *v62 = 0;
        v42 = "[CreateEventNLv3IntentWrapper] Resolved participant from SRR";
        v43 = v61;
        v44 = v39;
        v45 = v62;
        v46 = 2;
LABEL_24:
        _os_log_impl(&dword_266549000, v44, v43, v42, v45, v46);
        OUTLINED_FUNCTION_4_1();
LABEL_25:

        return v37;
      }

      sub_266566494(v16, &qword_28007D3C8, &qword_26666EF68);
    }

    return 0;
  }

  return v37;
}

uint64_t sub_266571830()
{
  v1 = OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper____lazy_storage___resolvedCalendarEvent;
  v2 = *(v0 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper____lazy_storage___resolvedCalendarEvent);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *__swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_referenceResolver), *(v0 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_referenceResolver + 24));
    sub_26663E15C();
    v3 = v5;
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;

    sub_266571CCC(v6);
  }

  sub_266571CDC(v2);
  return v3;
}

uint64_t sub_2665718B4()
{
  sub_266563A38(v0 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_calendarIntent);
  v1 = OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_siriLocale;
  v2 = sub_266668D98();
  OUTLINED_FUNCTION_0_5(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_dateTimeResolver));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_contactResolver));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_referenceResolver));
  sub_266571CCC(*(v0 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper____lazy_storage___resolvedCalendarEvent));
  return v0;
}

uint64_t sub_266571958()
{
  sub_2665718B4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for CreateEventNLv3IntentWrapper()
{
  result = qword_28007D3B8;
  if (!qword_28007D3B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266571A04()
{
  result = sub_26666B208();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_266668D98();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_266571B0C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266571BB4;

  return sub_2665703A0();
}

uint64_t sub_266571BB4()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_11_2();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

uint64_t sub_266571CCC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_266571CDC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_266571CEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3C8, &qword_26666EF68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_266571D5C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  if (!a2)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_26666C2F8();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
  v11 = sub_26666C488();

LABEL_6:
  v12 = [v6 initWithTitle:v10 dateTimeRange:a3 participants:v11 location:a5];

  return v12;
}

uint64_t sub_266571E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarNLv3Intent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_7()
{

  return swift_once();
}

uint64_t _s19SiriCalendarIntents7SnippetO15ParticipantRoleO9hashValueSivg_0(unsigned __int8 a1)
{
  sub_26666CB88();
  MEMORY[0x266788EE0](a1);
  return sub_26666CBC8();
}

uint64_t sub_266571F4C()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  OUTLINED_FUNCTION_0_9();
  if (sub_266669678() & 1) != 0 || (v2 = v0[4], __swift_project_boxed_opaque_existential_1(v0, v0[3]), OUTLINED_FUNCTION_0_9(), (sub_266669668()) || (v3 = v0[4], __swift_project_boxed_opaque_existential_1(v0, v0[3]), OUTLINED_FUNCTION_0_9(), (sub_266669688()))
  {
    v4 = objc_opt_self();
    v5 = sub_26666C2F8();
    v6 = [v4 applicationWithBundleIdentifier_];

    if ([v6 isHidden])
    {

      return 1;
    }

    else
    {
      v8 = [v6 isLocked];

      if (v8)
      {
        return 0;
      }

      else
      {
        return 2;
      }
    }
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v10 = sub_26666C168();
    __swift_project_value_buffer(v10, qword_28156D7E8);
    v11 = sub_26666C148();
    v12 = sub_26666C618();
    if (os_log_type_enabled(v11, v12))
    {
      v7 = 2;
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_266549000, v11, v12, "[ProtectedAppStatusProvider] App protection not supported on this platform, returning normal", v13, 2u);
      MEMORY[0x266789690](v13, -1, -1);
    }

    else
    {

      return 2;
    }
  }

  return v7;
}

uint64_t getEnumTagSinglePayload for ProtectedAppStatus(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ProtectedAppStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2665722DC()
{
  result = qword_28007D3E8;
  if (!qword_28007D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D3E8);
  }

  return result;
}

uint64_t type metadata accessor for CreateEventUSOIntentWrapper()
{
  result = qword_28156CA28;
  if (!qword_28156CA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2665723B4()
{
  result = sub_266668D98();
  if (v1 <= 0x3F)
  {
    result = sub_26655EC10(319, qword_28156CF58);
    if (v2 <= 0x3F)
    {
      result = sub_26655EC10(319, &qword_28156CF50);
      if (v3 <= 0x3F)
      {
        result = sub_26655EC10(319, qword_28156CB10);
        if (v4 <= 0x3F)
        {
          result = sub_26666ADC8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2665724B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D400, &unk_26666F130);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = v21 - v4;
  v6 = sub_26666AD08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v21 - v14;
  v16 = *(v0 + *(type metadata accessor for CreateEventUSOIntentWrapper() + 32));
  sub_26666A658();
  if (!v21[1] || (v17 = sub_26666AA18(), , !v17))
  {
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    goto LABEL_8;
  }

  sub_26666ACF8();

  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
LABEL_8:
    sub_266557D74(v5, &qword_28007D400, &unk_26666F130);
    return 10;
  }

  v18 = *(v7 + 32);
  v18(v15, v5, v6);
  v18(v12, v15, v6);
  v19 = (*(v7 + 88))(v12, v6);
  if (v19 != *MEMORY[0x277D5F1B8])
  {
    if (v19 == *MEMORY[0x277D5F1B0])
    {
      return 2;
    }

    if (v19 == *MEMORY[0x277D5F1A8])
    {
      return 0;
    }

    if (v19 == *MEMORY[0x277D5F1C0])
    {
      return 4;
    }

    (*(v7 + 8))(v12, v6);
  }

  return 10;
}

uint64_t sub_266572738()
{
  v1 = *(v0 + *(type metadata accessor for CreateEventUSOIntentWrapper() + 32));
  sub_26666A658();
  if (!v4)
  {
    return 2;
  }

  v2 = sub_2665C530C();

  return v2;
}

uint64_t sub_266572798(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3F0, &unk_26666F120) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266572834, 0, 0);
}

uint64_t sub_266572834()
{
  v1 = *(v0 + 72);
  EventUSOIntentWrapper = type metadata accessor for CreateEventUSOIntentWrapper();
  *(v0 + 88) = EventUSOIntentWrapper;
  v3 = *(v1 + EventUSOIntentWrapper[8]);
  sub_26666A658();
  v4 = *(v0 + 56);
  *(v0 + 96) = v4;
  if (v4)
  {
    v5 = *(v0 + 72);
    v6 = EventUSOIntentWrapper[6];
    *(v0 + 152) = v6;
    v7 = __swift_project_boxed_opaque_existential_1((v5 + v6), *(v5 + v6 + 24));
    *(v0 + 104) = sub_266640D2C(v4, *v7, 0);
    v8 = sub_26666AA08();
    if (v9)
    {
      v8 = sub_2666683AC(*(v0 + 72), v8);
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    *(v0 + 112) = v8;
    *(v0 + 120) = v11;
    v20 = (*(v0 + 72) + EventUSOIntentWrapper[5]);
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    *(v0 + 128) = sub_26666A9E8();
    if (qword_28007CDB0 != -1)
    {
      swift_once();
    }

    v21 = sub_26666B628();
    __swift_project_value_buffer(v21, qword_2800956E0);
    v22 = swift_task_alloc();
    *(v0 + 136) = v22;
    *v22 = v0;
    v22[1] = sub_266572AFC;
    v23 = *(v0 + 64);

    return sub_2665C798C();
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v12 = sub_26666C168();
    __swift_project_value_buffer(v12, qword_28156D7E8);
    v13 = sub_26666C148();
    v14 = sub_26666C618();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_266549000, v13, v14, "[CreateEventUSOIntentWrapper] USO Parse does not contain a target, creating empty intent", v15, 2u);
      MEMORY[0x266789690](v15, -1, -1);
    }

    [objc_allocWithZone(MEMORY[0x277CD3B20]) init];
    v16 = *(v0 + 80);

    v17 = OUTLINED_FUNCTION_1_10();

    return v18(v17);
  }
}

uint64_t sub_266572AFC(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_266572C1C, 0, 0);
}

uint64_t sub_266572C1C()
{
  v36 = v0;
  v33 = *(v0 + 120);
  v34 = *(v0 + 144);
  v32 = *(v0 + 112);
  v1 = *(v0 + 104);
  v2 = *(v0 + 152);
  v3 = *(v0 + 80);
  v4 = *(v0 + 72);
  v5 = (v4 + *(*(v0 + 88) + 28));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v8 = sub_26666A9D8();
  v9 = sub_26666A258();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  sub_26655358C(v4 + v2, v0 + 16);
  v10 = sub_26663B210(v8, v3, v0 + 16, v6, v7);

  sub_266557D74(v0 + 16, &qword_28007D3F8, &qword_26667B390);
  sub_266557D74(v3, &qword_28007D3F0, &unk_26666F120);
  v11 = sub_2665D9924();
  v12 = objc_allocWithZone(MEMORY[0x277CD3B20]);
  v13 = sub_266571D5C(v32, v33, v34, v10, v11);
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v14 = sub_26666C168();
  __swift_project_value_buffer(v14, qword_28156D7E8);
  v15 = v13;
  v16 = sub_26666C148();
  v17 = sub_26666C618();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35 = v19;
    *v18 = 136315138;
    v20 = v15;
    v21 = [v20 description];
    v22 = sub_26666C308();
    v24 = v23;

    v25 = sub_2665BFC90(v22, v24, &v35);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_266549000, v16, v17, "[CreateEventUSOIntentWrapper] Parsed Intent: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x266789690](v19, -1, -1);
    MEMORY[0x266789690](v18, -1, -1);
  }

  v27 = *(v0 + 96);
  v26 = *(v0 + 104);
  sub_2665EFC38();

  v28 = *(v0 + 80);

  v29 = OUTLINED_FUNCTION_1_10();

  return v30(v29);
}

uint64_t sub_266572EF8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_266572F90;

  return sub_266572798(0, a2);
}

uint64_t sub_266572F90()
{
  v1 = *(*v0 + 16);
  v5 = *v0;

  v2 = OUTLINED_FUNCTION_1_10();

  return v3(v2);
}

uint64_t Snippet.ComposeEventModel.eventName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Snippet.ComposeEventModel.eventName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Snippet.ComposeEventModel.eventNameWithParticipants.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Snippet.ComposeEventModel.eventNameWithParticipants.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Snippet.ComposeEventModel.eventStart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Snippet.ComposeEventModel() + 28);

  return sub_26655E020(v3, a1);
}

uint64_t type metadata accessor for Snippet.ComposeEventModel()
{
  result = qword_28156C738;
  if (!qword_28156C738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Snippet.ComposeEventModel.eventStart.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_9_4() + 28);

  return sub_2665732A4(v0, v2);
}

uint64_t sub_2665732A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Snippet.ComposeEventModel.eventEnd.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Snippet.ComposeEventModel() + 32);

  return sub_26655E020(v3, a1);
}

uint64_t Snippet.ComposeEventModel.eventEnd.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_9_4() + 32);

  return sub_2665732A4(v0, v2);
}

uint64_t Snippet.ComposeEventModel.isAllDay.setter(char a1)
{
  result = type metadata accessor for Snippet.ComposeEventModel();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t Snippet.ComposeEventModel.recurrenceFrequency.setter(char a1)
{
  result = type metadata accessor for Snippet.ComposeEventModel();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t Snippet.ComposeEventModel.participants.getter()
{
  v1 = *(v0 + *(type metadata accessor for Snippet.ComposeEventModel() + 44));
}

uint64_t Snippet.ComposeEventModel.participants.setter()
{
  v2 = *(OUTLINED_FUNCTION_9_4() + 44);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t Snippet.ComposeEventModel.location.getter()
{
  v1 = (v0 + *(type metadata accessor for Snippet.ComposeEventModel() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Snippet.ComposeEventModel.location.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Snippet.ComposeEventModel() + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Snippet.ComposeEventModel.init(prompt:eventName:eventNameWithParticipants:eventStart:eventEnd:isAllDay:recurrenceFrequency:participants:location:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = type metadata accessor for Snippet.ComposeEventModel();
  v19 = v18[7];
  v20 = sub_266668D38();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  v24 = v18[8];
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v20);
  v28 = v18[10];
  v29 = (a9 + v18[12]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  sub_2665732A4(a6, a9 + v19);
  result = sub_2665732A4(a7, a9 + v24);
  *(a9 + v18[9]) = a8;
  *(a9 + v28) = a10;
  *(a9 + v18[11]) = a11;
  *v29 = a12;
  v29[1] = a13;
  return result;
}

uint64_t sub_2665737B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D614E746E657665 && a2 == 0xE900000000000065;
    if (v6 || (sub_26666CAC8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000019 && 0x800000026667DD70 == a2;
      if (v7 || (sub_26666CAC8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x617453746E657665 && a2 == 0xEA00000000007472;
        if (v8 || (sub_26666CAC8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x646E45746E657665 && a2 == 0xE800000000000000;
          if (v9 || (sub_26666CAC8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7961446C6C417369 && a2 == 0xE800000000000000;
            if (v10 || (sub_26666CAC8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000013 && 0x800000026667DD90 == a2;
              if (v11 || (sub_26666CAC8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61;
                if (v12 || (sub_26666CAC8() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_26666CAC8();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_266573A9C(char a1)
{
  result = 0x74706D6F7270;
  switch(a1)
  {
    case 1:
      result = 0x6D614E746E657665;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0x617453746E657665;
      break;
    case 4:
      result = 0x646E45746E657665;
      break;
    case 5:
      result = 0x7961446C6C417369;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x7069636974726170;
      break;
    case 8:
      result = 0x6E6F697461636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266573BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665737B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266573C00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266573A94();
  *a1 = result;
  return result;
}

uint64_t sub_266573C28(uint64_t a1)
{
  v2 = sub_266573FC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266573C64(uint64_t a1)
{
  v2 = sub_266573FC8();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.ComposeEventModel.encode(to:)()
{
  OUTLINED_FUNCTION_15_3();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D408, &qword_26666F148);
  OUTLINED_FUNCTION_3_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v28 - v12;
  v14 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_266573FC8();
  sub_26666CBE8();
  LOBYTE(v29) = *v2;
  sub_26657401C();
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_5_5();
  sub_26666CA38();
  if (!v1)
  {
    v15 = *(v2 + 8);
    v16 = *(v2 + 16);
    LOBYTE(v29) = 1;
    OUTLINED_FUNCTION_5_5();
    sub_26666CA18();
    v17 = *(v2 + 24);
    v18 = *(v2 + 32);
    LOBYTE(v29) = 2;
    OUTLINED_FUNCTION_5_5();
    sub_26666CA18();
    v19 = type metadata accessor for Snippet.ComposeEventModel();
    v20 = v19[7];
    LOBYTE(v29) = 3;
    sub_266668D38();
    OUTLINED_FUNCTION_3_8();
    sub_2665747B4(v21, v22);
    OUTLINED_FUNCTION_5_5();
    sub_26666CA38();
    v23 = v19[8];
    LOBYTE(v29) = 4;
    OUTLINED_FUNCTION_5_5();
    sub_26666CA38();
    v24 = *(v2 + v19[9]);
    LOBYTE(v29) = 5;
    OUTLINED_FUNCTION_5_5();
    sub_26666CA58();
    LOBYTE(v29) = *(v2 + v19[10]);
    sub_266574070();
    OUTLINED_FUNCTION_10_4();
    OUTLINED_FUNCTION_5_5();
    sub_26666CA38();
    v29 = *(v2 + v19[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D430, &qword_26666F150);
    sub_266574718(&qword_28007D438, &qword_28007D440);
    OUTLINED_FUNCTION_10_4();
    OUTLINED_FUNCTION_5_5();
    sub_26666CA78();
    v25 = (v2 + v19[12]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v29) = 8;
    OUTLINED_FUNCTION_5_5();
    sub_26666CA18();
  }

  (*(v7 + 8))(v13, v5);
  OUTLINED_FUNCTION_16_3();
}

unint64_t sub_266573FC8()
{
  result = qword_28007D410;
  if (!qword_28007D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D410);
  }

  return result;
}

unint64_t sub_26657401C()
{
  result = qword_28007D418;
  if (!qword_28007D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D418);
  }

  return result;
}

unint64_t sub_266574070()
{
  result = qword_28007D428;
  if (!qword_28007D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D428);
  }

  return result;
}

void Snippet.ComposeEventModel.init(from:)()
{
  OUTLINED_FUNCTION_15_3();
  v66 = v0;
  v2 = v1;
  v62 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v60 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D448, &qword_26666F158);
  OUTLINED_FUNCTION_3_0(v65);
  v63 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v16, v17);
  v19 = v60 - v18;
  v20 = type metadata accessor for Snippet.ComposeEventModel();
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v23 + 28);
  v27 = sub_266668D38();
  v68 = v26;
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  v31 = v20;
  v69 = *(v20 + 32);
  v67 = v25;
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v27);
  v36 = v2[3];
  v35 = v2[4];
  v70 = v2;
  v37 = __swift_project_boxed_opaque_existential_1(v2, v36);
  sub_266573FC8();
  v64 = v19;
  v38 = v66;
  sub_26666CBD8();
  if (v38)
  {
    OUTLINED_FUNCTION_11_5();
    v39 = v31;
    v42 = v68;
    v41 = v69;
    v43 = v67;
    __swift_destroy_boxed_opaque_existential_1(v70);

    sub_266574608(&v43[v42]);
    sub_266574608(&v43[v41]);
    if (v37)
    {
      v44 = *&v43[v39[11]];
    }
  }

  else
  {
    v66 = v12;
    v61 = v9;
    sub_266574670();
    OUTLINED_FUNCTION_13_3();
    v40 = v31;
    v45 = v67;
    *v67 = v71;
    OUTLINED_FUNCTION_2_9(1);
    v46 = sub_26666C988();
    v47 = v68;
    v45[1] = v46;
    v45[2] = v48;
    v60[2] = v48;
    OUTLINED_FUNCTION_2_9(2);
    v49 = sub_26666C988();
    v50 = v69;
    v45[3] = v49;
    v45[4] = v51;
    v60[1] = v51;
    LOBYTE(v71) = 3;
    OUTLINED_FUNCTION_3_8();
    sub_2665747B4(v52, v53);
    sub_26666C9A8();
    sub_2665732A4(v66, v45 + v47);
    LOBYTE(v71) = 4;
    sub_26666C9A8();
    sub_2665732A4(v61, v45 + v50);
    OUTLINED_FUNCTION_2_9(5);
    *(v45 + v40[9]) = sub_26666C9C8() & 1;
    sub_2665746C4();
    OUTLINED_FUNCTION_13_3();
    *(v45 + v40[10]) = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D430, &qword_26666F150);
    sub_266574718(&qword_28007D468, &qword_28007D470);
    sub_26666C9E8();
    *(v45 + v40[11]) = v71;
    OUTLINED_FUNCTION_2_9(8);
    v54 = sub_26666C988();
    v56 = v55;
    v57 = (v45 + v40[12]);
    v58 = OUTLINED_FUNCTION_7_7();
    v59(v58);
    *v57 = v54;
    v57[1] = v56;
    sub_2665747FC(v45, v62);
    __swift_destroy_boxed_opaque_existential_1(v70);
    sub_266574860(v45);
  }

  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_266574608(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266574670()
{
  result = qword_28007D450;
  if (!qword_28007D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D450);
  }

  return result;
}

unint64_t sub_2665746C4()
{
  result = qword_28007D460;
  if (!qword_28007D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D460);
  }

  return result;
}

uint64_t sub_266574718(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007D430, &qword_26666F150);
    sub_2665747B4(a2, type metadata accessor for Snippet.Participant);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2665747B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2665747FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.ComposeEventModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266574860(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.ComposeEventModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2665748BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26666CAC8();

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

uint64_t sub_266574988(char a1)
{
  if (a1)
  {
    return 1702125924;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_2665749F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665748BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266574A20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266574980();
  *a1 = result;
  return result;
}

uint64_t sub_266574A48(uint64_t a1)
{
  v2 = sub_266574E88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266574A84(uint64_t a1)
{
  v2 = sub_266574E88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266574AE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266553E9C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_266574B0C(uint64_t a1)
{
  v2 = sub_266574EDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266574B48(uint64_t a1)
{
  v2 = sub_266574EDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266574B84(uint64_t a1)
{
  v2 = sub_266574F30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266574BC0(uint64_t a1)
{
  v2 = sub_266574F30();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.Prompt.encode(to:)()
{
  OUTLINED_FUNCTION_15_3();
  v34 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D478, &qword_26666F160);
  v4 = OUTLINED_FUNCTION_3_0(v3);
  v32 = v5;
  v33 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v31 - v10;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D480, &qword_26666F168);
  OUTLINED_FUNCTION_3_0(v31);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v31 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D488, &qword_26666F170);
  OUTLINED_FUNCTION_3_0(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v31 - v27;
  v29 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_266574E88();
  sub_26666CBE8();
  v30 = (v22 + 8);
  if (v34)
  {
    sub_266574EDC();
    sub_26666CA08();
    (*(v32 + 8))(v11, v33);
  }

  else
  {
    sub_266574F30();
    sub_26666CA08();
    (*(v13 + 8))(v19, v31);
  }

  (*v30)(v28, v20);
  OUTLINED_FUNCTION_16_3();
}

unint64_t sub_266574E88()
{
  result = qword_28007D490;
  if (!qword_28007D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D490);
  }

  return result;
}

unint64_t sub_266574EDC()
{
  result = qword_28007D498;
  if (!qword_28007D498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D498);
  }

  return result;
}

unint64_t sub_266574F30()
{
  result = qword_28007D4A0;
  if (!qword_28007D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D4A0);
  }

  return result;
}

void Snippet.Prompt.init(from:)()
{
  OUTLINED_FUNCTION_15_3();
  v53 = v0;
  v2 = v1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4A8, &qword_26666F178);
  OUTLINED_FUNCTION_3_0(v52);
  v50 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4B0, &qword_26666F180);
  OUTLINED_FUNCTION_3_0(v10);
  v49 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4B8, &qword_26666F188);
  OUTLINED_FUNCTION_3_0(v18);
  v51 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v46 - v24;
  v26 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_266574E88();
  v27 = v53;
  sub_26666CBD8();
  if (v27)
  {
    goto LABEL_8;
  }

  v47 = v10;
  v48 = v17;
  v53 = v2;
  v28 = v52;
  v29 = sub_26666C9F8();
  sub_266575484(v29, 0);
  if (v32 == v33 >> 1)
  {
LABEL_7:
    v39 = sub_26666C848();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4C0, &qword_26666F190) + 48);
    *v41 = &type metadata for Snippet.Prompt;
    sub_26666C978();
    sub_26666C838();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v51 + 8))(v25, v18);
    v2 = v53;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_9:
    OUTLINED_FUNCTION_16_3();
    return;
  }

  v46 = 0;
  if (v32 < (v33 >> 1))
  {
    v34 = *(v31 + v32);
    sub_266575D50(v32 + 1, v33 >> 1, v30, v31, v32, v33);
    v36 = v35;
    v38 = v37;
    swift_unknownObjectRelease();
    if (v36 == v38 >> 1)
    {
      if (v34)
      {
        LODWORD(v49) = v34;
        sub_266574EDC();
        OUTLINED_FUNCTION_12_3();
        swift_unknownObjectRelease();
        (*(v50 + 8))(v9, v28);
      }

      else
      {
        sub_266574F30();
        v43 = v48;
        OUTLINED_FUNCTION_12_3();
        swift_unknownObjectRelease();
        (*(v49 + 8))(v43, v47);
      }

      v44 = OUTLINED_FUNCTION_4_8();
      v45(v44);
      __swift_destroy_boxed_opaque_existential_1(v53);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void sub_26657542C(_BYTE *a1@<X8>)
{
  Snippet.Prompt.init(from:)();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

void sub_266575484(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_11();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_2665754C0()
{
  result = qword_28007D4C8;
  if (!qword_28007D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D4C8);
  }

  return result;
}

uint64_t sub_26657553C()
{
  sub_2665756C0(319, &qword_28156C470);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2665756C0(319, &qword_28156C138);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_26657570C(319, &qword_28156D158, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_2665756C0(319, qword_28156C5E8);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_26657570C(319, &qword_28156C128, type metadata accessor for Snippet.Participant, MEMORY[0x277D83940]);
      if (v8 > 0x3F)
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

void sub_2665756C0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26666C6B8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_26657570C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

_BYTE *sub_266575780(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s17ComposeEventModelV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s17ComposeEventModelV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2665759E4()
{
  result = qword_28007D4D0;
  if (!qword_28007D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D4D0);
  }

  return result;
}

unint64_t sub_266575A3C()
{
  result = qword_28007D4D8;
  if (!qword_28007D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D4D8);
  }

  return result;
}

unint64_t sub_266575A94()
{
  result = qword_28007D4E0;
  if (!qword_28007D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D4E0);
  }

  return result;
}

unint64_t sub_266575AEC()
{
  result = qword_28007D4E8;
  if (!qword_28007D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D4E8);
  }

  return result;
}

unint64_t sub_266575B44()
{
  result = qword_28007D4F0;
  if (!qword_28007D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D4F0);
  }

  return result;
}

unint64_t sub_266575B9C()
{
  result = qword_28007D4F8;
  if (!qword_28007D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D4F8);
  }

  return result;
}

unint64_t sub_266575BF4()
{
  result = qword_28007D500;
  if (!qword_28007D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D500);
  }

  return result;
}

unint64_t sub_266575C4C()
{
  result = qword_28007D508;
  if (!qword_28007D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D508);
  }

  return result;
}

unint64_t sub_266575CA4()
{
  result = qword_28007D510;
  if (!qword_28007D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D510);
  }

  return result;
}

unint64_t sub_266575CFC()
{
  result = qword_28007D518;
  if (!qword_28007D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D518);
  }

  return result;
}

uint64_t sub_266575D50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_9@<X0>(char a1@<W8>)
{
  *(v1 - 88) = a1;
  result = v1 - 88;
  v4 = *(v1 - 144);
  v3 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_7()
{
  v2 = *(v0 + 8);
  result = *(v1 - 144);
  v4 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_4()
{

  return type metadata accessor for Snippet.ComposeEventModel();
}

uint64_t OUTLINED_FUNCTION_12_3()
{
  v2 = *(v0 - 144);

  return sub_26666C968();
}

uint64_t OUTLINED_FUNCTION_13_3()
{
  v3 = *(v0 - 144);
  v2 = *(v0 - 136);

  return sub_26666C9A8();
}

uint64_t sub_266575F1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D520, &qword_26666F648);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v9 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26666E050;
  *(v6 + 32) = v0;

  sub_26666A488();
  v7 = sub_26666A498();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  MEMORY[0x266786700](v6, v5);

  sub_26657604C(v5);
  sub_26666A0D8();
}

uint64_t sub_26657604C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D520, &qword_26666F648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2665760B4(void *a1)
{
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v2 = sub_26666C168();
  __swift_project_value_buffer(v2, qword_28156D7E8);
  v3 = a1;
  v4 = sub_26666C148();
  v5 = sub_26666C5E8();
  v6 = &off_279BCF000;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 134218498;
    *(v7 + 4) = [v3 interval];

    *(v7 + 12) = 2080;
    [v3 frequency];
    type metadata accessor for EKRecurrenceFrequency(0);
    v9 = sub_26666C318();
    v11 = sub_2665BFC90(v9, v10, &v24);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2080;
    v23 = sub_266576450(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D528, &qword_26666F658);
    v12 = sub_26666C318();
    v14 = sub_2665BFC90(v12, v13, &v24);
    v6 = &off_279BCF000;

    *(v7 + 24) = v14;
    _os_log_impl(&dword_266549000, v4, v5, "#INRecurrenceRule interval: %ld, frequency: %s, daysOfTheWeek: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266789690](v8, -1, -1);
    MEMORY[0x266789690](v7, -1, -1);
  }

  else
  {
  }

  if (qword_28007CD90 != -1)
  {
    swift_once();
  }

  v15 = sub_266576394([v3 &off_279BCFC78], qword_280095650);
  if (v16)
  {

    return 0;
  }

  else
  {
    v18 = v15;
    v19 = [v3 v6[491]];
    v20 = sub_266576450(v3);
    if (v20)
    {
      v21 = sub_2665C9F14(v20);
    }

    else
    {
      v21 = 0;
    }

    v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInterval:v19 frequency:v18 weeklyRecurrenceDays:v21];
  }

  return v17;
}

uint64_t sub_266576394(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_2665C580C();
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

double sub_2665763EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_2665C53A8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_2665764F4(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_266576450(void *a1)
{
  v1 = [a1 daysOfTheWeek];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2665764B0();
  v3 = sub_26666C498();

  return v3;
}

unint64_t sub_2665764B0()
{
  result = qword_28007D530;
  if (!qword_28007D530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28007D530);
  }

  return result;
}

uint64_t sub_2665764F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for FindEventsOrdinalReference(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for FindEventsOrdinalReference(_BYTE *result, unsigned int a2, unsigned int a3)
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