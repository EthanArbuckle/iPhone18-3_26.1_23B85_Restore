BOOL sub_266608658(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2 != 40 && sub_266603C24(a2, &unk_287803FF0);
  if (qword_28007CE68 != -1)
  {
    swift_once();
  }

  v4 = a2;
  type metadata accessor for CalendarNLv3Intent(0);
  OUTLINED_FUNCTION_0_37();
  sub_26660DF18(v5, v6);
  v7 = sub_26666A538();
  v8 = sub_266603C24(6, v7);

  if (v4 == 40)
  {
    v9 = sub_26662F520();
    if (v3 || v9)
    {
      v10 = 0;
      v11 = !v3 || v9;
      goto LABEL_12;
    }
  }

  else if (v3)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_12;
  }

  v11 = 0;
  v10 = !v8;
LABEL_12:
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v12 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v12, qword_28156D7E8);
  v13 = sub_26666C148();
  v14 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109888;
    v16 = OUTLINED_FUNCTION_45_3(v15, v10);
    *(v16 + 16) = v11;
    *(v16 + 20) = v17;
    *(v16 + 22) = v8;
    OUTLINED_FUNCTION_46();
    _os_log_impl(v18, v19, v20, v21, v22, 0x1Au);
    OUTLINED_FUNCTION_12();
  }

  return v10;
}

uint64_t sub_26660883C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266608900;

  return sub_266606D0C();
}

uint64_t sub_266608900()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_25();

  return v7(v6);
}

uint64_t sub_2666089F4@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for UpdateEventNLv3IntentWrapper();
  a1[4] = &off_28780A6B0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_26660E030(v1, boxed_opaque_existential_1);
}

uint64_t sub_266608A50()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 88) = v0;
  *(v1 + 161) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_3(v3);
  v5 = *(v4 + 64);
  *(v1 + 96) = OUTLINED_FUNCTION_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3D8, &unk_2666746C0);
  OUTLINED_FUNCTION_3_3(v6);
  v8 = *(v7 + 64);
  *(v1 + 104) = OUTLINED_FUNCTION_19();
  v9 = type metadata accessor for CalendarNLv3Intent(0);
  *(v1 + 112) = v9;
  OUTLINED_FUNCTION_3_3(v9);
  v11 = *(v10 + 64);
  *(v1 + 120) = OUTLINED_FUNCTION_19();
  v12 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_266608B28()
{
  v71 = v0;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = sub_26666C168();
  __swift_project_value_buffer(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v4);
    OUTLINED_FUNCTION_4_0(&dword_266549000, v5, v6, "[UpdateEventNLv3IntentWrapper] Making FindEventsIntent");
    OUTLINED_FUNCTION_10();
  }

  v7 = *(v0 + 161);

  if (v7 == 1)
  {
    v8 = *(v0 + 88);
    sub_26655A274(*(v0 + 120));
  }

  else
  {
    sub_26660E030(*(v0 + 88), *(v0 + 120));
  }

  v9 = *(v0 + 120);
  v10 = [objc_allocWithZone(MEMORY[0x277CD3C10]) init];
  *(v0 + 128) = v10;
  v11 = sub_26662EB9C();
  *(v0 + 162) = v11;
  v12 = sub_26666C148();
  v13 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v13))
  {
    v14 = OUTLINED_FUNCTION_21();
    v15 = OUTLINED_FUNCTION_13_0();
    v70 = v15;
    *v14 = 136315138;
    *(v0 + 160) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F158, &qword_266678030);
    v16 = sub_26666C318();
    v18 = sub_2665BFC90(v16, v17, &v70);

    *(v14 + 4) = v18;
    OUTLINED_FUNCTION_46();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12();
  }

  v24 = *(v0 + 120);
  v25 = *(v0 + 88);
  [v10 setRequestedEventAttribute_];
  sub_26662DD18();
  v27 = v26;
  updated = type metadata accessor for UpdateEventNLv3IntentWrapper();
  *(v0 + 136) = updated;
  sub_26655358C(v25 + updated[7], v0 + 16);
  if (v27)
  {
    v29 = *(v0 + 40);
    v30 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v29);
    v31 = sub_26663B9AC(v27, v29, v30);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (v31)
    {
      sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
      OUTLINED_FUNCTION_29_1();
      v27 = sub_26666C488();
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  [v10 setParticipants_];

  if (v11 == 40)
  {
    goto LABEL_16;
  }

  sub_26662F1A4(v11);
  if (v40 == 1701667182 && v39 == 0xE400000000000000)
  {

    goto LABEL_29;
  }

  v42 = sub_26666CAC8();

  if ((v42 & 1) == 0)
  {
LABEL_16:
    if (qword_28007CE58 != -1)
    {
      OUTLINED_FUNCTION_7_22();
    }

    v33 = *(v0 + 112);
    v32 = *(v0 + 120);
    OUTLINED_FUNCTION_0_37();
    sub_26660DF18(v34, v35);
    sub_26666A528();
    if (*(v0 + 64))
    {
      v36 = *(v0 + 56);
      v37 = *(v0 + 64);
      v38 = sub_26666C2F8();
    }

    else
    {
      v38 = 0;
    }

    [v10 setSearchQuery_];
  }

LABEL_29:
  if (sub_266608658(*(v0 + 120), v11))
  {
    v43 = (*(v0 + 88) + updated[6]);
    __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    if (qword_28007CE50 != -1)
    {
      OUTLINED_FUNCTION_4_30();
    }

    v45 = *(v0 + 112);
    v44 = *(v0 + 120);
    v46 = *(v0 + 104);
    OUTLINED_FUNCTION_0_37();
    sub_26660DF18(v47, v48);
    sub_26666A528();
    if (qword_28007CDA8 != -1)
    {
      swift_once();
    }

    v49 = *(v0 + 96);
    v50 = sub_26666B628();
    v51 = __swift_project_value_buffer(v50, qword_2800956C8);
    sub_266668D38();
    v52 = OUTLINED_FUNCTION_40_2();
    __swift_storeEnumTagSinglePayload(v52, v53, 1, v54);
    OUTLINED_FUNCTION_7_9(&dword_266677FE0);
    v69 = v55;
    v56 = swift_task_alloc();
    *(v0 + 144) = v56;
    *v56 = v0;
    v56[1] = sub_2666091C8;
    v57 = *(v0 + 96);
    v58 = *(v0 + 104);

    return v69(v58, v51, 1, v57);
  }

  else
  {
    if (sub_2666094B4(*(v0 + 120), *(v0 + 162)))
    {
      if (qword_28007CE60 != -1)
      {
        OUTLINED_FUNCTION_2_8();
      }

      v60 = *(v0 + 112);
      v61 = *(v0 + 120);
      v10 = qword_280095840;
      OUTLINED_FUNCTION_0_37();
      sub_26660DF18(v62, v63);
      OUTLINED_FUNCTION_93();
      if (*(v0 + 80))
      {
        v64 = *(v0 + 72);
        v10 = sub_266552C44(0, &qword_28007F370, 0x277CBFC40);
        v65 = objc_allocWithZone(MEMORY[0x277CE41F8]);
        OUTLINED_FUNCTION_97();
        OUTLINED_FUNCTION_42_4([updated init]);
        OUTLINED_FUNCTION_79();
      }

      else
      {
        v64 = 0;
      }

      [*(v0 + 128) setLocation_];
    }

    OUTLINED_FUNCTION_72();
    objc_opt_self();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_99();
    v66 = OUTLINED_FUNCTION_68();

    OUTLINED_FUNCTION_1_36();
    sub_26660E088(v10, v67);

    OUTLINED_FUNCTION_8();

    return v68(v66);
  }
}

uint64_t sub_2666091C8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_24_9();
  *v2 = v1;
  v4 = v3[18];
  v5 = v3[13];
  v6 = v3[12];
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v10 + 152) = v9;

  sub_26656CAEC(v6, &qword_28007D140, &qword_26666F140);
  sub_26656CAEC(v5, &qword_28007D3D8, &unk_2666746C0);
  v11 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266609304()
{
  v3 = *(v1 + 152);
  [*(v1 + 128) setDateTimeRange_];

  if (sub_2666094B4(*(v1 + 120), *(v1 + 162)))
  {
    if (qword_28007CE60 != -1)
    {
      OUTLINED_FUNCTION_2_8();
    }

    v4 = *(v1 + 112);
    v5 = *(v1 + 120);
    v0 = qword_280095840;
    OUTLINED_FUNCTION_0_37();
    sub_26660DF18(v6, v7);
    OUTLINED_FUNCTION_93();
    if (*(v1 + 80))
    {
      v8 = *(v1 + 72);
      v0 = sub_266552C44(0, &qword_28007F370, 0x277CBFC40);
      v9 = objc_allocWithZone(MEMORY[0x277CE41F8]);
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_42_4([v2 init]);
      OUTLINED_FUNCTION_79();
    }

    else
    {
      v8 = 0;
    }

    [*(v1 + 128) setLocation_];
  }

  OUTLINED_FUNCTION_72();
  objc_opt_self();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_99();
  v10 = OUTLINED_FUNCTION_68();

  OUTLINED_FUNCTION_1_36();
  sub_26660E088(v0, v11);

  OUTLINED_FUNCTION_8();

  return v12(v10);
}

uint64_t sub_2666094B4(uint64_t a1, char a2)
{
  if (a2 == 40)
  {
LABEL_2:
    if (qword_28156C150 == -1)
    {
LABEL_3:
      v2 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v2, qword_28156D7E8);
      v3 = sub_26666C148();
      v4 = sub_26666C618();
      if (OUTLINED_FUNCTION_9(v4))
      {
        v5 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_15(v5);
        OUTLINED_FUNCTION_4_0(&dword_266549000, v6, v7, "[UpdateEventNLv3IntentWrapper] Update attribute is not location, including location is find intent");
        v8 = 1;
LABEL_28:
        OUTLINED_FUNCTION_10();
        goto LABEL_29;
      }

      v8 = 1;
      goto LABEL_29;
    }

LABEL_31:
    OUTLINED_FUNCTION_1_1();
    goto LABEL_3;
  }

  sub_26662F1A4(a2);
  if (v10 == 0x6E6F697461636F6CLL && v9 == 0xE800000000000000)
  {
  }

  else
  {
    v12 = sub_26666CAC8();

    if ((v12 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  v13 = sub_26662F520();
  if (qword_28007CE88 != -1)
  {
    swift_once();
  }

  type metadata accessor for CalendarNLv3Intent(0);
  OUTLINED_FUNCTION_0_37();
  sub_26660DF18(v14, v15);
  v16 = sub_26666A538();
  v17 = v16;
  v18 = *(v16 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = (v16 + 40);
    while (2)
    {
      if (v19 < *(v17 + 16))
      {
        v22 = *(v20 - 1);
        v21 = *v20;

        OUTLINED_FUNCTION_62();
        v23 = sub_26666C958();

        switch(v23)
        {
          case 0:

            v8 = 0;
            v25 = 0;
            goto LABEL_24;
          case 1:
          case 2:
          case 3:
            v24 = sub_26666CAC8();

            if ((v24 & 1) == 0)
            {
              goto LABEL_20;
            }

            v8 = 0;
            v25 = 0;
            goto LABEL_24;
          default:
LABEL_20:
            ++v19;
            v20 += 2;
            if (v18 == v19)
            {
              goto LABEL_21;
            }

            continue;
        }
      }

      break;
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_21:
  v25 = 1;
  v8 = v13;
LABEL_24:

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v26 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v26, qword_28156D7E8);
  v3 = sub_26666C148();
  v27 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 67109632;
    *(OUTLINED_FUNCTION_45_3(v28, v8 & 1) + 16) = v25;
    _os_log_impl(&dword_266549000, v3, v27, "[UpdateEventNLv3IntentWrapper] shouldIncludeLocation: %{BOOL}d hasConnectingPreposition: %{BOOL}d hasNoPrepositionOfTo: %{BOOL}d", v28, 0x14u);
    goto LABEL_28;
  }

LABEL_29:

  return v8 & 1;
}

uint64_t sub_2666097F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266559F10;

  return sub_266608A50();
}

uint64_t sub_26660988C()
{
  OUTLINED_FUNCTION_36_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  *(v1 + 232) = v8;
  *(v1 + 32) = v6;
  *(v1 + 40) = v0;
  v9 = sub_266668EB8();
  *(v1 + 48) = v9;
  OUTLINED_FUNCTION_3_1(v9);
  *(v1 + 56) = v10;
  v12 = *(v11 + 64);
  *(v1 + 64) = OUTLINED_FUNCTION_19();
  v13 = sub_266668E68();
  *(v1 + 72) = v13;
  OUTLINED_FUNCTION_3_1(v13);
  *(v1 + 80) = v14;
  v16 = *(v15 + 64);
  *(v1 + 88) = OUTLINED_FUNCTION_19();
  v17 = sub_266668B08();
  *(v1 + 96) = v17;
  OUTLINED_FUNCTION_3_1(v17);
  *(v1 + 104) = v18;
  v20 = *(v19 + 64);
  *(v1 + 112) = OUTLINED_FUNCTION_19();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  OUTLINED_FUNCTION_3_3(v21);
  v23 = *(v22 + 64) + 15;
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F130, &unk_266678000);
  *(v1 + 192) = v24;
  OUTLINED_FUNCTION_3_1(v24);
  *(v1 + 200) = v25;
  v27 = *(v26 + 64);
  v28 = OUTLINED_FUNCTION_19();
  *(v1 + 208) = v28;
  v29 = swift_task_alloc();
  *(v1 + 216) = v29;
  *v29 = v1;
  v29[1] = sub_266609B20;

  return sub_266639B50(v28, v7, v3, v5);
}

uint64_t sub_266609B20()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_24_9();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  if (v0)
  {
    v9 = sub_26660A478;
  }

  else
  {
    v9 = sub_266609C1C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_266609C1C()
{
  v128 = v0;
  v1 = *(v0 + 40);
  v2 = sub_26660A778(*(v0 + 208));
  if (v2)
  {
    v3 = v2;
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v4 = sub_26666C168();
    __swift_project_value_buffer(v4, qword_28156D7E8);
    v5 = sub_26666C148();
    v6 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v6))
    {
      v7 = OUTLINED_FUNCTION_21();
      v127 = OUTLINED_FUNCTION_13_0();
      v8 = v127;
      *v7 = 136315138;
      v9 = v3;
      v10 = [v9 description];
      v11 = sub_26666C308();
      v13 = v12;

      v14 = sub_2665BFC90(v11, v13, &v127);

      *(v7 + 4) = v14;
      OUTLINED_FUNCTION_46();
      _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_12();
    }

    v20 = [v3 startDateComponents];
    if (v20)
    {
      v21 = v20;
      v22 = *(v0 + 176);
      sub_266668A28();

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    v25 = *(v0 + 176);
    v24 = *(v0 + 184);
    v26 = 1;
    __swift_storeEnumTagSinglePayload(v25, v23, 1, *(v0 + 96));
    sub_2665D515C(v25, v24);
    v27 = [v3 endDateComponents];
    if (v27)
    {
      v28 = v27;
      v29 = *(v0 + 160);
      sub_266668A28();

      v26 = 0;
    }

    v31 = *(v0 + 160);
    v30 = *(v0 + 168);
    __swift_storeEnumTagSinglePayload(v31, v26, 1, *(v0 + 96));
    sub_2665D515C(v31, v30);
    v32 = [v3 allDay];
    if (v32 && (v33 = v32, v34 = [v32 BOOLValue], v33, v34))
    {
      v35 = sub_26666C148();
      v36 = sub_26666C618();
      if (OUTLINED_FUNCTION_7_2(v36))
      {
        v37 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_15(v37);
        _os_log_impl(&dword_266549000, v35, v36, "[CalendarDateTimeResolving] date components are set to all day, mutating time on start and end.", v34, 2u);
        OUTLINED_FUNCTION_10();
      }

      v38 = *(v0 + 184);
      v39 = *(v0 + 152);
      v40 = *(v0 + 96);

      v41 = OUTLINED_FUNCTION_62();
      sub_2665A17F8(v41, v42, v43, v44);
      if (__swift_getEnumTagSinglePayload(v39, 1, v40) == 1)
      {
        sub_26656CAEC(*(v0 + 152), &unk_28007DC90, &qword_266676EB0);
        v45 = sub_26666C148();
        v46 = sub_26666C608();
        if (OUTLINED_FUNCTION_7_2(v46))
        {
          *OUTLINED_FUNCTION_20() = 0;
          OUTLINED_FUNCTION_46();
          _os_log_impl(v47, v48, v49, v50, v51, 2u);
          OUTLINED_FUNCTION_12();
        }

        v53 = *(v0 + 200);
        v52 = *(v0 + 208);
        v55 = *(v0 + 184);
        v54 = *(v0 + 192);
        v56 = *(v0 + 168);

        sub_26656CAEC(v55, &unk_28007DC90, &qword_266676EB0);
        v57 = *(v53 + 8);
        v58 = OUTLINED_FUNCTION_62();
        v59(v58);
        sub_26656CAEC(v56, &unk_28007DC90, &qword_266676EB0);

        goto LABEL_20;
      }

      v72 = *(v0 + 184);
      v73 = *(v0 + 136);
      v75 = *(v0 + 104);
      v74 = *(v0 + 112);
      v76 = *(v0 + 96);
      v124 = *(v75 + 32);
      v126 = *(v0 + 168);
      v124(v74, *(v0 + 152), v76);
      sub_266668A68();
      sub_266668AA8();
      sub_266668AC8();
      sub_26656CAEC(v72, &unk_28007DC90, &qword_266676EB0);
      v77 = *(v75 + 16);
      v77(v72, v74, v76);
      OUTLINED_FUNCTION_65_0(v72);
      sub_2665A17F8(v126, v73, &unk_28007DC90, &qword_266676EB0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v73, 1, v76);
      v79 = *(v0 + 144);
      if (EnumTagSinglePayload == 1)
      {
        v80 = *(v0 + 96);
        v77(v79, *(v0 + 112), v80);
        v81 = OUTLINED_FUNCTION_40_2();
        if (__swift_getEnumTagSinglePayload(v81, v82, v80) != 1)
        {
          sub_26656CAEC(*(v0 + 136), &unk_28007DC90, &qword_266676EB0);
        }
      }

      else
      {
        v124(v79, *(v0 + 136), *(v0 + 96));
      }

      v83 = *(v0 + 168);
      v84 = *(v0 + 144);
      v85 = *(v0 + 96);
      OUTLINED_FUNCTION_65_0(v84);
      sub_26660DF5C(v84, v83);
      v86 = OUTLINED_FUNCTION_40_2();
      if (!__swift_getEnumTagSinglePayload(v86, v87, v85))
      {
        v88 = *(v0 + 168);
        sub_266668A68();
      }

      v89 = *(v0 + 168);
      v90 = *(v0 + 96);
      v91 = OUTLINED_FUNCTION_40_2();
      if (!__swift_getEnumTagSinglePayload(v91, v92, v90))
      {
        sub_266668AA8();
        v93 = *(v0 + 168);
        v90 = *(v0 + 96);
      }

      v94 = OUTLINED_FUNCTION_40_2();
      if (!__swift_getEnumTagSinglePayload(v94, v95, v90))
      {
        sub_266668AC8();
        v90 = *(v0 + 96);
      }

      (*(*(v0 + 104) + 8))(*(v0 + 112), v90);
    }

    else
    {
      v60 = v3;
      sub_2665D3034();
      v62 = v61;

      if (v62)
      {
        v63 = sub_26666C148();
        v64 = sub_26666C5F8();
        if (OUTLINED_FUNCTION_7_2(v64))
        {
          *OUTLINED_FUNCTION_20() = 0;
          OUTLINED_FUNCTION_46();
          _os_log_impl(v65, v66, v67, v68, v69, 2u);
          OUTLINED_FUNCTION_12();
        }

        v70 = *(v0 + 168);
        v71 = *(v0 + 96);

        sub_26656CAEC(v70, &unk_28007DC90, &qword_266676EB0);
        __swift_storeEnumTagSinglePayload(v70, 1, 1, v71);
      }
    }

    v96 = *(v0 + 168);
    v97 = *(v0 + 120);
    sub_2665A17F8(*(v0 + 184), *(v0 + 128), &unk_28007DC90, &qword_266676EB0);
    OUTLINED_FUNCTION_90();
    sub_2665A17F8(v98, v99, v100, &qword_266676EB0);
    v101 = [v3 recurrenceRule];
    v102 = [v3 userInput];
    if (v102)
    {
      v103 = v102;
      v104 = sub_26666C308();
      v106 = v105;
    }

    else
    {
      v104 = 0;
      v106 = 0;
    }

    v108 = *(v0 + 120);
    v107 = *(v0 + 128);
    v109 = *(v0 + 232);
    v110 = [v3 allDay];
    v111 = objc_allocWithZone(MEMORY[0x277CD3B68]);
    v112 = OUTLINED_FUNCTION_86();
    v114 = sub_26660B270(v112, v113, v101, v104, v106, v110);

    v116 = *(v0 + 200);
    v115 = *(v0 + 208);
    v118 = *(v0 + 184);
    v117 = *(v0 + 192);
    if (v109 == 1)
    {
      v119 = v114;
      sub_2665D42A4();
      v121 = v120;

      sub_26656CAEC(v118, &unk_28007DC90, &qword_266676EB0);
      (*(v116 + 8))(v115, v117);
    }

    else
    {
      sub_26656CAEC(*(v0 + 184), &unk_28007DC90, &qword_266676EB0);
      (*(v116 + 8))(v115, v117);
      v121 = v114;
    }

    v125 = v121;
    sub_26656CAEC(*(v0 + 168), &unk_28007DC90, &qword_266676EB0);

    goto LABEL_43;
  }

  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
LABEL_20:
  v125 = 0;
LABEL_43:
  OUTLINED_FUNCTION_33_6();

  OUTLINED_FUNCTION_8();

  return v122(v125);
}

uint64_t sub_26660A478()
{
  v35 = v0;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = v0[28];
  v2 = v0[4];
  v3 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v3, qword_28156D7E8);
  v4 = v1;

  v5 = sub_26666C148();
  v6 = sub_26666C5F8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[28];
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v9 = 136315394;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D658, &qword_266672610);
    v11 = sub_26666C318();
    v13 = sub_2665BFC90(v11, v12, &v34);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v0[3] = v8;
    sub_26666B998();
    sub_26660DF18(&qword_28007F138, MEMORY[0x277D56498]);
    v14 = sub_26666CAA8();
    v16 = sub_2665BFC90(v14, v15, &v34);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_266549000, v5, v6, "[CalendarDateTimeResolving] makeRecommendation threw error: %s, returning %s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12();
  }

  v17 = v0[28];
  v19 = v0[10];
  v18 = v0[11];
  v21 = v0[8];
  v20 = v0[9];
  v22 = v0[6];
  v23 = v0[7];
  v24 = v0[4];
  sub_266668E58();
  sub_266668EA8();
  v33 = sub_26666B948();

  v25 = *(v23 + 8);
  v26 = OUTLINED_FUNCTION_86();
  v27(v26);
  v28 = *(v19 + 8);
  v29 = OUTLINED_FUNCTION_62();
  v30(v29);
  OUTLINED_FUNCTION_33_6();

  OUTLINED_FUNCTION_8();

  return v31(v33);
}

uint64_t sub_26660A778(uint64_t a1)
{
  v2 = sub_266668EB8();
  v71 = *(v2 - 1);
  v72 = v2;
  v3 = *(v71 + 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_266668E68();
  v7 = *(v70 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v70, v9);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F130, &unk_266678000);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = (&v69 - v20);
  v22 = *(v13 + 16);
  v22(&v69 - v20, a1, v12);
  v23 = (*(v13 + 88))(v21, v12);
  if (v23 == *MEMORY[0x277D56080])
  {
    (*(v13 + 96))(v21, v12);
    v24 = *v21;
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v25 = sub_26666C168();
    __swift_project_value_buffer(v25, qword_28156D7E8);

    v26 = sub_26666C148();
    v27 = sub_26666C618();

    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_12;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v73 = v24;
    v74 = v29;
    *v28 = 136315138;
    sub_26666B998();
    sub_26660DF18(&qword_28007F138, MEMORY[0x277D56498]);
    v30 = sub_26666CAA8();
    v32 = sub_2665BFC90(v30, v31, &v74);

    *(v28 + 4) = v32;
    v33 = "[CalendarDateTimeResolving] confidently resolved to %s";
    goto LABEL_11;
  }

  if (v23 != *MEMORY[0x277D56068])
  {
    if (v23 == *MEMORY[0x277D56070])
    {
      (*(v13 + 96))(v21, v12);
      v41 = *v21;
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v42 = sub_26666C168();
      __swift_project_value_buffer(v42, qword_28156D7E8);

      v43 = sub_26666C148();
      v44 = sub_26666C618();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v74 = v46;
        *v45 = 134218242;
        *(v45 + 4) = sub_2665C485C(v41);

        *(v45 + 12) = 2080;
        v47 = sub_2665C485C(v41);
        if (v47)
        {
          sub_2665C4864(0, (v41 & 0xC000000000000001) == 0, v41);
          if ((v41 & 0xC000000000000001) != 0)
          {
            v47 = MEMORY[0x266788B60](0, v41);
          }

          else
          {
            v48 = *(v41 + 32);
          }
        }

        v73 = v47;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F148, &qword_266678010);
        v49 = sub_26666C318();
        v51 = sub_2665BFC90(v49, v50, &v74);

        *(v45 + 14) = v51;
        _os_log_impl(&dword_266549000, v43, v44, "[CalendarDateTimeResolving] found %ld recommendations, picking the first one of %s", v45, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x266789690](v46, -1, -1);
        MEMORY[0x266789690](v45, -1, -1);
      }

      else
      {
      }

      if (sub_2665C485C(v41))
      {
        sub_2665C4864(0, (v41 & 0xC000000000000001) == 0, v41);
        if ((v41 & 0xC000000000000001) != 0)
        {
          MEMORY[0x266788B60](0, v41);
        }

        else
        {
          v56 = *(v41 + 32);
        }

        sub_266668E58();
        sub_266668EA8();
        v39 = sub_26666B948();
        goto LABEL_13;
      }
    }

    else if (v23 == *MEMORY[0x277D56078])
    {
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v52 = sub_26666C168();
      __swift_project_value_buffer(v52, qword_28156D7E8);
      v53 = sub_26666C148();
      v54 = sub_26666C618();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_266549000, v53, v54, "[CalendarDateTimeResolving] made no recommendation", v55, 2u);
        MEMORY[0x266789690](v55, -1, -1);
      }
    }

    else
    {
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v57 = sub_26666C168();
      __swift_project_value_buffer(v57, qword_28156D7E8);
      v22(v18, a1, v12);
      v58 = sub_26666C148();
      v59 = sub_26666C5F8();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v71 = v60;
        v72 = swift_slowAlloc();
        v74 = v72;
        *v60 = 136315138;
        sub_26660DFCC();
        v61 = sub_26666CAA8();
        v63 = v62;
        v64 = *(v13 + 8);
        v64(v18, v12);
        v65 = sub_2665BFC90(v61, v63, &v74);

        v66 = v71;
        *(v71 + 1) = v65;
        v67 = v66;
        _os_log_impl(&dword_266549000, v58, v59, "[CalendarDateTimeResolving] unhandled recommendation of %s, returning nil", v66, 0xCu);
        v68 = v72;
        __swift_destroy_boxed_opaque_existential_1(v72);
        MEMORY[0x266789690](v68, -1, -1);
        MEMORY[0x266789690](v67, -1, -1);
      }

      else
      {

        v64 = *(v13 + 8);
        v64(v18, v12);
      }

      v64(v21, v12);
    }

    return 0;
  }

  (*(v13 + 96))(v21, v12);
  v34 = *v21;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v35 = sub_26666C168();
  __swift_project_value_buffer(v35, qword_28156D7E8);

  v26 = sub_26666C148();
  v27 = sub_26666C618();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v73 = v34;
    v74 = v29;
    *v28 = 136315138;
    sub_26666B998();
    sub_26660DF18(&qword_28007F138, MEMORY[0x277D56498]);
    v36 = sub_26666CAA8();
    v38 = sub_2665BFC90(v36, v37, &v74);

    *(v28 + 4) = v38;
    v33 = "[CalendarDateTimeResolving] unconfidently resolved to %s";
LABEL_11:
    _os_log_impl(&dword_266549000, v26, v27, v33, v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x266789690](v29, -1, -1);
    MEMORY[0x266789690](v28, -1, -1);
  }

LABEL_12:

  sub_266668E58();
  sub_266668EA8();
  v39 = sub_26666B948();
LABEL_13:

  (*(v71 + 1))(v6, v72);
  (*(v7 + 8))(v11, v70);
  return v39;
}

id sub_26660B190(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  if (!a2)
  {
    v12 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = sub_26666C2F8();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
  v13 = sub_26666C488();

LABEL_6:
  v14 = [v7 initWithSearchQuery:v12 dateTimeRange:a3 participants:v13 location:a5 requestedEventAttribute:a6];

  return v14;
}

id sub_26660B270(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  OUTLINED_FUNCTION_33_2();
  v12 = sub_266668B08();
  v13 = OUTLINED_FUNCTION_40_2();
  v15 = 0;
  if (__swift_getEnumTagSinglePayload(v13, v14, v12) != 1)
  {
    v15 = sub_266668A18();
    (*(*(v12 - 8) + 8))(v6, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) != 1)
  {
    v16 = sub_266668A18();
    (*(*(v12 - 8) + 8))(a2, v12);
    if (a5)
    {
      goto LABEL_5;
    }

LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  v16 = 0;
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_5:
  v17 = sub_26666C2F8();

LABEL_8:
  v18 = [v7 initWithStartDateComponents:v15 endDateComponents:v16 recurrenceRule:a3 userInput:v17 allDay:a6];

  return v18;
}

uint64_t sub_26660B3E0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_266677F70;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_26660B444(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_26666CB88();
  sub_26664B664(a2);
  sub_26666C368();

  v6 = sub_26666CBC8();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    OUTLINED_FUNCTION_19_8();
    v27 = v10;
    v28 = v11;
    OUTLINED_FUNCTION_19_8();
    v25 = v12;
    v26 = v13;
    while (1)
    {
      v14 = 0xE800000000000000;
      v15 = 0x656C746954746573;
      switch(*(*(v4 + 48) + v8))
      {
        case 1:
          break;
        case 2:
          v15 = OUTLINED_FUNCTION_89();
          v14 = v26;
          break;
        case 3:
          v15 = 0x7461636F4C746573;
          v14 = 0xEB000000006E6F69;
          break;
        case 4:
          v15 = 0x6974726150646461;
          v14 = 0xEF73746E61706963;
          break;
        case 5:
          v15 = 0xD000000000000012;
          v14 = v27;
          break;
        case 6:
          v15 = 0xD000000000000014;
          v14 = v28;
          break;
        default:
          v15 = 0xD000000000000015;
          v14 = v25;
          break;
      }

      v16 = 0xE800000000000000;
      v17 = 0x656C746954746573;
      switch(a2)
      {
        case 1:
          break;
        case 2:
          OUTLINED_FUNCTION_87();
          v16 = v26;
          break;
        case 3:
          v17 = 0x7461636F4C746573;
          v16 = 0xEB000000006E6F69;
          break;
        case 4:
          v17 = 0x6974726150646461;
          v16 = 0xEF73746E61706963;
          break;
        case 5:
          v17 = 0xD000000000000012;
          v16 = v27;
          break;
        case 6:
          v17 = 0xD000000000000014;
          v16 = v28;
          break;
        default:
          v17 = 0xD000000000000015;
          v16 = v25;
          break;
      }

      if (v15 == v17 && v14 == v16)
      {
        break;
      }

      v19 = sub_26666CAC8();

      if (v19)
      {
        goto LABEL_25;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

LABEL_25:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v8);
  }

  else
  {
LABEL_23:
    v20 = *v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v23;
    sub_26660C4EC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v23 = v29;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_26660B73C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_26666C778();

    if (v9)
    {

      sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
    }

    else
    {
      result = sub_26666C768();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_26660BAAC(v7, result + 1);
        v18 = *(v17 + 16);
        if (*(v17 + 24) <= v18)
        {
          sub_26660BFE8(v18 + 1);
        }

        v19 = v8;
        sub_26660C468(v19, v17);

        *v3 = v17;
LABEL_16:
        *a1 = v19;
        return 1;
      }
    }
  }

  else
  {
    sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
    v11 = *(v6 + 40);
    v12 = sub_26666C668();
    v13 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v14 = v12 & v13;
      if (((*(v6 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
      {
        v20 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *v3;
        v19 = a2;
        sub_26660C838(v19, v14, isUniquelyReferenced_nonNull_native);
        *v3 = v25;
        goto LABEL_16;
      }

      v15 = *(*(v6 + 48) + 8 * v14);
      v16 = sub_26666C678();

      if (v16)
      {
        break;
      }

      v12 = v14 + 1;
    }

    v22 = *(*(v6 + 48) + 8 * v14);
    *a1 = v22;
    v23 = v22;
    return 0;
  }

  return result;
}

BOOL sub_26660B960(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_26666CB88();
  sub_26666C368();
  v9 = sub_26666CBC8();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_26666CAC8() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_26660C99C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_26660BAAC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F168, &unk_266678040);
    v2 = sub_26666C7C8();
    v16 = v2;
    sub_26666C758();
    while (1)
    {
      if (!sub_26666C788())
      {

        return v2;
      }

      sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_26660BFE8(v3 + 1);
      }

      v2 = v16;
      v4 = *(v16 + 40);
      result = sub_26666C668();
      v6 = v16 + 56;
      v7 = -1 << *(v16 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v16 + 48) + 8 * v10) = v15;
      ++*(v16 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_26660BC88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F150, &qword_266678018);
  result = sub_26666C7B8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_26660B3E0(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_26666CB88();
    sub_26666C368();

    result = sub_26666CBC8();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26660BFE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F168, &unk_266678040);
  result = sub_26666C7B8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_26660B3E0(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_26666C668();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26660C20C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F160, &qword_266678038);
  result = sub_26666C7B8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_26660B3E0(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_26666CB88();
    sub_26666C368();
    result = sub_26666CBC8();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_26660C468(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_26666C668();
  v5 = -1 << *(a2 + 32);
  result = sub_26666C748();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_26660C4EC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_30;
  }

  if (a3)
  {
    sub_26660BC88(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_26660CB04();
      goto LABEL_30;
    }

    sub_26660CEEC(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_26666CB88();
  sub_26664B664(v5);
  sub_26666C368();

  result = sub_26666CBC8();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = 0xE800000000000000;
      v13 = 0x656C746954746573;
      switch(*(*(v8 + 48) + a2))
      {
        case 1:
          break;
        case 2:
          v13 = 0xD000000000000010;
          v12 = 0x800000026667CD80;
          break;
        case 3:
          v13 = 0x7461636F4C746573;
          v12 = 0xEB000000006E6F69;
          break;
        case 4:
          v13 = 0x6974726150646461;
          v12 = 0xEF73746E61706963;
          break;
        case 5:
          v13 = 0xD000000000000012;
          v12 = 0x800000026667CDB0;
          break;
        case 6:
          v13 = 0xD000000000000014;
          v12 = 0x800000026667CDD0;
          break;
        default:
          v13 = 0xD000000000000015;
          v12 = 0x800000026667CD60;
          break;
      }

      v14 = 0xE800000000000000;
      v15 = 0x656C746954746573;
      switch(v5)
      {
        case 1:
          break;
        case 2:
          v15 = 0xD000000000000010;
          v14 = 0x800000026667CD80;
          break;
        case 3:
          v15 = 0x7461636F4C746573;
          v14 = 0xEB000000006E6F69;
          break;
        case 4:
          v15 = 0x6974726150646461;
          v14 = 0xEF73746E61706963;
          break;
        case 5:
          v15 = 0xD000000000000012;
          v14 = 0x800000026667CDB0;
          break;
        case 6:
          v15 = 0xD000000000000014;
          v14 = 0x800000026667CDD0;
          break;
        default:
          v15 = 0xD000000000000015;
          v14 = 0x800000026667CD60;
          break;
      }

      if (v13 == v15 && v12 == v14)
      {
        goto LABEL_33;
      }

      v17 = sub_26666CAC8();

      if (v17)
      {
        goto LABEL_34;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_30:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_33:

LABEL_34:
  result = sub_26666CAF8();
  __break(1u);
  return result;
}

uint64_t sub_26660C838(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26660BFE8(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_26660D21C(v6 + 1);
LABEL_8:
      v8 = *v3;
      v9 = *(*v3 + 40);
      result = sub_26666C668();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v10;
        if (((*(v8 + 56 + (((result & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = sub_26666C678();

        if (v12)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_26660CC44();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    result = sub_26666CAF8();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }

  return result;
}

uint64_t sub_26660C99C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_26660C20C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_26660D42C(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_26666CB88();
      sub_26666C368();
      result = sub_26666CBC8();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_26666CAC8() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_26660CD94();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_26666CAF8();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_26660CB04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F150, &qword_266678018);
  v2 = *v0;
  v3 = sub_26666C7A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_26660CC44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F168, &unk_266678040);
  v2 = *v0;
  v3 = sub_26666C7A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26660CD94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F160, &qword_266678038);
  v2 = *v0;
  v3 = sub_26666C7A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_26660CEEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F150, &qword_266678018);
  result = sub_26666C7B8();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_26666CB88();
        sub_26666C368();

        result = sub_26666CBC8();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26660D21C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F168, &unk_266678040);
  result = sub_26666C7B8();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v6 + 40);
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        result = sub_26666C668();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26660D42C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F160, &qword_266678038);
  result = sub_26666C7B8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_26666CB88();

        sub_26666C368();
        result = sub_26666CBC8();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

id sub_26660D660(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  updated = type metadata accessor for UpdateEventNLv3IntentWrapper();
  v9 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated - 8, v10);
  v12 = &v52[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54[3] = &type metadata for CalendarReferenceResolver;
  v54[4] = &off_28780BAC8;
  v54[0] = a3;

  v13 = a1;
  if (a2 & 1) != 0 && (sub_2665667CC())
  {
    v14 = sub_26662E9D4();
    if (v14 == 40 || sub_266576A08(v14) == 4)
    {
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v15 = sub_26666C168();
      __swift_project_value_buffer(v15, qword_28156D7E8);
      v16 = sub_26666C148();
      v17 = sub_26666C618();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_266549000, v16, v17, "[FindEventsIntentWrapping] All slots are empty, attempting to resolve calendar event from context", v18, 2u);
        MEMORY[0x266789690](v18, -1, -1);
      }

      v19 = *__swift_project_boxed_opaque_existential_1(v54, &type metadata for CalendarReferenceResolver);
      sub_26663E15C();
      if (v20)
      {
        v21 = sub_26666C148();
        v22 = sub_26666C618();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_266549000, v21, v22, "[FindEventsIntentWrapping] Found calendar event in SRR using that as title and date search", v23, 2u);
          MEMORY[0x266789690](v23, -1, -1);
        }

        v24 = sub_26666AA08();
        v26 = v25;
        if (sub_26666A9E8())
        {
          v27 = sub_26655F060();
        }

        else
        {
          v27 = 0;
        }

        v31 = objc_allocWithZone(MEMORY[0x277CD3C10]);
        v32 = sub_26660B190(v24, v26, v27, 0, 0, 0);

        v13 = v32;
      }

      else
      {
        v28 = sub_26666C148();
        v29 = sub_26666C618();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_266549000, v28, v29, "[FindEventsIntentWrapping] No calendar event found in SRR", v30, 2u);
          MEMORY[0x266789690](v30, -1, -1);
        }
      }
    }
  }

  v33 = v13;
  v34 = sub_2665EFC38();

  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v35 = sub_26666C168();
  __swift_project_value_buffer(v35, qword_28156D7E8);
  v36 = sub_26666C148();
  v37 = sub_26666C618();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v34;
    *v39 = v34;
    v40 = v34;
    _os_log_impl(&dword_266549000, v36, v37, "[FindEventsIntentWrapping] Parsed FindEventsIntent: %@", v38, 0xCu);
    sub_26656CAEC(v39, &unk_28007DCA0, &qword_26666E370);
    MEMORY[0x266789690](v39, -1, -1);
    MEMORY[0x266789690](v38, -1, -1);
  }

  sub_26660E030(a4, v12);
  v41 = sub_26666C148();
  v42 = sub_26666C618();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v53 = v44;
    *v43 = 136315138;
    v45 = sub_26662E9D4();
    if (v45 == 40)
    {
      v46 = 4;
    }

    else
    {
      v46 = sub_266576A08(v45);
    }

    v52[15] = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB50, &unk_266671C90);
    v47 = sub_26666C318();
    v49 = v48;
    sub_26660E088(v12, type metadata accessor for UpdateEventNLv3IntentWrapper);
    v50 = sub_2665BFC90(v47, v49, &v53);

    *(v43 + 4) = v50;
    _os_log_impl(&dword_266549000, v41, v42, "[FindEventsIntentWrapping] Parsed ordinal reference: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x266789690](v44, -1, -1);
    MEMORY[0x266789690](v43, -1, -1);
  }

  else
  {

    sub_26660E088(v12, type metadata accessor for UpdateEventNLv3IntentWrapper);
  }

  __swift_destroy_boxed_opaque_existential_1(v54);
  return v34;
}

id sub_26660DC0C()
{
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v0 = sub_2665EFC38();
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v1 = sub_26666C168();
  __swift_project_value_buffer(v1, qword_28156D7E8);
  v2 = v0;
  v3 = sub_26666C148();
  v4 = sub_26666C618();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    v21 = v2;
    v7 = v2;
    v8 = [v7 description];
    v9 = sub_26666C308();
    v11 = v10;

    v12 = sub_2665BFC90(v9, v11, &v22);

    *(v5 + 4) = v12;
    v2 = v21;
    _os_log_impl(&dword_266549000, v3, v4, "[UpdateEventUSOIntentWrapper] Parsed Intent: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x266789690](v6, -1, -1);
    MEMORY[0x266789690](v5, -1, -1);
  }

  v13 = sub_26666C148();
  v14 = sub_26666C618();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    sub_26659A3E0();
    v17 = sub_26666C558();
    v19 = sub_2665BFC90(v17, v18, &v22);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_266549000, v13, v14, "[UpdateEventUSOIntentWrapper] Parameters to Update: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x266789690](v16, -1, -1);
    MEMORY[0x266789690](v15, -1, -1);
  }

  return v2;
}

uint64_t type metadata accessor for UpdateEventNLv3IntentWrapper()
{
  result = qword_28007F170;
  if (!qword_28007F170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26660DF18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26660DF5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26660DFCC()
{
  result = qword_28007F140;
  if (!qword_28007F140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007F130, &unk_266678000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F140);
  }

  return result;
}

uint64_t sub_26660E030(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_33_2();
  v5 = v4(v3);
  OUTLINED_FUNCTION_18_2(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_25();
  v9(v8);
  return a2;
}

uint64_t sub_26660E088(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_18_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26660E108()
{
  result = type metadata accessor for CalendarNLv3Intent(319);
  if (v1 <= 0x3F)
  {
    result = sub_266668D98();
    if (v2 <= 0x3F)
    {
      result = sub_26655EC10(319, qword_28156CF58);
      if (v3 <= 0x3F)
      {
        result = sub_26655EC10(319, qword_28156CB10);
        if (v4 <= 0x3F)
        {
          result = sub_26655EC10(319, &qword_28156CF50);
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

uint64_t OUTLINED_FUNCTION_4_30()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_21()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_22()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_13()
{

  return sub_26666CAC8();
}

id OUTLINED_FUNCTION_22_6()
{
  v2 = v0[21];
  v3 = v0[17];
  v4 = v0[10];
  v5 = v0[6];

  return sub_26660DC0C();
}

uint64_t OUTLINED_FUNCTION_33_6()
{
  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[14];
  v13 = v0[11];
  v14 = v0[8];
}

id OUTLINED_FUNCTION_42_4(void *a1)
{

  return sub_266606794(a1, v2, v1, 0);
}

uint64_t OUTLINED_FUNCTION_45_3@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(result + 4) = a2;
  *(result + 8) = 1024;
  *(result + 10) = v2 & 1;
  *(result + 14) = 1024;
  return result;
}

uint64_t OUTLINED_FUNCTION_47_3()
{
}

uint64_t OUTLINED_FUNCTION_50_1(uint64_t a1)
{
  v3 = (v2 + *(a1 + 28));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);

  return sub_26663B9AC(v1, v4, v5);
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 72);
  return *(v2 + 120);
}

uint64_t OUTLINED_FUNCTION_64()
{
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];
}

uint64_t OUTLINED_FUNCTION_65_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_66()
{

  return swift_dynamicCastObjCClassUnconditional();
}

uint64_t OUTLINED_FUNCTION_67()
{

  return sub_26666CAC8();
}

id OUTLINED_FUNCTION_68()
{

  return sub_26660D660(v1, 1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_69()
{

  return sub_26666C368();
}

uint64_t OUTLINED_FUNCTION_70()
{

  return sub_26666CB88();
}

void OUTLINED_FUNCTION_72()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
}

uint64_t OUTLINED_FUNCTION_93()
{

  return sub_26666A528();
}

id OUTLINED_FUNCTION_96(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_97()
{
}

id OUTLINED_FUNCTION_99()
{
  v3 = *__swift_project_boxed_opaque_existential_1((v1 + *(v2 + 32)), *(v1 + *(v2 + 32) + 24));

  return v0;
}

_BYTE *storeEnumTagSinglePayload for CalendarAppViewRepresentation(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26660E94C()
{
  result = qword_28007F190;
  if (!qword_28007F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F190);
  }

  return result;
}

uint64_t sub_26660E9A0()
{
  v0 = sub_26666C958();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26660E9EC(char a1)
{
  result = 7954788;
  switch(a1)
  {
    case 1:
      result = 1801807223;
      break;
    case 2:
      result = 0x68746E6F6DLL;
      break;
    case 3:
      result = 0x6E6F4D74696C7073;
      break;
    case 4:
      result = 1918985593;
      break;
    case 5:
      result = 1953720684;
      break;
    case 6:
      result = 0x686372616573;
      break;
    case 7:
      result = 0x7261646E656C6163;
      break;
    case 8:
      result = 0x786F626E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26660EAE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26660E9A0();
  *a2 = result;
  return result;
}

uint64_t sub_26660EB18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26660E9EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26660EB44()
{
  v0 = qword_28007F180;

  return v0;
}

uint64_t sub_26660EB8C(uint64_t a1)
{
  v2 = sub_26660EFD0();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_26660EBC8(uint64_t a1)
{
  v2 = sub_26660EFD0();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_26660EC04(uint64_t a1, uint64_t a2)
{
  v4 = sub_26660EE74();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_26660EC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26660EFD0();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_26660ECB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26660EE74();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_26660ED04()
{
  result = qword_28007F198;
  if (!qword_28007F198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F198);
  }

  return result;
}

unint64_t sub_26660ED5C()
{
  result = qword_28007F1A0;
  if (!qword_28007F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F1A0);
  }

  return result;
}

unint64_t sub_26660EDB4()
{
  result = qword_28007F1A8;
  if (!qword_28007F1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007F1B0, &qword_266678180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F1A8);
  }

  return result;
}

unint64_t sub_26660EE1C()
{
  result = qword_28007F1B8;
  if (!qword_28007F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F1B8);
  }

  return result;
}

unint64_t sub_26660EE74()
{
  result = qword_28007F1C0;
  if (!qword_28007F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F1C0);
  }

  return result;
}

unint64_t sub_26660EECC()
{
  result = qword_28007F1C8;
  if (!qword_28007F1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F1C8);
  }

  return result;
}

unint64_t sub_26660EF24()
{
  result = qword_28007F1D0;
  if (!qword_28007F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F1D0);
  }

  return result;
}

unint64_t sub_26660EF7C()
{
  result = qword_28007F1D8;
  if (!qword_28007F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F1D8);
  }

  return result;
}

unint64_t sub_26660EFD0()
{
  result = qword_28007F1E0;
  if (!qword_28007F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F1E0);
  }

  return result;
}

uint64_t sub_26660F028()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F378, &qword_266678448);
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_26666BA58();
}

id sub_26660F0D0(int a1)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_26666BE18();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v37 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CalendarDateTimeResolver();
  v10 = OUTLINED_FUNCTION_18_2(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler__correctionsClient;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F378, &qword_266678448);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *&v1[v16] = sub_26666BA68();
  v1[OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_shouldConfirmIntent] = 1;
  sub_266669638();
  v15[3] = &type metadata for AceUserLocationProvider;
  v15[4] = &off_28780A9C8;
  OUTLINED_FUNCTION_4();
  v20 = swift_allocObject();
  *v15 = v20;
  sub_2665524C0(v44, v20 + 16);
  v21 = v15 + *(v9 + 20);
  sub_266668D88();
  v22 = v15 + *(v9 + 24);
  sub_26666B548();
  if (qword_28156CD28 != -1)
  {
    swift_once();
  }

  v23 = qword_28156D828;
  v24 = type metadata accessor for CorrectionsFlowProvider();
  v42 = v24;
  v43 = &off_287806310;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v41);
  v26 = type metadata accessor for EventProvider();
  boxed_opaque_existential_1[3] = v26;
  boxed_opaque_existential_1[4] = &off_287806290;
  *boxed_opaque_existential_1 = v23;
  boxed_opaque_existential_1[8] = type metadata accessor for CalendarFlowCreator();
  boxed_opaque_existential_1[9] = &off_28780A3E0;
  v27 = __swift_allocate_boxed_opaque_existential_1(boxed_opaque_existential_1 + 5);
  swift_retain_n();
  sub_2665FB6EC(v27);
  sub_266669E68();
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  v28 = boxed_opaque_existential_1 + *(v24 + 24);
  sub_266669648();
  v29 = (boxed_opaque_existential_1 + *(v24 + 28));
  v29[3] = v9;
  v29[4] = &off_28780BA58;
  v30 = __swift_allocate_boxed_opaque_existential_1(v29);
  sub_26661709C(v15, v30);
  __swift_destroy_boxed_opaque_existential_1(v40);
  sub_26654B7D8(&v41, &v2[OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_correctionsFlowProvider]);
  v31 = &v2[OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_featureManager];
  *(v31 + 3) = &type metadata for SiriCalendarFeatureManager;
  *(v31 + 4) = &protocol witness table for SiriCalendarFeatureManager;
  v32 = &v2[OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_eventProvider];
  v32[3] = v26;
  v32[4] = &off_287806290;
  *v32 = v23;
  sub_266669E68();
  sub_26654B7D8(&v41, &v2[OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_deviceState]);
  type metadata accessor for CommonCATsSimple();
  sub_26666BE08();
  *&v2[OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_commonCats] = sub_26666BDD8();
  v42 = &type metadata for AceUserLocationProvider;
  v43 = &off_28780A9C8;
  OUTLINED_FUNCTION_4();
  v33 = swift_allocObject();
  *&v41 = v33;
  v34 = v44[1];
  *(v33 + 16) = v44[0];
  *(v33 + 32) = v34;
  *(v33 + 48) = v45;
  sub_266617100(v15, type metadata accessor for CalendarDateTimeResolver);
  sub_26654B7D8(&v41, &v2[OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_locationProvider]);
  v2[OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_mentionedNoun] = v38;
  v35 = _s13IntentHandlerCMa_1();
  v39.receiver = v2;
  v39.super_class = v35;
  return objc_msgSendSuper2(&v39, sel_init);
}

uint64_t sub_26660F4A8()
{
  v33 = v0;
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
    _os_log_impl(&dword_266549000, v2, v3, "[CreateEvent.IntentHander] resolveTitle", v4, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v5 = *(v0 + 16);

  v6 = sub_26659A29C(v5, &selRef_title);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_26666C148();
    v11 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v11))
    {
      v12 = OUTLINED_FUNCTION_21();
      v13 = swift_slowAlloc();
      v32 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_2665BFC90(v8, v9, &v32);
      OUTLINED_FUNCTION_12_4();
      _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_9_5();
    }

    v19 = objc_opt_self();
    v20 = sub_26666C2F8();

    v21 = [v19 successWithResolvedString_];
  }

  else
  {
    v22 = sub_26666C148();
    v23 = sub_26666C618();
    if (OUTLINED_FUNCTION_9(v23))
    {
      v24 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v24);
      OUTLINED_FUNCTION_4_9();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      OUTLINED_FUNCTION_10();
    }

    sub_266552C44(0, &unk_28007D170, 0x277CD4218);
    v21 = [swift_getObjCClassFromMetadata() needsValue];
  }

  OUTLINED_FUNCTION_8();

  return v30(v21);
}

uint64_t sub_26660F734(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_26660F7F4;

  return sub_26660F494(v6);
}

uint64_t sub_26660F7F4()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  OUTLINED_FUNCTION_5_1();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v9 = v8;

  v10 = v5[2];
  v11 = OUTLINED_FUNCTION_25();
  v12(v11);
  _Block_release(v5);

  v13 = *(v8 + 8);

  return v13();
}

uint64_t sub_26660F944()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_266668D38();
  v1[4] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v1[5] = v4;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26660FA08()
{
  v1 = [*(v0 + 16) dateTimeRange];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 startDate];
  if (!v3)
  {

LABEL_10:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v19 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v19, qword_28156D7E8);
    v20 = sub_26666C148();
    v21 = sub_26666C618();
    if (OUTLINED_FUNCTION_9(v21))
    {
      v22 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v22);
      OUTLINED_FUNCTION_4_9();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_10();
    }

    sub_266552C44(0, &qword_28156C0A0, 0x277CD3B70);
    v17 = [swift_getObjCClassFromMetadata() needsValue];
    goto LABEL_28;
  }

  v4 = v3;
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  v9 = *(v0 + 32);
  sub_266668CE8();

  sub_266668CF8();
  sub_266668CB8();
  v10 = *(v8 + 8);
  v10(v7, v9);
  LOBYTE(v4) = sub_266668CA8();
  v10(v6, v9);
  if (v4)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v11 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v11, qword_28156D7E8);
    v12 = sub_26666C148();
    v13 = sub_26666C5E8();
    if (OUTLINED_FUNCTION_7_1(v13))
    {
      v14 = OUTLINED_FUNCTION_20();
      *v14 = 0;
      _os_log_impl(&dword_266549000, v12, v5, "[CreateEvent.IntentHander] startDate is in the past, returning unsupportedPastDateTime", v14, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v15 = *(v0 + 64);
    v16 = *(v0 + 32);

    v17 = [objc_opt_self() resolutionResultUnsupportedWithReason_];
    v18 = v15;
LABEL_25:
    v10(v18, v16);
    goto LABEL_28;
  }

  v28 = *(v0 + 24);
  sub_2665D1CD4();
  v29 = __swift_project_boxed_opaque_existential_1((v28 + OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_eventProvider), *(v28 + OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_eventProvider + 24));
  v30 = sub_266616490(v2, *v29, 0, 0);
  if (!v30)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v40 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v40, qword_28156D7E8);
    v41 = v2;
    v42 = sub_26666C148();
    v43 = sub_26666C618();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_21();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v41;
      *v45 = v2;
      v46 = v41;
      OUTLINED_FUNCTION_35_6();
      _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
      sub_26656CAEC(v45, &unk_28007DCA0, &qword_26666E370);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_9_5();
    }

    v52 = *(v0 + 64);
    v16 = *(v0 + 32);

    v17 = [objc_opt_self() successWithResolvedDateComponentsRange_];
    v18 = v52;
    goto LABEL_25;
  }

  v17 = v30;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v31 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v31, qword_28156D7E8);
  v32 = sub_26666C148();
  v33 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v33))
  {
    *OUTLINED_FUNCTION_20() = 0;
    OUTLINED_FUNCTION_12_4();
    _os_log_impl(v34, v35, v36, v37, v38, 2u);
    OUTLINED_FUNCTION_9_5();
    v39 = v32;
  }

  else
  {
    v39 = v2;
    v2 = v32;
  }

  v53 = *(v0 + 24);
  v10(*(v0 + 64), *(v0 + 32));
  *(v53 + OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_shouldConfirmIntent) = 0;
LABEL_28:
  v55 = *(v0 + 56);
  v54 = *(v0 + 64);
  v56 = *(v0 + 48);

  OUTLINED_FUNCTION_8();

  return v57(v17);
}

uint64_t sub_26660FEDC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2666171A4;

  return sub_26660F944();
}

uint64_t sub_26660FFB4()
{
  OUTLINED_FUNCTION_14();
  sub_2665670B0(*(v0 + 16));
  sub_266637788();
  v2 = v1;

  OUTLINED_FUNCTION_8();

  return v3(v2);
}

uint64_t sub_266610058(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_266610118;

  return sub_26660FFA0(v6);
}

uint64_t sub_266610118()
{
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_5_1();
  v2 = v1[5];
  v3 = v1[4];
  v4 = v1[3];
  v5 = v1[2];
  v6 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;

  sub_266552C44(0, &unk_28156C0C0, 0x277CD3EA0);
  v8 = sub_26666C488();

  (v3)[2](v3, v8);

  _Block_release(v3);
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_2666102A8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2666102BC()
{
  OUTLINED_FUNCTION_14();
  v1 = __swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_locationProvider), *(v0[3] + OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_locationProvider + 24));
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_266610380;
  v3 = v0[2];

  return sub_266614EAC(v3, v1);
}

uint64_t sub_266610380()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_5_1();
  v4 = *(v3 + 32);
  v5 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;

  OUTLINED_FUNCTION_8();

  return v7(v2);
}

uint64_t sub_266610488(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2666171A4;

  return sub_2666102A8(v6);
}

uint64_t sub_266610560()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_shouldConfirmIntent;
  v3 = v1[OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_shouldConfirmIntent];
  v4 = v1;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
    v4 = *(v0 + 16);
  }

  v5 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v5, qword_28156D7E8);
  v6 = v4;
  v7 = sub_26666C148();
  v8 = sub_26666C618();
  v9 = OUTLINED_FUNCTION_9(v8);
  v10 = *(v0 + 16);
  if (v9)
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    v11[1] = v1[v2];

    OUTLINED_FUNCTION_4_9();
    _os_log_impl(v12, v13, v14, v15, v16, 8u);
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  if (v3)
  {
    v17 = 1;
  }

  else
  {
    v17 = 3;
  }

  [objc_allocWithZone(MEMORY[0x277CD3B28]) initWithCode:v17 userActivity:0];
  OUTLINED_FUNCTION_8();

  return v18();
}

uint64_t sub_2666106D4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2666171A4;

  return sub_26661054C();
}

uint64_t sub_266610790(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2666107A4()
{
  OUTLINED_FUNCTION_14();
  v1 = *__swift_project_boxed_opaque_existential_1((v0[18] + OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_eventProvider), *(v0[18] + OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_eventProvider + 24));
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_266610850;
  v3 = v0[17];

  return sub_26655BA38(v3);
}

uint64_t sub_266610850()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v2 = v1;
  v4 = *(v3 + 152);
  *v2 = *v0;
  *(v1 + 160) = v5;

  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26661093C()
{
  v42 = v0;
  v1 = *(v0 + 160);
  if (v1)
  {
    sub_266552C44(0, &qword_28007F240, 0x277CD3B28);
    v2 = v1;
    v3 = sub_266582DC0(3, 0, MEMORY[0x277D84F90], v1);
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v4 = sub_26666C168();
    __swift_project_value_buffer(v4, qword_28156D7E8);
    v5 = sub_26666C148();
    v6 = sub_26666C618();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_20();
      *v7 = 0;
      _os_log_impl(&dword_266549000, v5, v6, "[CreateEvent.IntentHandler] successfully saved new EKEvent. returning success.", v7, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v8 = *(v0 + 144);

    sub_26660F028();
    if (*(v0 + 80))
    {
      sub_26654B7D8((v0 + 56), v0 + 16);
      v9 = v2;
      v10 = sub_26666C148();
      v11 = sub_26666C618();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = OUTLINED_FUNCTION_21();
        v40 = swift_slowAlloc();
        v41 = v40;
        *v12 = 136315138;
        v13 = v9;
        v14 = v3;
        v15 = [v13 description];
        v16 = sub_26666C308();
        v18 = v17;

        v3 = v14;
        v19 = sub_2665BFC90(v16, v18, &v41);

        *(v12 + 4) = v19;
        OUTLINED_FUNCTION_12_4();
        _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_9_5();
      }

      __swift_project_boxed_opaque_existential_1((*(v0 + 144) + OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_correctionsFlowProvider), *(*(v0 + 144) + OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_correctionsFlowProvider + 24));
      sub_26655E228(v9, (v0 + 96));
      v25 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      sub_2666694C8();

      __swift_destroy_boxed_opaque_existential_1((v0 + 96));
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    }

    else
    {
      sub_26656CAEC(v0 + 56, &qword_28007F248, &qword_266678328);
      v35 = sub_26666C148();
      v36 = sub_26666C618();
      if (OUTLINED_FUNCTION_7_2(v36))
      {
        v37 = OUTLINED_FUNCTION_20();
        *v37 = 0;
        _os_log_impl(&dword_266549000, v35, v36, "[CreateEvent.IntentHandler] no corrections client available", v37, 2u);
        OUTLINED_FUNCTION_4_1();
      }
    }
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v26 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v26, qword_28156D7E8);
    v27 = sub_26666C148();
    v28 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_9(v28))
    {
      v29 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v29);
      OUTLINED_FUNCTION_4_9();
      _os_log_impl(v30, v31, v32, v33, v34, 2u);
      OUTLINED_FUNCTION_10();
    }

    sub_266552C44(0, &qword_28007F240, 0x277CD3B28);
    v3 = sub_266582DC0(4, 0, MEMORY[0x277D84F90], 0);
  }

  OUTLINED_FUNCTION_8();

  return v38(v3);
}

uint64_t sub_266610D48(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  v10 = OUTLINED_FUNCTION_25();

  return sub_26664FFEC(v10, v11);
}

uint64_t sub_266610DC8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2666171A4;

  return sub_266610790(v6);
}

id sub_266610E9C()
{
  v2.receiver = v0;
  v2.super_class = _s13IntentHandlerCMa_1();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_266610F90(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_26666BA78();
  return sub_26660264C;
}

id sub_266611008(uint64_t *a1)
{
  v1 = a1[3];
  if (v1)
  {
    v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v4 = *(v1 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x28223BE20](v3, v3);
    v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    v8 = sub_26666CAB8();
    (*(v4 + 8))(v7, v1);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v8 = 0;
  }

  v9 = [swift_getObjCClassFromMetadata() resolutionResultConfirmationRequiredWithItemToConfirm_];
  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_266611150(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26666BA08();
}

uint64_t sub_26661117C(uint64_t a1, uint64_t *a2)
{
  sub_266617158(a1, v5, &qword_28007F248, &qword_266678328);
  v3 = *a2;
  return sub_2666694E8();
}

uint64_t sub_266611228()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v0[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F250, &qword_266678338);
  v0[8] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v0[9] = v5;
  v7 = *(v6 + 64);
  v0[10] = OUTLINED_FUNCTION_19();
  v8 = sub_26666B648();
  v0[11] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v0[12] = v9;
  v11 = *(v10 + 64);
  v0[13] = OUTLINED_FUNCTION_19();
  v12 = sub_26666B588();
  v0[14] = v12;
  OUTLINED_FUNCTION_3_1(v12);
  v0[15] = v13;
  v15 = *(v14 + 64);
  v0[16] = OUTLINED_FUNCTION_19();
  v16 = sub_266668EB8();
  v0[17] = v16;
  OUTLINED_FUNCTION_3_1(v16);
  v0[18] = v17;
  v19 = *(v18 + 64);
  v0[19] = OUTLINED_FUNCTION_19();
  v20 = sub_266668D98();
  OUTLINED_FUNCTION_3_3(v20);
  v22 = *(v21 + 64);
  v0[20] = OUTLINED_FUNCTION_65_1();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v23 = sub_26666B6A8();
  v0[23] = v23;
  OUTLINED_FUNCTION_3_1(v23);
  v0[24] = v24;
  v26 = *(v25 + 64);
  v0[25] = OUTLINED_FUNCTION_19();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F258, &qword_266678340);
  OUTLINED_FUNCTION_3_3(v27);
  v29 = *(v28 + 64);
  v0[26] = OUTLINED_FUNCTION_19();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F260, &qword_266678348);
  OUTLINED_FUNCTION_3_3(v30);
  v32 = *(v31 + 64);
  v0[27] = OUTLINED_FUNCTION_19();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F268, &qword_266678350);
  OUTLINED_FUNCTION_3_3(v33);
  v35 = *(v34 + 64);
  v0[28] = OUTLINED_FUNCTION_19();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F270, &qword_266678358);
  OUTLINED_FUNCTION_3_3(v36);
  v38 = *(v37 + 64);
  v0[29] = OUTLINED_FUNCTION_19();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F278, &qword_266678360);
  OUTLINED_FUNCTION_3_3(v39);
  v41 = *(v40 + 64);
  v0[30] = OUTLINED_FUNCTION_19();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F280, &qword_266678368);
  OUTLINED_FUNCTION_3_3(v42);
  v44 = *(v43 + 64);
  v0[31] = OUTLINED_FUNCTION_19();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D280, &unk_266671C80);
  OUTLINED_FUNCTION_3_3(v45);
  v47 = *(v46 + 64);
  v0[32] = OUTLINED_FUNCTION_65_1();
  v0[33] = swift_task_alloc();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F290, &qword_266678370);
  OUTLINED_FUNCTION_3_3(v48);
  v50 = *(v49 + 64);
  v0[34] = OUTLINED_FUNCTION_19();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F298, &qword_266678378);
  OUTLINED_FUNCTION_3_3(v51);
  v53 = *(v52 + 64);
  v0[35] = OUTLINED_FUNCTION_19();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2A0, &qword_266678380);
  OUTLINED_FUNCTION_3_3(v54);
  v56 = *(v55 + 64);
  v0[36] = OUTLINED_FUNCTION_19();
  v57 = sub_26666B9D8();
  v0[37] = v57;
  OUTLINED_FUNCTION_3_1(v57);
  v0[38] = v58;
  v60 = *(v59 + 64);
  v0[39] = OUTLINED_FUNCTION_65_1();
  v0[40] = swift_task_alloc();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2A8, &qword_266678388);
  OUTLINED_FUNCTION_3_3(v61);
  v63 = *(v62 + 64);
  v0[41] = OUTLINED_FUNCTION_19();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2B0, &qword_266678390);
  OUTLINED_FUNCTION_3_3(v64);
  v66 = *(v65 + 64);
  v0[42] = OUTLINED_FUNCTION_19();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2B8, &qword_266678398);
  OUTLINED_FUNCTION_3_3(v67);
  v69 = *(v68 + 64);
  v0[43] = OUTLINED_FUNCTION_65_1();
  v0[44] = swift_task_alloc();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2C0, &qword_2666783A0);
  OUTLINED_FUNCTION_3_3(v70);
  v72 = *(v71 + 64);
  v0[45] = OUTLINED_FUNCTION_19();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2C8, &qword_2666783A8);
  OUTLINED_FUNCTION_3_3(v73);
  v75 = *(v74 + 64);
  v0[46] = OUTLINED_FUNCTION_19();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2D0, &qword_2666783B0);
  OUTLINED_FUNCTION_3_3(v76);
  v78 = *(v77 + 64);
  v0[47] = OUTLINED_FUNCTION_19();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2D8, &qword_2666783B8);
  OUTLINED_FUNCTION_3_3(v79);
  v81 = *(v80 + 64);
  v0[48] = OUTLINED_FUNCTION_19();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2E0, &qword_2666783C0);
  OUTLINED_FUNCTION_3_3(v82);
  v84 = *(v83 + 64);
  v0[49] = OUTLINED_FUNCTION_19();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2E8, &qword_2666783C8);
  OUTLINED_FUNCTION_3_3(v85);
  v87 = *(v86 + 64);
  v0[50] = OUTLINED_FUNCTION_65_1();
  v0[51] = swift_task_alloc();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2F0, &qword_2666783D0);
  OUTLINED_FUNCTION_3_3(v88);
  v90 = *(v89 + 64);
  v0[52] = OUTLINED_FUNCTION_19();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2F8, &qword_2666783D8);
  OUTLINED_FUNCTION_3_3(v91);
  v93 = *(v92 + 64);
  v0[53] = OUTLINED_FUNCTION_19();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F300, &qword_2666783E0);
  OUTLINED_FUNCTION_3_3(v94);
  v96 = *(v95 + 64);
  v0[54] = OUTLINED_FUNCTION_65_1();
  v0[55] = swift_task_alloc();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F308, &qword_2666783E8);
  OUTLINED_FUNCTION_3_3(v97);
  v99 = *(v98 + 64);
  v0[56] = OUTLINED_FUNCTION_19();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F310, &qword_2666783F0);
  OUTLINED_FUNCTION_3_3(v100);
  v102 = *(v101 + 64);
  v0[57] = OUTLINED_FUNCTION_19();
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F318, &qword_2666783F8);
  OUTLINED_FUNCTION_3_3(v103);
  v105 = *(v104 + 64);
  v0[58] = OUTLINED_FUNCTION_65_1();
  v0[59] = swift_task_alloc();
  v0[60] = swift_task_alloc();
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F320, &qword_266678400);
  OUTLINED_FUNCTION_3_3(v106);
  v108 = *(v107 + 64);
  v0[61] = OUTLINED_FUNCTION_19();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F328, &qword_266678408);
  OUTLINED_FUNCTION_3_3(v109);
  v111 = *(v110 + 64);
  v0[62] = OUTLINED_FUNCTION_19();
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F330, &qword_266678410);
  OUTLINED_FUNCTION_3_3(v112);
  v114 = *(v113 + 64);
  v0[63] = OUTLINED_FUNCTION_65_1();
  v0[64] = swift_task_alloc();
  v0[65] = swift_task_alloc();
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F338, &qword_266678418);
  OUTLINED_FUNCTION_3_3(v115);
  v117 = *(v116 + 64);
  v0[66] = OUTLINED_FUNCTION_19();
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F340, &qword_266678420);
  OUTLINED_FUNCTION_3_3(v118);
  v120 = *(v119 + 64);
  v0[67] = OUTLINED_FUNCTION_65_1();
  v0[68] = swift_task_alloc();
  v0[69] = swift_task_alloc();
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F348, &qword_266678428);
  OUTLINED_FUNCTION_3_3(v121);
  v123 = *(v122 + 64);
  v0[70] = OUTLINED_FUNCTION_19();
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F350, &qword_266678430);
  OUTLINED_FUNCTION_3_3(v124);
  v126 = *(v125 + 64);
  v0[71] = OUTLINED_FUNCTION_19();
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F358, &qword_266678438);
  OUTLINED_FUNCTION_3_3(v127);
  v129 = *(v128 + 64);
  v0[72] = OUTLINED_FUNCTION_19();
  v130 = sub_26666B7D8();
  v0[73] = v130;
  OUTLINED_FUNCTION_3_1(v130);
  v0[74] = v131;
  v133 = *(v132 + 64);
  v0[75] = OUTLINED_FUNCTION_65_1();
  v0[76] = swift_task_alloc();
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F360, &qword_266678440);
  OUTLINED_FUNCTION_3_3(v134);
  v136 = *(v135 + 64);
  v0[77] = OUTLINED_FUNCTION_65_1();
  v0[78] = swift_task_alloc();
  v0[79] = swift_task_alloc();
  v137 = type metadata accessor for Signpost.OpenSignpost();
  v0[80] = v137;
  OUTLINED_FUNCTION_3_3(v137);
  v139 = *(v138 + 64);
  v0[81] = OUTLINED_FUNCTION_19();
  v0[5] = &type metadata for AceUserLocationProvider;
  v0[6] = &off_28780A9C8;
  OUTLINED_FUNCTION_4();
  v140 = swift_allocObject();
  v0[2] = v140;
  sub_2665524C0(v2, v140 + 16);
  v141 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v141, v142, v143);
}

uint64_t sub_266611BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  if (qword_28156C160 != -1)
  {
    OUTLINED_FUNCTION_25_9();
  }

  OUTLINED_FUNCTION_83_0();
  v17 = qword_28156D800;
  v13[82] = qword_28156D800;
  v17;
  sub_26666C088();
  sub_26666C638();
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_54_1();
  v18 = [v12 location];
  v13[83] = v18;
  if (v18)
  {
    v19 = v18;
    v20 = sub_26659A29C(v18, &selRef_name);
    v13[84] = v20;
    v13[85] = v21;
    if (v21)
    {
      v22 = OUTLINED_FUNCTION_97_0(v20, v21);
      OUTLINED_FUNCTION_12_18(v22);
      sub_26659A29C(v19, &selRef_country);
      if (v23)
      {
        OUTLINED_FUNCTION_96_0();
        OUTLINED_FUNCTION_94();
        if (v24)
        {
          sub_26656CAEC(v13[72], &qword_28007F358, &qword_266678438);
        }

        else
        {
          v44 = OUTLINED_FUNCTION_20_15();
          v45(v44);
          v46 = v19[2];
          v47 = OUTLINED_FUNCTION_33_7();
          v48(v47);
          v49 = sub_26666B7F8();
          OUTLINED_FUNCTION_5_4(v16, v50, v51, v49);
          sub_26666B808();
          OUTLINED_FUNCTION_55_1();
          OUTLINED_FUNCTION_7_6();
          __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
          OUTLINED_FUNCTION_75_0();
          v56 = OUTLINED_FUNCTION_84_0();
          v57(v56);
          v14 = &qword_266678440;
          OUTLINED_FUNCTION_98();
          OUTLINED_FUNCTION_26_2();
          OUTLINED_FUNCTION_66_0(v58, v59, v60);
        }
      }

      v61 = v13[69];
      v62 = sub_26666B848();
      OUTLINED_FUNCTION_12_18(v62);
      sub_26659A29C(v19, &selRef_postalCode);
      if (v63)
      {
        v64 = OUTLINED_FUNCTION_42_5();
        OUTLINED_FUNCTION_2_32(v15, v65, v66, v64);
        sub_26666B828();
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v67 = v13[65];
      v68 = sub_26666B708();
      OUTLINED_FUNCTION_12_18(v68);
      sub_26659A29C(v19, &selRef_locality);
      if (v69)
      {
        v70 = OUTLINED_FUNCTION_41_0();
        OUTLINED_FUNCTION_4_31(v70);
        v71 = sub_26666B6F8();
        OUTLINED_FUNCTION_1_37(v71);
        sub_26666B6D8();
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v72 = v13[60];
      v73 = sub_26666B768();
      OUTLINED_FUNCTION_12_18(v73);
      sub_26659A29C(v19, &selRef_administrativeArea);
      if (v74)
      {
        OUTLINED_FUNCTION_44_2();
        v75 = OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_4_31(v75);
        v76 = sub_26666B758();
        OUTLINED_FUNCTION_1_37(v76);
        sub_26666B738();
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v77 = v13[55];
      v78 = sub_26666B7A8();
      OUTLINED_FUNCTION_12_18(v78);
      sub_26659A29C(v19, &selRef_subAdministrativeArea);
      if (v79)
      {
        OUTLINED_FUNCTION_44_2();
        v80 = OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_4_31(v80);
        v81 = sub_26666B798();
        OUTLINED_FUNCTION_1_37(v81);
        sub_26666B778();
        v77 = &qword_28007F300;
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v82 = v13[51];
      v83 = sub_26666B4F8();
      v84 = OUTLINED_FUNCTION_16_15();
      __swift_storeEnumTagSinglePayload(v84, v85, v86, v83);
      v87 = sub_26659A29C(v19, &selRef_thoroughfare);
      if (v88)
      {
        v14 = v87;
        v77 = v88;
        v89 = sub_26659A29C(v19, &selRef_subThoroughfare);
        if (v90)
        {
          v91 = OUTLINED_FUNCTION_22_7(v89);
          OUTLINED_FUNCTION_4_31(v91);
          sub_26666B378();
          v92 = OUTLINED_FUNCTION_16_15();
          __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
          OUTLINED_FUNCTION_56_0();
          sub_26666B388();
          v96 = OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_13_14(v96, 0, v97, v98);
          sub_26666B498();
          OUTLINED_FUNCTION_55_1();
          OUTLINED_FUNCTION_7_6();
          __swift_storeEnumTagSinglePayload(v99, v100, v101, v102);
          OUTLINED_FUNCTION_74_0();
          v103 = sub_26666B4A8();
          OUTLINED_FUNCTION_13_14(v77, 0, v104, v103);
          sub_26666B398();
          v16 = v215;
          v105 = OUTLINED_FUNCTION_14_13();
          OUTLINED_FUNCTION_69_0(v105, v106, v107);
          sub_26666B508();
          OUTLINED_FUNCTION_7_6();
          __swift_storeEnumTagSinglePayload(v108, v109, v110, v111);
          v15 = v218;
          v112 = OUTLINED_FUNCTION_11_19();
          OUTLINED_FUNCTION_69_0(v112, v113, v114);
          sub_26666B4D8();
          v115 = OUTLINED_FUNCTION_16_15();
          __swift_storeEnumTagSinglePayload(v115, v116, v117, v118);
          OUTLINED_FUNCTION_29_7();
          v82 = &qword_28007F2E8;
          v77 = &qword_2666783C8;
          OUTLINED_FUNCTION_73_0();
          v119 = OUTLINED_FUNCTION_17_12();
          __swift_storeEnumTagSinglePayload(v119, v120, v121, v83);
          v122 = OUTLINED_FUNCTION_33_7();
          sub_266616CA8(v122, v123, &qword_28007F2E8, &qword_2666783C8);
        }

        else
        {
        }
      }

      OUTLINED_FUNCTION_24_10();
      v124 = OUTLINED_FUNCTION_16_15();
      __swift_storeEnumTagSinglePayload(v124, v125, v126, v127);
      v128 = OUTLINED_FUNCTION_78_0();
      sub_266617158(v128, v129, v130, v131);
      sub_266617158(v14, v15, &qword_28007F340, &qword_266678420);
      sub_266617158(v19, v77, &qword_28007F318, &qword_2666783F8);
      v132 = OUTLINED_FUNCTION_88_0();
      sub_266617158(v132, v133, v134, v135);
      v136 = sub_26666B858();
      OUTLINED_FUNCTION_5_4(v221, v137, v138, v136);
      sub_26666B728();
      OUTLINED_FUNCTION_7_6();
      __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
      v143 = [v19 timeZone];
      if (v143)
      {
        v19 = v143;
        v144 = v13[32];
        sub_266668E98();

        v145 = 0;
      }

      else
      {
        v145 = 1;
      }

      OUTLINED_FUNCTION_53_1(v143, v145);
      v146 = OUTLINED_FUNCTION_25();
      sub_266616CA8(v146, v147, v148, v149);
      OUTLINED_FUNCTION_70_0();
      if (v24)
      {
        sub_26656CAEC(v19, &qword_28007D280, &unk_266671C80);
      }

      else
      {
        v82 = v13[17];
        v150 = v13[18];
        v151 = sub_266668E78();
        v153 = OUTLINED_FUNCTION_36_3(v151, v152);
        v154(v153);
      }

      OUTLINED_FUNCTION_19_18();
      v155 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_5_4(v155, v156, v157, v158);
      sub_26666B9A8();
      v159 = OUTLINED_FUNCTION_11_19();
      __swift_storeEnumTagSinglePayload(v159, v160, v161, v162);
      sub_266617158(v19, v83, &qword_28007F2E8, &qword_2666783C8);
      v163 = sub_26666B4C8();
      OUTLINED_FUNCTION_5_4(v16, v164, v165, v163);
      v166 = sub_26666B528();
      OUTLINED_FUNCTION_5_4(v82, v167, v168, v166);
      sub_26666B468();
      v169 = OUTLINED_FUNCTION_15_14();
      __swift_storeEnumTagSinglePayload(v169, v170, v171, v172);

      OUTLINED_FUNCTION_52_2();
      sub_26666B478();
      OUTLINED_FUNCTION_55_1();
      OUTLINED_FUNCTION_26_2();
      __swift_storeEnumTagSinglePayload(v173, v174, v175, v176);
      sub_266617158(v210, v14, &qword_28007F300, &qword_2666783E0);

      OUTLINED_FUNCTION_21_8();
      __swift_project_boxed_opaque_existential_1(v13 + 2, &type metadata for AceUserLocationProvider);
      v177 = swift_task_alloc();
      v13[86] = v177;
      *v177 = v13;
      OUTLINED_FUNCTION_82_0(v177);
      OUTLINED_FUNCTION_4_7();

      return sub_266618ABC();
    }
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v25 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v25, qword_28156D7E8);
  v26 = sub_26666C148();
  v27 = sub_26666C5E8();
  if (OUTLINED_FUNCTION_9(v27))
  {
    v28 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v28);
    OUTLINED_FUNCTION_4_9();
    _os_log_impl(v29, v30, v31, v32, v33, 2u);
    OUTLINED_FUNCTION_10();
  }

  v34 = v13[81];

  sub_266552C44(0, &qword_28156C0A8, 0x277CD3EA8);
  [swift_getObjCClassFromMetadata() notRequired];
  sub_26666C628();
  OUTLINED_FUNCTION_48_2();
  sub_26666C078();
  OUTLINED_FUNCTION_5_23();
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_90_0();
  v179 = v13[62];
  v180 = v13[61];
  v181 = v13[60];
  v182 = v13[59];
  v183 = v13[58];
  v184 = v13[57];
  v185 = v13[56];
  v186 = v13[55];
  v187 = v13[54];
  v188 = v13[53];
  v189 = v13[52];
  v190 = v13[51];
  v191 = v13[50];
  v192 = v13[49];
  v193 = v13[48];
  v194 = v13[47];
  v195 = v13[46];
  v196 = v13[45];
  v197 = v13[44];
  v198 = v13[43];
  v199 = v13[42];
  v200 = v13[41];
  v201 = v13[40];
  v202 = v13[39];
  v203 = v13[36];
  v204 = v13[35];
  v205 = v13[34];
  v206 = v13[33];
  v207 = v13[32];
  v208 = v13[31];
  v209 = v13[30];
  v211 = v13[29];
  v212 = v13[28];
  v213 = v13[27];
  v214 = v13[26];
  v216 = v13[25];
  v217 = v13[22];
  v219 = v13[21];
  v220 = v13[20];
  v222 = v13[19];
  OUTLINED_FUNCTION_87_0();
  v223 = v13[10];
  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_89_0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4_7();

  return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_2666125DC()
{
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_34_6();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v6 = *(v5 + 688);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v3 + 696) = v0;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_86_0();
  }

  OUTLINED_FUNCTION_85_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2666126F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  v13 = *(v12 + 704);
  v14 = *(v12 + 720);
  v154 = *(v12 + 696);
  v152 = *(v12 + 712);
  v153 = *(v12 + 320);
  v15 = *(v12 + 200);
  v17 = *(v12 + 168);
  v16 = *(v12 + 176);
  v19 = *(v12 + 152);
  v18 = *(v12 + 160);
  v20 = *(v12 + 128);
  v21 = *(v12 + 104);
  sub_266668D88();
  sub_266668D88();
  sub_266668D88();
  sub_266668EA8();
  OUTLINED_FUNCTION_78_0();
  sub_26666B698();
  sub_26666B578();
  sub_26666B638();
  v22 = v12;
  v23 = sub_26666B568();
  v26 = v12 + 120;
  v25 = *(v12 + 120);
  v24 = *(v26 + 8);
  v28 = v22[13];
  v27 = v22[14];
  v30 = v22[11];
  v29 = v22[12];
  if (!v154)
  {
    v53 = OUTLINED_FUNCTION_57_0();
    v54(v53);
    v55 = *(v25 + 8);
    v56 = OUTLINED_FUNCTION_31_1();
    v57(v56);
    v58 = *(v23 + 16);
    if (!v58)
    {

      goto LABEL_3;
    }

    v59 = v22[85];
    v60 = v22[38];
    v61 = v22[9];

    v62 = MEMORY[0x277D84F90];
    v156 = v22;
    v157 = MEMORY[0x277D84F90];
    v63 = *(v61 + 16);
    v61 += 16;
    v148 = v23;
    v64 = v23 + ((*(v61 + 64) + 32) & ~*(v61 + 64));
    v151 = *(v61 + 56);
    v46 = (v61 - 8);
    do
    {
      v65 = v22[39];
      v66 = v22[37];
      v67 = v22[10];
      v68 = v22[8];
      v69 = OUTLINED_FUNCTION_102();
      v70(v69);
      sub_26666B718();
      sub_26666B9B8();
      v71 = OUTLINED_FUNCTION_79_0();
      v72(v71);
      v73 = *v46;
      v74 = OUTLINED_FUNCTION_88_0();
      v76 = v75(v74);
      if (v30)
      {
        MEMORY[0x2667887C0](v76);
        OUTLINED_FUNCTION_103();
        if (v77)
        {
          OUTLINED_FUNCTION_106();
        }

        sub_26666C4E8();
        v62 = v157;
      }

      v64 += v151;
      --v58;
      v22 = v156;
    }

    while (v58);

    if (sub_2665C485C(v62) == 1)
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v78 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v78, qword_28156D7E8);
      v79 = sub_26666C148();
      v80 = sub_26666C5E8();
      if (OUTLINED_FUNCTION_7_1(v80))
      {
        v30 = OUTLINED_FUNCTION_20();
        *v30 = 0;
        OUTLINED_FUNCTION_35_6();
        _os_log_impl(v81, v82, v83, v84, v85, 2u);
        OUTLINED_FUNCTION_9_5();
      }

      OUTLINED_FUNCTION_49_1();
      if (!v79)
      {
LABEL_29:
        v93 = *(v62 + 32);
LABEL_30:
        OUTLINED_FUNCTION_9_21();
        [objc_opt_self() successWithResolvedPlacemark_];

        MEMORY[8](v30, v65);
        v66(v64, v79);
        sub_26656CAEC(v137, &qword_28007F2E8, &qword_2666783C8);
        sub_26656CAEC(v139, &qword_28007F300, &qword_2666783E0);
        sub_26656CAEC(v141, &qword_28007F318, &qword_2666783F8);
        sub_26656CAEC(v143, &qword_28007F330, &qword_266678410);
        sub_26656CAEC(v145, &qword_28007F340, &qword_266678420);
        sub_26656CAEC(v148, &unk_28007F360, &qword_266678440);
        sub_26666C628();
        OUTLINED_FUNCTION_48_2();
        goto LABEL_31;
      }
    }

    else
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v86 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v86, qword_28156D7E8);

      v79 = sub_26666C148();
      v87 = sub_26666C5E8();
      if (OUTLINED_FUNCTION_7_1(v87))
      {
        v30 = OUTLINED_FUNCTION_21();
        *v30 = 134217984;
        *(v30 + 4) = sub_2665C485C(v62);

        OUTLINED_FUNCTION_35_6();
        _os_log_impl(v88, v89, v90, v91, v92, 0xCu);
        OUTLINED_FUNCTION_9_5();
      }

      else
      {
      }

      OUTLINED_FUNCTION_49_1();
      if (!v79)
      {
        goto LABEL_29;
      }
    }

    OUTLINED_FUNCTION_107();
    goto LABEL_30;
  }

  v31 = OUTLINED_FUNCTION_57_0();
  v32(v31);
  v33 = *(v25 + 8);
  v34 = OUTLINED_FUNCTION_31_1();
  v35(v34);
LABEL_3:
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v36 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v36, qword_28156D7E8);
  sub_26666C148();
  v37 = sub_26666C5E8();
  if (OUTLINED_FUNCTION_9(v37))
  {
    v38 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v38);
    OUTLINED_FUNCTION_4_9();
    _os_log_impl(v39, v40, v41, v42, v43, 2u);
    OUTLINED_FUNCTION_10();
  }

  v44 = v22[85];
  v45 = v22[84];
  v46 = v22;
  v47 = v22[83];
  OUTLINED_FUNCTION_39_3();
  v48 = objc_opt_self();
  sub_266552C44(0, &qword_28007F370, 0x277CBFC40);
  v49 = sub_266606794([objc_allocWithZone(MEMORY[0x277CE41F8]) init], v45, v44, 0);
  [v48 successWithResolvedPlacemark_];

  v50 = *(v27 + 8);
  v51 = OUTLINED_FUNCTION_78_0();
  v52(v51);
  (*(v28 + 8))();
  sub_26656CAEC(v139, &qword_28007F2E8, &qword_2666783C8);
  sub_26656CAEC(v141, &qword_28007F300, &qword_2666783E0);
  sub_26656CAEC(v143, &qword_28007F318, &qword_2666783F8);
  sub_26656CAEC(v145, &qword_28007F330, &qword_266678410);
  sub_26656CAEC(v147, &qword_28007F340, &qword_266678420);
  sub_26656CAEC(v150, &unk_28007F360, &qword_266678440);
  sub_26666C628();
  OUTLINED_FUNCTION_48_2();
LABEL_31:
  sub_26666C078();
  OUTLINED_FUNCTION_5_23();
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_90_0();
  v103 = v46[62];
  v104 = v46[61];
  v105 = v46[60];
  v106 = v46[59];
  v107 = v46[58];
  v108 = v46[57];
  v109 = v46[56];
  v110 = v46[55];
  v111 = v46[54];
  v112 = v46[53];
  v113 = v46[52];
  v114 = v46[51];
  v115 = v46[50];
  v116 = v46[49];
  v117 = v46[48];
  v118 = v46[47];
  v119 = v46[46];
  v120 = v46[45];
  v121 = v46[44];
  v122 = v46[43];
  v123 = v46[42];
  v124 = v46[41];
  v125 = v46[40];
  v126 = v46[39];
  v127 = v46[36];
  v128 = v46[35];
  v129 = v46[34];
  v130 = v46[33];
  v131 = v46[32];
  v132 = v46[31];
  v133 = v46[30];
  v134 = v46[29];
  v135 = v46[28];
  v136 = v46[27];
  v138 = v46[26];
  v140 = v46[25];
  v142 = v46[22];
  v144 = v46[21];
  v146 = v46[20];
  v149 = v46[19];
  OUTLINED_FUNCTION_87_0();
  v155 = v46[10];
  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_89_0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4_7();

  return v96(v94, v95, v96, v97, v98, v99, v100, v101, a9, a10, a11, a12);
}

uint64_t sub_266613078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  v13 = v12[40];
  v14 = v12[25];
  v16 = v12[21];
  v15 = v12[22];
  v18 = v12[19];
  v17 = v12[20];
  v19 = v12[16];
  v20 = v12[13];
  sub_266668D88();
  sub_266668D88();
  sub_266668D88();
  sub_266668EA8();
  sub_26666B698();
  sub_26666B578();
  sub_26666B638();
  OUTLINED_FUNCTION_31_1();
  v21 = sub_26666B568();
  v23 = v12[15];
  v22 = v12[16];
  v25 = v12[13];
  v24 = v12[14];
  v27 = v12[11];
  v26 = v12[12];
  v44 = OUTLINED_FUNCTION_57_0();
  v45(v44);
  v46 = *(v23 + 8);
  v47 = OUTLINED_FUNCTION_31_1();
  v48(v47);
  v49 = *(v21 + 16);
  if (v49)
  {
    v50 = v12[85];
    v51 = v12[38];
    v52 = v12[9];

    v53 = MEMORY[0x277D84F90];
    v146 = v12;
    v147 = MEMORY[0x277D84F90];
    v55 = *(v52 + 16);
    v54 = v52 + 16;
    v56 = v21 + ((*(v54 + 64) + 32) & ~*(v54 + 64));
    v144 = *(v54 + 56);
    v138 = v21;
    v141 = (v54 - 8);
    do
    {
      v57 = v12[39];
      v58 = v12[37];
      v59 = v12[10];
      v60 = v12[8];
      v61 = OUTLINED_FUNCTION_102();
      v62(v61);
      sub_26666B718();
      sub_26666B9B8();
      v63 = OUTLINED_FUNCTION_79_0();
      v64(v63);
      v65 = *v141;
      v66 = OUTLINED_FUNCTION_88_0();
      v68 = v67(v66);
      if (v54)
      {
        MEMORY[0x2667887C0](v68);
        OUTLINED_FUNCTION_103();
        if (v69)
        {
          OUTLINED_FUNCTION_106();
        }

        sub_26666C4E8();
        v53 = v147;
      }

      v56 += v144;
      --v49;
      v12 = v146;
    }

    while (v49);

    if (sub_2665C485C(v53) == 1)
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v70 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v70, qword_28156D7E8);
      v71 = sub_26666C148();
      v72 = sub_26666C5E8();
      if (OUTLINED_FUNCTION_7_1(v72))
      {
        v54 = OUTLINED_FUNCTION_20();
        *v54 = 0;
        OUTLINED_FUNCTION_35_6();
        _os_log_impl(v73, v74, v75, v76, v77, 2u);
        OUTLINED_FUNCTION_9_5();
      }

      OUTLINED_FUNCTION_49_1();
      if (!v71)
      {
LABEL_28:
        v85 = *(v53 + 32);
LABEL_29:
        OUTLINED_FUNCTION_9_21();
        [objc_opt_self() successWithResolvedPlacemark_];

        MEMORY[8](v54, v57);
        v58(v56, v71);
        sub_26656CAEC(v129, &qword_28007F2E8, &qword_2666783C8);
        sub_26656CAEC(v131, &qword_28007F300, &qword_2666783E0);
        sub_26656CAEC(v133, &qword_28007F318, &qword_2666783F8);
        sub_26656CAEC(v135, &qword_28007F330, &qword_266678410);
        sub_26656CAEC(v138, &qword_28007F340, &qword_266678420);
        sub_26656CAEC(v141, &unk_28007F360, &qword_266678440);
        sub_26666C628();
        OUTLINED_FUNCTION_48_2();
        goto LABEL_30;
      }
    }

    else
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v78 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v78, qword_28156D7E8);

      v71 = sub_26666C148();
      v79 = sub_26666C5E8();
      if (OUTLINED_FUNCTION_7_1(v79))
      {
        v54 = OUTLINED_FUNCTION_21();
        *v54 = 134217984;
        *(v54 + 4) = sub_2665C485C(v53);

        OUTLINED_FUNCTION_35_6();
        _os_log_impl(v80, v81, v82, v83, v84, 0xCu);
        OUTLINED_FUNCTION_9_5();
      }

      else
      {
      }

      OUTLINED_FUNCTION_49_1();
      if (!v71)
      {
        goto LABEL_28;
      }
    }

    OUTLINED_FUNCTION_107();
    goto LABEL_29;
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v28 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v28, qword_28156D7E8);
  sub_26666C148();
  v29 = sub_26666C5E8();
  if (OUTLINED_FUNCTION_9(v29))
  {
    v30 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v30);
    OUTLINED_FUNCTION_4_9();
    _os_log_impl(v31, v32, v33, v34, v35, 2u);
    OUTLINED_FUNCTION_10();
  }

  v36 = v12[85];
  v37 = v12[84];
  v38 = v12[83];
  OUTLINED_FUNCTION_39_3();
  v39 = objc_opt_self();
  sub_266552C44(0, &qword_28007F370, 0x277CBFC40);
  v40 = sub_266606794([objc_allocWithZone(MEMORY[0x277CE41F8]) init], v37, v36, 0);
  [v39 successWithResolvedPlacemark_];

  v41 = *(v24 + 8);
  v42 = OUTLINED_FUNCTION_78_0();
  v43(v42);
  (*(v25 + 8))();
  sub_26656CAEC(v131, &qword_28007F2E8, &qword_2666783C8);
  sub_26656CAEC(v133, &qword_28007F300, &qword_2666783E0);
  sub_26656CAEC(v135, &qword_28007F318, &qword_2666783F8);
  sub_26656CAEC(v137, &qword_28007F330, &qword_266678410);
  sub_26656CAEC(v140, &qword_28007F340, &qword_266678420);
  sub_26656CAEC(v143, &unk_28007F360, &qword_266678440);
  sub_26666C628();
  OUTLINED_FUNCTION_48_2();
LABEL_30:
  sub_26666C078();
  OUTLINED_FUNCTION_5_23();
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_90_0();
  v95 = v12[62];
  v96 = v12[61];
  v97 = v12[60];
  v98 = v12[59];
  v99 = v12[58];
  v100 = v12[57];
  v101 = v12[56];
  v102 = v12[55];
  v103 = v12[54];
  v104 = v12[53];
  v105 = v12[52];
  v106 = v12[51];
  v107 = v12[50];
  v108 = v12[49];
  v109 = v12[48];
  v110 = v12[47];
  v111 = v12[46];
  v112 = v12[45];
  v113 = v12[44];
  v114 = v12[43];
  v115 = v12[42];
  v116 = v12[41];
  v117 = v12[40];
  v118 = v12[39];
  v119 = v12[36];
  v120 = v12[35];
  v121 = v12[34];
  v122 = v12[33];
  v123 = v12[32];
  v124 = v12[31];
  v125 = v12[30];
  v126 = v12[29];
  v127 = v12[28];
  v128 = v12[27];
  v130 = v12[26];
  v132 = v12[25];
  v134 = v12[22];
  v136 = v12[21];
  v139 = v12[20];
  v142 = v12[19];
  OUTLINED_FUNCTION_87_0();
  v145 = v12[10];
  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_89_0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4_7();

  return v88(v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12);
}

uint64_t sub_2666139E0()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v0[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F250, &qword_266678338);
  v0[8] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v0[9] = v5;
  v7 = *(v6 + 64);
  v0[10] = OUTLINED_FUNCTION_19();
  v8 = sub_26666B648();
  v0[11] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v0[12] = v9;
  v11 = *(v10 + 64);
  v0[13] = OUTLINED_FUNCTION_19();
  v12 = sub_26666B588();
  v0[14] = v12;
  OUTLINED_FUNCTION_3_1(v12);
  v0[15] = v13;
  v15 = *(v14 + 64);
  v0[16] = OUTLINED_FUNCTION_19();
  v16 = sub_266668EB8();
  v0[17] = v16;
  OUTLINED_FUNCTION_3_1(v16);
  v0[18] = v17;
  v19 = *(v18 + 64);
  v0[19] = OUTLINED_FUNCTION_19();
  v20 = sub_266668D98();
  OUTLINED_FUNCTION_3_3(v20);
  v22 = *(v21 + 64);
  v0[20] = OUTLINED_FUNCTION_65_1();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v23 = sub_26666B6A8();
  v0[23] = v23;
  OUTLINED_FUNCTION_3_1(v23);
  v0[24] = v24;
  v26 = *(v25 + 64);
  v0[25] = OUTLINED_FUNCTION_19();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F258, &qword_266678340);
  OUTLINED_FUNCTION_3_3(v27);
  v29 = *(v28 + 64);
  v0[26] = OUTLINED_FUNCTION_19();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F260, &qword_266678348);
  OUTLINED_FUNCTION_3_3(v30);
  v32 = *(v31 + 64);
  v0[27] = OUTLINED_FUNCTION_19();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F268, &qword_266678350);
  OUTLINED_FUNCTION_3_3(v33);
  v35 = *(v34 + 64);
  v0[28] = OUTLINED_FUNCTION_19();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F270, &qword_266678358);
  OUTLINED_FUNCTION_3_3(v36);
  v38 = *(v37 + 64);
  v0[29] = OUTLINED_FUNCTION_19();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F278, &qword_266678360);
  OUTLINED_FUNCTION_3_3(v39);
  v41 = *(v40 + 64);
  v0[30] = OUTLINED_FUNCTION_19();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F280, &qword_266678368);
  OUTLINED_FUNCTION_3_3(v42);
  v44 = *(v43 + 64);
  v0[31] = OUTLINED_FUNCTION_19();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D280, &unk_266671C80);
  OUTLINED_FUNCTION_3_3(v45);
  v47 = *(v46 + 64);
  v0[32] = OUTLINED_FUNCTION_65_1();
  v0[33] = swift_task_alloc();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F290, &qword_266678370);
  OUTLINED_FUNCTION_3_3(v48);
  v50 = *(v49 + 64);
  v0[34] = OUTLINED_FUNCTION_19();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F298, &qword_266678378);
  OUTLINED_FUNCTION_3_3(v51);
  v53 = *(v52 + 64);
  v0[35] = OUTLINED_FUNCTION_19();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2A0, &qword_266678380);
  OUTLINED_FUNCTION_3_3(v54);
  v56 = *(v55 + 64);
  v0[36] = OUTLINED_FUNCTION_19();
  v57 = sub_26666B9D8();
  v0[37] = v57;
  OUTLINED_FUNCTION_3_1(v57);
  v0[38] = v58;
  v60 = *(v59 + 64);
  v0[39] = OUTLINED_FUNCTION_65_1();
  v0[40] = swift_task_alloc();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2A8, &qword_266678388);
  OUTLINED_FUNCTION_3_3(v61);
  v63 = *(v62 + 64);
  v0[41] = OUTLINED_FUNCTION_19();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2B0, &qword_266678390);
  OUTLINED_FUNCTION_3_3(v64);
  v66 = *(v65 + 64);
  v0[42] = OUTLINED_FUNCTION_19();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2B8, &qword_266678398);
  OUTLINED_FUNCTION_3_3(v67);
  v69 = *(v68 + 64);
  v0[43] = OUTLINED_FUNCTION_65_1();
  v0[44] = swift_task_alloc();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2C0, &qword_2666783A0);
  OUTLINED_FUNCTION_3_3(v70);
  v72 = *(v71 + 64);
  v0[45] = OUTLINED_FUNCTION_19();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2C8, &qword_2666783A8);
  OUTLINED_FUNCTION_3_3(v73);
  v75 = *(v74 + 64);
  v0[46] = OUTLINED_FUNCTION_19();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2D0, &qword_2666783B0);
  OUTLINED_FUNCTION_3_3(v76);
  v78 = *(v77 + 64);
  v0[47] = OUTLINED_FUNCTION_19();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2D8, &qword_2666783B8);
  OUTLINED_FUNCTION_3_3(v79);
  v81 = *(v80 + 64);
  v0[48] = OUTLINED_FUNCTION_19();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2E0, &qword_2666783C0);
  OUTLINED_FUNCTION_3_3(v82);
  v84 = *(v83 + 64);
  v0[49] = OUTLINED_FUNCTION_19();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2E8, &qword_2666783C8);
  OUTLINED_FUNCTION_3_3(v85);
  v87 = *(v86 + 64);
  v0[50] = OUTLINED_FUNCTION_65_1();
  v0[51] = swift_task_alloc();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2F0, &qword_2666783D0);
  OUTLINED_FUNCTION_3_3(v88);
  v90 = *(v89 + 64);
  v0[52] = OUTLINED_FUNCTION_19();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2F8, &qword_2666783D8);
  OUTLINED_FUNCTION_3_3(v91);
  v93 = *(v92 + 64);
  v0[53] = OUTLINED_FUNCTION_19();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F300, &qword_2666783E0);
  OUTLINED_FUNCTION_3_3(v94);
  v96 = *(v95 + 64);
  v0[54] = OUTLINED_FUNCTION_65_1();
  v0[55] = swift_task_alloc();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F308, &qword_2666783E8);
  OUTLINED_FUNCTION_3_3(v97);
  v99 = *(v98 + 64);
  v0[56] = OUTLINED_FUNCTION_19();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F310, &qword_2666783F0);
  OUTLINED_FUNCTION_3_3(v100);
  v102 = *(v101 + 64);
  v0[57] = OUTLINED_FUNCTION_19();
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F318, &qword_2666783F8);
  OUTLINED_FUNCTION_3_3(v103);
  v105 = *(v104 + 64);
  v0[58] = OUTLINED_FUNCTION_65_1();
  v0[59] = swift_task_alloc();
  v0[60] = swift_task_alloc();
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F320, &qword_266678400);
  OUTLINED_FUNCTION_3_3(v106);
  v108 = *(v107 + 64);
  v0[61] = OUTLINED_FUNCTION_19();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F328, &qword_266678408);
  OUTLINED_FUNCTION_3_3(v109);
  v111 = *(v110 + 64);
  v0[62] = OUTLINED_FUNCTION_19();
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F330, &qword_266678410);
  OUTLINED_FUNCTION_3_3(v112);
  v114 = *(v113 + 64);
  v0[63] = OUTLINED_FUNCTION_65_1();
  v0[64] = swift_task_alloc();
  v0[65] = swift_task_alloc();
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F338, &qword_266678418);
  OUTLINED_FUNCTION_3_3(v115);
  v117 = *(v116 + 64);
  v0[66] = OUTLINED_FUNCTION_19();
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F340, &qword_266678420);
  OUTLINED_FUNCTION_3_3(v118);
  v120 = *(v119 + 64);
  v0[67] = OUTLINED_FUNCTION_65_1();
  v0[68] = swift_task_alloc();
  v0[69] = swift_task_alloc();
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F348, &qword_266678428);
  OUTLINED_FUNCTION_3_3(v121);
  v123 = *(v122 + 64);
  v0[70] = OUTLINED_FUNCTION_19();
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F350, &qword_266678430);
  OUTLINED_FUNCTION_3_3(v124);
  v126 = *(v125 + 64);
  v0[71] = OUTLINED_FUNCTION_19();
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F358, &qword_266678438);
  OUTLINED_FUNCTION_3_3(v127);
  v129 = *(v128 + 64);
  v0[72] = OUTLINED_FUNCTION_19();
  v130 = sub_26666B7D8();
  v0[73] = v130;
  OUTLINED_FUNCTION_3_1(v130);
  v0[74] = v131;
  v133 = *(v132 + 64);
  v0[75] = OUTLINED_FUNCTION_65_1();
  v0[76] = swift_task_alloc();
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F360, &qword_266678440);
  OUTLINED_FUNCTION_3_3(v134);
  v136 = *(v135 + 64);
  v0[77] = OUTLINED_FUNCTION_65_1();
  v0[78] = swift_task_alloc();
  v0[79] = swift_task_alloc();
  v137 = type metadata accessor for Signpost.OpenSignpost();
  v0[80] = v137;
  OUTLINED_FUNCTION_3_3(v137);
  v139 = *(v138 + 64);
  v0[81] = OUTLINED_FUNCTION_19();
  v0[5] = &type metadata for AceUserLocationProvider;
  v0[6] = &off_28780A9C8;
  OUTLINED_FUNCTION_4();
  v140 = swift_allocObject();
  v0[2] = v140;
  sub_2665524C0(v2, v140 + 16);
  v141 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v141, v142, v143);
}

uint64_t sub_26661436C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  if (qword_28156C160 != -1)
  {
    OUTLINED_FUNCTION_25_9();
  }

  OUTLINED_FUNCTION_83_0();
  v17 = qword_28156D800;
  v13[82] = qword_28156D800;
  v17;
  sub_26666C088();
  sub_26666C638();
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_54_1();
  v18 = [v12 setLocation];
  v13[83] = v18;
  if (v18)
  {
    v19 = v18;
    v20 = sub_26659A29C(v18, &selRef_name);
    v13[84] = v20;
    v13[85] = v21;
    if (v21)
    {
      v22 = OUTLINED_FUNCTION_97_0(v20, v21);
      OUTLINED_FUNCTION_12_18(v22);
      sub_26659A29C(v19, &selRef_country);
      if (v23)
      {
        OUTLINED_FUNCTION_96_0();
        OUTLINED_FUNCTION_94();
        if (v24)
        {
          sub_26656CAEC(v13[72], &qword_28007F358, &qword_266678438);
        }

        else
        {
          v44 = OUTLINED_FUNCTION_20_15();
          v45(v44);
          v46 = v19[2];
          v47 = OUTLINED_FUNCTION_33_7();
          v48(v47);
          v49 = sub_26666B7F8();
          OUTLINED_FUNCTION_5_4(v16, v50, v51, v49);
          sub_26666B808();
          OUTLINED_FUNCTION_55_1();
          OUTLINED_FUNCTION_7_6();
          __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
          OUTLINED_FUNCTION_75_0();
          v56 = OUTLINED_FUNCTION_84_0();
          v57(v56);
          v14 = &qword_266678440;
          OUTLINED_FUNCTION_98();
          OUTLINED_FUNCTION_26_2();
          OUTLINED_FUNCTION_66_0(v58, v59, v60);
        }
      }

      v61 = v13[69];
      v62 = sub_26666B848();
      OUTLINED_FUNCTION_12_18(v62);
      sub_26659A29C(v19, &selRef_postalCode);
      if (v63)
      {
        v64 = OUTLINED_FUNCTION_42_5();
        OUTLINED_FUNCTION_2_32(v15, v65, v66, v64);
        sub_26666B828();
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v67 = v13[65];
      v68 = sub_26666B708();
      OUTLINED_FUNCTION_12_18(v68);
      sub_26659A29C(v19, &selRef_locality);
      if (v69)
      {
        v70 = OUTLINED_FUNCTION_41_0();
        OUTLINED_FUNCTION_4_31(v70);
        v71 = sub_26666B6F8();
        OUTLINED_FUNCTION_1_37(v71);
        sub_26666B6D8();
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v72 = v13[60];
      v73 = sub_26666B768();
      OUTLINED_FUNCTION_12_18(v73);
      sub_26659A29C(v19, &selRef_administrativeArea);
      if (v74)
      {
        OUTLINED_FUNCTION_44_2();
        v75 = OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_4_31(v75);
        v76 = sub_26666B758();
        OUTLINED_FUNCTION_1_37(v76);
        sub_26666B738();
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v77 = v13[55];
      v78 = sub_26666B7A8();
      OUTLINED_FUNCTION_12_18(v78);
      sub_26659A29C(v19, &selRef_subAdministrativeArea);
      if (v79)
      {
        OUTLINED_FUNCTION_44_2();
        v80 = OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_4_31(v80);
        v81 = sub_26666B798();
        OUTLINED_FUNCTION_1_37(v81);
        sub_26666B778();
        v77 = &qword_28007F300;
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v82 = v13[51];
      v83 = sub_26666B4F8();
      v84 = OUTLINED_FUNCTION_16_15();
      __swift_storeEnumTagSinglePayload(v84, v85, v86, v83);
      v87 = sub_26659A29C(v19, &selRef_thoroughfare);
      if (v88)
      {
        v14 = v87;
        v77 = v88;
        v89 = sub_26659A29C(v19, &selRef_subThoroughfare);
        if (v90)
        {
          v91 = OUTLINED_FUNCTION_22_7(v89);
          OUTLINED_FUNCTION_4_31(v91);
          sub_26666B378();
          v92 = OUTLINED_FUNCTION_16_15();
          __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
          OUTLINED_FUNCTION_56_0();
          sub_26666B388();
          v96 = OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_13_14(v96, 0, v97, v98);
          sub_26666B498();
          OUTLINED_FUNCTION_55_1();
          OUTLINED_FUNCTION_7_6();
          __swift_storeEnumTagSinglePayload(v99, v100, v101, v102);
          OUTLINED_FUNCTION_74_0();
          v103 = sub_26666B4A8();
          OUTLINED_FUNCTION_13_14(v77, 0, v104, v103);
          sub_26666B398();
          v16 = v215;
          v105 = OUTLINED_FUNCTION_14_13();
          OUTLINED_FUNCTION_69_0(v105, v106, v107);
          sub_26666B508();
          OUTLINED_FUNCTION_7_6();
          __swift_storeEnumTagSinglePayload(v108, v109, v110, v111);
          v15 = v218;
          v112 = OUTLINED_FUNCTION_11_19();
          OUTLINED_FUNCTION_69_0(v112, v113, v114);
          sub_26666B4D8();
          v115 = OUTLINED_FUNCTION_16_15();
          __swift_storeEnumTagSinglePayload(v115, v116, v117, v118);
          OUTLINED_FUNCTION_29_7();
          v82 = &qword_28007F2E8;
          v77 = &qword_2666783C8;
          OUTLINED_FUNCTION_73_0();
          v119 = OUTLINED_FUNCTION_17_12();
          __swift_storeEnumTagSinglePayload(v119, v120, v121, v83);
          v122 = OUTLINED_FUNCTION_33_7();
          sub_266616CA8(v122, v123, &qword_28007F2E8, &qword_2666783C8);
        }

        else
        {
        }
      }

      OUTLINED_FUNCTION_24_10();
      v124 = OUTLINED_FUNCTION_16_15();
      __swift_storeEnumTagSinglePayload(v124, v125, v126, v127);
      v128 = OUTLINED_FUNCTION_78_0();
      sub_266617158(v128, v129, v130, v131);
      sub_266617158(v14, v15, &qword_28007F340, &qword_266678420);
      sub_266617158(v19, v77, &qword_28007F318, &qword_2666783F8);
      v132 = OUTLINED_FUNCTION_88_0();
      sub_266617158(v132, v133, v134, v135);
      v136 = sub_26666B858();
      OUTLINED_FUNCTION_5_4(v221, v137, v138, v136);
      sub_26666B728();
      OUTLINED_FUNCTION_7_6();
      __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
      v143 = [v19 timeZone];
      if (v143)
      {
        v19 = v143;
        v144 = v13[32];
        sub_266668E98();

        v145 = 0;
      }

      else
      {
        v145 = 1;
      }

      OUTLINED_FUNCTION_53_1(v143, v145);
      v146 = OUTLINED_FUNCTION_25();
      sub_266616CA8(v146, v147, v148, v149);
      OUTLINED_FUNCTION_70_0();
      if (v24)
      {
        sub_26656CAEC(v19, &qword_28007D280, &unk_266671C80);
      }

      else
      {
        v82 = v13[17];
        v150 = v13[18];
        v151 = sub_266668E78();
        v153 = OUTLINED_FUNCTION_36_3(v151, v152);
        v154(v153);
      }

      OUTLINED_FUNCTION_19_18();
      v155 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_5_4(v155, v156, v157, v158);
      sub_26666B9A8();
      v159 = OUTLINED_FUNCTION_11_19();
      __swift_storeEnumTagSinglePayload(v159, v160, v161, v162);
      sub_266617158(v19, v83, &qword_28007F2E8, &qword_2666783C8);
      v163 = sub_26666B4C8();
      OUTLINED_FUNCTION_5_4(v16, v164, v165, v163);
      v166 = sub_26666B528();
      OUTLINED_FUNCTION_5_4(v82, v167, v168, v166);
      sub_26666B468();
      v169 = OUTLINED_FUNCTION_15_14();
      __swift_storeEnumTagSinglePayload(v169, v170, v171, v172);

      OUTLINED_FUNCTION_52_2();
      sub_26666B478();
      OUTLINED_FUNCTION_55_1();
      OUTLINED_FUNCTION_26_2();
      __swift_storeEnumTagSinglePayload(v173, v174, v175, v176);
      sub_266617158(v210, v14, &qword_28007F300, &qword_2666783E0);

      OUTLINED_FUNCTION_21_8();
      __swift_project_boxed_opaque_existential_1(v13 + 2, &type metadata for AceUserLocationProvider);
      v177 = swift_task_alloc();
      v13[86] = v177;
      *v177 = v13;
      OUTLINED_FUNCTION_82_0(v177);
      OUTLINED_FUNCTION_4_7();

      return sub_266618ABC();
    }
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v25 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v25, qword_28156D7E8);
  v26 = sub_26666C148();
  v27 = sub_26666C5E8();
  if (OUTLINED_FUNCTION_9(v27))
  {
    v28 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v28);
    OUTLINED_FUNCTION_4_9();
    _os_log_impl(v29, v30, v31, v32, v33, 2u);
    OUTLINED_FUNCTION_10();
  }

  v34 = v13[81];

  sub_266552C44(0, &qword_28156C0A8, 0x277CD3EA8);
  [swift_getObjCClassFromMetadata() notRequired];
  sub_26666C628();
  OUTLINED_FUNCTION_48_2();
  sub_26666C078();
  OUTLINED_FUNCTION_5_23();
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_90_0();
  v179 = v13[62];
  v180 = v13[61];
  v181 = v13[60];
  v182 = v13[59];
  v183 = v13[58];
  v184 = v13[57];
  v185 = v13[56];
  v186 = v13[55];
  v187 = v13[54];
  v188 = v13[53];
  v189 = v13[52];
  v190 = v13[51];
  v191 = v13[50];
  v192 = v13[49];
  v193 = v13[48];
  v194 = v13[47];
  v195 = v13[46];
  v196 = v13[45];
  v197 = v13[44];
  v198 = v13[43];
  v199 = v13[42];
  v200 = v13[41];
  v201 = v13[40];
  v202 = v13[39];
  v203 = v13[36];
  v204 = v13[35];
  v205 = v13[34];
  v206 = v13[33];
  v207 = v13[32];
  v208 = v13[31];
  v209 = v13[30];
  v211 = v13[29];
  v212 = v13[28];
  v213 = v13[27];
  v214 = v13[26];
  v216 = v13[25];
  v217 = v13[22];
  v219 = v13[21];
  v220 = v13[20];
  v222 = v13[19];
  OUTLINED_FUNCTION_87_0();
  v223 = v13[10];
  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_89_0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4_7();

  return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_266614D94()
{
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_34_6();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v6 = *(v5 + 688);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v3 + 696) = v0;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_86_0();
  }

  OUTLINED_FUNCTION_85_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266614EAC(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F250, &qword_266678338);
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = sub_26666B648();
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = sub_26666B588();
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();
  v13 = sub_266668EB8();
  v2[17] = v13;
  v14 = *(v13 - 8);
  v2[18] = v14;
  v15 = *(v14 + 64) + 15;
  v2[19] = swift_task_alloc();
  v16 = *(*(sub_266668D98() - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v17 = sub_26666B6A8();
  v2[23] = v17;
  v18 = *(v17 - 8);
  v2[24] = v18;
  v19 = *(v18 + 64) + 15;
  v2[25] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F258, &qword_266678340) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F260, &qword_266678348) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F268, &qword_266678350) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F270, &qword_266678358) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F278, &qword_266678360) - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F280, &qword_266678368) - 8) + 64) + 15;
  v2[31] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D280, &unk_266671C80) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F290, &qword_266678370) - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F298, &qword_266678378) - 8) + 64) + 15;
  v2[35] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2A0, &qword_266678380) - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v30 = sub_26666B9D8();
  v2[37] = v30;
  v31 = *(v30 - 8);
  v2[38] = v31;
  v32 = *(v31 + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2A8, &qword_266678388) - 8) + 64) + 15;
  v2[41] = swift_task_alloc();
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2B0, &qword_266678390) - 8) + 64) + 15;
  v2[42] = swift_task_alloc();
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2B8, &qword_266678398) - 8) + 64) + 15;
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v36 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2C0, &qword_2666783A0) - 8) + 64) + 15;
  v2[45] = swift_task_alloc();
  v37 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2C8, &qword_2666783A8) - 8) + 64) + 15;
  v2[46] = swift_task_alloc();
  v38 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2D0, &qword_2666783B0) - 8) + 64) + 15;
  v2[47] = swift_task_alloc();
  v39 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2D8, &qword_2666783B8) - 8) + 64) + 15;
  v2[48] = swift_task_alloc();
  v40 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2E0, &qword_2666783C0) - 8) + 64) + 15;
  v2[49] = swift_task_alloc();
  v41 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2E8, &qword_2666783C8) - 8) + 64) + 15;
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v42 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2F0, &qword_2666783D0) - 8) + 64) + 15;
  v2[52] = swift_task_alloc();
  v43 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2F8, &qword_2666783D8) - 8) + 64) + 15;
  v2[53] = swift_task_alloc();
  v44 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F300, &qword_2666783E0) - 8) + 64) + 15;
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v45 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F308, &qword_2666783E8) - 8) + 64) + 15;
  v2[56] = swift_task_alloc();
  v46 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F310, &qword_2666783F0) - 8) + 64) + 15;
  v2[57] = swift_task_alloc();
  v47 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F318, &qword_2666783F8) - 8) + 64) + 15;
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v48 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F320, &qword_266678400) - 8) + 64) + 15;
  v2[61] = swift_task_alloc();
  v49 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F328, &qword_266678408) - 8) + 64) + 15;
  v2[62] = swift_task_alloc();
  v50 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F330, &qword_266678410) - 8) + 64) + 15;
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v51 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F338, &qword_266678418) - 8) + 64) + 15;
  v2[66] = swift_task_alloc();
  v52 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F340, &qword_266678420) - 8) + 64) + 15;
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v53 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F348, &qword_266678428) - 8) + 64) + 15;
  v2[70] = swift_task_alloc();
  v54 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F350, &qword_266678430) - 8) + 64) + 15;
  v2[71] = swift_task_alloc();
  v55 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F358, &qword_266678438) - 8) + 64) + 15;
  v2[72] = swift_task_alloc();
  v56 = sub_26666B7D8();
  v2[73] = v56;
  v57 = *(v56 - 8);
  v2[74] = v57;
  v58 = *(v57 + 64) + 15;
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v59 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F360, &qword_266678440) - 8) + 64) + 15;
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v60 = type metadata accessor for Signpost.OpenSignpost();
  v2[80] = v60;
  v61 = *(*(v60 - 8) + 64) + 15;
  v2[81] = swift_task_alloc();
  v2[5] = &type metadata for AceUserLocationProvider;
  v2[6] = &off_28780A9C8;
  v62 = swift_allocObject();
  v2[2] = v62;
  sub_2665524C0(a2, v62 + 16);

  return MEMORY[0x2822009F8](sub_266615A68, 0, 0);
}

uint64_t sub_266615A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  if (qword_28156C160 != -1)
  {
    OUTLINED_FUNCTION_25_9();
  }

  OUTLINED_FUNCTION_83_0();
  v17 = qword_28156D800;
  v13[82] = qword_28156D800;
  v17;
  sub_26666C088();
  sub_26666C638();
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_54_1();
  v18 = [v12 location];
  v13[83] = v18;
  if (v18)
  {
    v19 = v18;
    v20 = sub_26659A29C(v18, &selRef_name);
    v13[84] = v20;
    v13[85] = v21;
    if (v21)
    {
      v22 = OUTLINED_FUNCTION_97_0(v20, v21);
      OUTLINED_FUNCTION_12_18(v22);
      sub_26659A29C(v19, &selRef_country);
      if (v23)
      {
        OUTLINED_FUNCTION_96_0();
        OUTLINED_FUNCTION_94();
        if (v24)
        {
          sub_26656CAEC(v13[72], &qword_28007F358, &qword_266678438);
        }

        else
        {
          v44 = OUTLINED_FUNCTION_20_15();
          v45(v44);
          v46 = v19[2];
          v47 = OUTLINED_FUNCTION_33_7();
          v48(v47);
          v49 = sub_26666B7F8();
          OUTLINED_FUNCTION_5_4(v16, v50, v51, v49);
          sub_26666B808();
          OUTLINED_FUNCTION_55_1();
          OUTLINED_FUNCTION_7_6();
          __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
          OUTLINED_FUNCTION_75_0();
          v56 = OUTLINED_FUNCTION_84_0();
          v57(v56);
          v14 = &qword_266678440;
          OUTLINED_FUNCTION_98();
          OUTLINED_FUNCTION_26_2();
          OUTLINED_FUNCTION_66_0(v58, v59, v60);
        }
      }

      v61 = v13[69];
      v62 = sub_26666B848();
      OUTLINED_FUNCTION_12_18(v62);
      sub_26659A29C(v19, &selRef_postalCode);
      if (v63)
      {
        v64 = OUTLINED_FUNCTION_42_5();
        OUTLINED_FUNCTION_2_32(v15, v65, v66, v64);
        sub_26666B828();
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v67 = v13[65];
      v68 = sub_26666B708();
      OUTLINED_FUNCTION_12_18(v68);
      sub_26659A29C(v19, &selRef_locality);
      if (v69)
      {
        v70 = OUTLINED_FUNCTION_41_0();
        OUTLINED_FUNCTION_4_31(v70);
        v71 = sub_26666B6F8();
        OUTLINED_FUNCTION_1_37(v71);
        sub_26666B6D8();
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v72 = v13[60];
      v73 = sub_26666B768();
      OUTLINED_FUNCTION_12_18(v73);
      sub_26659A29C(v19, &selRef_administrativeArea);
      if (v74)
      {
        OUTLINED_FUNCTION_44_2();
        v75 = OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_4_31(v75);
        v76 = sub_26666B758();
        OUTLINED_FUNCTION_1_37(v76);
        sub_26666B738();
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v77 = v13[55];
      v78 = sub_26666B7A8();
      OUTLINED_FUNCTION_12_18(v78);
      sub_26659A29C(v19, &selRef_subAdministrativeArea);
      if (v79)
      {
        OUTLINED_FUNCTION_44_2();
        v80 = OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_4_31(v80);
        v81 = sub_26666B798();
        OUTLINED_FUNCTION_1_37(v81);
        sub_26666B778();
        v77 = &qword_28007F300;
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v82 = v13[51];
      v83 = sub_26666B4F8();
      v84 = OUTLINED_FUNCTION_16_15();
      __swift_storeEnumTagSinglePayload(v84, v85, v86, v83);
      v87 = sub_26659A29C(v19, &selRef_thoroughfare);
      if (v88)
      {
        v14 = v87;
        v77 = v88;
        v89 = sub_26659A29C(v19, &selRef_subThoroughfare);
        if (v90)
        {
          v91 = OUTLINED_FUNCTION_22_7(v89);
          OUTLINED_FUNCTION_4_31(v91);
          sub_26666B378();
          v92 = OUTLINED_FUNCTION_16_15();
          __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
          OUTLINED_FUNCTION_56_0();
          sub_26666B388();
          v96 = OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_13_14(v96, 0, v97, v98);
          sub_26666B498();
          OUTLINED_FUNCTION_55_1();
          OUTLINED_FUNCTION_7_6();
          __swift_storeEnumTagSinglePayload(v99, v100, v101, v102);
          OUTLINED_FUNCTION_74_0();
          v103 = sub_26666B4A8();
          OUTLINED_FUNCTION_13_14(v77, 0, v104, v103);
          sub_26666B398();
          v16 = v215;
          v105 = OUTLINED_FUNCTION_14_13();
          OUTLINED_FUNCTION_69_0(v105, v106, v107);
          sub_26666B508();
          OUTLINED_FUNCTION_7_6();
          __swift_storeEnumTagSinglePayload(v108, v109, v110, v111);
          v15 = v218;
          v112 = OUTLINED_FUNCTION_11_19();
          OUTLINED_FUNCTION_69_0(v112, v113, v114);
          sub_26666B4D8();
          v115 = OUTLINED_FUNCTION_16_15();
          __swift_storeEnumTagSinglePayload(v115, v116, v117, v118);
          OUTLINED_FUNCTION_29_7();
          v82 = &qword_28007F2E8;
          v77 = &qword_2666783C8;
          OUTLINED_FUNCTION_73_0();
          v119 = OUTLINED_FUNCTION_17_12();
          __swift_storeEnumTagSinglePayload(v119, v120, v121, v83);
          v122 = OUTLINED_FUNCTION_33_7();
          sub_266616CA8(v122, v123, &qword_28007F2E8, &qword_2666783C8);
        }

        else
        {
        }
      }

      OUTLINED_FUNCTION_24_10();
      v124 = OUTLINED_FUNCTION_16_15();
      __swift_storeEnumTagSinglePayload(v124, v125, v126, v127);
      v128 = OUTLINED_FUNCTION_78_0();
      sub_266617158(v128, v129, v130, v131);
      sub_266617158(v14, v15, &qword_28007F340, &qword_266678420);
      sub_266617158(v19, v77, &qword_28007F318, &qword_2666783F8);
      v132 = OUTLINED_FUNCTION_88_0();
      sub_266617158(v132, v133, v134, v135);
      v136 = sub_26666B858();
      OUTLINED_FUNCTION_5_4(v221, v137, v138, v136);
      sub_26666B728();
      OUTLINED_FUNCTION_7_6();
      __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
      v143 = [v19 timeZone];
      if (v143)
      {
        v19 = v143;
        v144 = v13[32];
        sub_266668E98();

        v145 = 0;
      }

      else
      {
        v145 = 1;
      }

      OUTLINED_FUNCTION_53_1(v143, v145);
      v146 = OUTLINED_FUNCTION_25();
      sub_266616CA8(v146, v147, v148, v149);
      OUTLINED_FUNCTION_70_0();
      if (v24)
      {
        sub_26656CAEC(v19, &qword_28007D280, &unk_266671C80);
      }

      else
      {
        v82 = v13[17];
        v150 = v13[18];
        v151 = sub_266668E78();
        v153 = OUTLINED_FUNCTION_36_3(v151, v152);
        v154(v153);
      }

      OUTLINED_FUNCTION_19_18();
      v155 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_5_4(v155, v156, v157, v158);
      sub_26666B9A8();
      v159 = OUTLINED_FUNCTION_11_19();
      __swift_storeEnumTagSinglePayload(v159, v160, v161, v162);
      sub_266617158(v19, v83, &qword_28007F2E8, &qword_2666783C8);
      v163 = sub_26666B4C8();
      OUTLINED_FUNCTION_5_4(v16, v164, v165, v163);
      v166 = sub_26666B528();
      OUTLINED_FUNCTION_5_4(v82, v167, v168, v166);
      sub_26666B468();
      v169 = OUTLINED_FUNCTION_15_14();
      __swift_storeEnumTagSinglePayload(v169, v170, v171, v172);

      OUTLINED_FUNCTION_52_2();
      sub_26666B478();
      OUTLINED_FUNCTION_55_1();
      OUTLINED_FUNCTION_26_2();
      __swift_storeEnumTagSinglePayload(v173, v174, v175, v176);
      sub_266617158(v210, v14, &qword_28007F300, &qword_2666783E0);

      OUTLINED_FUNCTION_21_8();
      __swift_project_boxed_opaque_existential_1(v13 + 2, &type metadata for AceUserLocationProvider);
      v177 = swift_task_alloc();
      v13[86] = v177;
      *v177 = v13;
      OUTLINED_FUNCTION_82_0(v177);
      OUTLINED_FUNCTION_4_7();

      return sub_266618ABC();
    }
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v25 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v25, qword_28156D7E8);
  v26 = sub_26666C148();
  v27 = sub_26666C5E8();
  if (OUTLINED_FUNCTION_9(v27))
  {
    v28 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v28);
    OUTLINED_FUNCTION_4_9();
    _os_log_impl(v29, v30, v31, v32, v33, 2u);
    OUTLINED_FUNCTION_10();
  }

  v34 = v13[81];

  sub_266552C44(0, &qword_28156C0A8, 0x277CD3EA8);
  [swift_getObjCClassFromMetadata() notRequired];
  sub_26666C628();
  OUTLINED_FUNCTION_48_2();
  sub_26666C078();
  OUTLINED_FUNCTION_5_23();
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_90_0();
  v179 = v13[62];
  v180 = v13[61];
  v181 = v13[60];
  v182 = v13[59];
  v183 = v13[58];
  v184 = v13[57];
  v185 = v13[56];
  v186 = v13[55];
  v187 = v13[54];
  v188 = v13[53];
  v189 = v13[52];
  v190 = v13[51];
  v191 = v13[50];
  v192 = v13[49];
  v193 = v13[48];
  v194 = v13[47];
  v195 = v13[46];
  v196 = v13[45];
  v197 = v13[44];
  v198 = v13[43];
  v199 = v13[42];
  v200 = v13[41];
  v201 = v13[40];
  v202 = v13[39];
  v203 = v13[36];
  v204 = v13[35];
  v205 = v13[34];
  v206 = v13[33];
  v207 = v13[32];
  v208 = v13[31];
  v209 = v13[30];
  v211 = v13[29];
  v212 = v13[28];
  v213 = v13[27];
  v214 = v13[26];
  v216 = v13[25];
  v217 = v13[22];
  v219 = v13[21];
  v220 = v13[20];
  v222 = v13[19];
  OUTLINED_FUNCTION_87_0();
  v223 = v13[10];
  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_89_0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4_7();

  return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

id sub_266616490(char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v93 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v8 = OUTLINED_FUNCTION_3_3(v7);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v88 - v16;
  v18 = sub_266668D38();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v91 = v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = v88 - v26;
  MEMORY[0x28223BE20](v25, v28);
  v92 = v88 - v29;
  v96 = type metadata accessor for EventProvider();
  v97 = &off_287806290;
  v95[0] = a2;

  v30 = [a1 allDay];
  sub_266552C44(0, &qword_28007D740, 0x277CCABB0);
  v31 = sub_26666C658();
  v32 = v31;
  if (v30)
  {
    v33 = sub_26666C678();

    if (v33)
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v34 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v34, qword_28156D7E8);
      v35 = sub_26666C148();
      v36 = sub_26666C618();
      if (!os_log_type_enabled(v35, v36))
      {
        goto LABEL_61;
      }

      v37 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v37);
      v38 = "[IntentHandlingUtil] DateTimeRange is all day, skipping conflicting event check.";
LABEL_60:
      _os_log_impl(&dword_266549000, v35, v36, v38, a1, 2u);
      OUTLINED_FUNCTION_10();
LABEL_61:

      goto LABEL_62;
    }
  }

  else
  {
  }

  v39 = [a1 startDate];
  if (v39)
  {
    v40 = v39;
    sub_266668CE8();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v41, 1, v18);
  sub_266616CA8(v14, v17, &qword_28007D140, &qword_26666F140);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_26656CAEC(v17, &qword_28007D140, &qword_26666F140);
LABEL_57:
    if (qword_28156C150 != -1)
    {
LABEL_72:
      OUTLINED_FUNCTION_1_1();
    }

    v82 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v82, qword_28156D7E8);
    v35 = sub_26666C148();
    v36 = sub_26666C5F8();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_61;
    }

    v83 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v83);
    v38 = "[IntentHandlingUtil] DateTimeRange is not valid, skipping conflicting event check.";
    goto LABEL_60;
  }

  sub_266668C78();
  v42 = *(v19 + 8);
  v42(v17, v18);
  v43 = v92;
  (*(v19 + 32))(v92, v27, v18);
  v44 = [a1 endDate];
  if (!v44)
  {
    v42(v43, v18);
    goto LABEL_57;
  }

  v45 = v44;
  v88[0] = v42;
  v88[1] = v19 + 8;
  v89 = v18;
  v90 = a1;
  sub_266668CE8();

  v46 = *__swift_project_boxed_opaque_existential_1(v95, v96);
  v47 = sub_26655B128();
  v94[0] = MEMORY[0x277D84F90];
  v48 = sub_2665C485C(v47);
  v49 = 0;
  a1 = (v47 & 0xFFFFFFFFFFFFFF8);
  while (v48 != v49)
  {
    if ((v47 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x266788B60](v49, v47);
    }

    else
    {
      if (v49 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_69;
      }

      v50 = *(v47 + 8 * v49 + 32);
    }

    v51 = v50;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if ([v50 isAllDay])
    {
LABEL_21:

      goto LABEL_35;
    }

    v52 = sub_2665EF62C(v51);
    if (!v53)
    {
      if (!a4)
      {
        goto LABEL_21;
      }

      goto LABEL_33;
    }

    if (!a4)
    {

LABEL_33:
      sub_26666C868();
      v56 = *(v94[0] + 16);
      sub_26666C8A8();
      sub_26666C8B8();
      sub_26666C878();
      goto LABEL_35;
    }

    if (v52 != v93 || v53 != a4)
    {
      v55 = sub_26666CAC8();

      if (v55)
      {
        goto LABEL_21;
      }

      goto LABEL_33;
    }

LABEL_35:
    ++v49;
  }

  v57 = v94[0];
  v58 = sub_2665C485C(v94[0]);
  v59 = 0;
  v60 = MEMORY[0x277D84F90];
  a1 = &selRef_setConflictingEventIdentifiers_;
LABEL_38:
  v61 = v92;
  while (v58 != v59)
  {
    if ((v57 & 0xC000000000000001) != 0)
    {
      v62 = MEMORY[0x266788B60](v59, v57);
    }

    else
    {
      if (v59 >= *(v57 + 16))
      {
        goto LABEL_71;
      }

      v62 = *(v57 + 8 * v59 + 32);
    }

    v63 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      goto LABEL_70;
    }

    v64 = v62;
    v65 = [v64 appEntityIdentifier];
    if (v65)
    {
      v66 = v65;
      v67 = sub_26666C308();
      v69 = v68;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = *(v60 + 16);
        sub_2665C6350();
        v60 = v73;
      }

      v70 = *(v60 + 16);
      if (v70 >= *(v60 + 24) >> 1)
      {
        sub_2665C6350();
        v60 = v74;
      }

      *(v60 + 16) = v70 + 1;
      v71 = v60 + 16 * v70;
      *(v71 + 32) = v67;
      *(v71 + 40) = v69;
      v59 = v63;
      goto LABEL_38;
    }

    ++v59;
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v75 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v75, qword_28156D7E8);

  v76 = sub_26666C148();
  v77 = sub_26666C618();
  v78 = OUTLINED_FUNCTION_7_2(v77);
  v80 = v89;
  v79 = v90;
  if (v78)
  {
    v81 = OUTLINED_FUNCTION_21();
    *v81 = 134217984;
    *(v81 + 4) = *(v60 + 16);

    _os_log_impl(&dword_266549000, v76, v77, "[IntentHandlingUtil] Found %ld conflicting event(s)", v81, 0xCu);
    OUTLINED_FUNCTION_4_1();
  }

  else
  {
  }

  v86 = v88[0];
  if (*(v60 + 16))
  {
    sub_266552C44(0, &qword_28156C0A0, 0x277CD3B70);
    v94[3] = &type metadata for IntentHandlingUtil.DateTimeRangeConflictResult;
    v94[0] = v60;
    v94[1] = v79;
    v87 = v79;
    v84 = sub_266611008(v94);
    v86(v91, v80);
    v86(v61, v80);
    goto LABEL_63;
  }

  v86(v91, v80);
  v86(v61, v80);
LABEL_62:
  v84 = 0;
LABEL_63:
  __swift_destroy_boxed_opaque_existential_1(v95);
  return v84;
}

uint64_t sub_266616CA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_105(a1, a2, a3, a4);
  OUTLINED_FUNCTION_18_2(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_25();
  v9(v8);
  return v4;
}

uint64_t sub_266616CF4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_266616D84()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_266616E14()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_266616EA4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_266616F34()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t objectdestroy_13Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26661700C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_26661709C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarDateTimeResolver();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266617100(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_18_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_266617158(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_105(a1, a2, a3, a4);
  OUTLINED_FUNCTION_18_2(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_25();
  v9(v8);
  return v4;
}

uint64_t OUTLINED_FUNCTION_3_31()
{
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v0);

  return sub_266616CA8(v4, v3, v1, v2);
}

void OUTLINED_FUNCTION_5_23()
{
  v1 = v0[81];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[72];
  v8 = v0[71];
  v9 = v0[70];
  v10 = v0[69];
  v11 = v0[68];
}

uint64_t OUTLINED_FUNCTION_9_21()
{
  v2 = *(v0 - 104);
  v3 = v2[83];
  v4 = v2[81];
  *(v0 - 136) = v2[82];
  *(v0 - 128) = v4;
  v5 = v2[79];
  *(v0 - 152) = v2[69];
  *(v0 - 144) = v5;
  v6 = v2[65];
  *(v0 - 168) = v2[60];
  *(v0 - 160) = v6;
  v7 = v2[55];
  *(v0 - 184) = v2[51];
  *(v0 - 176) = v7;
  v8 = v2[40];
  v9 = v2[37];
  v10 = v2[24];
  v11 = v2[25];
  v12 = v2[23];
}

uint64_t OUTLINED_FUNCTION_10_18()
{

  return sub_266617100(v0, type metadata accessor for Signpost.OpenSignpost);
}

uint64_t OUTLINED_FUNCTION_12_18(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_19_18()
{
  v3 = v0[77];
  *(v1 - 136) = v0[67];
  *(v1 - 128) = v3;
  *(v1 - 120) = v0[63];
  v4 = v0[58];
  v6 = v0[54];
  v5 = v0[55];
  v7 = v0[51];
  *(v1 - 192) = v0[50];
  *(v1 - 184) = v5;
  v8 = v0[40];
  v9 = v0[35];
  *(v1 - 176) = v0[36];
  *(v1 - 168) = v8;
  *(v1 - 152) = v9;
  *(v1 - 144) = v4;
  *(v1 - 160) = v0[34];
  v11 = v0[30];
  v10 = v0[31];
  v12 = v0[28];
  v13 = v0[29];
  v14 = v0[26];
  v15 = v0[27];

  return MEMORY[0x2821B90E0](0);
}

uint64_t OUTLINED_FUNCTION_20_15()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[75];
  v4 = v0[73];
  v5 = v0[72];
  v6 = v0[71];
  v7 = v0[70];
  v8 = *(v0[74] + 32);
  return v0[76];
}

uint64_t OUTLINED_FUNCTION_21_8()
{
  v21 = *(v8 - 192);
  v20 = *(v8 - 112);
  v10 = *(v8 - 176);
  v11 = *(v8 - 168);
  v13 = *(v8 - 136);
  v12 = *(v8 - 128);
  v15 = *(v8 - 152);
  v14 = *(v8 - 144);
  v16 = *(v8 - 120);
  v17 = *(v8 - 160);
  v18 = *(v8 - 88);

  return MEMORY[0x2821B90A0](v10, v12, v13, v14, v16, v15, v17, v18, v20, v3, v5, v21, v6, v0, v7, v1, v2, v4, 0, 0);
}

uint64_t OUTLINED_FUNCTION_22_7(uint64_t a1)
{
  v4 = v1[51];
  *(v2 - 120) = v1[50];
  *(v2 - 112) = v4;
  v6 = v1[48];
  v5 = v1[49];
  v7 = v1[47];
  v8 = v1[44];
  v9 = v1[45];
  *(v2 - 160) = v1[46];
  *(v2 - 152) = v8;
  v10 = v1[43];
  *(v2 - 144) = v1[42];
  *(v2 - 136) = v10;
  *(v2 - 128) = v1[41];
  *(v2 - 168) = a1;

  return MEMORY[0x2821B8730](0);
}

uint64_t OUTLINED_FUNCTION_24_10()
{
  v3 = v0[79];
  v4 = v0[77];
  v5 = v0[69];
  v6 = v0[67];
  v7 = v0[65];
  v8 = v0[63];
  v9 = v0[60];
  v10 = v0[58];
  v11 = v0[36];
  v12 = v0[34];
  *(v1 - 120) = v0[35];
  *(v1 - 112) = v12;

  return MEMORY[0x2821B8CE8](0);
}

uint64_t OUTLINED_FUNCTION_25_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_29_7()
{
  v8 = *(v6 - 120);

  return MEMORY[0x2821B8918](v2, v1, v4, v5, v3, v0);
}

uint64_t OUTLINED_FUNCTION_31_7()
{

  return sub_26656CAEC(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_32_7()
{

  return sub_26666C078();
}

uint64_t OUTLINED_FUNCTION_36_3(uint64_t a1, uint64_t a2)
{
  *(v4 - 88) = a1;
  *(v4 - 112) = a2;
  v5 = *(v3 + 8);
  return v2;
}

void OUTLINED_FUNCTION_39_3()
{
  v4 = v1[82];
  *(v2 - 112) = v1[81];
  *(v2 - 136) = v1[79];
  *(v2 - 128) = v4;
  v5 = v1[69];
  *(v2 - 152) = v1[65];
  *(v2 - 144) = v5;
  v6 = v1[60];
  *(v2 - 168) = v1[55];
  *(v2 - 160) = v6;
  v7 = v1[51];
  *(v2 - 184) = v1[40];
  *(v2 - 176) = v7;
  v8 = v1[38];
  *(v2 - 192) = v1[37];
  v9 = v1[24];
  v10 = v1[25];
  v11 = v1[23];
}

uint64_t OUTLINED_FUNCTION_41_0()
{
  v2 = v0[65];
  v3 = v0[64];
  v5 = v0[61];
  v4 = v0[62];

  return MEMORY[0x2821B8C68](0);
}

uint64_t OUTLINED_FUNCTION_42_5()
{
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[66];

  return MEMORY[0x2821B8E48](0);
}

uint64_t OUTLINED_FUNCTION_49_1()
{

  return sub_2665C4864(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_52_2()
{
  v4 = *(v2 - 96);

  return MEMORY[0x2821B8860](v4, v1, v0);
}

uint64_t OUTLINED_FUNCTION_53_1(uint64_t a1, uint64_t a2)
{
  v4 = v2[33];
  v5 = v2[32];
  v6 = v2[17];

  return __swift_storeEnumTagSinglePayload(v5, a2, 1, v6);
}

void OUTLINED_FUNCTION_54_1()
{
  v5 = v0 + *(v2 + 20);
  *v5 = v1;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

uint64_t OUTLINED_FUNCTION_56_0()
{

  return MEMORY[0x2821B8728](v2, v1, v3, v0);
}

uint64_t OUTLINED_FUNCTION_65_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_66_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);

  return sub_266616CA8(v5, v4, v6, v7);
}

uint64_t OUTLINED_FUNCTION_70_0()
{
  result = __swift_getEnumTagSinglePayload(v0, 1, v1);
  v4 = *(v2 + 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_73_0()
{
  v4 = *(v2 - 112);

  return sub_26656CAEC(v4, v0, v1);
}

uint64_t OUTLINED_FUNCTION_74_0()
{
  v4 = *(v2 - 168);
  v5 = *(v2 - 160);

  return MEMORY[0x2821B88A8](v4, v0, v1);
}

uint64_t OUTLINED_FUNCTION_75_0()
{

  return MEMORY[0x2821B8E20](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_79_0()
{
  result = v0;
  v3 = **(v1 - 112);
  return result;
}

void OUTLINED_FUNCTION_83_0()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[7];
}

void OUTLINED_FUNCTION_86_0()
{
  *(v3 + 720) = v1;
  *(v3 + 704) = v0;
  *(v3 + 712) = v2;
}

uint64_t OUTLINED_FUNCTION_89_0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
}

void OUTLINED_FUNCTION_90_0()
{
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];
}

uint64_t OUTLINED_FUNCTION_96_0()
{
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);

  return MEMORY[0x2821B8E10]();
}

uint64_t OUTLINED_FUNCTION_97_0(uint64_t a1, uint64_t a2)
{
  *(v3 - 104) = a2;
  *(v3 - 96) = a1;
  v5 = *(v2 + 632);

  return MEMORY[0x2821B8E38](0);
}

uint64_t OUTLINED_FUNCTION_98()
{

  return sub_26656CAEC(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_99_0()
{
  v3 = v0[54];
  v2 = v0[55];
  v5 = v0[52];
  v4 = v0[53];

  return MEMORY[0x2821B8CD0](0);
}

uint64_t OUTLINED_FUNCTION_100()
{
  v3 = v0[59];
  v2 = v0[60];
  v5 = v0[56];
  v4 = v0[57];

  return MEMORY[0x2821B8CB0](0);
}

uint64_t OUTLINED_FUNCTION_102()
{
  result = v0;
  v4 = *(v1 - 128);
  v3 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_105(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_106()
{

  return sub_26666C4B8();
}

void OUTLINED_FUNCTION_107()
{

  JUMPOUT(0x266788B60);
}

uint64_t sub_266617AA0()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2666695E8();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266617B60, 0, 0);
}

uint64_t sub_266617B60()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = sub_26666C168();
  __swift_project_value_buffer(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266549000, v2, v3, "[DeleteEvent FlowStrategy] makeIntentExecutionBehavior", v4, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  v11 = *(v8 + 40);
  sub_266618A68();

  v12 = v11;
  v13 = v10;
  sub_2666695D8();
  sub_266669608();
  v14 = sub_2666695F8();
  (*(v6 + 8))(v5, v7);

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_266617CE8()
{
  v1 = sub_266669E58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_266669DF8();
  sub_26659AC88(v6, v30);
  (*(v2 + 8))(v6, v1);
  sub_26655A100(v30, v29);
  if (v29[40] == 255)
  {
    goto LABEL_5;
  }

  sub_26655A100(v29, &v25);
  if (v28 != 5 || (v7 = vorrq_s8(v26, v27), *&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) | v25))
  {
    sub_266553988(&v25);
LABEL_5:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v8 = sub_26666C168();
    __swift_project_value_buffer(v8, qword_28156D7E8);
    sub_26655A100(v30, &v25);
    v9 = sub_26666C148();
    v10 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136315138;
      sub_26655A100(&v25, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D200, &qword_26666FD20);
      v13 = sub_26666C318();
      v15 = v14;
      sub_266560930(&v25);
      v16 = sub_2665BFC90(v13, v15, &v24);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_266549000, v9, v10, "[DeleteEvent FlowStrategy] unsupported task, ignoring: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      sub_266560930(&v25);
    }

    sub_2666697E8();
    goto LABEL_11;
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v18 = sub_26666C168();
  __swift_project_value_buffer(v18, qword_28156D7E8);
  v19 = sub_26666C148();
  v20 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_266549000, v19, v20, "[DeleteEvent FlowStrategy] returning .cancel()", v21, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_2666697C8();
LABEL_11:
  sub_266560930(v30);
  return sub_266560930(v29);
}

uint64_t sub_266618034()
{
  OUTLINED_FUNCTION_14();
  v0[2] = v1;
  v2 = sub_266669E58();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2666180FC, 0, 0);
}

uint64_t sub_2666180FC()
{
  v28 = v0;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_26666C168();
  __swift_project_value_buffer(v5, qword_28156D7E8);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_26666C148();
  v8 = sub_26666C608();
  v9 = OUTLINED_FUNCTION_7_2(v8);
  v10 = v0[6];
  if (v9)
  {
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[3];
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_26666C318();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_2665BFC90(v15, v17, &v27);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_266549000, v7, v8, "[DeleteEvent FlowStrategy] Action for input incorrectly returned .handle for parse: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {
    v19 = v0[3];
    v20 = v0[4];

    (*(v20 + 8))(v10, v19);
  }

  v21 = v0[5];
  v22 = v0[6];
  sub_26656CBFC();
  swift_allocError();
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 2;
  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_266618348()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26658BF28;

  return sub_266618034();
}

uint64_t sub_2666183DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5BF48] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2665582C8;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_2666184A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B498] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2665582C8;

  return MEMORY[0x2821B9D90](a1, a2, a3, a4, a5);
}

uint64_t sub_26661856C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B490] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2665582C8;

  return MEMORY[0x2821B9D88](a1, a2, a3, a4, a5);
}

uint64_t sub_266618638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B488] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2665582C8;

  return MEMORY[0x2821B9D80](a1, a2, a3, a4, a5);
}

uint64_t sub_266618704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5B480] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_266557FE8;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2666187E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5B6D8] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_2665582C8;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2666188BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2665B8910;

  return sub_266617AA0();
}

unint64_t sub_266618964()
{
  result = qword_28007F3E0;
  if (!qword_28007F3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F3E0);
  }

  return result;
}

unint64_t sub_2666189BC()
{
  result = qword_28007F3E8;
  if (!qword_28007F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F3E8);
  }

  return result;
}

unint64_t sub_266618A14()
{
  result = qword_28007F3F0;
  if (!qword_28007F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F3F0);
  }

  return result;
}

unint64_t sub_266618A68()
{
  result = qword_28007D010;
  if (!qword_28007D010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28007D010);
  }

  return result;
}

uint64_t sub_266618ADC()
{
  v1 = v0[2];
  sub_266552C44(0, &qword_28007F3F8, 0x277D47310);
  v2 = sub_266663660(4, 300.0, 0.5);
  v0[3] = v2;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(MEMORY[0x277D5BFB8] + 4);
  v6 = swift_task_alloc();
  v0[4] = v6;
  v7 = sub_266552C44(0, &unk_28007F400, 0x277D477E8);
  *v6 = v0;
  v6[1] = sub_266618BFC;

  return MEMORY[0x2821BB6A0](v2, v3, v7, v4);
}

uint64_t sub_266618BFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v7 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v5 = sub_266618FF8;
  }

  else
  {
    v5 = sub_266618D10;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_266618D10()
{
  v35 = v0;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_26666C168();
  __swift_project_value_buffer(v2, qword_28156D7E8);
  v3 = v1;
  v4 = sub_26666C148();
  v5 = sub_26666C618();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v7 = 134284035;
    [v6 latitude];
    *(v7 + 4) = v9;
    *(v7 + 12) = 2049;
    [v6 longitude];
    *(v7 + 14) = v10;
    *(v7 + 22) = 2080;
    v11 = sub_26661905C(v6);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 0x3E6C696E3CLL;
      v13 = 0xE500000000000000;
    }

    v14 = sub_2665BFC90(v11, v13, &v34);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_266549000, v4, v5, "[AceUserLocationProvider] SAGetRequestOrigin returned lat:%{private}f long:%{private}f status: %s", v7, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x266789690](v8, -1, -1);
    MEMORY[0x266789690](v7, -1, -1);
  }

  [*(v0 + 40) latitude];
  if (v15 == 0.0 && ([*(v0 + 40) longitude], v16 == 0.0))
  {
    v17 = sub_26666C148();
    v18 = sub_26666C5F8();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 40);
    v21 = *(v0 + 24);
    if (v19)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_266549000, v17, v18, "[AceUserLocationProvider] Lat and Long are both zero returning nil", v22, 2u);
      MEMORY[0x266789690](v22, -1, -1);
    }

    v23 = 0;
    v24 = 0;
    v25 = 1;
  }

  else
  {
    v26 = *(v0 + 40);
    v27 = *(v0 + 24);
    [v26 latitude];
    v29 = v28;
    [v26 longitude];
    v31 = v30;

    v25 = 0;
    v23 = v29;
    v24 = v31;
  }

  v32 = *(v0 + 8);

  return v32(v23, v24, v25);
}

uint64_t sub_266618FF8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1();
}

uint64_t sub_26661905C(void *a1)
{
  v1 = [a1 status];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26666C308();

  return v3;
}

uint64_t sub_2666190D0()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2666695E8();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266619188()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = sub_26666C168();
  __swift_project_value_buffer(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266549000, v2, v3, "[CreateEvent FlowStrategy] makeIntentExecutionBehavior", v4, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  v11 = *(v8 + 40);
  sub_2665A6960();

  v12 = v11;
  v13 = v10;
  sub_2666695D8();
  sub_266669608();
  v14 = sub_2666695F8();
  (*(v6 + 8))(v5, v7);

  OUTLINED_FUNCTION_8();

  return v15(v14);
}

uint64_t sub_266619314()
{
  v1 = sub_266669E58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_266669DF8();
  sub_26659AC88(v6, v42);
  (*(v2 + 8))(v6, v1);
  sub_26655A100(v42, v41);
  if (v41[40] == 255)
  {
    goto LABEL_6;
  }

  sub_26655A100(v41, &v37);
  if (v40)
  {
    if (v40 == 5)
    {
      v7 = vorrq_s8(v38, v39);
      if (!(*&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) | v37))
      {
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1();
        }

        v26 = sub_26666C168();
        __swift_project_value_buffer(v26, qword_28156D7E8);
        v27 = sub_26666C148();
        v28 = sub_26666C618();
        if (OUTLINED_FUNCTION_7_1(v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          OUTLINED_FUNCTION_8_0();
          _os_log_impl(v30, v31, v32, v33, v29, 2u);
          OUTLINED_FUNCTION_4_1();
        }

        sub_2666697C8();
        goto LABEL_12;
      }
    }

    sub_266553988(&v37);
LABEL_6:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v8 = sub_26666C168();
    __swift_project_value_buffer(v8, qword_28156D7E8);
    sub_26655A100(v42, &v37);
    v9 = sub_26666C148();
    v10 = sub_26666C618();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v36 = v12;
      *v11 = 136315138;
      sub_26655A100(&v37, v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D200, &qword_26666FD20);
      v13 = sub_26666C318();
      v15 = v14;
      sub_266557D74(&v37, &unk_28007D200, &qword_26666FD20);
      v16 = sub_2665BFC90(v13, v15, &v36);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_266549000, v9, v10, "[CreateEvent FlowStrategy] unsupported task, ignoring: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      sub_266557D74(&v37, &unk_28007D200, &qword_26666FD20);
    }

    sub_2666697E8();
LABEL_12:
    sub_266557D74(v42, &unk_28007D200, &qword_26666FD20);
    return sub_266557D74(v41, &unk_28007D200, &qword_26666FD20);
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v17 = sub_26666C168();
  __swift_project_value_buffer(v17, qword_28156D7E8);
  v18 = sub_26666C148();
  v19 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_1(v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    OUTLINED_FUNCTION_8_0();
    _os_log_impl(v21, v22, v23, v24, v20, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_2666697D8();
  sub_266557D74(v42, &unk_28007D200, &qword_26666FD20);
  sub_266553988(&v37);
  return sub_266557D74(v41, &unk_28007D200, &qword_26666FD20);
}

uint64_t sub_266619764()
{
  OUTLINED_FUNCTION_14();
  v1[32] = v2;
  v1[33] = v0;
  v1[31] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140) - 8) + 64) + 15;
  v1[34] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2666197F8()
{
  v32 = v0;
  v1 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1(*(v0 + 264), *(*(v0 + 264) + 24));
  sub_26659AC88(v1, v0 + 16);
  sub_26655A100(v0 + 16, v0 + 64);
  if (*(v0 + 104))
  {
    if (*(v0 + 104) == 255)
    {
      sub_266557D74(v0 + 64, &unk_28007D200, &qword_26666FD20);
    }

    else
    {
      sub_266553988(v0 + 64);
    }

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v11 = sub_26666C168();
    __swift_project_value_buffer(v11, qword_28156D7E8);
    sub_26655A100(v0 + 16, v0 + 112);
    v12 = sub_26666C148();
    v13 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_7_1(v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31 = v15;
      *v14 = 136315138;
      sub_26655A100(v0 + 112, v0 + 160);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D200, &qword_26666FD20);
      v16 = sub_26666C318();
      v18 = v17;
      sub_266557D74(v0 + 112, &unk_28007D200, &qword_26666FD20);
      v19 = sub_2665BFC90(v16, v18, &v31);

      *(v14 + 4) = v19;
      OUTLINED_FUNCTION_8_0();
      _os_log_impl(v20, v21, v22, v23, v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      sub_266557D74(v0 + 112, &unk_28007D200, &qword_26666FD20);
    }

    v24 = *(v0 + 272);
    v25 = *(v0 + 248);
    type metadata accessor for IntentConversionError();
    sub_26655A170();
    swift_allocError();
    v27 = v26;
    v28 = sub_266669E58();
    (*(*(v28 - 8) + 16))(v27, v25, v28);
    swift_willThrow();
    sub_266557D74(v0 + 16, &unk_28007D200, &qword_26666FD20);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v2 = *(v0 + 272);
    sub_2665536F8((v0 + 64), v0 + 208);
    v3 = *(v0 + 232);
    v4 = *(v0 + 240);
    __swift_project_boxed_opaque_existential_1((v0 + 208), v3);
    v5 = sub_266668D38();
    *(v0 + 280) = v5;
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v5);
    v6 = *(v4 + 24);
    v30 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 288) = v8;
    *v8 = v0;
    v8[1] = sub_266619C00;
    v9 = *(v0 + 272);

    return v30(1, v9, v3, v4);
  }
}

uint64_t sub_266619C00()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 288);
  v3 = *(v1 + 272);
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  *(v7 + 296) = v6;

  sub_266557D74(v3, &qword_28007D140, &qword_26666F140);
  v8 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266619D18()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[29];
  v4 = v0[30];
  __swift_project_boxed_opaque_existential_1(v0 + 26, v3);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v5 = *(v4 + 24);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[38] = v7;
  *v7 = v0;
  v7[1] = sub_266619E68;
  v8 = v0[34];

  return (v10)(0, v8, v3, v4);
}

uint64_t sub_266619E68()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 304);
  v3 = *(v1 + 272);
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  *(v7 + 312) = v6;

  sub_266557D74(v3, &qword_28007D140, &qword_26666F140);
  v8 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266619F80()
{
  v27 = v0;
  if (*(v0 + 256))
  {
    v1 = sub_266582C3C(*(v0 + 296), 0);
  }

  else
  {
    v1 = *(v0 + 312);
  }

  v2 = v1;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v3 = sub_26666C168();
  __swift_project_value_buffer(v3, qword_28156D7E8);
  v4 = v2;
  v5 = sub_26666C148();
  v6 = sub_26666C618();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 296);
  if (v7)
  {
    v25 = *(v0 + 312);
    v24 = *(v0 + 296);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    v11 = v4;
    v12 = [v11 description];
    v13 = sub_26666C308();
    v15 = v14;

    v16 = sub_2665BFC90(v13, v15, &v26);

    *(v9 + 4) = v16;
    OUTLINED_FUNCTION_8_0();
    _os_log_impl(v17, v18, v19, v20, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {
  }

  sub_266557D74(v0 + 16, &unk_28007D200, &qword_26666FD20);
  v21 = *(v0 + 272);
  __swift_destroy_boxed_opaque_existential_1((v0 + 208));

  OUTLINED_FUNCTION_8();

  return v22(v4);
}

uint64_t sub_26661A1A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2665597B8;

  return sub_266619764();
}

uint64_t sub_26661A24C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266559F10;

  return sub_2666190D0();
}

unint64_t sub_26661A2F4()
{
  result = qword_28007F410;
  if (!qword_28007F410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F410);
  }

  return result;
}

unint64_t sub_26661A34C()
{
  result = qword_28007F418;
  if (!qword_28007F418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F418);
  }

  return result;
}

unint64_t sub_26661A3A4()
{
  result = qword_28007F420;
  if (!qword_28007F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F420);
  }

  return result;
}

uint64_t sub_26661A418()
{
  v2 = OUTLINED_FUNCTION_17_7();
  v163 = type metadata accessor for CalendarNLv3Intent(v2);
  v3 = OUTLINED_FUNCTION_18_2(v163);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_1_0();
  v164 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D230, &qword_26666E2B8);
  v10 = OUTLINED_FUNCTION_3_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v172 = &v155 - v14;
  OUTLINED_FUNCTION_19_4();
  v15 = sub_26666B208();
  v16 = OUTLINED_FUNCTION_3_0(v15);
  v174 = v17;
  v175 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16, v20);
  OUTLINED_FUNCTION_1_0();
  v173 = v22 - v21;
  OUTLINED_FUNCTION_19_4();
  v23 = sub_266669E88();
  v24 = OUTLINED_FUNCTION_3_0(v23);
  v160 = v25;
  v161 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24, v28);
  OUTLINED_FUNCTION_1_0();
  v159 = v30 - v29;
  OUTLINED_FUNCTION_19_4();
  v31 = sub_266669E48();
  v32 = OUTLINED_FUNCTION_3_0(v31);
  v167 = v33;
  v168 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32, v36);
  OUTLINED_FUNCTION_10_5();
  v162 = v37 - v38;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v39, v40);
  v166 = &v155 - v41;
  OUTLINED_FUNCTION_19_4();
  v42 = sub_266669E58();
  v43 = OUTLINED_FUNCTION_3_0(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v43, v48);
  OUTLINED_FUNCTION_10_5();
  v170 = v49 - v50;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v51, v52);
  v158 = &v155 - v53;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v54, v55);
  v165 = &v155 - v56;
  OUTLINED_FUNCTION_12_7();
  v59 = MEMORY[0x28223BE20](v57, v58);
  v61 = &v155 - v60;
  MEMORY[0x28223BE20](v59, v62);
  v63 = sub_266669E18();
  v64 = OUTLINED_FUNCTION_3_0(v63);
  v66 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v64, v69);
  OUTLINED_FUNCTION_1_0();
  v72 = v71 - v70;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v73 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v73, qword_28156D7E8);
  v74 = *(v66 + 16);
  v171 = v0;
  v74(v72, v0, v63);
  v169 = v1;
  v75 = sub_26666C148();
  v76 = sub_26666C618();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v157 = v45;
    v78 = v42;
    v79 = v77;
    v80 = swift_slowAlloc();
    v156 = v61;
    v81 = v80;
    v176 = v80;
    *v79 = 136315138;
    sub_266669DF8();
    v82 = sub_26666C318();
    v84 = v83;
    v85 = *(v66 + 8);
    v86 = OUTLINED_FUNCTION_33_7();
    v87(v86);
    v88 = sub_2665BFC90(v82, v84, &v176);

    *(v79 + 4) = v88;
    _os_log_impl(&dword_266549000, v75, v76, "[EventReadingStrategy] Parsing skip request for: %s", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v81);
    v61 = v156;
    OUTLINED_FUNCTION_4_1();
    v42 = v78;
    v45 = v157;
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    v89 = *(v66 + 8);
    v90 = OUTLINED_FUNCTION_33_7();
    v91(v90);
  }

  sub_266669DF8();
  v92 = (*(v45 + 88))(v61, v42);
  v94 = v174;
  v93 = v175;
  v95 = v172;
  v96 = v173;
  if (v92 == *MEMORY[0x277D5C128])
  {
    v97 = v170;
    (*(v45 + 16))(v170, v61, v42);
    (*(v45 + 96))(v97, v42);
    (*(v94 + 32))(v96, v97, v93);
    sub_26666B0F8();
    v98 = sub_26666A588();
    v99 = OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_27_5(v99, v100, v98);
    if (v108)
    {
      sub_26656CAEC(v95, &qword_28007D230, &qword_26666E2B8);
      v112 = 0;
      v115 = 0;
    }

    else
    {
      v112 = sub_26666A548();
      v113 = v95;
      v115 = v114;
      (*(*(v98 - 8) + 8))(v113, v98);
    }

    if (qword_28007CE30 != -1)
    {
      swift_once();
    }

    v116 = sub_26666A0F8();
    if (v115)
    {
      if (v112 == v116 && v115 == v117)
      {

LABEL_38:
        v141 = *(v94 + 16);
        v142 = OUTLINED_FUNCTION_55_2();
        v143(v142);
        if (qword_28007CE68 != -1)
        {
          swift_once();
        }

        sub_2666258F4(&qword_28007D2D8, type metadata accessor for CalendarNLv3Intent);
        v144 = sub_26666A538();
        LOBYTE(v128) = sub_266603C24(6, v144);

        sub_2666258A0();
        v145 = OUTLINED_FUNCTION_65_2();
        v146(v145);
        goto LABEL_43;
      }

      v119 = OUTLINED_FUNCTION_119();

      if (v119)
      {
        goto LABEL_38;
      }
    }

    else
    {
    }

    v129 = sub_26666C148();
    v130 = sub_26666C618();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v131);
      OUTLINED_FUNCTION_35_1(&dword_266549000, v132, v133, "[EventReadingStrategy] NLv3 intent is not a calendarEvent intent");
      OUTLINED_FUNCTION_10();
    }

    v134 = OUTLINED_FUNCTION_65_2();
    v135(v134);
LABEL_36:
    LOBYTE(v128) = 0;
    goto LABEL_43;
  }

  if (v92 == *MEMORY[0x277D5C150])
  {
    v101 = v165;
    (*(v45 + 16))(v165, v61, v42);
    v102 = OUTLINED_FUNCTION_109();
    v103(v102);
    v104 = v167;
    (*(v167 + 32))(v166, v101, v168);
    v105 = sub_266669E28();
    v107 = v106;
    v176 = 0xD000000000000028;
    v177 = 0x800000026667D640;
    MEMORY[0x266788710](46, 0xE100000000000000);
    MEMORY[0x266788710](0xD000000000000014, 0x800000026667DA00);
    v108 = v105 == v176 && v107 == v177;
    if (v108)
    {
    }

    else
    {
      v109 = OUTLINED_FUNCTION_119();

      if ((v109 & 1) == 0)
      {
        v110 = OUTLINED_FUNCTION_65_2();
        v111(v110);
LABEL_33:
        v136 = sub_26666C148();
        v137 = sub_26666C5F8();
        if (os_log_type_enabled(v136, v137))
        {
          v138 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_15(v138);
          OUTLINED_FUNCTION_35_1(&dword_266549000, v139, v140, "[EventReadingStrategy] Unsupported barge in input type");
          OUTLINED_FUNCTION_10();
        }

        goto LABEL_36;
      }
    }

    v147 = *(v104 + 16);
    v148 = OUTLINED_FUNCTION_56_1();
    v149(v148);
    sub_2665629D8();
    v151 = v150;
    v152 = OUTLINED_FUNCTION_65_2();
    v153(v152);
    LOBYTE(v128) = v151 == 0;
    goto LABEL_43;
  }

  if (v92 != *MEMORY[0x277D5C160])
  {
    goto LABEL_33;
  }

  (*(v45 + 16))(v158, v61, v42);
  v120 = OUTLINED_FUNCTION_109();
  v121(v120);
  v122 = v159;
  v123 = v160;
  v124 = *(v160 + 32);
  v125 = OUTLINED_FUNCTION_31_1();
  v126 = v161;
  v127(v125);
  v128 = sub_2665F1A5C();
  (*(v123 + 8))(v122, v126);
  if (v128)
  {

    LOBYTE(v128) = 1;
  }

LABEL_43:
  (*(v45 + 8))(v61, v42);
  return v128 & 1;
}

uint64_t sub_26661AE50(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v3 = OUTLINED_FUNCTION_3_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_10_5();
  v9 = v7 - v8;
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v56 - v13;
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v56 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v56 - v20;
  v22 = [a1 dateTimeRange];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 startDateComponents];

    if (v24)
    {
      sub_266668A28();

      v25 = sub_266668B08();
      v26 = 0;
    }

    else
    {
      v25 = sub_266668B08();
      v26 = 1;
    }

    __swift_storeEnumTagSinglePayload(v18, v26, 1, v25);
    sub_2665D515C(v18, v21);
    sub_266668B08();
    OUTLINED_FUNCTION_27_5(v21, 1, v25);
    if (!v31)
    {
LABEL_20:
      sub_26656CAEC(v21, &unk_28007DC90, &qword_266676EB0);
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v51 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v51, qword_28156D7E8);
      v46 = sub_26666C148();
      v52 = sub_26666C618();
      if (!OUTLINED_FUNCTION_98_0(v52))
      {
        v50 = 0;
        goto LABEL_26;
      }

      *OUTLINED_FUNCTION_20() = 0;
      OUTLINED_FUNCTION_120(&dword_266549000, v53, v54, "[EventReadingStrategy] Find intent has date time criteria using continuous day prompt mode");
      v50 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    sub_266668B08();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  }

  sub_26656CAEC(v21, &unk_28007DC90, &qword_266676EB0);
  v32 = [a1 dateTimeRange];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 endDateComponents];

    if (v34)
    {
      sub_266668A28();

      v35 = 0;
    }

    else
    {
      v35 = 1;
    }

    v40 = sub_266668B08();
    __swift_storeEnumTagSinglePayload(v9, v35, 1, v40);
    v41 = OUTLINED_FUNCTION_31_1();
    sub_2665D515C(v41, v42);
    v43 = OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_27_5(v43, v44, v40);
    if (!v31)
    {
      v21 = v14;
      goto LABEL_20;
    }
  }

  else
  {
    sub_266668B08();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  }

  sub_26656CAEC(v14, &unk_28007DC90, &qword_266676EB0);
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v45 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v45, qword_28156D7E8);
  v46 = sub_26666C148();
  v47 = sub_26666C618();
  if (OUTLINED_FUNCTION_98_0(v47))
  {
    *OUTLINED_FUNCTION_20() = 0;
    OUTLINED_FUNCTION_120(&dword_266549000, v48, v49, "[EventReadingStrategy] Find intent does not have date time criteria using blocking day prompt mode");
    v50 = 1;
LABEL_24:
    OUTLINED_FUNCTION_4_1();
    goto LABEL_26;
  }

  v50 = 1;
LABEL_26:

  return v50;
}

uint64_t sub_26661B1E4()
{
  OUTLINED_FUNCTION_14();
  v1[27] = v2;
  v1[28] = v0;
  v3 = type metadata accessor for Snippet();
  v1[29] = v3;
  OUTLINED_FUNCTION_3_3(v3);
  v5 = *(v4 + 64);
  v1[30] = OUTLINED_FUNCTION_32_1();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v6 = sub_266669CA8();
  v1[34] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[35] = v7;
  v9 = *(v8 + 64);
  v1[36] = OUTLINED_FUNCTION_19();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v10);
  v12 = *(v11 + 64);
  v1[37] = OUTLINED_FUNCTION_19();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v13);
  v15 = *(v14 + 64);
  v1[38] = OUTLINED_FUNCTION_19();
  v16 = sub_266669708();
  v1[39] = v16;
  OUTLINED_FUNCTION_3_1(v16);
  v1[40] = v17;
  v19 = *(v18 + 64);
  v1[41] = OUTLINED_FUNCTION_32_1();
  v1[42] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v20);
  v22 = *(v21 + 64);
  v1[43] = OUTLINED_FUNCTION_19();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v23);
  v25 = *(v24 + 64);
  v1[44] = OUTLINED_FUNCTION_32_1();
  v26 = swift_task_alloc();
  v1[46] = OUTLINED_FUNCTION_105_0(v26);
  v1[47] = swift_task_alloc();
  v27 = swift_task_alloc();
  v1[49] = OUTLINED_FUNCTION_104(v27);
  v28 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_26661B404()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v4);
    OUTLINED_FUNCTION_4_0(&dword_266549000, v5, v6, "[EventReadingStrategy] Making output makeCancelledOutput");
    OUTLINED_FUNCTION_10();
  }

  v8 = v0[48];
  v7 = v0[49];
  v10 = v0[28];
  v9 = v0[29];

  sub_2666257C8(v10 + 96, (v0 + 2));
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v9);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v9);
  v17 = *(v10 + 8);
  v18 = swift_task_alloc();
  v0[50] = v18;
  *v18 = v0;
  OUTLINED_FUNCTION_89_1(v18);

  return sub_2665D94F4();
}

uint64_t sub_26661B540()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v6 = *(v5 + 400);
  *v4 = *v1;
  v3[51] = v7;
  v3[52] = v0;

  if (v0)
  {
    v8 = v3[48];
    v9 = v3[49];
    OUTLINED_FUNCTION_90();
    sub_26656CAEC(v10, v11, v12);
    OUTLINED_FUNCTION_90();
    sub_26656CAEC(v13, v14, v15);
    sub_26656CC94((v3 + 2));
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_26661B678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_76_0();
  v21 = v20[51];
  v164 = v20[47];
  v165 = v20[49];
  v22 = v20[42];
  v23 = v20[43];
  v24 = v20[40];
  v25 = v20[38];
  v160 = v20[41];
  v161 = v20[39];
  v26 = v20[37];
  v27 = v20[28];
  v162 = v20[36];
  v163 = v20[29];
  sub_2666699C8();
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  sub_2666696F8();
  v32 = _s15ReadingStrategyVMa();
  v33 = OUTLINED_FUNCTION_102_0(v32);
  OUTLINED_FUNCTION_18_2(v33);
  v35 = *(v34 + 16);
  v36 = OUTLINED_FUNCTION_83_1();
  v37(v36);
  v38 = OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_65(v38, v39, v40, v33);
  v41 = sub_266669788();
  OUTLINED_FUNCTION_36_4(v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v42 = OUTLINED_FUNCTION_95();
  v20[53] = v42;
  OUTLINED_FUNCTION_100_0(v42, xmmword_26666E050);
  v43 = OUTLINED_FUNCTION_87_1();
  v27(v43);
  v44 = swift_task_alloc();
  v45 = OUTLINED_FUNCTION_67_0(v44);
  OUTLINED_FUNCTION_42_6(v45, 2);
  sub_266669BC8();

  sub_2665A17F8(v165, v164, &unk_28007DE30, &unk_26666EAF0);
  v46 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_27_5(v46, v47, v163);
  if (v61)
  {
    v48 = v20 + 47;
  }

  else
  {
    v49 = v20[47];
    v50 = v20[48];
    v51 = v20[46];
    v52 = v20[33];
    v53 = v20[29];
    OUTLINED_FUNCTION_0_38();
    sub_266625824(v54, v55, v56);
    v57 = OUTLINED_FUNCTION_15_2();
    sub_2665A17F8(v57, v58, v59, v60);
    OUTLINED_FUNCTION_23_11(v51);
    if (!v61)
    {
      v113 = v20[46];
      v115 = v20[32];
      v114 = v20[33];
      v116 = v20[29];
      OUTLINED_FUNCTION_0_38();
      sub_266625824(v117, v115, v118);
      OUTLINED_FUNCTION_9_22();
      v20[20] = v116;
      OUTLINED_FUNCTION_2_33();
      v121 = sub_2666258F4(v119, v120);
      v122 = OUTLINED_FUNCTION_82_1(v121);
      OUTLINED_FUNCTION_78_1(v122);
      v123 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_85_1(v123);
      v124 = *(MEMORY[0x277D5BE30] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v20[54] = v125;
      *v125 = v126;
      v125[1] = sub_26661BB80;
      v127 = v20[36];
      v128 = v20[27];
      OUTLINED_FUNCTION_22_8();
      OUTLINED_FUNCTION_17_4();

      return MEMORY[0x2821BB460](v129, v130, v131, v132, v133, v134, v135, v136, a9, v160, v161, v162, v163, v164, v165, a16, a17, a18, a19, a20);
    }

    v48 = v20 + 46;
    v62 = v20[33];
    OUTLINED_FUNCTION_1_38();
    sub_2666258A0();
  }

  v63 = *v48;
  v64 = v20[49];
  v65 = v20[45];
  v66 = v20[29];
  OUTLINED_FUNCTION_123(v63);
  v67 = OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_125(v67, v68);
  v69 = OUTLINED_FUNCTION_60_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v69, v70, v66);
  v72 = v20[29];
  if (EnumTagSinglePayload == 1)
  {
    v73 = v20[48];
    v74 = v20[44];
    OUTLINED_FUNCTION_122(v20[45]);
    v75 = OUTLINED_FUNCTION_25_10();
    sub_2665A17F8(v75, v76, v77, &unk_26666EAF0);
    v78 = OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_27_5(v78, v79, v72);
    if (v61)
    {
      sub_26656CAEC(v20[44], &unk_28007DE30, &unk_26666EAF0);
      OUTLINED_FUNCTION_9_22();
      v80 = *(MEMORY[0x277D5BE58] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v20[57] = v81;
      *v81 = v82;
      v81[1] = sub_26661C31C;
      v83 = v20[36];
      v84 = v20[27];
      OUTLINED_FUNCTION_27_13();
      OUTLINED_FUNCTION_17_4();

      return MEMORY[0x2821BB488](v85, v86, v87, v88, v89, v90, v91, v92, a9, v160, v161, v162, v163, v164, v165, a16, a17, a18, a19, a20);
    }

    else
    {
      v137 = v20[44];
      v139 = v20[29];
      v138 = v20[30];
      OUTLINED_FUNCTION_0_38();
      sub_266625824(v140, v138, v141);
      OUTLINED_FUNCTION_9_22();
      v20[10] = v139;
      OUTLINED_FUNCTION_2_33();
      v144 = sub_2666258F4(v142, v143);
      v145 = OUTLINED_FUNCTION_96_1(v144);
      OUTLINED_FUNCTION_78_1(v145);
      v146 = *(MEMORY[0x277D5BE48] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v20[56] = v147;
      *v147 = v148;
      v147[1] = sub_26661C09C;
      v149 = v20[36];
      v150 = v20[27];
      OUTLINED_FUNCTION_13_15();
      OUTLINED_FUNCTION_17_4();

      return MEMORY[0x2821BB478](v151, v152, v153, v154, v155, v156, v157, v158, a9, v160, v161, v162, v163, v164, v165, a16, a17, a18, a19, a20);
    }
  }

  else
  {
    v93 = v20[31];
    OUTLINED_FUNCTION_0_38();
    sub_266625824(v94, v93, v95);
    OUTLINED_FUNCTION_9_22();
    v20[15] = v72;
    OUTLINED_FUNCTION_2_33();
    v98 = sub_2666258F4(v96, v97);
    v99 = OUTLINED_FUNCTION_97_1(v98);
    OUTLINED_FUNCTION_85_1(v99);
    v100 = *(MEMORY[0x277D5BE38] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_1();
    v20[55] = v101;
    *v101 = v102;
    v101[1] = sub_26661BE1C;
    v103 = v20[36];
    v104 = v20[27];
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_17_4();

    return MEMORY[0x2821BB468](v105, v106, v107, v108, v109, v110, v111, v112, a9, v160, v161, v162, v163, v164, v165, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_26661BB80()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 432);
  v6 = *(v4 + 424);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  OUTLINED_FUNCTION_93_0();
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26661BC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  v23 = *(v20 + 256);
  v24 = *(v20 + 264);

  sub_2666258A0();
  sub_2666258A0();
  v25 = OUTLINED_FUNCTION_10_19();
  v26(v25);
  v27 = OUTLINED_FUNCTION_20_16();
  v28(v27);
  OUTLINED_FUNCTION_44_3();
  v29 = OUTLINED_FUNCTION_62();
  sub_26656CAEC(v29, v30, &unk_26666EAF0);
  sub_26656CAEC(v21, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v22, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v24, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v20 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26661BE1C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 440);
  v6 = *(v4 + 424);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26661BF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  v23 = *(v20 + 248);

  OUTLINED_FUNCTION_1_38();
  sub_2666258A0();
  v24 = OUTLINED_FUNCTION_10_19();
  v25(v24);
  v26 = OUTLINED_FUNCTION_20_16();
  v27(v26);
  OUTLINED_FUNCTION_44_3();
  v28 = OUTLINED_FUNCTION_62();
  sub_26656CAEC(v28, v29, &unk_26666EAF0);
  sub_26656CAEC(v21, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v22, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v23, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v20 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26661C09C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 448);
  v6 = *(v4 + 424);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26661C19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  v23 = *(v20 + 240);

  OUTLINED_FUNCTION_1_38();
  sub_2666258A0();
  v24 = OUTLINED_FUNCTION_10_19();
  v25(v24);
  v26 = OUTLINED_FUNCTION_20_16();
  v27(v26);
  OUTLINED_FUNCTION_44_3();
  v28 = OUTLINED_FUNCTION_62();
  sub_26656CAEC(v28, v29, &unk_26666EAF0);
  sub_26656CAEC(v21, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v22, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v23, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v20 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26661C31C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 456);
  v3 = *(v1 + 424);
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26661C41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();

  v24 = OUTLINED_FUNCTION_10_19();
  v25(v24);
  v26 = OUTLINED_FUNCTION_20_16();
  v27(v26);
  OUTLINED_FUNCTION_44_3();
  v28 = OUTLINED_FUNCTION_62();
  sub_26656CAEC(v28, v29, &unk_26666EAF0);
  sub_26656CAEC(v22, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v23, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v20, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v21 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26661C58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_76_0();
  v20 = v18[48];
  v19 = v18[49];
  v22 = v18[46];
  v21 = v18[47];
  v24 = v18[44];
  v23 = v18[45];
  v26 = v18[42];
  v25 = v18[43];
  v27 = v18[41];
  v28 = v18[38];
  v39 = v18[37];
  v40 = v18[36];
  v41 = v18[33];
  v42 = v18[32];
  v43 = v18[31];
  v44 = v18[30];

  OUTLINED_FUNCTION_24_1();
  v29 = v18[52];
  OUTLINED_FUNCTION_17_4();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, v39, v40, v41, v42, v43, v44, a16, a17, a18);
}

uint64_t sub_26661C694()
{
  OUTLINED_FUNCTION_14();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v5 = type metadata accessor for Snippet();
  v1[26] = v5;
  OUTLINED_FUNCTION_3_3(v5);
  v7 = *(v6 + 64);
  v1[27] = OUTLINED_FUNCTION_32_1();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v8 = sub_266669CA8();
  v1[31] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[32] = v9;
  v11 = *(v10 + 64);
  v1[33] = OUTLINED_FUNCTION_19();
  v12 = sub_266669708();
  v1[34] = v12;
  OUTLINED_FUNCTION_3_1(v12);
  v1[35] = v13;
  v15 = *(v14 + 64);
  v16 = OUTLINED_FUNCTION_32_1();
  v1[37] = OUTLINED_FUNCTION_126(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v17);
  v19 = *(v18 + 64);
  v1[38] = OUTLINED_FUNCTION_19();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v20);
  v22 = *(v21 + 64);
  v1[39] = OUTLINED_FUNCTION_19();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v23);
  v25 = *(v24 + 64);
  v1[40] = OUTLINED_FUNCTION_19();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v26);
  v28 = *(v27 + 64);
  v1[41] = OUTLINED_FUNCTION_32_1();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v29 = swift_task_alloc();
  v1[46] = OUTLINED_FUNCTION_105_0(v29);
  v30 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_26661C8B8()
{
  OUTLINED_FUNCTION_11();
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v4);
    OUTLINED_FUNCTION_4_0(&dword_266549000, v5, v6, "[EventReadingStrategy] Making output makeResultIntroductionOutput");
    OUTLINED_FUNCTION_10();
  }

  v8 = v0[24];
  v7 = v0[25];

  v9 = *v7;
  v0[47] = sub_26662571C(v8);
  v10 = swift_task_alloc();
  v0[48] = v10;
  *v10 = v0;
  v10[1] = sub_26661C9E8;
  v11 = v0[23];

  return sub_266641B5C();
}

uint64_t sub_26661C9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_76_0();
  OUTLINED_FUNCTION_5_1();
  v21 = v20;
  OUTLINED_FUNCTION_15_1();
  *v22 = v21;
  v24 = *(v23 + 384);
  *(v23 + 376);
  v25 = *v19;
  OUTLINED_FUNCTION_5_0();
  *v26 = v25;
  v21[49] = v27;

  if (v18)
  {
    v29 = v21[45];
    v28 = v21[46];
    v31 = v21[43];
    v30 = v21[44];
    v33 = v21[41];
    v32 = v21[42];
    v34 = v21[39];
    v35 = v21[40];
    v59 = v18;
    v36 = v21[38];
    v53 = v21[37];
    v54 = v21[36];
    v37 = v21[29];
    v55 = v21[33];
    v56 = v21[30];
    v39 = v21 + 27;
    v38 = v21[27];
    v57 = v37;
    v58 = v39[1];

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_17_4();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, v53, v54, v55, v56, v57, v58, v59, a16, a17, a18);
  }

  else
  {
    OUTLINED_FUNCTION_4_14();
    OUTLINED_FUNCTION_17_4();

    return MEMORY[0x2822009F8](v49, v50, v51);
  }
}

uint64_t sub_26661D158()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 408);
  v6 = *(v4 + 400);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 136));
  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26661D260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  v22 = v20[45];
  v49 = v20[46];
  v23 = v20[37];
  v24 = v20[34];
  v25 = v20[35];
  v26 = v20[32];
  v27 = v20[33];
  v29 = v20[30];
  v28 = v20[31];
  v30 = v20[29];
  OUTLINED_FUNCTION_61();
  sub_2666258A0();
  sub_2666258A0();
  (*(v26 + 8))(v27, v28);
  v31 = *(v25 + 8);
  v32 = OUTLINED_FUNCTION_62();
  v33(v32);
  v34 = OUTLINED_FUNCTION_25_10();
  sub_26656CAEC(v34, v35, v36);
  OUTLINED_FUNCTION_90();
  sub_26656CAEC(v37, v38, v39);
  OUTLINED_FUNCTION_11_20();
  sub_26656CAEC(v21, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v25 + 8, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v26 + 8, &qword_28007D338, &qword_26666EEB0);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, v49, a18, a19, a20);
}

uint64_t sub_26661D40C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *(v4 + 400);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26661D50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_94_0();
  v26 = *(v22 + 224);
  OUTLINED_FUNCTION_1_38();
  sub_2666258A0();
  v27 = OUTLINED_FUNCTION_69_1();
  v28(v27);
  v29 = *(v23 + 8);
  v30 = OUTLINED_FUNCTION_62();
  v31(v30);
  v32 = OUTLINED_FUNCTION_25_10();
  sub_26656CAEC(v32, v33, v34);
  OUTLINED_FUNCTION_90();
  sub_26656CAEC(v35, v36, v37);
  OUTLINED_FUNCTION_11_20();
  sub_26656CAEC(v24, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v25, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v21, &qword_28007D338, &qword_26666EEB0);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26661D68C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 424);
  v6 = *(v4 + 400);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26661D78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_94_0();
  v26 = *(v22 + 216);
  OUTLINED_FUNCTION_1_38();
  sub_2666258A0();
  v27 = OUTLINED_FUNCTION_69_1();
  v28(v27);
  v29 = *(v23 + 8);
  v30 = OUTLINED_FUNCTION_62();
  v31(v30);
  v32 = OUTLINED_FUNCTION_25_10();
  sub_26656CAEC(v32, v33, v34);
  OUTLINED_FUNCTION_90();
  sub_26656CAEC(v35, v36, v37);
  OUTLINED_FUNCTION_11_20();
  sub_26656CAEC(v24, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v25, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v21, &qword_28007D338, &qword_26666EEB0);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26661D90C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 432);
  v3 = *(v1 + 400);
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26661DA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  v23 = v20[45];
  v24 = v20[46];
  v25 = v20[37];
  v26 = v20[34];
  v27 = v20[35];
  (*(v20[32] + 8))(v20[33], v20[31]);
  v28 = *(v27 + 8);
  v29 = OUTLINED_FUNCTION_62();
  v30(v29);
  v31 = OUTLINED_FUNCTION_25_10();
  sub_26656CAEC(v31, v32, v33);
  OUTLINED_FUNCTION_90();
  sub_26656CAEC(v34, v35, v36);
  OUTLINED_FUNCTION_11_20();
  sub_26656CAEC(v21, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v22, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v24, &qword_28007D338, &qword_26666EEB0);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26661DB90()
{
  OUTLINED_FUNCTION_14();
  v1[22] = v2;
  v1[23] = v0;
  v3 = type metadata accessor for Snippet();
  v1[24] = v3;
  OUTLINED_FUNCTION_3_3(v3);
  v5 = *(v4 + 64);
  v1[25] = OUTLINED_FUNCTION_32_1();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v6 = sub_266669CA8();
  v1[29] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[30] = v7;
  v9 = *(v8 + 64);
  v1[31] = OUTLINED_FUNCTION_19();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v10);
  v12 = *(v11 + 64);
  v1[32] = OUTLINED_FUNCTION_19();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v13);
  v15 = *(v14 + 64);
  v1[33] = OUTLINED_FUNCTION_19();
  v16 = sub_266669708();
  v1[34] = v16;
  OUTLINED_FUNCTION_3_1(v16);
  v1[35] = v17;
  v19 = *(v18 + 64);
  v20 = OUTLINED_FUNCTION_32_1();
  v1[37] = OUTLINED_FUNCTION_126(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v21);
  v23 = *(v22 + 64);
  v1[38] = OUTLINED_FUNCTION_19();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v24);
  v26 = *(v25 + 64);
  v1[39] = OUTLINED_FUNCTION_32_1();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v27, v28, v29);
}