uint64_t sub_268211AAC()
{
  OUTLINED_FUNCTION_14();
  v1[234] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_268212858, 0, 0);
  }

  else
  {
    v2 = v1[213];
    v1[235] = v2;
    v3 = v2;

    return MEMORY[0x282200928](v1 + 2, v1 + 207, sub_268211B58, v1 + 192);
  }
}

uint64_t sub_268211B6C()
{
  v98 = v0;
  v1 = *(v0 + 1656);
  v2 = qword_28024CBF8;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 1816);
  v5 = *(v0 + 1768);
  v6 = qword_28027CD38;
  OUTLINED_FUNCTION_0_29();
  v95 = v6;
  v96 = sub_2681C18A0(v7, v8);
  v9 = sub_2683CD5D8();
  v10 = *(v9 + 16);
  v11 = (v9 + 32);
  v12 = 2;
  v13 = (v9 + 32);
  while (v10)
  {
    switch(*v13)
    {
      case 1:
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_7_0();
        break;
      case 2:
        OUTLINED_FUNCTION_4_1();
        break;
      case 3:
        OUTLINED_FUNCTION_10_1();
        break;
      case 4:
        OUTLINED_FUNCTION_13_20();
        break;
      case 5:
        OUTLINED_FUNCTION_24_10();
        break;
      case 6:
        OUTLINED_FUNCTION_17_14();
        break;
      case 7:
        OUTLINED_FUNCTION_9_1();
        break;
      case 8:
        OUTLINED_FUNCTION_11_1();
        break;
      case 9:
        OUTLINED_FUNCTION_14_0();
        break;
      case 0xA:
        v12 = 2;
        goto LABEL_122;
      case 0xB:
        OUTLINED_FUNCTION_17_0();
        break;
      case 0xC:
        OUTLINED_FUNCTION_6_1();
        break;
      case 0xD:
        OUTLINED_FUNCTION_22_0();
        break;
      case 0xE:
        OUTLINED_FUNCTION_5_1();
        break;
      case 0xF:
        OUTLINED_FUNCTION_20_0();
        break;
      case 0x10:
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_13_0();
        break;
      case 0x11:
        OUTLINED_FUNCTION_8_1();
        break;
      case 0x12:
        OUTLINED_FUNCTION_20_17();
        break;
      case 0x13:
        OUTLINED_FUNCTION_32_8();
        break;
      default:
        break;
    }

    v14 = sub_2683D0598();

    ++v13;
    --v10;
    if (v14)
    {
      goto LABEL_51;
    }
  }

  v15 = *(v9 + 16);
  v12 = 1;
  while (2)
  {
    if (v15)
    {
      switch(*v11)
      {
        case 1:
          OUTLINED_FUNCTION_59();
          OUTLINED_FUNCTION_7_0();
          goto LABEL_48;
        case 2:
          OUTLINED_FUNCTION_4_1();
          goto LABEL_48;
        case 3:
          OUTLINED_FUNCTION_10_1();
          goto LABEL_48;
        case 4:
          OUTLINED_FUNCTION_13_20();
          goto LABEL_48;
        case 5:
          OUTLINED_FUNCTION_24_10();
          goto LABEL_48;
        case 6:
          OUTLINED_FUNCTION_17_14();
          goto LABEL_48;
        case 7:
          OUTLINED_FUNCTION_9_1();
          goto LABEL_48;
        case 8:
          OUTLINED_FUNCTION_11_1();
          goto LABEL_48;
        case 9:
          v12 = 1;
LABEL_122:

          goto LABEL_51;
        case 0xB:
          OUTLINED_FUNCTION_17_0();
          goto LABEL_48;
        case 0xC:
          OUTLINED_FUNCTION_6_1();
          goto LABEL_48;
        case 0xD:
          OUTLINED_FUNCTION_22_0();
          goto LABEL_48;
        case 0xE:
          OUTLINED_FUNCTION_5_1();
          goto LABEL_48;
        case 0xF:
          OUTLINED_FUNCTION_20_0();
          goto LABEL_48;
        case 0x10:
          OUTLINED_FUNCTION_59();
          OUTLINED_FUNCTION_13_0();
          goto LABEL_48;
        case 0x11:
          OUTLINED_FUNCTION_8_1();
          goto LABEL_48;
        case 0x12:
          OUTLINED_FUNCTION_20_17();
          goto LABEL_48;
        case 0x13:
          OUTLINED_FUNCTION_32_8();
          goto LABEL_48;
        default:
LABEL_48:
          v16 = sub_2683D0598();

          ++v11;
          --v15;
          if (v16)
          {
            goto LABEL_51;
          }

          continue;
      }
    }

    break;
  }

  v12 = 0;
LABEL_51:
  v17 = *(v0 + 1880);
  v18 = *(v0 + 1864);
  v19 = *(v0 + 1856);
  v20 = *(v0 + 1712);

  v21 = objc_allocWithZone(MEMORY[0x277CD3A18]);
  v22 = sub_268213240(v19, v18, v17, v1, v12);
  if (!v20)
  {
    goto LABEL_92;
  }

  v23 = *(v0 + 1712);
  v24 = sub_2683CF258();
  if (v25)
  {
    v26 = v24;
    v27 = v25;
  }

  else
  {

    v27 = 0x80000002683FA8D0;
    v26 = 0xD000000000000013;
  }

  v28 = sub_2681E73A0();
  if ((v28 & 1) == 0)
  {
    goto LABEL_92;
  }

  v36 = *(v0 + 1816);
  sub_268353B44(v28, v29, v30, v31, v32, v33, v34, v35, v91, v93, v95, v96, v97[0], v97[1], v97[2], v97[3], v97[4], v97[5], v97[6], v97[7]);
  v94 = v26;
  if (v37)
  {
    sub_268357D18();

    v38 = *(v0 + 1440);
    if (v38)
    {
      v39 = *(v0 + 1728);
      v92 = *(v0 + 1720);
      v40 = *(v0 + 1448);
      __swift_project_boxed_opaque_existential_1((v0 + 1416), v38);
      v41 = *(v39 + 28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_2683D1EC0;
      *(v42 + 32) = v26;
      *(v42 + 40) = v27;
      v43 = *(v40 + 8);

      v44 = sub_268176D1C(v22, (v92 + v41), v42, v38, v43);

      if (v44)
      {
        v45 = [objc_allocWithZone(MEMORY[0x277CD3B08]) initWithTriggerContact_];
      }

      else
      {
        v45 = 0;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 1416));
      goto LABEL_65;
    }

    sub_26812D9E0(v0 + 1416, &qword_28024FA00, &qword_2683DD948);
  }

  v45 = 0;
LABEL_65:
  v46 = *(v0 + 1816);
  v47 = *(v0 + 1768);
  [v22 setContactEventTrigger_];

  v48 = sub_2683CD5D8();
  v49 = *(v48 + 16);
  v50 = (v48 + 32);
  while (2)
  {
    if (!v49)
    {

LABEL_92:

      break;
    }

    switch(*v50)
    {
      case 1:
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_7_0();
        goto LABEL_86;
      case 2:
        OUTLINED_FUNCTION_4_1();
        goto LABEL_86;
      case 3:
        OUTLINED_FUNCTION_10_1();
        goto LABEL_86;
      case 4:
        OUTLINED_FUNCTION_13_20();
        goto LABEL_86;
      case 5:
        OUTLINED_FUNCTION_24_10();
        goto LABEL_86;
      case 6:
        OUTLINED_FUNCTION_17_14();
        goto LABEL_86;
      case 7:
        OUTLINED_FUNCTION_9_1();
        goto LABEL_86;
      case 8:
        OUTLINED_FUNCTION_11_1();
        goto LABEL_86;
      case 9:
        OUTLINED_FUNCTION_14_0();
        goto LABEL_86;
      case 0xB:
        OUTLINED_FUNCTION_17_0();
        goto LABEL_86;
      case 0xC:
        OUTLINED_FUNCTION_6_1();
        goto LABEL_86;
      case 0xD:
        OUTLINED_FUNCTION_22_0();
        goto LABEL_86;
      case 0xE:
        OUTLINED_FUNCTION_5_1();
        goto LABEL_86;
      case 0xF:
        OUTLINED_FUNCTION_20_0();
        goto LABEL_86;
      case 0x10:
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_13_0();
        goto LABEL_86;
      case 0x11:
        OUTLINED_FUNCTION_8_1();
        goto LABEL_86;
      case 0x12:
        OUTLINED_FUNCTION_20_17();
        goto LABEL_86;
      case 0x13:

        goto LABEL_87;
      default:
LABEL_86:
        v51 = sub_2683D0598();

        ++v50;
        --v49;
        if ((v51 & 1) == 0)
        {
          continue;
        }

LABEL_87:
        v52 = *(v0 + 1832);

        v53 = sub_2683CF7C8();
        v54 = sub_2683CFE98();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_2680EB000, v53, v54, "[AddTasksNLv3IntentWrapper] attributes contains shared, attempting to resolve targetTaskListMembers", v55, 2u);
          OUTLINED_FUNCTION_38();
        }

        v56 = *(v0 + 1816);

        sub_268353D68();
        v57 = *(v0 + 1520);
        if (v57)
        {
          v58 = *(v0 + 1728);
          v59 = *(v0 + 1720);
          v60 = *(v0 + 1528);
          __swift_project_boxed_opaque_existential_1((v0 + 1496), *(v0 + 1520));
          v61 = *(v58 + 28);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
          v62 = swift_allocObject();
          *(v62 + 16) = xmmword_2683D1EC0;
          *(v62 + 32) = v94;
          *(v62 + 40) = v27;
          v57 = sub_268176D1C(v22, (v59 + v61), v62, v57, *(v60 + 8));

          __swift_destroy_boxed_opaque_existential_0((v0 + 1496));
        }

        else
        {

          sub_26812D9E0(v0 + 1496, &qword_28024FA00, &qword_2683DD948);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FA08, &unk_2683DD950);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2683D1EC0;
        *(inited + 32) = v57;
        v64 = MEMORY[0x277D84F90];
        v97[0] = MEMORY[0x277D84F90];
        v65 = v57;
        v66 = *(inited + 32);
        if (v66)
        {
          v67 = v66;
          MEMORY[0x26D616770]();
          if (*((v97[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2683CFCD8();
          }

          sub_2683CFD08();
          v64 = v97[0];
        }

        swift_setDeallocating();
        sub_2681F5594();
        sub_268213304(v64, v22);

        break;
    }

    break;
  }

  if (qword_28024CB90 != -1)
  {
    swift_once();
  }

  v68 = *(v0 + 1816);
  v69 = *(v0 + 1768);
  sub_2683CD5C8();
  if (*(v0 + 1896) != 11)
  {
    goto LABEL_112;
  }

  if (qword_28024CB88 != -1)
  {
    swift_once();
  }

  v70 = *(v0 + 1816);
  v71 = *(v0 + 1768);
  sub_2683CD5C8();
  v72 = *(v0 + 1897);
  if (v72 != 35)
  {
    if (sub_268355BF8(v72) == 6647407 && v73 == 0xE300000000000000)
    {
    }

    else
    {
      v75 = sub_2683D0598();

      if ((v75 & 1) == 0)
      {
        goto LABEL_113;
      }
    }

LABEL_112:
    [v22 setTaskReference_];
  }

LABEL_113:
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 1824), qword_28027C958);
  v76 = v22;
  v77 = sub_2683CF7C8();
  v78 = sub_2683CFE98();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v97[0] = v80;
    *v79 = 136315138;
    v81 = v76;
    v82 = [v81 description];
    v83 = sub_2683CFA78();
    v85 = v84;

    v86 = sub_2681610A0(v83, v85, v97);

    *(v79 + 4) = v86;
    _os_log_impl(&dword_2680EB000, v77, v78, "⚙️ [AddTasksNLv3IntentWrapper] made intent: %s", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v80);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  *(v0 + 1888) = sub_26821AD1C();
  v87 = OUTLINED_FUNCTION_21_13();

  return MEMORY[0x282200920](v87, v88, v89, v0 + 1616);
}

uint64_t sub_268212774()
{
  v1 = v0[231];
  v2 = v0[230];
  v3 = v0[227];
  v4 = v0[226];
  v5 = v0[225];
  v6 = v0[224];
  v7 = v0[220];
  v8 = v0[219];
  OUTLINED_FUNCTION_0_41();
  sub_268129770(v3, v9);

  v10 = v0[1];
  v11 = v0[236];

  return v10(v11);
}

uint64_t sub_268212858()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 1864);
  v2 = *(v0 + 1856);

  v3 = OUTLINED_FUNCTION_21_13();

  return MEMORY[0x282200920](v3, v4, v5, v0 + 1376);
}

uint64_t sub_268212908()
{
  v1 = v0[231];
  v2 = v0[230];
  v3 = v0[227];
  v4 = v0[226];
  v5 = v0[225];
  v6 = v0[224];
  v7 = v0[220];
  v8 = v0[219];
  OUTLINED_FUNCTION_0_41();
  sub_268129770(v3, v9);

  v10 = v0[1];
  v11 = v0[234];

  return v10();
}

uint64_t sub_2682129E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268212A88, 0, 0);
}

uint64_t sub_268212A88()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = type metadata accessor for AddTasksNLv3IntentWrapper();
  __swift_project_boxed_opaque_existential_1((v3 + *(v4 + 20)), *(v3 + *(v4 + 20) + 24));
  sub_268352A2C();
  if (qword_28024C960 != -1)
  {
    swift_once();
  }

  v5 = sub_2683CE918();
  __swift_project_value_buffer(v5, qword_28027CAC8);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_268212BB0;
  v7 = v0[5];

  return sub_2683C1474();
}

uint64_t sub_268212BB0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v7 + 56) = v6;

  sub_26812D9E0(v3, &qword_28024D398, &qword_2683D22F0);

  return MEMORY[0x2822009F8](sub_268212CD0, 0, 0);
}

uint64_t sub_268212CD0()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 40);
  **(v0 + 16) = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_268212D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = *(type metadata accessor for AddTasksNLv3IntentWrapper() + 24);
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_268212DF0;

  return sub_26836C788(a2, a3 + v6);
}

uint64_t sub_268212DF0()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  v6 = *(v4 + 24);
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
    *(v5 + 32) = v3;

    return MEMORY[0x2822009F8](sub_268212F2C, 0, 0);
  }
}

uint64_t sub_268212F54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268137D60;

  return sub_2682114AC();
}

uint64_t sub_268213000()
{
  OUTLINED_FUNCTION_7();
  v1 = type metadata accessor for AddTasksNLv3IntentWrapper();
  OUTLINED_FUNCTION_3_1(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(type metadata accessor for NotebookNLv3Intent(0) - 8);
  v7 = (v3 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v0 + 16) = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_26_11(v8);

  return sub_2682129E8(v9, v10, v11);
}

uint64_t sub_268213120()
{
  OUTLINED_FUNCTION_7();
  v1 = type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_3_1(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(type metadata accessor for AddTasksNLv3IntentWrapper() - 8);
  v7 = (v3 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v0 + 16) = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_26_11(v8);

  return sub_268212D3C(v9, v10, v11);
}

id sub_268213240(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
    v11 = sub_2683CFC98();
  }

  else
  {
    v11 = 0;
  }

  v12 = [v6 initWithTargetTaskList:a1 taskTitles:v11 spatialEventTrigger:a3 temporalEventTrigger:a4 priority:a5];

  return v12;
}

void sub_268213304(uint64_t a1, void *a2)
{
  sub_268129504(0, &qword_28024EB60, 0x277CD3E90);
  v3 = sub_2683CFC98();

  [a2 setTargetTaskListMembers_];
}

uint64_t sub_268213388(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_47_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_2682133E4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_47_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_268213504@<X0>(void (*a1)(void *__return_ptr, char *, uint64_t, uint64_t)@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v23 = a2;
  v24 = a1;
  v25 = a3;
  v3 = sub_2683CCC18();
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2683CC748();
  v12 = OUTLINED_FUNCTION_0_3(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D410, &qword_2683D2390);
  sub_2683CC9E8();
  v19 = sub_2683CC738();
  v21 = v20;
  (*(v14 + 8))(v18, v11);
  sub_2683CCB88();
  v24(v26, v10, v19, v21);

  (*(v6 + 8))(v10, v3);
  sub_268139188();
  return sub_2681433DC(v26, &qword_28024D458, &unk_2683D2C60);
}

uint64_t sub_2682136E0()
{
  OUTLINED_FUNCTION_14();
  v0[48] = v1;
  v0[49] = v2;
  v0[46] = v3;
  v0[47] = v4;
  v0[45] = v5;
  v6 = sub_2683CCBA8();
  v0[50] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v0[51] = v7;
  v9 = *(v8 + 64);
  v0[52] = OUTLINED_FUNCTION_15_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5B0, &qword_2683D97C0);
  OUTLINED_FUNCTION_23(v10);
  v12 = *(v11 + 64);
  v0[53] = OUTLINED_FUNCTION_15_1();
  v13 = sub_2683CCC18();
  v0[54] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v0[55] = v14;
  v16 = *(v15 + 64);
  v0[56] = OUTLINED_FUNCTION_15_1();
  v17 = sub_2683CC748();
  v0[57] = v17;
  OUTLINED_FUNCTION_3_1(v17);
  v0[58] = v18;
  v20 = *(v19 + 64);
  v0[59] = OUTLINED_FUNCTION_55();
  v0[60] = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_26821385C()
{
  v94 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 456);
  v3 = *(v0 + 464);
  v5 = *(v0 + 440);
  v4 = *(v0 + 448);
  v90 = *(v0 + 392);
  v91 = *(v0 + 432);
  v89 = *(v0 + 384);
  v7 = *(v0 + 368);
  v6 = *(v0 + 376);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D410, &qword_2683D2390);
  sub_2683CC9E8();
  v8 = sub_2683CC738();
  v10 = v9;
  v88 = *(v3 + 8);
  v88(v1, v2);
  sub_2683CCB88();
  v89(v4, v8, v10);

  (*(v5 + 8))(v4, v91);
  sub_2681340E8(v0 + 16, v0 + 88, &qword_28024D458, &unk_2683D2C60);
  v11 = *(v0 + 88);
  *(v0 + 488) = v11;
  if (v11 == 2)
  {
    sub_268143388(v0 + 88);
    goto LABEL_5;
  }

  if (v11 == 3)
  {
    sub_2681433DC(v0 + 88, &qword_28024D458, &unk_2683D2C60);
LABEL_5:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v13 = *(v0 + 408);
    v12 = *(v0 + 416);
    v14 = *(v0 + 400);
    v15 = *(v0 + 368);
    v16 = sub_2683CF7E8();
    __swift_project_value_buffer(v16, qword_28027C958);
    v17 = OUTLINED_FUNCTION_32_1();
    v18(v17);
    v19 = sub_2683CF7C8();
    v20 = sub_2683CFE78();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 448);
      v22 = *(v0 + 432);
      v24 = *(v0 + 408);
      v23 = *(v0 + 416);
      v25 = *(v0 + 400);
      swift_slowAlloc();
      v26 = OUTLINED_FUNCTION_34_1();
      v93[0] = v26;
      *v2 = 136315138;
      sub_2683CCB88();
      OUTLINED_FUNCTION_44();
      sub_2683CFAD8();
      (*(v24 + 8))(v23, v25);
      v27 = OUTLINED_FUNCTION_44();
      v30 = sub_2681610A0(v27, v28, v29);

      *(v2 + 4) = v30;
      _os_log_impl(&dword_2680EB000, v19, v20, "[SetTaskAttribute NeedsConfirmation] Did not get ConfirmationTask from parse: %s", v2, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
      v32 = *(v0 + 408);
      v31 = *(v0 + 416);
      v33 = *(v0 + 400);

      (*(v32 + 8))(v31, v33);
    }

    sub_26812C6B8();
    v34 = OUTLINED_FUNCTION_59_1();
    OUTLINED_FUNCTION_29_9(v34, v35);
    goto LABEL_16;
  }

  v36 = *(v0 + 472);
  v37 = *(v0 + 456);
  v38 = *(v0 + 376);
  v39 = *(v0 + 112);
  *(v0 + 160) = *(v0 + 96);
  *(v0 + 176) = v39;
  *(v0 + 192) = *(v0 + 128);
  *(v0 + 201) = *(v0 + 137);
  sub_2683CC9E8();
  v40 = sub_2683CC738();
  v42 = v41;
  v88(v36, v37);

  v43 = sub_268381174();
  if (v43 == 7)
  {
    sub_26812C6B8();
    v44 = OUTLINED_FUNCTION_59_1();
    *v45 = v40;
    v45[1] = v42;
    OUTLINED_FUNCTION_16_1(v44, v45);
    sub_2681433DC(v0 + 160, &qword_28024D460, &qword_2683D5050);
LABEL_16:
    sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);
    v54 = *(v0 + 472);
    v53 = *(v0 + 480);
    v55 = *(v0 + 448);
    v57 = *(v0 + 416);
    v56 = *(v0 + 424);

    OUTLINED_FUNCTION_40();
LABEL_17:

    return v58();
  }

  v46 = v43;
  v47 = *(v0 + 376);

  v48 = sub_2683CC9C8();
  if (v11)
  {
    v49 = sub_2681DF3CC(v46);
  }

  else
  {
    v50 = *(v0 + 376);
    v51 = sub_2683CC9D8();
    v52 = [v51 itemToConfirm];

    sub_2683D0038();
    swift_unknownObjectRelease();
    v49 = sub_2681DFC70(v46, (v0 + 328));
    __swift_destroy_boxed_opaque_existential_0((v0 + 328));
  }

  *(v0 + 496) = v49;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v60 = sub_2683CF7E8();
  *(v0 + 504) = __swift_project_value_buffer(v60, qword_28027C958);
  v61 = sub_2683CF7C8();
  v62 = sub_2683CFE98();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *v63 = 136315394;
    *(v0 + 81) = v11 & 1;
    v64 = sub_2683CFAD8();
    v66 = sub_2681610A0(v64, v65, v93);

    *(v63 + 4) = v66;
    *(v63 + 12) = 2080;
    v67 = v49;
    v68 = [v67 description];
    v69 = sub_2683CFA78();
    v71 = v70;

    v72 = sub_2681610A0(v69, v71, v93);

    *(v63 + 14) = v72;
    _os_log_impl(&dword_2680EB000, v61, v62, "[SetTaskAttribute NeedsConfirmation] Parsed response as %s. Updated intent: %s", v63, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  sub_2681340E8(v0 + 160, v0 + 224, &qword_28024D460, &qword_2683D5050);
  v73 = *(v0 + 280);
  if (v73 != 4)
  {
    if (v73 == 255)
    {
      sub_2681433DC(v0 + 224, &qword_28024D460, &qword_2683D5050);
    }

    else
    {
      sub_26813A1A0(v0 + 224);
    }

    v79 = OUTLINED_FUNCTION_28_11();
    OUTLINED_FUNCTION_1(v79);
    v81 = *(v80 + 104);
    v82 = OUTLINED_FUNCTION_36_8();
    v83(v82);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v84, v85, v86, v79);
    sub_268216858();
    v87 = v49;
    OUTLINED_FUNCTION_0_0();
    sub_2683CC8D8();
    sub_2681433DC(v0 + 160, &qword_28024D460, &qword_2683D5050);
    sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);

    OUTLINED_FUNCTION_7_4();
    goto LABEL_17;
  }

  sub_268193F18((v0 + 224), v0 + 288);
  v74 = *(v0 + 312);
  v75 = *(v0 + 320);
  __swift_project_boxed_opaque_existential_1((v0 + 288), v74);
  v76 = *(v75 + 24);
  v92 = (v76 + *v76);
  v77 = v76[1];
  v78 = swift_task_alloc();
  *(v0 + 512) = v78;
  *v78 = v0;
  v78[1] = sub_2682140B0;

  return v92(1, v74, v75);
}

uint64_t sub_2682140B0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 512);
  *v3 = *v1;
  *(v2 + 520) = v6;
  *(v2 + 528) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2682141B8()
{
  v30 = v0;
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  v4 = *(v0 + 496);
  v5 = sub_2681DFEB4(v2);

  v6 = v5;
  v7 = v6;
  v8 = sub_2683CF7C8();
  v9 = sub_2683CFE98();

  if (os_log_type_enabled(v8, v9))
  {
    v28 = *(v0 + 520);
    swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_34_1();
    v29 = v10;
    *v1 = 136315138;
    v11 = v7;
    v12 = [v11 description];
    v13 = sub_2683CFA78();
    v15 = v14;

    v16 = sub_2681610A0(v13, v15, &v29);

    *(v1 + 4) = v16;
    _os_log_impl(&dword_2680EB000, v8, v9, "[SetTaskAttribute NeedsConfirmation] Merged intent from secondary task: %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 288));
  v17 = OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_1(v17);
  v19 = *(v18 + 104);
  v20 = OUTLINED_FUNCTION_36_8();
  v21(v20);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v17);
  sub_268216858();
  v25 = v7;
  OUTLINED_FUNCTION_0_0();
  sub_2683CC8D8();
  sub_2681433DC(v0 + 160, &qword_28024D460, &qword_2683D5050);
  sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);

  OUTLINED_FUNCTION_7_4();

  return v26();
}

uint64_t sub_26821443C()
{
  v1 = v0[62];
  sub_2681433DC((v0 + 20), &qword_28024D460, &qword_2683D5050);
  sub_2681433DC((v0 + 2), &qword_28024D458, &unk_2683D2C60);
  __swift_destroy_boxed_opaque_existential_0(v0 + 36);

  v2 = v0[66];
  v4 = v0[59];
  v3 = v0[60];
  v5 = v0[56];
  v7 = v0[52];
  v6 = v0[53];

  OUTLINED_FUNCTION_40();

  return v8();
}

uint64_t sub_268214514()
{
  OUTLINED_FUNCTION_14();
  v0[32] = v1;
  v0[33] = v2;
  v0[30] = v3;
  v0[31] = v4;
  v0[28] = v5;
  v0[29] = v6;
  v0[27] = v7;
  v8 = type metadata accessor for Snippet();
  v0[34] = v8;
  OUTLINED_FUNCTION_23(v8);
  v10 = *(v9 + 64);
  v0[35] = OUTLINED_FUNCTION_55();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v11 = sub_2683CC9A8();
  v0[39] = v11;
  OUTLINED_FUNCTION_3_1(v11);
  v0[40] = v12;
  v14 = *(v13 + 64);
  v0[41] = OUTLINED_FUNCTION_15_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v15);
  v17 = *(v16 + 64);
  v0[42] = OUTLINED_FUNCTION_15_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v18);
  v20 = *(v19 + 64);
  v0[43] = OUTLINED_FUNCTION_15_1();
  v21 = sub_2683CC138();
  v0[44] = v21;
  OUTLINED_FUNCTION_3_1(v21);
  v0[45] = v22;
  v24 = *(v23 + 64);
  v0[46] = OUTLINED_FUNCTION_55();
  v0[47] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v25);
  v27 = *(v26 + 64);
  v0[48] = OUTLINED_FUNCTION_15_1();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v28);
  v0[49] = v29;
  v0[50] = *(v30 + 64);
  v0[51] = OUTLINED_FUNCTION_55();
  v0[52] = swift_task_alloc();
  v0[53] = swift_task_alloc();
  v0[54] = swift_task_alloc();
  v0[55] = swift_task_alloc();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v0[58] = swift_task_alloc();
  v31 = sub_2683CC528();
  v0[59] = v31;
  OUTLINED_FUNCTION_3_1(v31);
  v0[60] = v32;
  v34 = *(v33 + 64);
  v0[61] = OUTLINED_FUNCTION_15_1();
  v35 = sub_2683CC748();
  v0[62] = v35;
  OUTLINED_FUNCTION_3_1(v35);
  v0[63] = v36;
  v38 = *(v37 + 64);
  v0[64] = OUTLINED_FUNCTION_55();
  v0[65] = swift_task_alloc();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D410, &qword_2683D2390);
  v0[66] = v39;
  OUTLINED_FUNCTION_3_1(v39);
  v0[67] = v40;
  v42 = *(v41 + 64);
  v0[68] = OUTLINED_FUNCTION_15_1();
  v43 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v43, v44, v45);
}

uint64_t sub_268214894()
{
  v66 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[29];
  v6 = sub_2683CF7E8();
  __swift_project_value_buffer(v6, qword_28027C958);
  v7 = OUTLINED_FUNCTION_32_1();
  v8(v7);
  v9 = sub_2683CF7C8();
  v10 = sub_2683CFE98();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[68];
  v13 = v0[67];
  v14 = v0[66];
  if (v11)
  {
    v15 = v0[65];
    v16 = v0[63];
    v61 = v0[62];
    swift_slowAlloc();
    v63 = OUTLINED_FUNCTION_34_1();
    v65 = v63;
    *v1 = 136315138;
    v62 = v10;
    sub_2683CC9E8();
    v17 = sub_2683CC738();
    v19 = v18;
    (*(v16 + 8))(v15, v61);
    v20 = *(v13 + 8);
    v21 = OUTLINED_FUNCTION_44();
    v22(v21);
    v23 = sub_2681610A0(v17, v19, &v65);

    *(v1 + 4) = v23;
    _os_log_impl(&dword_2680EB000, v9, v62, "[SetTaskAttribute NeedsConfirmation] making prompt for confirming %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v24 = *(v13 + 8);
    v25 = OUTLINED_FUNCTION_44();
    v26(v25);
  }

  v27 = v0[66];
  v29 = v0[63];
  v28 = v0[64];
  v30 = v0[62];
  v31 = v0[29];
  sub_2683CC9E8();
  v32 = sub_2683CC738();
  v34 = v33;
  (*(v29 + 8))(v28, v30);

  v35 = sub_268381174();
  if (v35 == 7)
  {
    sub_26812C6B8();
    v64 = OUTLINED_FUNCTION_59_1();
    *v36 = v32;
    v36[1] = v34;
    OUTLINED_FUNCTION_16_1(v64, v36);
    v37 = v0[68];
    v38 = v0[65];
    v39 = v0[64];
    v40 = v0[61];
    v42 = v0[57];
    v41 = v0[58];
    v44 = v0[55];
    v43 = v0[56];
    v46 = v0[53];
    v45 = v0[54];
    OUTLINED_FUNCTION_13_5();

    OUTLINED_FUNCTION_40();

    return v47();
  }

  else
  {
    v49 = v35;
    v50 = v0[66];
    v51 = v0[61];
    v52 = v0[29];

    v0[5] = &type metadata for SetTaskAttribute.Parameter;
    v0[6] = &off_28790CBF0;
    *(v0 + 16) = v49;
    sub_2681686A4(v0 + 2);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v53 = sub_2683CC9D8();
    v54 = [v53 confirmationReason];

    v55 = swift_task_alloc();
    v0[69] = v55;
    *v55 = v0;
    v55[1] = sub_268214CD0;
    v56 = v0[32];
    v57 = v0[33];
    v58 = v0[30];
    v59 = v0[31];
    v60 = v0[28];

    return sub_2682157C0(v60, v49, v54, v58);
  }
}

uint64_t sub_268214CD0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 552);
  *v3 = *v1;
  *(v2 + 560) = v6;
  *(v2 + 568) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_268214DD8()
{
  v1 = v0[70];
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[59];
  v5 = v0[57];
  v7 = v0[47];
  v6 = v0[48];
  v8 = v0[43];
  v94 = v0[42];
  v9 = v0[34];
  __swift_storeEnumTagSinglePayload(v0[58], 1, 1, v9);
  *v5 = 1541;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  (*(v3 + 16))(v6, v2, v4);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v4);
  sub_2683CC118();
  v16 = sub_2683CED08();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v16);
  v17 = sub_2683CC1D8();
  __swift_storeEnumTagSinglePayload(v94, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v18 = swift_allocObject();
  v0[72] = v18;
  *(v18 + 16) = xmmword_2683D2250;
  *(v18 + 32) = v1;
  v19 = v1;
  if (sub_2683ABE58(v18))
  {
    sub_2683ABE60(0, (v18 & 0xC000000000000001) == 0, v18);
    if ((v18 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x26D616C90](0, v18);
    }

    else
    {
      v20 = *(v18 + 32);
    }

    v21 = v20;
    v22 = [v20 catId];

    v90 = sub_2683CFA78();
    v93 = v23;
  }

  else
  {
    v90 = 0;
    v93 = 0;
  }

  v24 = v0[58];
  v89 = v24;
  v26 = v0[55];
  v25 = v0[56];
  v28 = v0[49];
  v27 = v0[50];
  v84 = v0[47];
  v85 = v0[48];
  v29 = v0[45];
  v82 = v0[46];
  v83 = v0[44];
  v86 = v0[43];
  v87 = v0[42];
  v88 = v0[41];
  v91 = v0[34];
  v92 = v0[54];
  v30 = v0[31];
  sub_2681340E8(v0[57], v25, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v24, v26, &qword_28024E770, &qword_2683D80D0);
  v31 = *(v28 + 80);
  v32 = (v31 + 24) & ~v31;
  v33 = (v27 + v31 + v32) & ~v31;
  v34 = swift_allocObject();
  v0[73] = v34;
  *(v34 + 16) = v30;
  sub_2681430AC(v25, v34 + v32);
  sub_2681430AC(v26, v34 + v33);
  (*(v29 + 16))(v82, v84, v83);
  v35 = swift_task_alloc();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = 0;
  *(v35 + 40) = v90;
  *(v35 + 48) = v93;
  *(v35 + 56) = v85;
  *(v35 + 64) = 257;
  *(v35 + 72) = sub_26814311C;
  *(v35 + 80) = v34;
  *(v35 + 88) = 0;
  *(v35 + 96) = v86;
  *(v35 + 104) = 2;
  *(v35 + 112) = v87;

  sub_2683CC8E8();

  sub_2681340E8(v89, v92, &qword_28024E770, &qword_2683D80D0);
  if (__swift_getEnumTagSinglePayload(v92, 1, v91) == 1)
  {
    v36 = v0 + 54;
  }

  else
  {
    v37 = v0[57];
    v38 = v0[53];
    v39 = v0[34];
    sub_26814320C(v0[54], v0[38]);
    sub_2681340E8(v37, v38, &qword_28024E770, &qword_2683D80D0);
    if (__swift_getEnumTagSinglePayload(v38, 1, v39) != 1)
    {
      v62 = v0[37];
      v63 = v0[38];
      v64 = v0[34];
      sub_26814320C(v0[53], v62);
      v0[20] = v64;
      v65 = sub_268143270();
      v0[21] = v65;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 17);
      sub_2681432C8(v63, boxed_opaque_existential_0);
      v0[25] = v64;
      v0[26] = v65;
      v67 = __swift_allocate_boxed_opaque_existential_0(v0 + 22);
      sub_2681432C8(v62, v67);
      OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_10_2();
      v0[74] = v68;
      *v68 = v69;
      v68[1] = sub_2682154B8;
      v70 = v0[41];
      v71 = v0[31];
      v72 = v0[27];
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X5 }
    }

    v36 = v0 + 53;
    sub_26814332C(v0[38]);
  }

  v40 = *v36;
  v41 = v0[58];
  v42 = v0[52];
  v43 = v0[34];
  sub_2681433DC(v40, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v41, v42, &qword_28024E770, &qword_2683D80D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, 1, v43);
  v45 = v0[52];
  v46 = v0[34];
  if (EnumTagSinglePayload == 1)
  {
    v47 = v0[57];
    v48 = v0[51];
    sub_2681433DC(v45, &qword_28024E770, &qword_2683D80D0);
    sub_2681340E8(v47, v48, &qword_28024E770, &qword_2683D80D0);
    v49 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v49, v50, v46) == 1)
    {
      sub_2681433DC(v0[51], &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_10_2();
      v0[77] = v51;
      *v51 = v52;
      v51[1] = sub_268141D90;
      v53 = v0[41];
      v54 = v0[31];
      v55 = v0[27];
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X3 }
    }

    v75 = v0[34];
    v76 = v0[35];
    sub_26814320C(v0[51], v76);
    v0[10] = v75;
    v0[11] = sub_268143270();
    v77 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
    sub_2681432C8(v76, v77);
    OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_10_2();
    v0[76] = v78;
    *v78 = v79;
    OUTLINED_FUNCTION_40_0(v78);
  }

  else
  {
    v58 = v0[36];
    sub_26814320C(v45, v58);
    v0[15] = v46;
    v0[16] = sub_268143270();
    v59 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
    sub_2681432C8(v58, v59);
    OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_10_2();
    v0[75] = v60;
    *v60 = v61;
    OUTLINED_FUNCTION_40_0(v60);
  }

  OUTLINED_FUNCTION_24_3();

  __asm { BR              X4 }
}

uint64_t sub_2682154B8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 592);
  v6 = *(v4 + 576);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2682155C0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 600);
  v6 = *(v4 + 576);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2682156C0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 608);
  v6 = *(v4 + 576);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2682157C0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 280) = a2;
  *(v4 + 112) = a1;
  *(v4 + 120) = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0) - 8) + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268215878, 0, 0);
}

uint64_t sub_268215878()
{
  OUTLINED_FUNCTION_7();
  switch(*(v1 + 280))
  {
    case 1:
      v19 = OUTLINED_FUNCTION_37_7();
      *(v1 + 176) = sub_2681DF4C8(v19);
      if (v0)
      {
        goto LABEL_20;
      }

      v20 = *(v1 + 136);
      sub_2683CFEA8();
      sub_2683CF168();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      v25 = swift_task_alloc();
      *(v1 + 184) = v25;
      *v25 = v1;
      v25[1] = sub_268215DF0;
      v26 = *(v1 + 136);
      OUTLINED_FUNCTION_44_6();

      return sub_2681F22C0();
    case 2:
      OUTLINED_FUNCTION_37_7();
      v4 = sub_2681DF7D4();
      if (v0)
      {
        goto LABEL_20;
      }

      sub_2681BA96C(v4, *(v1 + 128));
      v5 = swift_task_alloc();
      *(v1 + 200) = v5;
      *v5 = v1;
      v5[1] = sub_268215F94;
      v7 = *(v1 + 120);
      v6 = *(v1 + 128);

      return sub_2681F1ED4();
    case 3:
    case 6:
      sub_26812C6B8();
      v2 = OUTLINED_FUNCTION_59_1();
      OUTLINED_FUNCTION_29_9(v2, v3);
      goto LABEL_20;
    case 4:
      v27 = OUTLINED_FUNCTION_37_7();
      v28 = sub_2681DF970(v27);
      *(v1 + 216) = v28;
      if (v0)
      {
        goto LABEL_20;
      }

      v29 = v28;
      type metadata accessor for NotebookTemporalEventTriggerConcept();
      v30 = sub_2681A2C04(v29);
      *(v1 + 224) = v30;
      v31 = swift_task_alloc();
      *(v1 + 232) = v31;
      *v31 = v1;
      v31[1] = sub_26821610C;
      OUTLINED_FUNCTION_44_6();

      result = sub_2681F24A8(v30);
      break;
    case 5:
      v32 = OUTLINED_FUNCTION_37_7();
      v33 = sub_2681DF5DC(v32);
      *(v1 + 248) = v33;
      if (v0)
      {
        goto LABEL_20;
      }

      v35 = v33;
      type metadata accessor for NotebookSpatialEventTriggerConcept(0);
      v36 = sub_268163274(v35);
      *(v1 + 256) = v36;
      v37 = swift_task_alloc();
      *(v1 + 264) = v37;
      *v37 = v1;
      v37[1] = sub_268216288;
      OUTLINED_FUNCTION_44_6();

      result = sub_2681F1DB0(v36);
      break;
    default:
      v9 = OUTLINED_FUNCTION_37_7();
      v10 = sub_2681DF64C(v9);
      *(v1 + 152) = v10;
      if (v0)
      {
LABEL_20:
        OUTLINED_FUNCTION_26_12();

        OUTLINED_FUNCTION_40();

        result = v34();
      }

      else
      {
        v11 = *(v1 + 144);
        v12 = [v10 title];
        sub_2683CFEA8();

        sub_2683CF168();
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
        v17 = swift_task_alloc();
        *(v1 + 160) = v17;
        *v17 = v1;
        v17[1] = sub_268215C4C;
        v18 = *(v1 + 144);
        OUTLINED_FUNCTION_44_6();

        result = sub_2681F20D8();
      }

      break;
  }

  return result;
}

uint64_t sub_268215C4C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  OUTLINED_FUNCTION_36_6();
  v6 = *(v5 + 160);
  v8 = *(v7 + 144);
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v11 + 168) = v0;

  sub_2681433DC(v8, &unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_268215D78()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_12();

  v2 = OUTLINED_FUNCTION_37_0();

  return v3(v2);
}

uint64_t sub_268215DF0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_36_6();
  v6 = *(v5 + 184);
  v8 = *(v7 + 136);
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v11 + 192) = v0;

  sub_2681433DC(v8, &unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_268215F1C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_26_12();

  v2 = OUTLINED_FUNCTION_37_0();

  return v3(v2);
}

uint64_t sub_268215F94()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v8 = *(v7 + 200);
  v9 = *(v7 + 128);
  v10 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v11 = v10;
  v5[26] = v0;

  sub_2681433DC(v9, &unk_28024E7C0, &unk_2683D6CA0);
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    v16 = v5[17];
    v15 = v5[18];
    v17 = v5[16];

    v18 = *(v10 + 8);

    return v18(v3);
  }
}

uint64_t sub_26821610C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v3[8] = v1;
  v3[9] = v5;
  v3[10] = v0;
  OUTLINED_FUNCTION_36_6();
  v7 = *(v6 + 232);
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  v3[30] = v0;

  if (!v0)
  {
    v10 = v3[28];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_268216210()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_26_12();

  v2 = OUTLINED_FUNCTION_37_0();

  return v3(v2);
}

uint64_t sub_268216288()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v3[11] = v1;
  v3[12] = v5;
  v3[13] = v0;
  OUTLINED_FUNCTION_36_6();
  v7 = *(v6 + 264);
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  v3[34] = v0;

  if (!v0)
  {
    v10 = v3[32];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26821638C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_26_12();

  v2 = OUTLINED_FUNCTION_37_0();

  return v3(v2);
}

uint64_t sub_268216404()
{
  OUTLINED_FUNCTION_7();

  v1 = *(v0 + 168);
  OUTLINED_FUNCTION_26_12();

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_26821647C()
{
  OUTLINED_FUNCTION_7();

  v1 = *(v0 + 192);
  OUTLINED_FUNCTION_26_12();

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_2682164F4()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 208);
  OUTLINED_FUNCTION_26_12();

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_268216564()
{
  OUTLINED_FUNCTION_7();
  v2 = v0[27];
  v1 = v0[28];

  v3 = v0[30];
  OUTLINED_FUNCTION_26_12();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2682165E0()
{
  OUTLINED_FUNCTION_7();
  v2 = v0[31];
  v1 = v0[32];

  v3 = v0[34];
  OUTLINED_FUNCTION_26_12();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_268216664()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2681342AC;

  return sub_2682136E0();
}

uint64_t sub_268216728()
{
  v2 = *v0;
  v3 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_268133EC8;

  return sub_268214514();
}

unint64_t sub_268216804()
{
  result = qword_28024FA10;
  if (!qword_28024FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024FA10);
  }

  return result;
}

unint64_t sub_268216858()
{
  result = qword_28024F098;
  if (!qword_28024F098)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024F098);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_12()
{
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
}

uint64_t OUTLINED_FUNCTION_28_11()
{
  v2 = *(v0 + 488);
  v3 = *(v0 + 472);
  v4 = *(v0 + 480);
  v5 = *(v0 + 448);
  v6 = *(v0 + 416);
  v7 = *(v0 + 424);
  v8 = *(v0 + 360);

  return sub_2683CC758();
}

uint64_t OUTLINED_FUNCTION_29_9(uint64_t a1, uint64_t a2)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 4;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_36_8()
{
  if ((v3 & 1) == 0)
  {
    v0 = v1;
  }

  v4 = *v0;
  return v2;
}

uint64_t type metadata accessor for NotebookLabelsV2CATsSimple()
{
  result = qword_28024FA18;
  if (!qword_28024FA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2682169C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_268216A14(a1, a2);
}

uint64_t sub_268216A14(uint64_t a1, uint64_t a2)
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
  sub_268163198(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_2683CF178();
  (*(v8 + 8))(a2, v2);
  sub_268163208(a1);
  return v16;
}

uint64_t sub_268216B70(uint64_t a1, uint64_t a2)
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

uint64_t sub_268216C78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v57 - v4;
  v6 = sub_2683CB528();
  v7 = OUTLINED_FUNCTION_0_3(v6);
  v60 = v8;
  v61 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_3();
  v59 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBB8, &unk_2683D4310);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v57 - v15;
  v17 = sub_2683CB7A8();
  v18 = OUTLINED_FUNCTION_0_3(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_3();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v57 - v28;
  v30 = sub_2683CB0D8();
  v31 = OUTLINED_FUNCTION_0_3(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14_3();
  v38 = v37 - v36;
  sub_268176AE4(a1, v29);
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    sub_26812C310(a1, &qword_28024D4B0, &unk_2683D26E0);
    v39 = v29;
    v40 = &qword_28024D4B0;
    v41 = &unk_2683D26E0;
  }

  else
  {
    (*(v33 + 32))(v38, v29, v30);
    sub_2683CB0B8();
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
    {
      sub_26812C310(a1, &qword_28024D4B0, &unk_2683D26E0);
      v42 = OUTLINED_FUNCTION_2_29();
      v43(v42);
      v40 = &qword_28024DBB8;
      v41 = &unk_2683D4310;
      v39 = v16;
    }

    else
    {
      (*(v20 + 32))(v25, v16, v17);
      sub_2683CB738();
      v44 = v61;
      if (__swift_getEnumTagSinglePayload(v5, 1, v61) != 1)
      {
        v49 = *(v60 + 32);
        v58 = v20;
        v50 = v59;
        v49(v59, v5, v44);
        v51 = sub_2683CEFC8();
        v52 = *(v51 + 48);
        v53 = *(v51 + 52);
        swift_allocObject();
        v54 = v44;
        sub_2683CEFB8();
        sub_2683CB4E8();
        sub_2683CEFA8();

        v47 = sub_2683CEFD8();
        sub_26812C310(a1, &qword_28024D4B0, &unk_2683D26E0);
        (*(v60 + 8))(v50, v54);
        (*(v58 + 8))(v25, v17);
        v55 = OUTLINED_FUNCTION_2_29();
        v56(v55);
        return v47;
      }

      sub_26812C310(a1, &qword_28024D4B0, &unk_2683D26E0);
      (*(v20 + 8))(v25, v17);
      v45 = OUTLINED_FUNCTION_2_29();
      v46(v45);
      v40 = &qword_28024DB08;
      v41 = qword_2683D5760;
      v39 = v5;
    }
  }

  sub_26812C310(v39, v40, v41);
  return 0;
}

uint64_t sub_26821714C()
{
  v0 = sub_2683CB668();
  v1 = OUTLINED_FUNCTION_0_3(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v34[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268129504(0, &qword_28024FA78, 0x277CBEBD0);
  sub_26835DEA8(v34);
  v8 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v9 = *(v8 + 8);
  OUTLINED_FUNCTION_13_21();
  v11 = v10();
  __swift_destroy_boxed_opaque_existential_0(v34);
  if (v11)
  {
    if (qword_28024C8E8 != -1)
    {
      OUTLINED_FUNCTION_0_42();
    }

    v12 = sub_2683CF7E8();
    __swift_project_value_buffer(v12, qword_28027C970);
    v13 = sub_2683CF7C8();
    v14 = sub_2683CFE68();
    if (!OUTLINED_FUNCTION_11_9(v14))
    {
      goto LABEL_17;
    }

    *OUTLINED_FUNCTION_21_5() = 0;
    v17 = "[AppSelection] disabled";
LABEL_16:
    OUTLINED_FUNCTION_4_7(&dword_2680EB000, v15, v16, v17);
    OUTLINED_FUNCTION_38();
LABEL_17:

    return 0;
  }

  if ((sub_268217684() & 1) == 0)
  {
    if (qword_28024C8E8 != -1)
    {
      OUTLINED_FUNCTION_0_42();
    }

    v30 = sub_2683CF7E8();
    __swift_project_value_buffer(v30, qword_28027C970);
    v13 = sub_2683CF7C8();
    v31 = sub_2683CFE68();
    if (!OUTLINED_FUNCTION_11_9(v31))
    {
      goto LABEL_17;
    }

    *OUTLINED_FUNCTION_21_5() = 0;
    v17 = "[AppSelection] Diagnostics & Usage is disabled";
    goto LABEL_16;
  }

  if (qword_28024C8E8 != -1)
  {
    OUTLINED_FUNCTION_0_42();
  }

  v18 = sub_2683CF7E8();
  __swift_project_value_buffer(v18, qword_28027C970);
  v19 = sub_2683CF7C8();
  v20 = sub_2683CFE68();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_21_5();
    *v21 = 0;
    _os_log_impl(&dword_2680EB000, v19, v20, "[AppSelection] enabled", v21, 2u);
    OUTLINED_FUNCTION_38();
  }

  sub_2683CCC48();
  __swift_project_boxed_opaque_existential_1(v34, v35);
  sub_2683CC088();
  v22 = [objc_opt_self() sharedAnalytics];
  v23 = [v22 defaultMessageStream];

  v24 = type metadata accessor for AppSelectionTrainingLogger();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  v28 = (v27 + OBJC_IVAR____TtC12SiriNotebook26AppSelectionTrainingLogger_messageStream);
  v28[3] = sub_268129504(0, &qword_28024FA80, 0x277D552C8);
  v28[4] = &off_2879052D0;
  *v28 = v23;
  v29 = v27 + OBJC_IVAR____TtC12SiriNotebook26AppSelectionTrainingLogger_appResolutionType;
  *v29 = 0;
  *(v29 + 4) = 1;
  (*(v3 + 32))(v27 + OBJC_IVAR____TtC12SiriNotebook26AppSelectionTrainingLogger_locale, v7, v0);
  __swift_destroy_boxed_opaque_existential_0(v34);
  return v27;
}

void sub_2682174F0()
{
  v1 = v0;
  if (qword_28024C8E8 != -1)
  {
    OUTLINED_FUNCTION_0_42();
  }

  v2 = sub_2683CF7E8();
  __swift_project_value_buffer(v2, qword_28027C970);
  OUTLINED_FUNCTION_9_10();

  oslog = sub_2683CF7C8();
  v3 = sub_2683CFE68();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v10 = *(v1 + OBJC_IVAR____TtC12SiriNotebook26AppSelectionTrainingLogger_appResolutionType);
    v11 = *(v1 + OBJC_IVAR____TtC12SiriNotebook26AppSelectionTrainingLogger_appResolutionType + 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FA88, &qword_2683DDCD8);
    v6 = sub_2683CFAD8();
    v8 = sub_2681610A0(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2680EB000, oslog, v3, "[AppSelection] appResolutionType=%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }
}

id sub_268217684()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isDiagnosticSubmissionAllowed];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268217704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_268217724, 0, 0);
}

uint64_t sub_268217724()
{
  OUTLINED_FUNCTION_7();
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_2683CCCC8();
  OUTLINED_FUNCTION_9_10();
  sub_268217C50();
  sub_2683CCCB8();
  v4 = OUTLINED_FUNCTION_9_10();
  sub_26821A27C(v4, v0);

  OUTLINED_FUNCTION_40();

  return v5();
}

uint64_t sub_2682177AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FA70, &qword_2683DDC98);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_2681340E8(a3, v26 - v11, &qword_28024FA70, &qword_2683DDC98);
  v13 = sub_2683CFD88();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_26812D9E0(v12, &qword_28024FA70, &qword_2683DDC98);
  }

  else
  {
    sub_2683CFD78();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2683CFD48();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2683CFB18() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_26812D9E0(a3, &qword_28024FA70, &qword_2683DDC98);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26812D9E0(a3, &qword_28024FA70, &qword_2683DDC98);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_268217AB0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FA70, &qword_2683DDC98);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  result = sub_2682184F0();
  if (result)
  {
    sub_2683CFD68();
    v11 = sub_2683CFD88();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v3;
    v12[5] = a1;

    v13 = a1;
    sub_2682177AC(0, 0, v9, a3, v12);
  }

  return result;
}

uint64_t sub_268217BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_268217BC8, 0, 0);
}

uint64_t sub_268217BC8()
{
  OUTLINED_FUNCTION_7();
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_2683CCCC8();
  OUTLINED_FUNCTION_9_10();
  sub_268217C50();
  sub_2683CCCB8();
  v4 = OUTLINED_FUNCTION_9_10();
  sub_26821A5C4(v4, v0);

  OUTLINED_FUNCTION_40();

  return v5();
}

uint64_t sub_268217C50()
{
  v0 = type metadata accessor for InstalledAppProvider();
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v5 = [swift_getObjCClassFromMetadata() description];
  v6 = sub_2683CFA78();
  v8 = v7;

  sub_2683CCC48();
  __swift_project_boxed_opaque_existential_1(v43, v43[3]);
  v9 = &v4[*(v1 + 28)];
  sub_2683CC088();
  *v4 = 0;
  __swift_destroy_boxed_opaque_existential_0(v43);

  v40 = v6;
  sub_2681F840C();
  v11 = v10;
  v41 = v8;

  v12 = *(v11 + 16);
  v42 = v4;
  if (v12)
  {
    v43[0] = MEMORY[0x277D84F90];
    sub_2683D0228();
    v13 = 32;
    do
    {
      v14 = *(v11 + v13);

      sub_2683D01F8();
      v15 = *(v43[0] + 16);
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
      v13 += 32;
      --v12;
    }

    while (v12);

    v16 = v43[0];
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v17 = sub_2683ABE58(v16);
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  while (v17 != v18)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D616C90](v18, v16);
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v20 = *(v16 + 8 * v18 + 32);
    }

    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v22 = sub_2683CF258();
    v24 = v23;

    ++v18;
    if (v24)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2682E4728(0, *(v19 + 16) + 1, 1, v19);
        v19 = v28;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2682E4728(v25 > 1, v26 + 1, 1, v19);
        v19 = v29;
      }

      *(v19 + 16) = v26 + 1;
      v27 = v19 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v18 = v21;
    }
  }

  if (qword_28024C8E8 == -1)
  {
    goto LABEL_20;
  }

LABEL_26:
  OUTLINED_FUNCTION_0_42();
LABEL_20:
  v30 = sub_2683CF7E8();
  __swift_project_value_buffer(v30, qword_28027C970);
  v31 = v41;

  v32 = sub_2683CF7C8();
  v33 = sub_2683CFE98();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v34 = 136315394;
    v35 = sub_2681610A0(v40, v31, v43);

    *(v34 + 4) = v35;
    *(v34 + 12) = 2080;
    v36 = MEMORY[0x26D6167A0](v19, MEMORY[0x277D837D0]);
    v38 = sub_2681610A0(v36, v37, v43);

    *(v34 + 14) = v38;
    _os_log_impl(&dword_2680EB000, v32, v33, "[AppSelection] Candidate %s, apps: %s", v34, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  sub_2681F9844(v42);
  return v19;
}

void sub_268218080(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB50, &qword_2683D4250);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v35 - v6);
  v8 = sub_2683CB598();
  v9 = OUTLINED_FUNCTION_0_3(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  v19 = [objc_allocWithZone(MEMORY[0x277D581F0]) init];
  if (v19)
  {
    v20 = v19;
    v21 = [objc_allocWithZone(MEMORY[0x277D581F8]) init];
    if (v21)
    {
      v37 = v21;
      v38 = v7;
      if ((*(v2 + OBJC_IVAR____TtC12SiriNotebook26AppSelectionTrainingLogger_appResolutionType + 4) & 1) == 0)
      {
        v22 = *(v2 + OBJC_IVAR____TtC12SiriNotebook26AppSelectionTrainingLogger_appResolutionType);
        v23 = [a1 inferenceNotebookAppSelectionTrainingAppIndependentSignals];
        v24 = [v23 commonIndependent];

        [v24 setAppResolutionType_];
      }

      sub_2683CB588();
      sub_268129504(0, &qword_28024FA68, 0x277D5AC78);
      v36 = *(v11 + 16);
      v36(v16, v18, v8);
      v25 = sub_268218454(v16);
      v26 = v37;
      [v37 setInferenceId_];

      [v20 setEventMetadata_];
      [v20 setNotebookAppSelectionGroundTruthGenerated_];
      v27 = *(v2 + OBJC_IVAR____TtC12SiriNotebook26AppSelectionTrainingLogger_messageStream + 32);
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12SiriNotebook26AppSelectionTrainingLogger_messageStream), *(v2 + OBJC_IVAR____TtC12SiriNotebook26AppSelectionTrainingLogger_messageStream + 24));
      v28 = v38;
      v36(v38, v18, v8);
      __swift_storeEnumTagSinglePayload(v28, 0, 1, v8);
      v29 = *(v27 + 8);
      OUTLINED_FUNCTION_13_21();
      v30();

      sub_26812D9E0(v28, &qword_28024DB50, &qword_2683D4250);
      (*(v11 + 8))(v18, v8);
      return;
    }
  }

  if (qword_28024C8E8 != -1)
  {
    OUTLINED_FUNCTION_0_42();
  }

  v31 = sub_2683CF7E8();
  __swift_project_value_buffer(v31, qword_28027C970);
  v38 = sub_2683CF7C8();
  v32 = sub_2683CFE78();
  if (os_log_type_enabled(v38, v32))
  {
    v33 = OUTLINED_FUNCTION_21_5();
    *v33 = 0;
    _os_log_impl(&dword_2680EB000, v38, v32, "Could not create top SELF message", v33, 2u);
    OUTLINED_FUNCTION_38();
  }

  v34 = v38;
}

id sub_268218454(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2683CB558();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_2683CB598();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_2682184F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12SiriNotebook26AppSelectionTrainingLogger_appResolutionType + 4);
  if (v1 == 1)
  {
    if (qword_28024C8E8 != -1)
    {
      OUTLINED_FUNCTION_0_42();
    }

    v2 = sub_2683CF7E8();
    __swift_project_value_buffer(v2, qword_28027C970);
    v3 = sub_2683CF7C8();
    v4 = sub_2683CFE68();
    if (OUTLINED_FUNCTION_11_9(v4))
    {
      *OUTLINED_FUNCTION_21_5() = 0;
      OUTLINED_FUNCTION_4_7(&dword_2680EB000, v5, v6, "[AppSelection] ignored for assumed first party app");
      OUTLINED_FUNCTION_38();
    }
  }

  return v1 ^ 1u;
}

uint64_t sub_2682185A8()
{
  v1 = OBJC_IVAR____TtC12SiriNotebook26AppSelectionTrainingLogger_locale;
  v2 = sub_2683CB668();
  OUTLINED_FUNCTION_1(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC12SiriNotebook26AppSelectionTrainingLogger_messageStream));
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

void *sub_26821864C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FA50, &unk_2683DDC88);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v46 - v6;
  v8 = sub_2683CCD68();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277D582F0]) init];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_allocWithZone(MEMORY[0x277D58300]) init];
    v50 = v14;
    if (v15)
    {
      v16 = v15;
      [v14 setInferenceNotebookAppSelectionTrainingAppIndependentSignals_];
      v52 = v1;
      type metadata accessor for NotesSignalValuesProcessor();
      sub_268219F58(&qword_28024FA60, type metadata accessor for NotesSignalValuesProcessor);
      v51 = a1;
      v17 = sub_2683CCD28();
      [v16 setCommonIndependent_];

      v52 = 0;
      v53 = 0xE000000000000000;
      sub_2683CCD88();
      v48 = v7;
      v18 = sub_2683CCD58();
      MEMORY[0x26D616690](v18);

      MEMORY[0x26D616690](46, 0xE100000000000000);
      v19 = *MEMORY[0x277D60370];
      v49 = v1;
      v20 = v9[13];
      v20(v12, v19, v8);
      v47 = v20;
      sub_2683D0288();
      v46 = v9[1];
      v46(v12, v8);
      LOBYTE(v52) = [v16 isNotebookTitlePresent];
      sub_2683CCD38();

      [v16 setIsNotebookTitlePresent_];
      v52 = 0;
      v53 = 0xE000000000000000;
      v21 = sub_2683CCD58();
      MEMORY[0x26D616690](v21);

      MEMORY[0x26D616690](46, 0xE100000000000000);
      v20(v12, *MEMORY[0x277D60360], v8);
      sub_2683D0288();
      v22 = v46;
      v46(v12, v8);
      LOBYTE(v52) = [v16 isNotebookPayloadPresent];
      sub_2683CCD38();

      [v16 setIsNotebookPayloadPresent_];
      v52 = 0;
      v53 = 0xE000000000000000;
      v7 = v48;
      v23 = sub_2683CCD58();
      MEMORY[0x26D616690](v23);

      MEMORY[0x26D616690](46, 0xE100000000000000);
      v47(v12, *MEMORY[0x277D60368], v8);
      v2 = v49;
      sub_2683D0288();
      v22(v12, v8);
      LOBYTE(v52) = [v16 isNotebookGroupPresent];
      sub_2683CCD38();

      [v16 setIsNotebookGroupPresent_];
    }

    else
    {
      if (qword_28024C8E8 != -1)
      {
        swift_once();
      }

      v29 = sub_2683CF7E8();
      __swift_project_value_buffer(v29, qword_28027C970);
      v30 = sub_2683CF7C8();
      v31 = sub_2683CFE78();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_2680EB000, v30, v31, "NotebookMessageBuilder: No independent values", v32, 2u);
        MEMORY[0x26D617A40](v32, -1, -1);
      }
    }

    v52 = v2;
    v33 = *MEMORY[0x277D601C0];
    v34 = sub_2683CCCA8();
    (*(*(v34 - 8) + 104))(v7, v33, v34);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v34);
    type metadata accessor for NotesSignalValuesProcessor();
    sub_268219F58(&qword_28024FA60, type metadata accessor for NotesSignalValuesProcessor);
    v35 = sub_2683CCD18();
    sub_26812D9E0(v7, &qword_28024FA50, &unk_2683DDC88);
    v51 = MEMORY[0x277D84F90];
    v52 = MEMORY[0x277D84F90];
    v36 = sub_2683ABE58(v35);
    v37 = 0;
    while (1)
    {
      if (v36 == v37)
      {

        v28 = v50;
        sub_268219D24(v51, v50);
        return v28;
      }

      if ((v35 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x26D616C90](v37, v35);
      }

      else
      {
        if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v38 = *(v35 + 8 * v37 + 32);
      }

      v39 = v38;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      v40 = [objc_allocWithZone(MEMORY[0x277D582F8]) init];
      if (v40)
      {
        [v40 setCommonDependent_];

        MEMORY[0x26D616770]();
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2683CFCD8();
        }

        sub_2683CFD08();
        v51 = v52;
        ++v37;
      }

      else
      {
        if (qword_28024C8E8 != -1)
        {
          swift_once();
        }

        v41 = sub_2683CF7E8();
        __swift_project_value_buffer(v41, qword_28027C970);
        v42 = sub_2683CF7C8();
        v43 = sub_2683CFE78();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_2680EB000, v42, v43, "NotebookMessageBuilder: Could not create DependentSignals Message.", v44, 2u);
          MEMORY[0x26D617A40](v44, -1, -1);
        }

        ++v37;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (qword_28024C8E8 != -1)
  {
LABEL_33:
    swift_once();
  }

  v24 = sub_2683CF7E8();
  __swift_project_value_buffer(v24, qword_28027C970);
  v25 = sub_2683CF7C8();
  v26 = sub_2683CFE78();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2680EB000, v25, v26, "NotebookMessageBuilder: Could not create Message class.", v27, 2u);
    MEMORY[0x26D617A40](v27, -1, -1);
  }

  return 0;
}

void *sub_268218EFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_26821864C(a1);
  *a2 = result;
  return result;
}

void *sub_268218F28()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FA50, &unk_2683DDC88);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x277D582F0]) init];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x277D58300]) init];
    v34 = v7;
    if (v8)
    {
      v9 = v8;
      [v7 setInferenceNotebookAppSelectionTrainingAppIndependentSignals_];
      v36 = v0;
      type metadata accessor for RemindersSignalValuesProcessor();
      sub_268219F58(&qword_28024FA58, type metadata accessor for RemindersSignalValuesProcessor);
      v10 = sub_2683CCD28();
      [v9 setCommonIndependent_];
    }

    else
    {
      if (qword_28024C8E8 != -1)
      {
        swift_once();
      }

      v16 = sub_2683CF7E8();
      __swift_project_value_buffer(v16, qword_28027C970);
      v17 = sub_2683CF7C8();
      v18 = sub_2683CFE78();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_2680EB000, v17, v18, "NotebookMessageBuilder: No independent values", v19, 2u);
        MEMORY[0x26D617A40](v19, -1, -1);
      }
    }

    v36 = v1;
    v20 = *MEMORY[0x277D601C0];
    v21 = sub_2683CCCA8();
    (*(*(v21 - 8) + 104))(v5, v20, v21);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v21);
    type metadata accessor for RemindersSignalValuesProcessor();
    sub_268219F58(&qword_28024FA58, type metadata accessor for RemindersSignalValuesProcessor);
    v22 = sub_2683CCD18();
    sub_26812D9E0(v5, &qword_28024FA50, &unk_2683DDC88);
    v35 = MEMORY[0x277D84F90];
    v36 = MEMORY[0x277D84F90];
    v23 = sub_2683ABE58(v22);
    v24 = 0;
    while (1)
    {
      if (v23 == v24)
      {

        v15 = v34;
        sub_268219D24(v35, v34);
        return v15;
      }

      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x26D616C90](v24, v22);
      }

      else
      {
        if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v25 = *(v22 + 8 * v24 + 32);
      }

      v26 = v25;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v27 = [objc_allocWithZone(MEMORY[0x277D582F8]) init];
      if (v27)
      {
        [v27 setCommonDependent_];

        MEMORY[0x26D616770]();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2683CFCD8();
        }

        sub_2683CFD08();
        v35 = v36;
        ++v24;
      }

      else
      {
        if (qword_28024C8E8 != -1)
        {
          swift_once();
        }

        v28 = sub_2683CF7E8();
        __swift_project_value_buffer(v28, qword_28027C970);
        v29 = sub_2683CF7C8();
        v30 = sub_2683CFE78();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_2680EB000, v29, v30, "NotebookMessageBuilder: Could not create DependentSignals Message.", v31, 2u);
          MEMORY[0x26D617A40](v31, -1, -1);
        }

        ++v24;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (qword_28024C8E8 != -1)
  {
LABEL_33:
    swift_once();
  }

  v11 = sub_2683CF7E8();
  __swift_project_value_buffer(v11, qword_28027C970);
  v12 = sub_2683CF7C8();
  v13 = sub_2683CFE78();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2680EB000, v12, v13, "NotebookMessageBuilder: Could not create Message class.", v14, 2u);
    MEMORY[0x26D617A40](v14, -1, -1);
  }

  return 0;
}

void *sub_2682194A0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_268218F28();
  *a1 = result;
  return result;
}

uint64_t INFERENCESchemaINFERENCENotebookAppSelectionGroundTruthGenerated.description.getter()
{
  v1 = v0;
  v2 = 1162760014;
  OUTLINED_FUNCTION_4_25();
  sub_2683D0178();
  OUTLINED_FUNCTION_3_26();
  MEMORY[0x26D616690](0xD00000000000003BLL);
  v3 = [v0 inferenceNotebookAppSelectionTrainingAppIndependentSignals];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 description];

    v6 = sub_2683CFA78();
    v8 = v7;
  }

  else
  {
    v8 = 0xE400000000000000;
    v6 = 1162760014;
  }

  MEMORY[0x26D616690](v6, v8);

  MEMORY[0x26D616690](0x6E6570656420200ALL, 0xEF203D20746E6564);
  v9 = sub_268219DA8(v1);
  if (v9)
  {
    v10 = v9;
    v11 = sub_268129504(0, &qword_28024FA28, 0x277D582F8);
    v2 = MEMORY[0x26D6167A0](v10, v11);
    v13 = v12;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  MEMORY[0x26D616690](v2, v13);

  MEMORY[0x26D616690](32010, 0xE200000000000000);
  return v15;
}

uint64_t INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals.description.getter()
{
  v1 = v0;
  OUTLINED_FUNCTION_4_25();
  sub_2683D0178();
  MEMORY[0x26D616690](0xD00000000000003ELL, 0x80000002683FF1F0);
  v2 = [v0 commonIndependent];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 description];

    v5 = sub_2683CFA78();
    v7 = v6;
  }

  else
  {
    v5 = 1162760014;
    v7 = 0xE400000000000000;
  }

  MEMORY[0x26D616690](v5, v7);

  OUTLINED_FUNCTION_3_26();
  MEMORY[0x26D616690](0xD000000000000010);
  v8 = [v1 isNotebookTitlePresent];
  v9 = v8 == 0;
  if (v8)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v9)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  MEMORY[0x26D616690](v10, v11);

  MEMORY[0x26D616690](0xD000000000000012, 0x80000002683FF250);
  v12 = [v1 isNotebookPayloadPresent];
  v13 = v12 == 0;
  if (v12)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v13)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x26D616690](v14, v15);

  OUTLINED_FUNCTION_3_26();
  MEMORY[0x26D616690](0xD000000000000010);
  v16 = [v1 isNotebookGroupPresent];
  v17 = v16 == 0;
  if (v16)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v17)
  {
    v19 = 0xE500000000000000;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  MEMORY[0x26D616690](v18, v19);

  MEMORY[0x26D616690](2099257354, 0xE400000000000000);
  return v21;
}

id sub_26821989C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_2683CFA68();

  return v5;
}

uint64_t INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals.description.getter()
{
  OUTLINED_FUNCTION_4_25();
  sub_2683D0178();
  OUTLINED_FUNCTION_3_26();
  MEMORY[0x26D616690](0xD000000000000043);
  v1 = [v0 commonDependent];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 description];

    v4 = sub_2683CFA78();
    v6 = v5;
  }

  else
  {
    v6 = 0xE400000000000000;
    v4 = 1162760014;
  }

  MEMORY[0x26D616690](v4, v6);

  MEMORY[0x26D616690](0x7D202020200ALL, 0xE600000000000000);
  return v8;
}

void sub_268219A20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB50, &qword_2683D4250);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  sub_2681340E8(a2, &v12 - v8, &qword_28024DB50, &qword_2683D4250);
  v10 = sub_2683CB598();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    v11 = sub_2683CB558();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  [v3 emitMessage:a1 isolatedStreamUUID:v11];
}

uint64_t sub_268219B40(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268219C38;

  return v7(a1);
}

uint64_t sub_268219C38()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  OUTLINED_FUNCTION_40();

  return v4();
}

void sub_268219D24(uint64_t a1, void *a2)
{
  sub_268129504(0, &qword_28024FA28, 0x277D582F8);
  v3 = sub_2683CFC98();

  [a2 setInferenceNotebookAppSelectionTrainingAppDependentSignals_];
}

uint64_t sub_268219DA8(void *a1)
{
  v1 = [a1 inferenceNotebookAppSelectionTrainingAppDependentSignals];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_268129504(0, &qword_28024FA28, 0x277D582F8);
  v3 = sub_2683CFCA8();

  return v3;
}

uint64_t type metadata accessor for AppSelectionTrainingLogger()
{
  result = qword_28024FA40;
  if (!qword_28024FA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268219E6C()
{
  result = sub_2683CB668();
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

uint64_t sub_268219F58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268219FA0()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_1_3(v5);
  *v6 = v7;
  v6[1] = sub_26821A04C;
  OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_13_21();

  return sub_268217BA8(v8, v9, v10, v11, v3);
}

uint64_t sub_26821A04C()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_26821A134()
{
  OUTLINED_FUNCTION_7();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_1_3(v3);
  *v4 = v5;
  v4[1] = sub_26821A994;
  v6 = OUTLINED_FUNCTION_1_34();

  return v7(v6);
}

uint64_t sub_26821A1D8()
{
  OUTLINED_FUNCTION_7();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_1_3(v3);
  *v4 = v5;
  v4[1] = sub_26821A04C;
  v6 = OUTLINED_FUNCTION_1_34();

  return v7(v6);
}

uint64_t sub_26821A27C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2683CCCA8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[5] = a2;
  sub_2683CCCC8();
  sub_2683CCCD8();
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  (*(v4 + 104))(v7, *MEMORY[0x277D601C0], v3);
  sub_2683CCCE8();
  (*(v4 + 8))(v7, v3);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_2683CCD88();
  v8 = sub_2683CCD78();
  sub_2682E3A3C(v8);

  sub_2683CCCF8();

  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_2683CCD08();
  __swift_destroy_boxed_opaque_existential_0(v15);
  __swift_destroy_boxed_opaque_existential_0(v16);
  __swift_destroy_boxed_opaque_existential_0(v17);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  type metadata accessor for NotesSignalValuesProcessor();
  v16[0] = swift_allocObject();
  sub_268219F58(&qword_28024FA60, type metadata accessor for NotesSignalValuesProcessor);
  sub_2683CCD48();

  v9 = v17[0];
  if (v17[0])
  {
    sub_268218080(v17[0]);
  }

  else
  {
    if (qword_28024C8E8 != -1)
    {
      swift_once();
    }

    v10 = sub_2683CF7E8();
    __swift_project_value_buffer(v10, qword_28027C970);
    v9 = sub_2683CF7C8();
    v11 = sub_2683CFE98();
    if (os_log_type_enabled(v9, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2680EB000, v9, v11, "No SELF message generated", v12, 2u);
      MEMORY[0x26D617A40](v12, -1, -1);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t sub_26821A5C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_2683CCCA8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[5] = a2;
  sub_2683CCCC8();
  sub_2683CCCD8();
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  (*(v4 + 104))(v7, *MEMORY[0x277D601D0], v3);
  sub_2683CCCE8();
  (*(v4 + 8))(v7, v3);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_2683CCD08();
  __swift_destroy_boxed_opaque_existential_0(v13);
  __swift_destroy_boxed_opaque_existential_0(v14);
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  type metadata accessor for RemindersSignalValuesProcessor();
  v13[0] = swift_allocObject();
  sub_268219F58(&qword_28024FA58, type metadata accessor for RemindersSignalValuesProcessor);
  sub_2683CCD48();

  v8 = v14[0];
  if (v14[0])
  {
    sub_268218080(v14[0]);
  }

  else
  {
    if (qword_28024C8E8 != -1)
    {
      swift_once();
    }

    v9 = sub_2683CF7E8();
    __swift_project_value_buffer(v9, qword_28027C970);
    v8 = sub_2683CF7C8();
    v10 = sub_2683CFE98();
    if (os_log_type_enabled(v8, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2680EB000, v8, v10, "No SELF message generated", v11, 2u);
      MEMORY[0x26D617A40](v11, -1, -1);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v15);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26821A8E4()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_1_3(v5);
  *v6 = v7;
  v6[1] = sub_26821A994;
  OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_13_21();

  return sub_268217704(v8, v9, v10, v11, v3);
}

uint64_t OUTLINED_FUNCTION_0_42()
{

  return swift_once();
}

uint64_t type metadata accessor for NotebookCommonCATs()
{
  result = qword_28024FA90;
  if (!qword_28024FA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26821AA80(uint64_t a1)
{
  v3 = *(MEMORY[0x277D55BF0] + 4);
  v7 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_268195F80;
  v5 = MEMORY[0x277D84F90];

  return v7(a1, 0xD000000000000017, 0x80000002683FF490, v5);
}

uint64_t sub_26821AB54(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_26821ABA8(a1, a2);
}

uint64_t sub_26821ABA8(uint64_t a1, uint64_t a2)
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

id sub_26821AD1C()
{
  v1 = [v0 _metadata];
  if (v1)
  {
    v2 = v1;
    sub_2683CEC88();
    v3 = sub_2683CEC58();
    if (v3)
    {
      sub_2683CEC28();

      sub_2683CBFE8();
      v5 = v4;

      if (v5)
      {
        v3 = sub_2683CFA68();
      }

      else
      {
        v3 = 0;
      }
    }

    [v2 setIntentId_];
  }

  return v7;
}

uint64_t type metadata accessor for AddTasksV2CATs()
{
  result = qword_28024FAA0;
  if (!qword_28024FAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26821AE8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26821AEA4()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = OUTLINED_FUNCTION_20();
  v3 = OUTLINED_FUNCTION_14_8(v2);
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  OUTLINED_FUNCTION_22_12(v4);
  OUTLINED_FUNCTION_1_15(MEMORY[0x277D55BF0]);

  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7_8(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_2_12(v6);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_26821AF90(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26821AFA8()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = OUTLINED_FUNCTION_20();
  v3 = OUTLINED_FUNCTION_14_8(v2);
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E010, &qword_2683D6078);
  OUTLINED_FUNCTION_22_12(v4);
  OUTLINED_FUNCTION_1_15(MEMORY[0x277D55BF0]);

  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7_8(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_2_12(v6);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_26821B094(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26821B0AC()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = OUTLINED_FUNCTION_20();
  v3 = OUTLINED_FUNCTION_14_8(v2);
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  OUTLINED_FUNCTION_22_12(v4);
  OUTLINED_FUNCTION_1_15(MEMORY[0x277D55BF0]);

  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7_8(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_2_12(v6);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_26821B198(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26821B1B0()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = OUTLINED_FUNCTION_20();
  v3 = OUTLINED_FUNCTION_14_8(v2);
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  OUTLINED_FUNCTION_22_12(v4);
  OUTLINED_FUNCTION_1_15(MEMORY[0x277D55BF0]);

  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7_8(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_2_12(v6);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_26821B29C()
{
  v0 = OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_268133EC8;
  v3 = OUTLINED_FUNCTION_18_9();

  return v5(v3, 0xD00000000000002BLL);
}

uint64_t sub_26821B350(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26821B368()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  v4 = OUTLINED_FUNCTION_14_8(v3);
  v5 = OUTLINED_FUNCTION_15_16(v4, xmmword_2683D1EC0);
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

uint64_t sub_26821B450()
{
  v0 = OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_18_9();

  return v5(v3, 0xD00000000000003ELL);
}

uint64_t sub_26821B504()
{
  v0 = OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_18_9();

  return v5(v3, 0xD00000000000003CLL);
}

uint64_t sub_26821B5B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26821B5D0()
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

uint64_t sub_26821B6B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26821B6D0()
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

uint64_t sub_26821B7B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26821B7D0()
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

uint64_t sub_26821B8B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26821B8D0()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  v4 = OUTLINED_FUNCTION_14_8(v3);
  v5 = OUTLINED_FUNCTION_15_16(v4, xmmword_2683D1EC0);
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

uint64_t sub_26821B9B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26821B9D0()
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

uint64_t sub_26821BAB8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26821BAD0()
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

uint64_t sub_26821BBB8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26821BBD0()
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

uint64_t sub_26821BCB8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26821BCD0()
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

uint64_t sub_26821BDB8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_26821BE0C(a1, a2);
}

uint64_t sub_26821BE0C(uint64_t a1, uint64_t a2)
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

uint64_t OUTLINED_FUNCTION_15_16(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x746361746E6F63;
  a1[2].n128_u64[1] = 0xE700000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_22_12(uint64_t result)
{
  *(v2 + 72) = result;
  *(v2 + 48) = v1;
  return result;
}

uint64_t sub_26821BFB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v440 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D280, &qword_2683D20F8);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v439 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D288, &qword_2683D2100);
  OUTLINED_FUNCTION_23(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  v438 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D290, &qword_2683D2108);
  OUTLINED_FUNCTION_23(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_0();
  v437 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2A0, &qword_2683D2118);
  OUTLINED_FUNCTION_23(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_0();
  v436 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2A8, &qword_2683D2120);
  OUTLINED_FUNCTION_23(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5_0();
  v435 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2B0, &qword_2683D2128);
  OUTLINED_FUNCTION_23(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5_0();
  v447 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2C0, &qword_2683D2138);
  OUTLINED_FUNCTION_23(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_5_0();
  v446 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2D0, &qword_2683D2148);
  OUTLINED_FUNCTION_23(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_5_0();
  v445 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2D8, &qword_2683D2150);
  OUTLINED_FUNCTION_23(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_5_0();
  v444 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FAB0, &qword_2683DDDC8);
  OUTLINED_FUNCTION_23(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FAB8, &qword_2683DDDD0);
  OUTLINED_FUNCTION_23(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2E0, &qword_2683D2158);
  v59 = OUTLINED_FUNCTION_23(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_2_1();
  v430 = v62;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_6_0(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2F0, &qword_2683D2160);
  OUTLINED_FUNCTION_23(v65);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2F8, &qword_2683D2168);
  OUTLINED_FUNCTION_23(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D300, &qword_2683D2170);
  OUTLINED_FUNCTION_23(v75);
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D308, &qword_2683D2178);
  OUTLINED_FUNCTION_23(v80);
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D310, &qword_2683D2180);
  OUTLINED_FUNCTION_23(v85);
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D328, &qword_2683D2198);
  v91 = OUTLINED_FUNCTION_23(v90);
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_2_1();
  v432 = v94;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_6_0(v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D320, &qword_2683D2190);
  OUTLINED_FUNCTION_23(v97);
  v99 = *(v98 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_5_0();
  v434 = v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FAC0, &qword_2683DDDD8);
  OUTLINED_FUNCTION_23(v102);
  v104 = *(v103 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v106);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FAC8, &qword_2683DDDE0);
  v108 = OUTLINED_FUNCTION_23(v107);
  v110 = *(v109 + 64);
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_2_1();
  v423 = v111;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_6_0(v113);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FAD0, &qword_2683DDDE8);
  OUTLINED_FUNCTION_23(v114);
  v116 = *(v115 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v118);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FAD8, &qword_2683DDDF0);
  OUTLINED_FUNCTION_23(v119);
  v121 = *(v120 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v123);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FAE0, &qword_2683DDDF8);
  OUTLINED_FUNCTION_23(v124);
  v126 = *(v125 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v128);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FAE8, &qword_2683DDE00);
  OUTLINED_FUNCTION_23(v129);
  v131 = *(v130 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v133);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FAF0, &qword_2683DDE08);
  OUTLINED_FUNCTION_23(v134);
  v136 = *(v135 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v138);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FAF8, &qword_2683DDE10);
  OUTLINED_FUNCTION_23(v139);
  v141 = *(v140 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v142);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v143);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FB00, &qword_2683DDE18);
  v145 = OUTLINED_FUNCTION_23(v144);
  v147 = *(v146 + 64);
  MEMORY[0x28223BE20](v145);
  OUTLINED_FUNCTION_2_1();
  v424 = v148;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v149);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_6_0(v150);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FB08, &qword_2683DDE20);
  OUTLINED_FUNCTION_23(v151);
  v153 = *(v152 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v154);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FB10, &qword_2683DDE28);
  OUTLINED_FUNCTION_23(v155);
  v157 = *(v156 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v158);
  v160 = &v419 - v159;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FB18, &unk_2683DDE30);
  OUTLINED_FUNCTION_23(v161);
  v163 = *(v162 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v164);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D330, &qword_2683D21A0);
  v166 = OUTLINED_FUNCTION_23(v165);
  v168 = *(v167 + 64);
  MEMORY[0x28223BE20](v166);
  OUTLINED_FUNCTION_2_1();
  v454 = v169;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v170);
  v172 = &v419 - v171;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D338, &qword_2683D21A8);
  v174 = OUTLINED_FUNCTION_23(v173);
  v176 = *(v175 + 64);
  MEMORY[0x28223BE20](v174);
  OUTLINED_FUNCTION_2_1();
  v442 = v177;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v178);
  v180 = &v419 - v179;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D298, &qword_2683D2110);
  v182 = OUTLINED_FUNCTION_23(v181);
  v184 = *(v183 + 64);
  MEMORY[0x28223BE20](v182);
  OUTLINED_FUNCTION_2_1();
  v441 = v185;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v186);
  v188 = &v419 - v187;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2B8, &qword_2683D2130);
  v190 = OUTLINED_FUNCTION_23(v189);
  v192 = *(v191 + 64);
  MEMORY[0x28223BE20](v190);
  OUTLINED_FUNCTION_2_1();
  v449 = v193;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v194);
  v196 = &v419 - v195;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2C8, &qword_2683D2140);
  v198 = OUTLINED_FUNCTION_23(v197);
  v200 = *(v199 + 64);
  MEMORY[0x28223BE20](v198);
  OUTLINED_FUNCTION_2_1();
  v451 = v201;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v202);
  v204 = &v419 - v203;
  v205 = sub_2683CEAB8();
  v452 = v204;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_11_23(v206, v207, v208, v205);
  v209 = sub_2683CEA28();
  v450 = v196;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_11_23(v210, v211, v212, v209);
  sub_2683CE708();
  v448 = v188;
  OUTLINED_FUNCTION_4_0();
  v421 = v213;
  OUTLINED_FUNCTION_11_23(v214, v215, v216, v213);
  v217 = sub_2683CE658();
  v443 = v180;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_11_23(v218, v219, v220, v217);
  sub_2683CEA48();
  v453 = v172;
  OUTLINED_FUNCTION_4_0();
  v429 = v221;
  __swift_storeEnumTagSinglePayload(v222, v223, v224, v221);
  if (sub_2683CDD58())
  {
    sub_2683CDB28();
    OUTLINED_FUNCTION_13_22();

    sub_2683CEAA8();
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v225, v226, v227, v228);
    OUTLINED_FUNCTION_9_0();
    sub_2683CEA98();
    OUTLINED_FUNCTION_8_22();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v229, v230, v231, v205);
    OUTLINED_FUNCTION_10_16();
    sub_26812DA84(v232, v233, v234, v235);
  }

  if (sub_2683CDD58())
  {
    v236 = sub_2683CDB68();

    if (v236)
    {
      sub_2683CDC68();
      OUTLINED_FUNCTION_13_22();

      v237 = sub_2683CEA08();
      OUTLINED_FUNCTION_0_2(v160, v238, v239, v237);
      sub_2683CEA18();
      OUTLINED_FUNCTION_4_0();
      __swift_storeEnumTagSinglePayload(v240, v241, v242, v243);
      OUTLINED_FUNCTION_9_0();
      sub_2683CE9F8();
      OUTLINED_FUNCTION_8_22();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v244, v245, v246, v209);
      OUTLINED_FUNCTION_10_16();
      sub_26812DA84(v247, v248, v249, v250);
    }
  }

  if (sub_2683CDD58())
  {
    v251 = sub_2683CDB78();

    if (v251)
    {
      sub_2683CDC68();
      v253 = v252;

      if (v253)
      {
        if (sub_2683CDD58() && (sub_2683CDB58(), v255 = v254, , v255))
        {
          v420 = v217;
          v256 = sub_2683CE748();
          OUTLINED_FUNCTION_4_0();
          __swift_storeEnumTagSinglePayload(v257, v258, v259, v256);
          if (sub_2683CDD58())
          {
            v260 = sub_2683CDB38();

            if (v260)
            {
              sub_2683CDC68();
              OUTLINED_FUNCTION_13_22();

              sub_2683CE738();
              OUTLINED_FUNCTION_4_0();
              __swift_storeEnumTagSinglePayload(v261, v262, v263, v264);
              OUTLINED_FUNCTION_9_0();
              sub_2683CE728();
              sub_26812D9E0(v427, &qword_28024FB00, &qword_2683DDE18);
              OUTLINED_FUNCTION_10_0();
              __swift_storeEnumTagSinglePayload(v265, v266, v267, v256);
              OUTLINED_FUNCTION_10_16();
              sub_26812DA84(v268, v269, v270, v271);
            }
          }

          v272 = sub_2683CE4C8();
          OUTLINED_FUNCTION_0_2(v422, v273, v274, v272);
          sub_2683CE4D8();
          OUTLINED_FUNCTION_4_0();
          __swift_storeEnumTagSinglePayload(v275, v276, v277, v278);
          sub_2683CE4B8();
          sub_2683CE4E8();
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_11_23(v279, v280, v281, v282);
          sub_2683CE6B8();
          OUTLINED_FUNCTION_4_0();
          __swift_storeEnumTagSinglePayload(v283, v284, v285, v286);
          sub_2683CE6A8();
          sub_2683CE6C8();
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_11_23(v287, v288, v289, v290);
          v291 = sub_2683CE4F8();
          OUTLINED_FUNCTION_4_0();
          __swift_storeEnumTagSinglePayload(v292, v293, v294, v291);
          v295 = v427;
          sub_26812DA38(v427, v424, &qword_28024FB00, &qword_2683DDE18);
          OUTLINED_FUNCTION_4_0();
          OUTLINED_FUNCTION_11_23(v296, v297, v298, v291);
          sub_2683CE6E8();
          OUTLINED_FUNCTION_4_0();
          __swift_storeEnumTagSinglePayload(v299, v300, v301, v302);
          sub_2683CE6F8();
          sub_26812D9E0(v295, &qword_28024FB00, &qword_2683DDE18);
          OUTLINED_FUNCTION_8_22();
          OUTLINED_FUNCTION_10_0();
          __swift_storeEnumTagSinglePayload(v303, v304, v305, v421);
          OUTLINED_FUNCTION_10_16();
          sub_26812DA84(v306, v307, v308, v309);
          v217 = v420;
        }

        else
        {
        }
      }
    }
  }

  sub_2683CDD48();
  if (v310)
  {
    OUTLINED_FUNCTION_13_22();
    sub_2683CE648();
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v311, v312, v313, v314);
    OUTLINED_FUNCTION_9_0();
    sub_2683CE638();
    OUTLINED_FUNCTION_8_22();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v315, v316, v317, v217);
    OUTLINED_FUNCTION_10_16();
    sub_26812DA84(v318, v319, v320, v321);
  }

  v434 = v2;
  if (sub_2683CDD58())
  {
    v322 = sub_2683CDB48();

    if (v322)
    {
      v323 = sub_2683CE528();
      OUTLINED_FUNCTION_4_0();
      __swift_storeEnumTagSinglePayload(v324, v325, v326, v323);
      if (sub_2683CDC58())
      {
        sub_2683CD6D8();
        OUTLINED_FUNCTION_13_22();

        v327 = sub_2683CE798();
        OUTLINED_FUNCTION_0_2(v425, v328, v329, v327);
        sub_2683CE788();
        OUTLINED_FUNCTION_4_0();
        __swift_storeEnumTagSinglePayload(v330, v331, v332, v333);
        OUTLINED_FUNCTION_9_0();
        sub_2683CE778();
        sub_2683CE7A8();
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_11_23(v334, v335, v336, v337);
        v338 = sub_2683CE518();
        OUTLINED_FUNCTION_0_2(v426, v339, v340, v338);
        sub_2683CEBF8();
        OUTLINED_FUNCTION_4_0();
        __swift_storeEnumTagSinglePayload(v341, v342, v343, v344);
        sub_2683CE508();
        OUTLINED_FUNCTION_8_22();
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v345, v346, v347, v323);
        OUTLINED_FUNCTION_10_16();
        sub_26812DA84(v348, v349, v350, v351);
      }

      v352 = sub_2683CE8D8();
      v353 = v431;
      OUTLINED_FUNCTION_4_0();
      __swift_storeEnumTagSinglePayload(v354, v355, v356, v352);
      sub_2683CDC68();
      if (v357)
      {
        OUTLINED_FUNCTION_13_22();
        v358 = sub_2683CE8B8();
        OUTLINED_FUNCTION_0_2(v428, v359, v360, v358);
        sub_2683CE8C8();
        OUTLINED_FUNCTION_4_0();
        __swift_storeEnumTagSinglePayload(v361, v362, v363, v364);
        OUTLINED_FUNCTION_9_0();
        sub_2683CE8A8();
        sub_26812D9E0(v353, &qword_28024D2E0, &qword_2683D2158);
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v365, v366, v367, v352);
        OUTLINED_FUNCTION_10_16();
        sub_26812DA84(v368, v369, v370, v371);
      }

      OUTLINED_FUNCTION_10_16();
      sub_26812DA38(v372, v373, v374, v375);
      v376 = v433;
      sub_26812DA38(v433, v432, &qword_28024D328, &qword_2683D2198);
      sub_2683CEA38();

      sub_26812D9E0(v353, &qword_28024D2E0, &qword_2683D2158);
      sub_26812D9E0(v376, &qword_28024D328, &qword_2683D2198);
      OUTLINED_FUNCTION_8_22();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v377, v378, v379, v429);
      OUTLINED_FUNCTION_10_16();
      sub_26812DA84(v380, v381, v382, v383);
    }
  }

  v384 = sub_2683CEA78();
  OUTLINED_FUNCTION_0_2(v444, v385, v386, v384);
  sub_2683CEA88();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v387, v388, v389, v390);
  sub_26812DA38(v452, v451, &qword_28024D2C8, &qword_2683D2140);
  sub_2683CEA58();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v391, v392, v393, v394);
  sub_26812DA38(v450, v449, &qword_28024D2B8, &qword_2683D2130);
  sub_2683CEAC8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v395, v396, v397, v398);
  sub_26812DA38(v453, v454, &qword_28024D330, &qword_2683D21A0);
  v399 = sub_2683CEC08();
  OUTLINED_FUNCTION_0_2(v435, v400, v401, v399);
  sub_2683CEB88();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v402, v403, v404, v405);
  sub_26812DA38(v448, v441, &qword_28024D298, &qword_2683D2110);
  v406 = sub_2683CE6D8();
  OUTLINED_FUNCTION_0_2(v437, v407, v408, v406);
  sub_2683CE7C8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v409, v410, v411, v412);
  v413 = v443;
  sub_26812DA38(v443, v442, &qword_28024D338, &qword_2683D21A8);
  sub_2683CDD48();
  sub_2683CEA68();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v414, v415, v416, v417);
  sub_2683CEBC8();
  sub_26812D9E0(v453, &qword_28024D330, &qword_2683D21A0);
  sub_26812D9E0(v413, &qword_28024D338, &qword_2683D21A8);
  sub_26812D9E0(v448, &qword_28024D298, &qword_2683D2110);
  sub_26812D9E0(v450, &qword_28024D2B8, &qword_2683D2130);
  return sub_26812D9E0(v452, &qword_28024D2C8, &qword_2683D2140);
}

uint64_t OUTLINED_FUNCTION_8_22()
{

  return sub_26812D9E0(v2, v0, v1);
}

void NotebookFlowProvider.init()(void *a1@<X8>)
{
  a1[3] = &type metadata for NotebookFlowCreator;
  a1[4] = &off_287900FD8;
  a1[5] = sub_268372484;
  a1[6] = 0;
}

uint64_t NotebookFlowProvider.findFlowForX(parse:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2683CCC18();
  v5 = OUTLINED_FUNCTION_0_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v8 = sub_2683CCBA8();
  v9 = OUTLINED_FUNCTION_0_3(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_3();
  v16 = v15 - v14;
  v17 = v1[5];
  v18 = v1[6];
  v17(v48, a1, 0);
  sub_268167C34(v48, v47);
  if (v47[56] == 255)
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v21 = sub_2683CF7E8();
    __swift_project_value_buffer(v21, qword_28027C958);
    sub_268167C34(v48, v44);
    v22 = sub_2683CF7C8();
    v23 = sub_2683CFE78();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v39[0] = v25;
      *v24 = 136315138;
      sub_268167C34(v44, &v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v26 = sub_2683CFAD8();
      v28 = v27;
      sub_26812C310(v44, &qword_28024D460, &qword_2683D5050);
      v29 = sub_2681610A0(v26, v28, v39);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_2680EB000, v22, v23, "[NotebookFlowProvider] Got unexpected task of %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x26D617A40](v25, -1, -1);
      MEMORY[0x26D617A40](v24, -1, -1);
    }

    else
    {

      sub_26812C310(v44, &qword_28024D460, &qword_2683D5050);
    }

    sub_2683CBFA8();
  }

  else
  {
    sub_268167C34(v47, v44);
    switch(v46)
    {
      case 1:
        v36 = OUTLINED_FUNCTION_0_43();
        v37(v36);
        OUTLINED_FUNCTION_4_26();
        OUTLINED_FUNCTION_3_27();
        sub_2681905D4();
        goto LABEL_15;
      case 2:
        v32 = OUTLINED_FUNCTION_0_43();
        v33(v32);
        OUTLINED_FUNCTION_4_26();
        OUTLINED_FUNCTION_3_27();
        sub_2681907EC();
        goto LABEL_15;
      case 3:
        v34 = OUTLINED_FUNCTION_0_43();
        v35(v34);
        OUTLINED_FUNCTION_4_26();
        OUTLINED_FUNCTION_3_27();
        sub_268190B20();
        goto LABEL_15;
      case 4:
        v30 = OUTLINED_FUNCTION_0_43();
        v31(v30);
        OUTLINED_FUNCTION_4_26();
        OUTLINED_FUNCTION_3_27();
        sub_268190E7C();
        goto LABEL_15;
      case 5:
        v40 = v44[0];
        v41 = v44[1];
        v42 = v44[2];
        v43 = v45;
        __swift_project_boxed_opaque_existential_1(v2, v2[3]);
        sub_2681911A8();
        sub_268193C1C(&v40);
        goto LABEL_18;
      case 6:
        sub_268128148(v44, &v40);
        __swift_project_boxed_opaque_existential_1(v2, v2[3]);
        sub_26813CA00(&v40, v39);
        sub_2681913CC();
        sub_26812C310(v39, &qword_28024E3C0, &qword_2683D6990);
        goto LABEL_16;
      case 7:
        __swift_project_boxed_opaque_existential_1(v2, v2[3]);
        *&v42 = 0;
        v40 = 0u;
        v41 = 0u;
        sub_2681913CC();
        sub_26812C310(&v40, &qword_28024E3C0, &qword_2683D6990);
LABEL_18:
        sub_2683CBFC8();

        break;
      default:
        v19 = OUTLINED_FUNCTION_0_43();
        v20(v19);
        OUTLINED_FUNCTION_4_26();
        OUTLINED_FUNCTION_3_27();
        sub_268190128();
LABEL_15:
        (*(v11 + 8))(v16, v8);
LABEL_16:
        sub_2683CBFC8();

        __swift_destroy_boxed_opaque_existential_0(&v40);
        break;
    }
  }

  sub_26812C310(v48, &qword_28024D460, &qword_2683D5050);
  return sub_26812C310(v47, &qword_28024D460, &qword_2683D5050);
}

uint64_t NotebookFlowProvider.makeFlowFor(parse:)(uint64_t a1)
{
  v2 = sub_2683CBFD8();
  v3 = OUTLINED_FUNCTION_0_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v10 = v9 - v8;
  NotebookFlowProvider.findFlowForX(parse:)(a1);
  v11 = sub_2683CBFB8();
  (*(v5 + 8))(v10, v2);
  return v11;
}

uint64_t OUTLINED_FUNCTION_0_43()
{
  sub_268128148((v0 + 120), v0 + 48);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v4 = *(v1 + 16);
  return v2;
}

uint64_t OUTLINED_FUNCTION_4_26()
{

  return MEMORY[0x2821BBBD8](v0);
}

id sub_26821DC2C()
{
  type metadata accessor for SiriNotebookFrameworkBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_28027C938 = result;
  return result;
}

uint64_t sub_26821DCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B3F8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_268195F80;

  return MEMORY[0x2821B9CD8](a1, a2, a3);
}

uint64_t type metadata accessor for CreateNoteShim.Wrapper()
{
  result = qword_28024FB20;
  if (!qword_28024FB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26821DDC8()
{
  result = sub_2683CB668();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26821DE4C()
{
  v0 = sub_2683D0408();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26821DE98(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x746E65746E6F63;
      break;
    case 2:
      result = 0x7265646C6F66;
      break;
    case 3:
      result = 7368801;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26821DF0C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_2681EA238();
}

uint64_t sub_26821DF30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26821DE4C();
  *a2 = result;
  return result;
}

uint64_t sub_26821DF60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26821DE98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_26821E008()
{
  v1 = v0;
  v2 = *(v0 + *(type metadata accessor for CreateNoteShim.Wrapper() + 20));
  LOBYTE(v28) = 0;
  OUTLINED_FUNCTION_0_44();
  v5 = v4;
  if (v4)
  {
    sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
    v3 = sub_26835E5F8();
    v5 = v3;
  }

  LOBYTE(v28) = 1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_44();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    sub_268129504(0, &qword_28024CDC0, 0x277CD4250);
    sub_2682039EC(v1, v8, v9);
    v10 = sub_2681807A0();
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v28) = 2;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_44();
  if (v11)
  {
    sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
    v12 = sub_26835E5F8();
  }

  else
  {
    v12 = 0;
  }

  sub_268129504(0, &qword_28024CDB0, 0x277CD3B30);
  v13 = sub_268128E6C(v5, v10, v12);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v14 = sub_2683CF7E8();
  __swift_project_value_buffer(v14, qword_28027C958);
  v15 = v13;
  v16 = sub_2683CF7C8();
  v17 = sub_2683CFE98();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136315138;
    v20 = v15;
    v21 = [v20 description];
    v22 = sub_2683CFA78();
    v24 = v23;

    v25 = sub_2681610A0(v22, v24, &v28);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_2680EB000, v16, v17, "⚙️ [CreateNoteShimWrapper] made intent: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v26 = sub_26821AD1C();
  return v26;
}

uint64_t sub_26821E37C(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v58 = sub_2683CF958();
  v3 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2683CF928();
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_2683CF948();
  v14 = OUTLINED_FUNCTION_0_3(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v56 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v59 = &v53 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v53 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = (&v53 - v26);
  v28 = *(v16 + 16);
  v28(&v53 - v26, a1, v13);
  if ((*(v16 + 88))(v27, v13) == *MEMORY[0x277D72A58])
  {
    (*(v16 + 96))(v27, v13);
    v29 = *v27;
    v30 = swift_projectBox();
    (*(v8 + 16))(v12, v30, v5);
    if ((*(v8 + 88))(v12, v5) == *MEMORY[0x277D729B8])
    {
      (*(v8 + 96))(v12, v5);
      v31 = *v12;
      v32 = v12[1];

      return v31;
    }

    (*(v8 + 8))(v12, v5);
  }

  else
  {
    (*(v16 + 8))(v27, v13);
  }

  v33 = v59;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v34 = sub_2683CF7E8();
  __swift_project_value_buffer(v34, qword_28027C958);
  v28(v25, a1, v13);
  v28(v33, a1, v13);
  v35 = sub_2683CF7C8();
  v36 = sub_2683CFE78();
  if (os_log_type_enabled(v35, v36))
  {
    v54 = v36;
    v37 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v60 = v53;
    *v37 = 136315650;
    v38 = 0xE300000000000000;
    v39 = 7368801;
    switch(v55)
    {
      case 1:
        v38 = 0xE500000000000000;
        v39 = 0x656C746974;
        break;
      case 2:
        v38 = 0xE900000000000065;
        v39 = 0x6C7469547473696CLL;
        break;
      case 3:
        v38 = 0xEE00726569666974;
        v39 = 0x6E6564497473696CLL;
        break;
      case 4:
        v38 = 0xED0000797265636FLL;
        v39 = 0x724773497473696CLL;
        break;
      case 5:
        v38 = 0xE400000000000000;
        v39 = 1701669236;
        break;
      case 6:
        v38 = 0xE800000000000000;
        v39 = 0x6E6F697461636F6CLL;
        break;
      case 7:
        v38 = 0x80000002683FCFB0;
        v39 = 0xD00000000000001ALL;
        break;
      default:
        break;
    }

    v41 = sub_2681610A0(v39, v38, &v60);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    sub_2683CF938();
    v42 = sub_2683CFAD8();
    v44 = v43;
    v45 = *(v16 + 8);
    v45(v25, v13);
    v46 = sub_2681610A0(v42, v44, &v60);

    *(v37 + 14) = v46;
    *(v37 + 22) = 2080;
    v47 = v59;
    v28(v56, v59, v13);
    v48 = sub_2683CFAD8();
    v50 = v49;
    v45(v47, v13);
    v51 = sub_2681610A0(v48, v50, &v60);

    *(v37 + 24) = v51;
    _os_log_impl(&dword_2680EB000, v35, v54, "Shim parameter %s type mismatch. Expected string, got: %s - %s", v37, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v40 = *(v16 + 8);
    v40(v33, v13);
    v40(v25, v13);
  }

  return 0;
}

uint64_t sub_26821E9C4(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = sub_2683CF958();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2683CF928();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_2683CF948();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v52 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v55 = &v49 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = (&v49 - v21);
  v54 = *(v12 + 16);
  v54(&v49 - v21, a1, v11);
  if ((*(v12 + 88))(v22, v11) == *MEMORY[0x277D72A58])
  {
    (*(v12 + 96))(v22, v11);
    v23 = *v22;
    v24 = swift_projectBox();
    (*(v7 + 16))(v10, v24, v6);
    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277D729B8])
    {
      (*(v7 + 96))(v10, v6);
      v25 = *v10;
      v26 = v10[1];

      return v25;
    }

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v12 + 8))(v22, v11);
  }

  v27 = v55;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v28 = sub_2683CF7E8();
  __swift_project_value_buffer(v28, qword_28027C958);
  v29 = v54;
  v54(v20, a1, v11);
  v29(v27, a1, v11);
  v30 = sub_2683CF7C8();
  v31 = sub_2683CFE78();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v56 = v50;
    *v32 = 136315650;
    v33 = 0xE500000000000000;
    v34 = 0x656C746974;
    switch(v51)
    {
      case 1:
        v33 = 0xE700000000000000;
        v34 = 0x746E65746E6F63;
        break;
      case 2:
        v33 = 0xE600000000000000;
        v34 = 0x7265646C6F66;
        break;
      case 3:
        v33 = 0xE300000000000000;
        v34 = 7368801;
        break;
      default:
        break;
    }

    v36 = sub_2681610A0(v34, v33, &v56);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    sub_2683CF938();
    v37 = sub_2683CFAD8();
    v39 = v38;
    v40 = *(v12 + 8);
    v40(v20, v11);
    v41 = sub_2681610A0(v37, v39, &v56);

    *(v32 + 14) = v41;
    *(v32 + 22) = 2080;
    v42 = v55;
    v54(v52, v55, v11);
    v43 = sub_2683CFAD8();
    v45 = v44;
    v40(v42, v11);
    v46 = sub_2681610A0(v43, v45, &v56);

    *(v32 + 24) = v46;
    _os_log_impl(&dword_2680EB000, v30, v31, "Shim parameter %s type mismatch. Expected string, got: %s - %s", v32, 0x20u);
    v47 = v50;
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v47, -1, -1);
    MEMORY[0x26D617A40](v32, -1, -1);
  }

  else
  {

    v35 = *(v12 + 8);
    v35(v27, v11);
    v35(v20, v11);
  }

  return 0;
}

_BYTE *storeEnumTagSinglePayload for CreateNoteShim.Parameters.ParameterName(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26821F0DC()
{
  result = qword_28024FB30;
  if (!qword_28024FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024FB30);
  }

  return result;
}

void OUTLINED_FUNCTION_0_44()
{

  sub_26839AF18();
}

uint64_t type metadata accessor for Snippet.ReminderCompose()
{
  result = qword_28024FB60;
  if (!qword_28024FB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Snippet.ReminderCompose.isEdit.setter(char a1)
{
  result = type metadata accessor for Snippet.ReminderCompose();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t Snippet.ReminderCompose.init(reminder:isEdit:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_26821F2C8(a1, a3);
  result = type metadata accessor for Snippet.ReminderCompose();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_26821F2C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.Reminder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26821F32C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265646E696D6572 && a2 == 0xE800000000000000;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746964457369 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

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

uint64_t sub_26821F3F0(char a1)
{
  if (a1)
  {
    return 0x746964457369;
  }

  else
  {
    return 0x7265646E696D6572;
  }
}

uint64_t sub_26821F42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26821F32C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26821F454(uint64_t a1)
{
  v2 = sub_26821F668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26821F490(uint64_t a1)
{
  v2 = sub_26821F668();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.ReminderCompose.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FB38, &qword_2683DE058);
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26821F668();
  sub_2683D0718();
  v18[15] = 0;
  type metadata accessor for Snippet.Reminder(0);
  OUTLINED_FUNCTION_1_35();
  sub_26821FB7C(v14, v15);
  sub_2683D0548();
  if (!v2)
  {
    v16 = *(v3 + *(type metadata accessor for Snippet.ReminderCompose() + 20));
    v18[14] = 1;
    sub_2683D0528();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_26821F668()
{
  result = qword_28024FB40;
  if (!qword_28024FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024FB40);
  }

  return result;
}

uint64_t Snippet.ReminderCompose.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = type metadata accessor for Snippet.Reminder(0);
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FB48, &qword_2683DE060);
  v9 = OUTLINED_FUNCTION_0_3(v35);
  v33 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v32 - v13;
  v15 = type metadata accessor for Snippet.ReminderCompose();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26821F668();
  sub_2683D06F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v20;
  v23 = v33;
  v37 = 0;
  OUTLINED_FUNCTION_1_35();
  sub_26821FB7C(v24, v25);
  v26 = v34;
  sub_2683D04A8();
  v27 = v26;
  v28 = v22;
  sub_26821F2C8(v27, v22);
  v36 = 1;
  v29 = v35;
  v30 = sub_2683D0488();
  (*(v23 + 8))(v14, v29);
  *(v28 + *(v15 + 20)) = v30 & 1;
  sub_26821F990(v28, v32, type metadata accessor for Snippet.ReminderCompose);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_26821F9F0(v28, type metadata accessor for Snippet.ReminderCompose);
}

uint64_t sub_26821F990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26821F9F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26821FA88@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_0_45();
  sub_26821F990(v4, v6, v5);
  *(a2 + *(type metadata accessor for Snippet.ReminderCompose() + 20)) = a1;
  type metadata accessor for Snippet();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26821FB7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26821FBEC()
{
  result = type metadata accessor for Snippet.Reminder(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s14descr2878F8F29V15ReminderComposeV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26821FD40()
{
  result = qword_28024FB70;
  if (!qword_28024FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024FB70);
  }

  return result;
}

unint64_t sub_26821FD98()
{
  result = qword_28024FB78;
  if (!qword_28024FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024FB78);
  }

  return result;
}

unint64_t sub_26821FDF0()
{
  result = qword_28024FB80;
  if (!qword_28024FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024FB80);
  }

  return result;
}

uint64_t sub_26821FE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a3;
  v75 = a2;
  v76 = sub_2683CB6D8();
  v4 = OUTLINED_FUNCTION_0_3(v76);
  v82 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  v74 = v9 - v8;
  v10 = sub_2683CB718();
  v11 = OUTLINED_FUNCTION_0_3(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_3();
  v18 = v17 - v16;
  v19 = sub_2683CB698();
  v20 = OUTLINED_FUNCTION_0_3(v19);
  v79 = v21;
  v80 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_3();
  v73 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v77 = &v64 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F310, &unk_2683DB770);
  v29 = sub_2683CB798();
  OUTLINED_FUNCTION_0_3(v29);
  v31 = v30;
  v33 = *(v32 + 72);
  v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2683D1ED0;
  v36 = v35 + v34;
  v37 = *(v31 + 104);
  v37(v36, *MEMORY[0x277CC9988], v29);
  v37(v36 + v33, *MEMORY[0x277CC9998], v29);
  v37(v36 + 2 * v33, *MEMORY[0x277CC9968], v29);
  v38 = sub_2682D9570(v35);
  v81 = a1;
  v84 = a1;
  LOBYTE(v35) = sub_26822043C(sub_268220654, &v83, v38);

  if (v35)
  {
    return sub_2683CB738();
  }

  v40 = v79;
  v41 = *(v79 + 104);
  v42 = v73;
  v71 = *MEMORY[0x277CC9878];
  v72 = v79 + 104;
  v70 = v41;
  v41(v73);
  v43 = *(v13 + 104);
  v68 = *MEMORY[0x277CC9900];
  v69 = v13 + 104;
  v67 = v43;
  v43(v18);
  v44 = *MEMORY[0x277CC98E8];
  v45 = v82;
  v46 = *(v82 + 104);
  v47 = v13;
  v48 = v10;
  v49 = v74;
  v50 = v76;
  v66 = v82 + 104;
  v65 = v46;
  v46(v74, v44, v76);
  v51 = v77;
  sub_2683CB778();
  v52 = *(v45 + 8);
  v82 = v45 + 8;
  v64 = v52;
  v52(v49, v50);
  v53 = *(v47 + 8);
  v53(v18, v48);
  v54 = *(v40 + 8);
  v79 = v40 + 8;
  v55 = v54;
  v54(v42, v80);
  v56 = sub_2683CB528();
  if (__swift_getEnumTagSinglePayload(v51, 1, v56) == 1)
  {
    sub_268220674(v77);
    v57 = v73;
    v58 = v80;
    v70(v73, v71, v80);
    v67(v18, v68, v48);
    v59 = v74;
    v60 = v53;
    v61 = v18;
    v62 = v76;
    v65(v74, *MEMORY[0x277CC98F0], v76);
    sub_2683CB778();
    v64(v59, v62);
    v60(v61, v48);
    return v55(v57, v58);
  }

  else
  {
    v63 = v78;
    (*(*(v56 - 8) + 32))(v78, v77, v56);
    return __swift_storeEnumTagSinglePayload(v63, 0, 1, v56);
  }
}

uint64_t sub_26822043C(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v25 = a1;
  v26 = sub_2683CB798();
  v6 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v23 = v7 + 16;
  v24 = v7;
  v22 = (v7 + 8);
  v27 = a3;

  v16 = 0;
  while (v13)
  {
    v17 = v26;
LABEL_11:
    (*(v24 + 16))(v9, *(v27 + 48) + *(v24 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v17);
    v19 = v25(v9);
    if (v3)
    {
      (*v22)(v9, v17);

      return a2 & 1;
    }

    v20 = v19;
    v13 &= v13 - 1;
    result = (*v22)(v9, v17);
    if ((v20 & 1) == 0)
    {
      a2 = 0;
LABEL_15:

      return a2 & 1;
    }
  }

  v17 = v26;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      a2 = 1;
      goto LABEL_15;
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268220674(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2682206DC(char *a1, int a2)
{
  v100 = a2;
  v101 = sub_2683CCC68();
  v3 = OUTLINED_FUNCTION_0_3(v101);
  v99 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v98 = v8 - v7;
  v104 = sub_2683CCBD8();
  v9 = OUTLINED_FUNCTION_0_3(v104);
  v112 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_3();
  v111 = v14 - v13;
  v15 = sub_2683CC018();
  v16 = OUTLINED_FUNCTION_0_3(v15);
  v109 = v17;
  v110 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_1();
  v108 = v20;
  MEMORY[0x28223BE20](v21);
  v107 = &v96 - v22;
  v114 = sub_2683CE448();
  v23 = OUTLINED_FUNCTION_0_3(v114);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_1();
  v106 = v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v96 - v30;
  v32 = sub_2683CCC18();
  v33 = OUTLINED_FUNCTION_0_3(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_1();
  v102 = v38;
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v96 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v96 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v96 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = &v96 - v49;
  v51 = *(v35 + 16);
  v103 = a1;
  v52 = a1;
  v53 = v51;
  v51(&v96 - v49, v52, v32);
  v54 = (*(v35 + 88))(v50, v32);
  if (v54 == *MEMORY[0x277D5C128])
  {
    v53(v48, v50, v32);
    (*(v35 + 96))(v48, v32);
    v55 = v114;
    (*(v25 + 32))(v31, v48, v114);
    v56 = sub_268221028(v31);
    (*(v25 + 8))(v31, v55);
    goto LABEL_27;
  }

  v57 = v114;
  v113 = v50;
  v105 = v35;
  if (v54 == *MEMORY[0x277D5C158])
  {
    v53(v45, v113, v32);
    v35 = v105;
    v58 = *(v105 + 96);
    v112 = v32;
    v58(v45, v32);
    v59 = *&v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E970, &unk_2683D8990) + 48)];
    v60 = v25;
    v61 = v106;
    (*(v25 + 32))(v106, v45, v57);
    v62 = v107;
    sub_2683CCBE8();
    v64 = v108;
    v63 = v109;
    v65 = v110;
    (*(v109 + 104))(v108, *MEMORY[0x277D5B970], v110);
    v66 = sub_2681EB8EC(v62, v64);
    v67 = *(v63 + 8);
    v67(v64, v65);
    v67(v62, v65);
    if (v66)
    {
      (*(v60 + 8))(v61, v114);

      v56 = 1;
    }

    else
    {
      v56 = sub_268221028(v61);

      (*(v60 + 8))(v61, v114);
    }

    v32 = v112;
    v50 = v113;
    goto LABEL_27;
  }

  v68 = *MEMORY[0x277D5C150];
  v97 = v53;
  if (v54 != v68)
  {
    v35 = v105;
    v50 = v113;
    v77 = v48;
    if (v54 == *MEMORY[0x277D5C160])
    {
      v97(v48, v113, v32);
      (*(v35 + 96))(v48, v32);
      v79 = v98;
      v78 = v99;
      v80 = v101;
      (*(v99 + 32))(v98, v48, v101);
      v56 = sub_268221264(v79, v100 & 1);
      (*(v78 + 8))(v79, v80);
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  v53(v42, v113, v32);
  (*(v105 + 96))(v42, v32);
  v69 = v104;
  (*(v112 + 32))(v111, v42, v104);
  v70 = sub_2683CCBB8();
  v72 = v71;
  if (qword_28024CC68 != -1)
  {
    swift_once();
  }

  v73 = qword_2802540E0;
  v74 = unk_2802540E8;
  v115 = qword_2802540D0;
  v116 = *algn_2802540D8;

  MEMORY[0x26D616690](46, 0xE100000000000000);
  MEMORY[0x26D616690](v73, v74);
  if (v70 == v115 && v72 == v116)
  {

    v35 = v105;
    goto LABEL_24;
  }

  v76 = sub_2683D0598();

  v35 = v105;
  if (v76)
  {
LABEL_24:
    v93 = v69;
    v94 = v111;
    v56 = sub_2682211A8(v111);
    (*(v112 + 8))(v94, v93);
    v50 = v113;
    goto LABEL_27;
  }

  (*(v112 + 8))(v111, v69);
  v50 = v113;
  v77 = v48;
LABEL_19:
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v81 = sub_2683CF7E8();
  __swift_project_value_buffer(v81, qword_28027C958);
  v82 = v102;
  v83 = v97;
  v97(v102, v103, v32);
  v84 = sub_2683CF7C8();
  v85 = sub_2683CFE98();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v115 = v87;
    *v86 = 136315138;
    v83(v77, v82, v32);
    v88 = sub_2683CFAD8();
    v90 = v89;
    (*(v105 + 8))(v82, v32);
    v91 = sub_2681610A0(v88, v90, &v115);

    *(v86 + 4) = v91;
    v35 = v105;
    _os_log_impl(&dword_2680EB000, v84, v85, "CancelTask parse failed. Unsupported parse type: %s", v86, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v87);
    v92 = v87;
    v50 = v113;
    MEMORY[0x26D617A40](v92, -1, -1);
    MEMORY[0x26D617A40](v86, -1, -1);
  }

  else
  {

    (*(v35 + 8))(v82, v32);
  }

  v56 = 0;
LABEL_27:
  (*(v35 + 8))(v50, v32);
  return v56 & 1;
}

uint64_t sub_268221028(uint64_t a1)
{
  v2 = type metadata accessor for NotebookNLv3Intent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_3();
  v6 = v5 - v4;
  v7 = sub_2683CE448();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  if (qword_28024CB98 != -1)
  {
    swift_once();
  }

  sub_2681F54B0();
  sub_2683CD5C8();
  sub_2681BA080(v6);
  v8 = 1;
  v9 = 0;
  switch(v11)
  {
    case 2:
      goto LABEL_5;
    case 3:
      return v9 & 1;
    default:
      v8 = sub_2683D0598();
LABEL_5:

      v9 = v8;
      break;
  }

  return v9 & 1;
}

BOOL sub_2682211A8(uint64_t a1)
{
  v2 = sub_2683CCBD8();
  v3 = OUTLINED_FUNCTION_0_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  (*(v9 + 16))(v7 - v6, a1);
  sub_26834CD60(v8, &v11);
  return v11 == 2;
}

uint64_t sub_268221264(uint64_t a1, char a2)
{
  v3 = sub_2683CCDD8();
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  v11 = v10 - v9;
  sub_2683CCC58();
  v12 = sub_2683CCF78();
  (*(v6 + 8))(v11, v3);
  if (!v12)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v14 = sub_2683CF7E8();
    __swift_project_value_buffer(v14, qword_28027C958);
    v15 = sub_2683CF7C8();
    v16 = sub_2683CFE78();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2680EB000, v15, v16, "[CancelTask] Couldn't convert USO parse to dialog act", v17, 2u);
      MEMORY[0x26D617A40](v17, -1, -1);
    }

    return 0;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    if (a2)
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass() != 0;
      swift_unknownObjectRelease();
      return v13;
    }

    swift_unknownObjectRelease();
    return 0;
  }

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_268221454()
{
  v1 = sub_2683CCC18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  sub_2683CCB88();
  v7(v37, v5, 0);
  (*(v2 + 8))(v5, v1);
  sub_268167C34(v37, v36);
  if (v36[56] == 255)
  {
    goto LABEL_6;
  }

  sub_268167C34(v36, v32);
  if (v35 != 3)
  {
    if (v35 == 7)
    {
      v8 = vorrq_s8(v33, v34);
      if (!(*&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) | v32[2] | v32[1] | v32[0]))
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v24 = sub_2683CF7E8();
        __swift_project_value_buffer(v24, qword_28027C958);
        v25 = sub_2683CF7C8();
        v26 = sub_2683CFE98();
        if (OUTLINED_FUNCTION_45(v26))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_9_6(&dword_2680EB000, v27, v28, "[SFNI.FlowStrategy] returning .cancel()");
          OUTLINED_FUNCTION_25_0();
        }

        sub_2683CC298();
        goto LABEL_12;
      }
    }

    sub_26813A1A0(v32);
LABEL_6:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v9 = sub_2683CF7E8();
    __swift_project_value_buffer(v9, qword_28027C958);
    sub_268167C34(v37, v32);
    v10 = sub_2683CF7C8();
    v11 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31 = v13;
      *v12 = 136315138;
      sub_268167C34(v32, &v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v14 = sub_2683CFAD8();
      v16 = v15;
      sub_268167CA4(v32);
      v17 = sub_2681610A0(v14, v16, &v31);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_2680EB000, v10, v11, "[SFNI.FlowStrategy] unsupported task, ignoring: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_268167CA4(v32);
    }

    sub_2683CC2B8();
LABEL_12:
    sub_268167CA4(v37);
    return sub_268167CA4(v36);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v18 = sub_2683CF7E8();
  __swift_project_value_buffer(v18, qword_28027C958);
  v19 = sub_2683CF7C8();
  v20 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_45(v20))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_6(&dword_2680EB000, v21, v22, "[SFNI.FlowStrategy] returning .handle() for supported task");
    OUTLINED_FUNCTION_25_0();
  }

  sub_2683CC2A8();
  sub_268167CA4(v37);
  sub_26813A1A0(v32);
  return sub_268167CA4(v36);
}

uint64_t sub_268221844(uint64_t a1, uint64_t a2)
{
  v3[40] = a2;
  v3[41] = v2;
  v3[39] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26822185C()
{
  v24 = v2;
  v3 = *(v2 + 328);
  v4 = *(v3 + 48);
  (*(v3 + 40))(*(v2 + 312), 0);
  sub_268167C34(v2 + 16, v2 + 80);
  v5 = *(v2 + 136);
  v6 = (v2 + 80);
  if (v5 == 3)
  {
    sub_268128148(v6, v2 + 272);
    OUTLINED_FUNCTION_11_24();
    v22 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v2 + 336) = v9;
    *v9 = v2;
    v9[1] = sub_268221B7C;

    return v22(1, v0, v1);
  }

  else
  {
    if (v5 == 255)
    {
      sub_268167CA4(v6);
    }

    else
    {
      sub_26813A1A0(v6);
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v11 = sub_2683CF7E8();
    __swift_project_value_buffer(v11, qword_28027C958);
    sub_268167C34(v2 + 16, v2 + 144);
    v12 = sub_2683CF7C8();
    v13 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_45(v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      sub_268167C34(v2 + 144, v2 + 208);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v16 = sub_2683CFAD8();
      v18 = v17;
      sub_268167CA4(v2 + 144);
      v19 = sub_2681610A0(v16, v18, &v23);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_2680EB000, v12, v13, "[SFNI.FlowStrategy] Did not get searchForNotebookItems task from parse. Got: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_268167CA4(v2 + 144);
    }

    sub_26812C6B8();
    swift_allocError();
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 4;
    swift_willThrow();
    sub_268167CA4(v2 + 16);
    OUTLINED_FUNCTION_40();

    return v21();
  }
}

uint64_t sub_268221B7C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *(v2 + 336);
  v8 = *v1;
  *(v3 + 344) = v5;
  *(v3 + 352) = v0;

  if (v0)
  {
    v6 = sub_2681C2B24;
  }

  else
  {
    v6 = sub_268221C88;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_268221C88()
{
  OUTLINED_FUNCTION_11_24();
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v2 + 360) = v5;
  *v5 = v2;
  v5[1] = sub_268221D98;

  return (v7)(0, v0, v1);
}

uint64_t sub_268221D98()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *(v2 + 360);
  v8 = *v1;
  *(v3 + 368) = v5;
  *(v3 + 376) = v0;

  if (v0)
  {
    v6 = sub_2681C2B88;
  }

  else
  {
    v6 = sub_268221EA4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_268221EA4()
{
  v22 = v0;
  if (*(v0 + 320))
  {
    v1 = sub_268175B40(*(v0 + 344));
  }

  else
  {
    v1 = *(v0 + 368);
  }

  v2 = v1;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v3 = sub_2683CF7E8();
  __swift_project_value_buffer(v3, qword_28027C958);
  v4 = v2;
  v5 = sub_2683CF7C8();
  v6 = sub_2683CFE98();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 344);
  if (v7)
  {
    v20 = *(v0 + 368);
    v19 = *(v0 + 344);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v11 = v4;
    v12 = [v11 description];
    v13 = sub_2683CFA78();
    v15 = v14;

    v16 = sub_2681610A0(v13, v15, &v21);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_2680EB000, v5, v6, "[SFNI.FlowStrategy] Updated intent: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
  }

  sub_268167CA4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  OUTLINED_FUNCTION_37();

  return v17(v4);
}

uint64_t sub_2682220AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268132F90;

  return sub_268221844(a1, a2);
}

uint64_t sub_268222150(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268167A44;

  return sub_2681C2BF4(a1, a2);
}

unint64_t sub_2682221F8()
{
  result = qword_28024FB88;
  if (!qword_28024FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024FB88);
  }

  return result;
}

unint64_t sub_268222250()
{
  result = qword_28024FB90;
  if (!qword_28024FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024FB90);
  }

  return result;
}

unint64_t sub_2682222A8()
{
  result = qword_28024FB98[0];
  if (!qword_28024FB98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28024FB98);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_24()
{
  v1 = v0[38];
  __swift_project_boxed_opaque_existential_1(v0 + 34, v0[37]);
  result = v1 + 40;
  v3 = *(v1 + 40);
  return result;
}

uint64_t sub_2682223AC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2683CF7E8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2683CF7D8();
}

uint64_t sub_268222424()
{
  v0 = sub_2683CF7E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2683CF768();
  __swift_allocate_value_buffer(v5, qword_28027C9A0);
  __swift_project_value_buffer(v5, qword_28027C9A0);
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28027C958);
  (*(v1 + 16))(v4, v6, v0);
  return sub_2683CF748();
}

uint64_t sub_268222560@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for IdentifiableItem();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_2682225C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26822266C(v3, a2, a3);
  sub_268167C34(a1, v10);
  if (v11[24] == 255)
  {

    v6 = 1;
  }

  else
  {
    v8[0] = v10[0];
    v8[1] = v10[1];
    v9[0] = *v11;
    *(v9 + 9) = *&v11[9];
    v6 = (v5)(v8);
    sub_26813A1A0(v8);
  }

  return v6 & 1;
}

uint64_t (*sub_26822266C(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return sub_26822278C;
}

void sub_268222804(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v6 = *(v2 - 8) + 64;
    sub_26822785C();
    if (v5 <= 0x3F)
    {
      v7 = *(v4 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_2682228F8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_2683D00A8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_26822291C(void *a1@<X8>)
{
  v3 = *v1;
  if (*(*v1 + 16))
  {
    v5 = v3[4];
    v4 = v3[5];
    v7 = v3[6];
    v6 = v3[7];
    v8 = v3[8];

    v9 = v8;
    sub_26822821C(0, 1);
    *a1 = v5;
    a1[1] = v4;
    a1[2] = v7;
    a1[3] = v6;
    a1[4] = v9;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2682229A0()
{
  v1 = *v0;
  if (!sub_2683ABE58(*v0))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!sub_2683ABE58(v1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_2683ABE60(0, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) == 0)
  {
    v2 = *(v1 + 32);

    goto LABEL_5;
  }

LABEL_9:
  v2 = MEMORY[0x26D616C90](0, v1);
LABEL_5:
  result = sub_2683ABE58(v1);
  if (result)
  {
    sub_268228310(0, 1, sub_2682CC74C, sub_2682283CC);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268222A68()
{
  v1 = *v0;
  if (!sub_2683ABE58(*v0))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!sub_2683ABE58(v1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_2683ABE60(0, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) == 0)
  {
    v2 = *(v1 + 32);
    goto LABEL_5;
  }

LABEL_9:
  v2 = MEMORY[0x26D616C90](0, v1);
LABEL_5:
  v3 = v2;
  result = sub_2683ABE58(v1);
  if (result)
  {
    sub_268228310(0, 1, sub_2682CC74C, sub_2682284B4);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268222B2C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v4 = *(v3 + 40);
  if (v4)
  {
    v8 = *(v3 + 48);
    v9 = qword_28024C8E0;

    if (v9 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v10 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v10, qword_28027C958);

    v11 = sub_2683CF7C8();
    v12 = sub_2683CFE98();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26 = v14;
      *v13 = 136315138;
      sub_268129504(0, a2, a3);
      v15 = OUTLINED_FUNCTION_40_6();
      v16 = MEMORY[0x26D6167A0](v15);
      v18 = sub_2681610A0(v16, v17, &v26);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_2680EB000, v11, v12, "[GenericPaginatedReadingDelegate] Creating output action for introducing items: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    sub_2683CC5B8();
    OUTLINED_FUNCTION_42_8();
    v19 = swift_allocObject();
    v19[2] = v4;
    v19[3] = v8;
    v19[4] = a1;

    OUTLINED_FUNCTION_29_10();
    v20 = sub_2683CC5A8();
    sub_268228AC4(&qword_28024FD10, MEMORY[0x277D5BD80]);
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v21 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v21, qword_28027C958);
    v22 = sub_2683CF7C8();
    v23 = sub_2683CFE98();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_21_5();
      *v24 = 0;
      _os_log_impl(&dword_2680EB000, v22, v23, "[GenericPaginatedReadingDelegate] No output provider given for list introduction, adding no op action instead", v24, 2u);
      OUTLINED_FUNCTION_38();
    }

    type metadata accessor for NoOpAction();
    v20 = OUTLINED_FUNCTION_50_4();
    sub_268228AC4(&qword_28024FD08, type metadata accessor for NoOpAction);
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
  }

  return v20;
}

uint64_t sub_268222E00(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2681342AC;

  return v10(a1, a4);
}

void sub_268222F08(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v32 = a1;
  v31 = sub_2683CCB78();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D368, &unk_2683E3DC0);
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v30);
  v12 = &v23 - v11;
  v13 = sub_2682228F8(a2);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = v13;
    v25 = a2;
    v34 = MEMORY[0x277D84F90];
    sub_268390AD0();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v24 = v3;
      v14 = v34;
      v16 = v25;
      v17 = sub_2683ABE58(v25);
      v18 = 0;
      v26 = v16 & 0xFFFFFFFFFFFFFF8;
      v19 = (v5 + 16);
      v27 = v9 + 32;
      v28 = v16 & 0xC000000000000001;
      v29 = v17 & ~(v17 >> 63);
      while (v29 != v18)
      {
        if (v28)
        {
          v20 = MEMORY[0x26D616C90](v18, v16);
        }

        else
        {
          if (v18 >= *(v26 + 16))
          {
            goto LABEL_17;
          }

          v20 = *(v16 + 8 * v18 + 32);
        }

        v33 = v20;
        (*v19)(v8, v32, v31);
        sub_268129504(0, &qword_28024D350, 0x277CD3E00);
        sub_2683CC228();
        v34 = v14;
        v21 = *(v14 + 16);
        if (v21 >= *(v14 + 24) >> 1)
        {
          sub_268390AD0();
          v16 = v25;
          v14 = v34;
        }

        *(v14 + 16) = v21 + 1;
        (*(v9 + 32))(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v12, v30);
        if (v18 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_16;
        }

        if (v15 == ++v18)
        {
          v3 = v24;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    v22 = *(v3 + 80);
    (*(v3 + 72))(v14);
  }
}

void sub_268223210(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v32 = a1;
  v31 = sub_2683CCB78();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D360, &qword_2683E65A0);
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v30);
  v12 = &v23 - v11;
  v13 = sub_2682228F8(a2);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = v13;
    v25 = a2;
    v34 = MEMORY[0x277D84F90];
    sub_268390B50();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v24 = v3;
      v14 = v34;
      v16 = v25;
      v17 = sub_2683ABE58(v25);
      v18 = 0;
      v26 = v16 & 0xFFFFFFFFFFFFFF8;
      v19 = (v5 + 16);
      v27 = v9 + 32;
      v28 = v16 & 0xC000000000000001;
      v29 = v17 & ~(v17 >> 63);
      while (v29 != v18)
      {
        if (v28)
        {
          v20 = MEMORY[0x26D616C90](v18, v16);
        }

        else
        {
          if (v18 >= *(v26 + 16))
          {
            goto LABEL_17;
          }

          v20 = *(v16 + 8 * v18 + 32);
        }

        v33 = v20;
        (*v19)(v8, v32, v31);
        sub_268129504(0, &qword_280253310, 0x277CD4220);
        sub_2683CC228();
        v34 = v14;
        v21 = *(v14 + 16);
        if (v21 >= *(v14 + 24) >> 1)
        {
          sub_268390B50();
          v16 = v25;
          v14 = v34;
        }

        *(v14 + 16) = v21 + 1;
        (*(v9 + 32))(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v12, v30);
        if (v18 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_16;
        }

        if (v15 == ++v18)
        {
          v3 = v24;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    v22 = *(v3 + 80);
    (*(v3 + 72))(v14);
  }
}

void sub_268223518()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E6D0, &unk_2683DE610);
  v7 = OUTLINED_FUNCTION_23(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v66 = (&v63 - v10);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCD0, &qword_2683DE620) - 8);
  OUTLINED_FUNCTION_3_18();
  v13 = v12;
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v63 - v19;
  sub_2682288A0(v5, &v63 - v19);
  v21 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  sub_268228910(v20, v22 + v21);
  type metadata accessor for ClosureAction();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v2;
  v23[5] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E6D8, &unk_2683D7EC0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2683D1EC0;
  v25 = sub_268228AC4(&qword_28024FCE0, type metadata accessor for ClosureAction);
  *(v24 + 32) = v23;
  *(v24 + 40) = v25;
  v68 = v24;

  sub_2682C0458(v26);
  v27 = v68;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCD8, &qword_2683DE628);
  if (__swift_getEnumTagSinglePayload(v5, 1, v28) == 1 && *(v3 + 32) != 1)
  {
    v59 = sub_2683CC7B8();
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v59);
    v60 = sub_2683CC5E8();
    OUTLINED_FUNCTION_42_3(v60);
    sub_2683CC5D8();

    OUTLINED_FUNCTION_15_18();
    sub_268228AC4(v61, v62);
  }

  else
  {
    v29 = *(v3 + 56);
    v30 = *(v3 + 64);
    type metadata accessor for NotebookContinueReadingPromptStrategy();
    v31 = swift_allocObject();
    v31[2] = sub_2681B86A4;
    v31[3] = 0;
    v31[4] = v29;
    v31[5] = v30;

    v32 = sub_26836A168();
    v33 = OUTLINED_FUNCTION_32_3();
    sub_2682288A0(v33, v34);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v28);
    v65 = v27;
    if (EnumTagSinglePayload == 1)
    {
      sub_268228838(v18);
      v64 = 0;
    }

    else
    {
      v36 = &v18[*(v28 + 48)];
      v37 = *(v36 + 1);
      v64 = *v36;
      v38 = sub_2683CCB78();
      OUTLINED_FUNCTION_1(v38);
      (*(v39 + 8))(v18);
    }

    v40 = sub_2683CC5E8();
    sub_268228984();
    OUTLINED_FUNCTION_29_10();
    v41 = swift_allocError();
    *v42 = 0;
    sub_2681A1EA0(v41);

    OUTLINED_FUNCTION_15_18();
    sub_268228AC4(v43, v44);
    OUTLINED_FUNCTION_29_10();
    v45 = swift_allocError();
    *v46 = 1;
    sub_2681A1EA0(v45);

    v47 = sub_2683CBBB8();
    OUTLINED_FUNCTION_42_3(v47);
    v67 = sub_2683CBBA8();
    v68 = v32;
    v48 = sub_2683CBC48();
    OUTLINED_FUNCTION_42_3(v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCF0, &qword_2683DE630);
    sub_26818A0C8(&qword_28024FCF8, &qword_28024FCF0, &qword_2683DE630);
    v49 = sub_2683CBC38();
    v50 = v66;
    *v66 = v49;
    v51 = *MEMORY[0x277D5B898];
    v52 = sub_2683CBF98();
    OUTLINED_FUNCTION_1(v52);
    (*(v53 + 104))(v50, v51);
    v54 = *MEMORY[0x277D5BF50];
    v55 = sub_2683CC7B8();
    OUTLINED_FUNCTION_1(v55);
    (*(v56 + 104))(v50, v54, v55);
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v55);
    v57 = *(v40 + 48);
    v58 = *(v40 + 52);
    swift_allocObject();

    sub_2683CC5D8();
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268223B00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCD0, &qword_2683DE620);
  v5 = OUTLINED_FUNCTION_23(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  sub_2682288A0(a2, &v16 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCD8, &qword_2683DE628);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_268228838(v9);
    v11 = 0uLL;
  }

  else
  {
    v16 = *&v9[*(v10 + 48)];
    v12 = sub_2683CCB78();
    OUTLINED_FUNCTION_1(v12);
    (*(v13 + 8))(v9);
    v11 = v16;
  }

  v14 = *(a1 + 104);
  *(a1 + 104) = v11;
  return swift_unknownObjectRelease();
}

uint64_t sub_268223C14(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t *, void *), uint64_t a4, uint64_t a5)
{
  v18 = a2;
  v17 = a1;
  v8 = *(a5 + 16);
  result = swift_unknownObjectRetain();
  v10 = 0;
  v11 = 0;
  v12 = a5 + 8 * v8 + 24;
  while (1)
  {
    if (!(v8 + v10))
    {
      return OUTLINED_FUNCTION_69();
    }

    v13 = v10 ? v11 : v8;
    v11 = v13 - 1;
    if (__OFSUB__(v13, 1))
    {
      break;
    }

    v14 = *(v12 + 8 * v10);
    v16[0] = v13 - 1;
    v16[1] = v14;

    a3(v15, &v17, v16);

    result = swift_unknownObjectRelease();
    if (v5)
    {
      return OUTLINED_FUNCTION_69();
    }

    v17 = v15[0];
    v18 = v15[1];
    --v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_268223D00(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E6D0, &unk_2683DE610);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v42 - v8);
  v43 = a2;
  v10 = sub_268222B2C(a1, &qword_28024D350, 0x277CD3E00);
  v12 = v11;
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  if (v14 >= 1 && v13 < v14)
  {
    v16 = v10;
    sub_268224408(v14, v13, a1, sub_268390B10, &qword_28024D350, 0x277CD3E00, sub_268228760, &qword_28024FD00, &qword_2683DE638, sub_2682C071C, sub_2682C06F4);
    v18 = v17;

    v19 = sub_268224C58(v18);
    v20 = v14;
    if (v19)
    {
      v20 = sub_2682228F8(v19);
    }

    v21 = *(v18 + 16);
    MEMORY[0x28223BE20](v19);
    v38 = v22;
    v39 = &v43;
    v40 = v20;
    v41 = v14;
    v23 = sub_268223C14(0, 0, sub_2682287E0, (&v42 - 6), v18);
    v25 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E6D8, &unk_2683D7EC0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_2683D1EC0;
    *(v26 + 32) = v16;
    *(v26 + 40) = v12;
    if (v23)
    {
      *v9 = v23;
      v9[1] = v25;
      v27 = *MEMORY[0x277D5BF58];
      v28 = sub_2683CC7B8();
      (*(*(v28 - 8) + 104))(v9, v27, v28);
      v29 = v9;
      v30 = 0;
      v31 = v28;
    }

    else
    {
      v31 = sub_2683CC7B8();
      v29 = v9;
      v30 = 1;
    }

    __swift_storeEnumTagSinglePayload(v29, v30, 1, v31);
    v32 = sub_2683CC5E8();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v35 = sub_2683CC5D8();
    v36 = sub_268228AC4(&qword_28024E6F0, MEMORY[0x277D5BDD0]);
    *(v3 + 16) = v35;
    *(v3 + 24) = v36;

    return v3;
  }

  else
  {
    __break(1u);

    type metadata accessor for NotebookPaginatedConversationFlowSource();
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  return result;
}

uint64_t sub_268224084(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E6D0, &unk_2683DE610);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v42 - v8);
  v43 = a2;
  v10 = sub_268222B2C(a1, &qword_280253310, 0x277CD4220);
  v12 = v11;
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  if (v14 >= 1 && v13 < v14)
  {
    v16 = v10;
    sub_268224408(v14, v13, a1, sub_268390B90, &qword_280253310, 0x277CD4220, sub_268228774, &qword_28024FD28, &qword_2683DE680, sub_2682C010C, sub_2682C0748);
    v18 = v17;

    v19 = sub_268224C58(v18);
    v20 = v14;
    if (v19)
    {
      v20 = sub_2682228F8(v19);
    }

    v21 = *(v18 + 16);
    MEMORY[0x28223BE20](v19);
    v38 = v22;
    v39 = &v43;
    v40 = v20;
    v41 = v14;
    v23 = sub_268223C14(0, 0, sub_268228D4C, (&v42 - 6), v18);
    v25 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E6D8, &unk_2683D7EC0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_2683D1EC0;
    *(v26 + 32) = v16;
    *(v26 + 40) = v12;
    if (v23)
    {
      *v9 = v23;
      v9[1] = v25;
      v27 = *MEMORY[0x277D5BF58];
      v28 = sub_2683CC7B8();
      (*(*(v28 - 8) + 104))(v9, v27, v28);
      v29 = v9;
      v30 = 0;
      v31 = v28;
    }

    else
    {
      v31 = sub_2683CC7B8();
      v29 = v9;
      v30 = 1;
    }

    __swift_storeEnumTagSinglePayload(v29, v30, 1, v31);
    v32 = sub_2683CC5E8();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v35 = sub_2683CC5D8();
    v36 = sub_268228AC4(&qword_28024E6F0, MEMORY[0x277D5BDD0]);
    *(v3 + 16) = v35;
    *(v3 + 24) = v36;

    return v3;
  }

  else
  {
    __break(1u);

    type metadata accessor for NotebookPaginatedConversationFlowSource();
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  return result;
}

void sub_268224408(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(BOOL, uint64_t, uint64_t), unint64_t *a5, uint64_t *a6, uint64_t (*a7)(void *), uint64_t *a8, uint64_t *a9, uint64_t *a10, void (*a11)(uint64_t))
{
  v100 = a5;
  v101 = a6;
  if (a1 < 1 || a2 >= a1)
  {
    goto LABEL_143;
  }

  v18 = a1;
  v19 = sub_2682228F8(a3);
  v20 = v19 % v18;
  if (!(v19 % v18))
  {
    v20 = v18;
  }

  v90 = v20;
  v105 = v19;
  v21 = sub_2682289D8(0, v19, v18);
  v106 = MEMORY[0x277D84F90];
  v91 = a4;
  v11 = &v106;
  v91(0, v21 & ~(v21 >> 63), 0);
  if (v21 < 0)
  {
LABEL_144:
    __break(1u);
LABEL_145:
    v11 = v86(v11);
LABEL_120:
    v81 = v11[2];
    if (v81)
    {
      v82 = v11[v81 + 3];
      v11[2] = v81 - 1;
      v106 = v11;
      if (v81 == 1)
      {
      }

      else
      {
        v83 = v81 - 2;
        v84 = v11[v83 + 4];
        v11[2] = v83;
        v106 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(v87, v92);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2683D1EC0;
        (v93)(v82);
        *(inited + 32) = v84;
        v94(inited);
      }

      return;
    }

    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    return;
  }

  v89 = a2;
  v86 = a7;
  v87 = a8;
  v11 = v106;
  v29 = a3 >> 62;
  v99 = v18;
  v104 = a3 >> 62;
  if (v21)
  {
    v30 = sub_2682228F8(a3);
    v31 = 0;
    v32 = 0;
    v88 = a3 & 0x8000000000000000;
    v33 = a3 & 0xFFFFFFFFFFFFFF8;
    if ((a3 & 0x8000000000000000) != 0)
    {
      v34 = a3;
    }

    else
    {
      v34 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v95 = v30;
    v97 = v34;
    v93 = (v33 + 32);
    v94 = v21;
    v102 = a3 & 0xC000000000000001;
    while (1)
    {
      if (v32 >= v105)
      {
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
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      if (__OFADD__(v32, v18))
      {
        v35 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v32 + v18;
      }

      if (__OFADD__(v32, v18))
      {
        goto LABEL_132;
      }

      if (v95 >= v32 + v18)
      {
        v36 = v32 + v18;
      }

      else
      {
        v36 = v95;
      }

      if (v36 < v32)
      {
        goto LABEL_133;
      }

      if (v104)
      {
        v37 = sub_2683D00A8();
      }

      else
      {
        v37 = *(v33 + 16);
      }

      if (v37 < v32)
      {
        goto LABEL_134;
      }

      if (v32 < 0)
      {
        goto LABEL_135;
      }

      if (v104)
      {
        v38 = sub_2683D00A8();
      }

      else
      {
        v38 = *(v33 + 16);
      }

      if (v38 < v36)
      {
        goto LABEL_136;
      }

      if (!v102 || v32 == v36)
      {

        if (!v104)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v32 >= v36)
        {
          goto LABEL_141;
        }

        OUTLINED_FUNCTION_49_5(v38, v22, v23, v24, v25, v26, v27, v28, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v97, v99, v100, v101);

        v39 = v32;
        do
        {
          v40 = v39 + 1;
          sub_2683D0198();
          v39 = v40;
        }

        while (v36 != v40);
        if (!v104)
        {
LABEL_38:
          v47 = (2 * v36) | 1;
          v48 = v93;
          goto LABEL_41;
        }
      }

      OUTLINED_FUNCTION_0_0();
      v39 = sub_2683D03B8();
      v48 = v41;
      v32 = v42;
LABEL_41:
      v49 = v47 >> 1;
      if ((v47 & 1) == 0)
      {
        v50 = v49 - v32;
        if (__OFSUB__(v49, v32))
        {
          goto LABEL_140;
        }

        if (v50)
        {
          goto LABEL_44;
        }

LABEL_56:
        v51 = MEMORY[0x277D84F90];
        goto LABEL_57;
      }

      v92 = v48;
      sub_2683D05D8();
      swift_unknownObjectRetain_n();
      v53 = swift_dynamicCastClass();
      if (!v53)
      {
        swift_unknownObjectRelease();
        v53 = MEMORY[0x277D84F90];
      }

      v54 = *(v53 + 16);

      v50 = v49 - v32;
      if (__OFSUB__(v49, v32))
      {
        goto LABEL_142;
      }

      if (v54 != v50)
      {
        v39 = swift_unknownObjectRelease();
        if (!v50)
        {
          goto LABEL_56;
        }

LABEL_44:
        if (v50 < 1)
        {
          v51 = MEMORY[0x277D84F90];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
          v51 = swift_allocObject();
          _swift_stdlib_malloc_size_0(v51);
          OUTLINED_FUNCTION_34_8();
          v51[2] = v50;
          v51[3] = v52;
        }

        if (v32 == v49)
        {
          goto LABEL_148;
        }

        OUTLINED_FUNCTION_49_5(v39, v41, v42, v47, v43, v44, v45, v46, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v97, v99, v100, v101);
        swift_arrayInitWithCopy();
LABEL_57:
        v18 = v99;
LABEL_58:
        swift_unknownObjectRelease();
        goto LABEL_59;
      }

      v51 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v18 = v99;
      if (!v51)
      {
        v51 = MEMORY[0x277D84F90];
        goto LABEL_58;
      }

LABEL_59:
      v106 = v11;
      v56 = v11[2];
      v55 = v11[3];
      if (v56 >= v55 >> 1)
      {
        v91(v55 > 1, v56 + 1, 1);
        v11 = v106;
      }

      v31 = (v31 + 1);
      v11[2] = v56 + 1;
      v11[v56 + 4] = v51;
      v32 = v35;
      v33 = a3 & 0xFFFFFFFFFFFFFF8;
      if (v31 == v94)
      {
        v29 = a3 >> 62;
        v57 = v88;
        goto LABEL_64;
      }
    }
  }

  v35 = 0;
  v57 = a3 & 0x8000000000000000;
  v33 = a3 & 0xFFFFFFFFFFFFFF8;
  v102 = a3 & 0xC000000000000001;
LABEL_64:
  v94 = a11;
  v93 = a10;
  v92 = a9;
  if (v57)
  {
    v58 = a3;
  }

  else
  {
    v58 = v33;
  }

  v96 = v33 + 32;
  v98 = v58;
  v103 = v33;
  while (v35 < v105)
  {
    v59 = v35 + v18;
    if (__OFADD__(v35, v18))
    {
      v60 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v60 = v35 + v18;
    }

    if (__OFADD__(v35, v18))
    {
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
      goto LABEL_131;
    }

    if (v29)
    {
      v80 = sub_2683D00A8();
      if (v80 < v59)
      {
        v59 = v80;
      }

      if (v59 < v35)
      {
        goto LABEL_126;
      }

      v61 = sub_2683D00A8();
    }

    else
    {
      v61 = *(v33 + 16);
      if (v61 < v59)
      {
        v59 = *(v33 + 16);
      }

      if (v59 < v35)
      {
        goto LABEL_126;
      }
    }

    if (v61 < v35)
    {
      goto LABEL_127;
    }

    if (v35 < 0)
    {
      goto LABEL_128;
    }

    if (v29)
    {
      v62 = sub_2683D00A8();
    }

    else
    {
      v62 = *(v33 + 16);
    }

    if (v62 < v59)
    {
      goto LABEL_129;
    }

    if (v59 < 0)
    {
      goto LABEL_130;
    }

    if (!v102 || v35 == v59)
    {

      if (!v29)
      {
        goto LABEL_90;
      }
    }

    else
    {
      if (v35 >= v59)
      {
        goto LABEL_138;
      }

      OUTLINED_FUNCTION_49_5(v62, v22, v23, v24, v25, v26, v27, v28, v86, v87, v88, v89, v90, v91, v92, v93, v94, v96, v98, v99, v100, v101);

      v63 = v35;
      do
      {
        v64 = v63 + 1;
        sub_2683D0198();
        v63 = v64;
      }

      while (v59 != v64);
      if (!v29)
      {
LABEL_90:
        v71 = (2 * v59) | 1;
        goto LABEL_93;
      }
    }

    OUTLINED_FUNCTION_69();
    v63 = sub_2683D03B8();
    v35 = v66;
LABEL_93:
    v72 = v71 >> 1;
    if (v71)
    {
      sub_2683D05D8();
      swift_unknownObjectRetain_n();
      v76 = swift_dynamicCastClass();
      if (!v76)
      {
        swift_unknownObjectRelease();
        v76 = MEMORY[0x277D84F90];
      }

      v77 = *(v76 + 16);

      v73 = v72 - v35;
      if (__OFSUB__(v72, v35))
      {
        goto LABEL_139;
      }

      if (v77 == v73)
      {
        v74 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v18 = v99;
        if (v74)
        {
          goto LABEL_108;
        }
      }

      else
      {
        v63 = swift_unknownObjectRelease();
        v18 = v99;
        if (v73)
        {
          goto LABEL_96;
        }
      }
    }

    else
    {
      v73 = v72 - v35;
      if (__OFSUB__(v72, v35))
      {
        goto LABEL_137;
      }

      if (v73)
      {
LABEL_96:
        if (v73 < 1)
        {
          v74 = MEMORY[0x277D84F90];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
          v74 = swift_allocObject();
          _swift_stdlib_malloc_size_0(v74);
          OUTLINED_FUNCTION_34_8();
          v74[2] = v73;
          v74[3] = v75;
        }

        if (v35 == v72)
        {
          goto LABEL_147;
        }

        OUTLINED_FUNCTION_49_5(v63, v65, v66, v71, v67, v68, v69, v70, v86, v87, v88, v89, v90, v91, v92, v93, v94, v96, v98, v99, v100, v101);
        swift_arrayInitWithCopy();
        goto LABEL_107;
      }
    }

    v74 = MEMORY[0x277D84F90];
LABEL_107:
    swift_unknownObjectRelease();
LABEL_108:
    v106 = v11;
    v79 = v11[2];
    v78 = v11[3];
    if (v79 >= v78 >> 1)
    {
      v91(v78 > 1, v79 + 1, 1);
      v11 = v106;
    }

    v11[2] = v79 + 1;
    v11[v79 + 4] = v74;
    v35 = v60;
    v33 = v103;
    v29 = a3 >> 62;
  }

  v106 = v11;
  if (v90 <= v89 && v11[2] > 1uLL)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_120;
  }
}

uint64_t sub_268224B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_2683CD418();
    OUTLINED_FUNCTION_1(v6);
    (*(v7 + 16))(a2, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v6);
    v8 = a2;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v10 = sub_2683CD418();
    v8 = a2;
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
}

uint64_t sub_268224C58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 8 * v1 + 24);
}

uint64_t sub_268224C8C(void (*a1)(uint64_t, unint64_t), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, unint64_t))
{
  v31 = a2;
  v30[0] = a7;
  v30[1] = a8;
  v34 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCD0, &qword_2683DE620);
  v13 = OUTLINED_FUNCTION_23(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v30 - v16;
  sub_2683CCB78();
  OUTLINED_FUNCTION_1_7();
  v32 = v19;
  v33 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_3();
  v24 = v23 - v22;
  sub_2682228F8(a4);
  sub_2683CCB58();
  v34(v24, a4);
  v34 = a1;
  if (!a1)
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCD8, &qword_2683DE628);
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v29);
    goto LABEL_6;
  }

  result = sub_2683CCB68();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else if (!__OFSUB__(a5, 1))
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCD8, &qword_2683DE628);
    v27 = &v17[*(v26 + 48)];
    sub_2683CCB58();
    v28 = v31;
    *v27 = v34;
    *(v27 + 1) = v28;
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v26);
LABEL_6:
    swift_unknownObjectRetain();
    sub_268223518();

    sub_268228838(v17);
    (*(v32 + 8))(v24, v33);
    return OUTLINED_FUNCTION_41_6();
  }

  __break(1u);
  return result;
}

void sub_268224EF8()
{
  v1 = v0;
  v2 = *v0;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v3 = sub_2683CF7E8();
  __swift_project_value_buffer(v3, qword_28027C958);

  oslog = sub_2683CF7C8();
  v4 = sub_2683CFE68();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v7 = v1[2];
    v8 = *(v1 + 24);
    sub_2682291F0(v7, v8);
    v9 = *(v2 + 80);
    v10 = *(v2 + 88);
    v11 = sub_26822741C(v7, v8);
    v13 = v12;

    sub_2682286D4(v7, v8);
    v14 = sub_2681610A0(v11, v13, &v16);

    *(v5 + 4) = v14;
    _os_log_impl(&dword_2680EB000, oslog, v4, "[SFNI.ReadingFlow] transitioned to state %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x26D617A40](v6, -1, -1);
    MEMORY[0x26D617A40](v5, -1, -1);
  }

  else
  {
  }
}

void *sub_2682250CC()
{
  v1 = *(v0 + 16);
  sub_2682291F0(v1, *(v0 + 24));
  return v1;
}

void sub_268225104(void *a1, char a2)
{
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  v6 = *(v2 + 24);
  *(v2 + 24) = a2;
  sub_2682291F0(a1, a2);
  sub_2682286D4(v5, v6);
  sub_268224EF8();

  sub_2682286D4(a1, a2);
}

void sub_268225174()
{
  OUTLINED_FUNCTION_30_0();
  sub_2683CCC18();
  OUTLINED_FUNCTION_1_7();
  v1 = v0;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  v7 = v6 - v5;
  v8 = sub_2683CCBD8();
  OUTLINED_FUNCTION_1_7();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_3();
  v16 = v15 - v14;
  sub_2683CCB88();
  v17 = v1[11];
  v18 = OUTLINED_FUNCTION_44_7();
  if (v19(v18) != *MEMORY[0x277D5C150])
  {
    v33 = v1[1];
    v34 = OUTLINED_FUNCTION_44_7();
    v35(v34);
    goto LABEL_17;
  }

  v20 = v1[12];
  v21 = OUTLINED_FUNCTION_44_7();
  v22(v21);
  (*(v10 + 32))(v16, v7, v8);
  v23 = sub_2683CCBB8();
  v25 = v24;
  if (qword_28024CB48 != -1)
  {
    swift_once();
  }

  v26 = qword_280253420;
  v27 = unk_280253428;
  v43 = qword_280253410;
  v44 = *algn_280253418;

  MEMORY[0x26D616690](46, 0xE100000000000000);
  MEMORY[0x26D616690](v26, v27);
  if (v23 == v43 && v25 == v44)
  {
  }

  else
  {
    OUTLINED_FUNCTION_44_7();
    v29 = sub_2683D0598();

    if ((v29 & 1) == 0)
    {
      v30 = *(v10 + 8);
      v31 = OUTLINED_FUNCTION_69();
      v32(v31);
      goto LABEL_17;
    }
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v36 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v36, qword_28027C958);
  v37 = sub_2683CF7C8();
  v38 = sub_2683CFE98();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = OUTLINED_FUNCTION_21_5();
    *v39 = 0;
    _os_log_impl(&dword_2680EB000, v37, v38, "[SFNI.ReadingFlow got SeeAll DI. Showing snippet and finishing.", v39, 2u);
    OUTLINED_FUNCTION_38();
  }

  sub_268225104(2, 3);
  v40 = *(v10 + 8);
  v41 = OUTLINED_FUNCTION_69();
  v42(v41);
LABEL_17:
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268225490()
{
  OUTLINED_FUNCTION_14();
  v1[16] = v2;
  v1[17] = v0;
  v3 = *v0;
  v1[18] = *v0;
  v1[19] = *(v3 + 80);
  OUTLINED_FUNCTION_1_7();
  v1[20] = v4;
  v6 = *(v5 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268225594, 0, 0);
}

uint64_t sub_268225594()
{
  v132 = v0;
  v1 = v0[17];
  v2 = sub_2682250CC();
  v3 = v2;
  switch(v4)
  {
    case 1:
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v38 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v38, qword_28027C958);
      v39 = sub_2683CF7C8();
      v40 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_17_5(v40))
      {
        *OUTLINED_FUNCTION_21_5() = 0;
        OUTLINED_FUNCTION_13_10(&dword_2680EB000, v41, v42, "[SFNI.ReadingFlow] Pushing task list reading flow");
        OUTLINED_FUNCTION_38();
      }

      v43 = v0[22];
      v44 = v0[19];
      v45 = v0[20];
      v46 = v0[17];

      OUTLINED_FUNCTION_33_8();
      v48 = *(v47 + 104);
      v49 = OUTLINED_FUNCTION_17_15();
      v50(v49);
      v51 = *(v46 + *(*v46 + 112));
      if (!sub_2683ABE58(*(v46 + *(*v46 + 128))) && !sub_2683ABE58(*(v0[17] + *(*v0[17] + 144))))
      {
        v128 = v0[17];
        OUTLINED_FUNCTION_14_16();
        v130 = *(v129 + 136);
        OUTLINED_FUNCTION_36_9();
        swift_beginAccess();
        sub_2683ABE58(*(v128 + v130));
      }

      v52 = v0[22];
      v53 = v0[19];
      v54 = v0[20];
      v55 = v0[17];
      v56 = v0[18];
      v57 = v0[16];
      sub_2682268E4();
      OUTLINED_FUNCTION_30_9();
      v58 = *(*v55 + 120);
      v59 = *(v56 + 88);
      sub_268226018();
      v61 = v60;
      (*(v54 + 8))(v52, v53);
      v0[14] = v61;
      v62 = sub_268226428();
      v64 = v63;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCA8, &qword_2683DE600);
      OUTLINED_FUNCTION_5_26();
      v67 = sub_26818A0C8(v66, &qword_28024FCA8, &qword_2683DE600);
      sub_268226A98((v0 + 14), v62, v64, v65, v67);
      sub_2682286D4(v3, 1);
LABEL_24:

      goto LABEL_30;
    case 2:
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v19 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v19, qword_28027C958);
      v20 = sub_2683CF7C8();
      v21 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_17_5(v21))
      {
        *OUTLINED_FUNCTION_21_5() = 0;
        OUTLINED_FUNCTION_13_10(&dword_2680EB000, v22, v23, "[SFNI.ReadingFlow] Pushing tasks reading flow");
        OUTLINED_FUNCTION_38();
      }

      v25 = v0[20];
      v24 = v0[21];
      v26 = v0[19];
      v27 = v0[17];

      OUTLINED_FUNCTION_33_8();
      v29 = *(v28 + 104);
      v30 = OUTLINED_FUNCTION_17_15();
      v31(v30);
      OUTLINED_FUNCTION_33_8();
      v33 = *(v32 + 136);
      OUTLINED_FUNCTION_36_9();
      swift_beginAccess();
      if (!sub_2683ABE58(*(v27 + v33)))
      {
        sub_2683ABE58(*(v0[17] + *(*v0[17] + 128)));
      }

      v69 = v0[20];
      v68 = v0[21];
      v71 = v0[18];
      v70 = v0[19];
      v73 = v0[16];
      v72 = v0[17];
      sub_2682268E4();
      OUTLINED_FUNCTION_30_9();
      v74 = *(*v72 + 120);
      OUTLINED_FUNCTION_23_15();
      sub_268226468();
      v76 = v75;
      sub_2682286D4(v3, 2);
      v77 = *(v69 + 8);
      v78 = OUTLINED_FUNCTION_32_3();
      v79(v78);
      v0[13] = v76;
      v80 = sub_26822670C();
      v82 = v81;
      v83 = OUTLINED_FUNCTION_32_3();
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(v83, v84);
      OUTLINED_FUNCTION_5_26();
      v87 = sub_26818A0C8(v86, &qword_28024FCA8, &qword_2683DE600);
      v88 = (v0 + 13);
      goto LABEL_29;
    case 3:
      switch(v2)
      {
        case 1uLL:
          v127 = v0[16];
          goto LABEL_42;
        case 2uLL:
          v120 = v0[16];
          v121 = v0[17];
          sub_268226E4C(v131);
          v0[12] = v131[0];
          sub_2683CB948();

          sub_2683CC378();
          goto LABEL_24;
        case 3uLL:
          if (qword_28024C8E0 != -1)
          {
            OUTLINED_FUNCTION_0_5();
          }

          v122 = sub_2683CF7E8();
          OUTLINED_FUNCTION_67(v122, qword_28027C958);
          v123 = sub_2683CF7C8();
          v124 = sub_2683CFE98();
          if (os_log_type_enabled(v123, v124))
          {
            v125 = OUTLINED_FUNCTION_21_5();
            *v125 = 0;
            _os_log_impl(&dword_2680EB000, v123, v124, "[SFNI.ReadingFlow] Finished reading completing flow", v125, 2u);
            OUTLINED_FUNCTION_38();
          }

          v126 = v0[16];

          sub_2683CC3F8();
          goto LABEL_31;
        case 4uLL:
          v118 = v0[16];
          v117 = v0[17];

          sub_2683CC868();
          v119 = sub_2683CB948();
          OUTLINED_FUNCTION_42_3(v119);
          v0[11] = sub_2683CB938();

          sub_2683CC398();

          goto LABEL_30;
        default:
          v34 = v0[16];
          v35 = v0[17];
          v36 = sub_268227310();
          sub_268225104(v36, v37);
LABEL_42:
          sub_2683CC388();
          break;
      }

      goto LABEL_31;
    default:
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v5 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v5, qword_28027C958);
      v6 = sub_2683CF7C8();
      v7 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_17_5(v7))
      {
        *OUTLINED_FUNCTION_21_5() = 0;
        OUTLINED_FUNCTION_13_10(&dword_2680EB000, v8, v9, "[SFNI.ReadingFlow] Pushing notes reading flow");
        OUTLINED_FUNCTION_38();
      }

      v10 = v0[23];
      v11 = v0[19];
      v12 = v0[20];
      v13 = v0[17];

      OUTLINED_FUNCTION_33_8();
      v15 = *(v14 + 104);
      v16 = OUTLINED_FUNCTION_17_15();
      v17(v16);
      OUTLINED_FUNCTION_33_8();
      if (!sub_2683ABE58(*(v13 + *(v18 + 144))))
      {
        v89 = v0[17];
        OUTLINED_FUNCTION_14_16();
        v91 = *(v90 + 136);
        OUTLINED_FUNCTION_36_9();
        swift_beginAccess();
        sub_2683ABE58(*(v89 + v91));
      }

      v92 = v0[23];
      v93 = v0[19];
      v94 = v0[20];
      v95 = v0[17];
      v96 = v0[18];
      v97 = v0[16];
      sub_2682268E4();
      OUTLINED_FUNCTION_30_9();
      v98 = *(*v95 + 120);
      v99 = OUTLINED_FUNCTION_23_15();
      v104 = sub_268225DE0(v99, v100, v101, v102, v103);
      sub_2682286D4(v3, 0);
      v105 = *(v94 + 8);
      v106 = OUTLINED_FUNCTION_32_3();
      v107(v106);
      v0[15] = v104;
      v80 = sub_268225FD8();
      v82 = v108;
      v109 = OUTLINED_FUNCTION_32_3();
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(v109, v110);
      OUTLINED_FUNCTION_5_26();
      v87 = sub_26818A0C8(v111, &qword_28024FCA8, &qword_2683DE600);
      v88 = (v0 + 15);
LABEL_29:
      sub_268226A98(v88, v80, v82, v85, v87);

LABEL_30:

LABEL_31:
      v113 = v0[22];
      v112 = v0[23];
      v114 = v0[21];

      OUTLINED_FUNCTION_40();

      return v115();
  }
}

uint64_t *sub_268225DE0(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(a5 + 8))(a4, a5);
  v10 = (*(a5 + 16))(a4, a5);
  v11 = OUTLINED_FUNCTION_41_6();
  v13 = sub_268227B20(v11, v12, a5);
  v15 = v14;
  v16 = (*(a5 + 96))(a3, a2 & 0x101, a4, a5);
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCB8, &qword_2683DE608);
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_2_30(v19);
  v20[2] = v9;
  v20[3] = v10;
  *(v20 + 32) = (a2 & 1) == 0;
  v20[5] = 0;
  v20[6] = 0;
  v20[7] = v13;
  v20[8] = v15;
  v20[9] = v16;
  v20[10] = v18;
  type metadata accessor for NotebookPaginatedConversationFlowSource();
  OUTLINED_FUNCTION_50_4();

  v21 = OUTLINED_FUNCTION_0_0();
  sub_268223D00(v21, v22);
  OUTLINED_FUNCTION_4_27();
  sub_268228AC4(v23, v24);
  OUTLINED_FUNCTION_3_28();
  sub_26818A0C8(v25, &qword_28024FCB8, &qword_2683DE608);
  v26 = sub_2683CBD18();
  OUTLINED_FUNCTION_42_3(v26);

  v28 = OUTLINED_FUNCTION_46_5();
  sub_2683CBF38();
  OUTLINED_FUNCTION_42_8();

  return &v28;
}

void sub_268226018()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v4 = v3;
  v65 = v5;
  v61 = v6;
  v8 = v7;
  v10 = v9;
  sub_2683CB528();
  OUTLINED_FUNCTION_1_7();
  v63 = v12;
  v64 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_3();
  v62 = v16 - v15;
  OUTLINED_FUNCTION_1_7();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  v22 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v2 + 24);
  v24 = OUTLINED_FUNCTION_69();
  v60 = v25(v24);
  v26 = *(v2 + 32);
  v27 = OUTLINED_FUNCTION_69();
  v59 = v28(v27);
  v29 = 0;
  v30 = 0;
  if (v8)
  {
    (*(v18 + 16))(&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v4);
    v31 = v10;
    v32 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v33 = (v20 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v30 + 16) = v4;
    *(v30 + 24) = v2;
    v34 = v30 + v32;
    v10 = v31;
    (*(v18 + 32))(v34, v22, v4);
    *(v30 + v33) = v31;
    v35 = v31;
    v29 = &unk_2683DE670;
  }

  v36 = OUTLINED_FUNCTION_41_6();
  v38 = sub_2682280FC(v36, v37, v2);
  v57 = v39;
  v58 = v38;
  v40 = v61;
  v41 = v10;
  v42 = (*(v2 + 112))(v10, v65, v61 & 0x101, v4, v2);
  v44 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD18, &qword_2683DE660);
  v45 = swift_allocObject();
  v46 = OUTLINED_FUNCTION_2_30(v45);
  v47 = v59;
  v46[2] = v60;
  v46[3] = v47;
  *(v46 + 32) = (v40 & 1) == 0;
  v46[5] = v29;
  v46[6] = v30;
  v48 = v57;
  v46[7] = v58;
  v46[8] = v48;
  v46[9] = v42;
  v46[10] = v44;
  v49 = [v41 tasks];
  sub_268129504(0, &qword_280253310, 0x277CD4220);
  v50 = sub_2683CFCA8();

  v51 = v62;
  sub_2683CB508();
  v52 = (*(v2 + 120))(v50, v65, v51, v4, v2);

  (*(v63 + 8))(v51, v64);
  type metadata accessor for NotebookPaginatedConversationFlowSource();
  OUTLINED_FUNCTION_50_4();

  sub_268224084(v52, v45);
  OUTLINED_FUNCTION_4_27();
  sub_268228AC4(v53, v54);
  OUTLINED_FUNCTION_3_28();
  sub_26818A0C8(v55, &qword_28024FD18, &qword_2683DE660);
  v56 = sub_2683CBD18();
  OUTLINED_FUNCTION_42_3(v56);

  v66 = sub_2683CBD08();
  sub_2683CBF38();

  OUTLINED_FUNCTION_29_0();
}

void sub_268226468()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v39 = v4;
  v7 = v6;
  v41 = v8;
  v42 = sub_2683CB528();
  OUTLINED_FUNCTION_1_7();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_3();
  v16 = v15 - v14;
  v17 = *(v1 + 24);
  v18 = OUTLINED_FUNCTION_69();
  v40 = v19(v18);
  v20 = *(v1 + 32);
  v21 = OUTLINED_FUNCTION_69();
  v38 = v22(v21);
  v23 = OUTLINED_FUNCTION_41_6();
  v37 = sub_268227D70(v23, v24, v1);
  v26 = v25;
  v27 = (*(v1 + 104))(v5, v7 & 0x101, v3, v1);
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD18, &qword_2683DE660);
  v30 = swift_allocObject();
  v31 = OUTLINED_FUNCTION_2_30(v30);
  v31[2] = v40;
  v31[3] = v38;
  *(v31 + 32) = (v7 & 1) == 0;
  v31[5] = 0;
  v31[6] = 0;
  v31[7] = v37;
  v31[8] = v26;
  v31[9] = v27;
  v31[10] = v29;
  sub_2683CB508();
  v32 = (*(v1 + 120))(v41, v39, v16, v3, v1);
  (*(v10 + 8))(v16, v42);
  type metadata accessor for NotebookPaginatedConversationFlowSource();
  OUTLINED_FUNCTION_50_4();

  sub_268224084(v32, v30);
  OUTLINED_FUNCTION_4_27();
  sub_268228AC4(v33, v34);
  OUTLINED_FUNCTION_3_28();
  sub_26818A0C8(v35, &qword_28024FD18, &qword_2683DE660);
  v36 = sub_2683CBD18();
  OUTLINED_FUNCTION_42_3(v36);

  OUTLINED_FUNCTION_46_5();
  sub_2683CBF38();
  OUTLINED_FUNCTION_42_8();

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268226778(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 104);
  v5 = *(*a2 + 88);
  v6 = *(v5 + 88);
  v7 = *(*a2 + 80);
  v11 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2681342AC;

  return v11(a1, v7, v5);
}

void sub_2682268E4()
{
  OUTLINED_FUNCTION_14_16();
  v1 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v2 = sub_2683CC818();
  v3 = [v2 tasks];
  v7 = 0;
  if (v3)
  {
    v4 = v3;
    sub_268129504(0, &qword_280253310, 0x277CD4220);
    OUTLINED_FUNCTION_40_6();
    v5 = sub_2683CFCA8();

    v6 = sub_2683ABE58(v5);

    if (v6)
    {
      v7 = 1;
    }
  }

  v8 = [v2 notes];
  v12 = 0;
  if (v8)
  {
    v9 = v8;
    sub_268129504(0, &qword_28024D350, 0x277CD3E00);
    OUTLINED_FUNCTION_40_6();
    v10 = sub_2683CFCA8();

    v11 = sub_2683ABE58(v10);

    if (v11)
    {
      v12 = 1;
    }
  }

  v13 = [v2 taskLists];
  if (v13)
  {
    sub_268129504(0, &qword_280253320, 0x277CD4228);
    OUTLINED_FUNCTION_40_6();
    v14 = sub_2683CFCA8();

    v13 = sub_2682228F8(v14);
  }

  if (__OFADD__(v12 + v7, v13))
  {
    __break(1u);
  }
}

uint64_t sub_268226A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = v5;
  v10[5] = a2;
  v10[6] = a3;

  sub_2683CC398();
}

void sub_268226B58(void **a1, uint64_t a2, void (*a3)(void))
{
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_11;
  }

  v17 = *a1;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
  if (swift_dynamicCast() && (v16 & 1) == 0)
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v12 = sub_2683CF7E8();
    __swift_project_value_buffer(v12, qword_28027C958);
    v13 = sub_2683CF7C8();
    v14 = sub_2683CFE98();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2680EB000, v13, v14, "Reading flow finished with userWantsToStop error. Stopping", v15, 2u);
      MEMORY[0x26D617A40](v15, -1, -1);
    }

    v11 = 4;
    goto LABEL_17;
  }

  v6 = v4;
  if (!swift_dynamicCast() || (v16 & 1) == 0)
  {
LABEL_11:
    a3();
    return;
  }

  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v7 = sub_2683CF7E8();
  __swift_project_value_buffer(v7, qword_28027C958);
  v8 = sub_2683CF7C8();
  v9 = sub_2683CFE98();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2680EB000, v8, v9, "Reading flow finished with userWantsToCancel error. Stopping", v10, 2u);
    MEMORY[0x26D617A40](v10, -1, -1);
  }

  v11 = 3;
LABEL_17:
  sub_268225104(v11, 3);
}

uint64_t sub_268226DAC()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  _s11ReadingFlowCMa();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  return sub_2683CBF48();
}

uint64_t sub_268226E4C@<X0>(uint64_t *a1@<X8>)
{

  sub_2683CC868();
  v2 = sub_2683CB948();
  OUTLINED_FUNCTION_42_3(v2);
  result = sub_2683CB938();
  *a1 = result;
  return result;
}

uint64_t sub_268226EBC(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *a2;
  v3 = sub_2683CB528();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268226FA4, 0, 0);
}

uint64_t sub_268226FA4()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(*v2 + 104);
  v5 = *(*v2 + 120);
  sub_2683CB508();
  v8 = v3 + 80;
  v7 = *(v3 + 80);
  v6 = *(v8 + 8);
  v9 = *(v6 + 136);
  OUTLINED_FUNCTION_3_18();
  v17 = (v10 + *v10);
  v12 = *(v11 + 4);
  v13 = swift_task_alloc();
  v0[8] = v13;
  *v13 = v0;
  v13[1] = sub_268227104;
  v14 = v0[7];
  v15 = v0[2];

  return v17(v15, v2 + v5, v14, v7, v6);
}

uint64_t sub_268227104()
{
  OUTLINED_FUNCTION_42();
  v2 = v1[8];
  v3 = v1[7];
  v4 = v1[6];
  v5 = v1[5];
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_40();

  return v8();
}

void sub_268227250()
{
  OUTLINED_FUNCTION_14_16();
  v2 = *(v1 + 128);
  v3 = *(v0 + v2);
  *(v0 + v2) = MEMORY[0x277D84F90];

  v4 = sub_268227310();

  sub_268225104(v4, v5);
}

void sub_26822729C()
{
  v0 = sub_268227310();

  sub_268225104(v0, v1);
}

void sub_2682272C4()
{
  OUTLINED_FUNCTION_14_16();
  v2 = *(v1 + 144);
  v3 = *(v0 + v2);
  *(v0 + v2) = MEMORY[0x277D84F90];

  v4 = sub_268227310();

  sub_268225104(v4, v5);
}

uint64_t sub_268227310()
{
  OUTLINED_FUNCTION_14_16();
  v2 = *(v1 + 128);
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v4 = *(v0 + v2);
    }

    if (sub_2683D00A8())
    {
      goto LABEL_10;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    v7 = *(v0 + v2);

    return v7;
  }

  OUTLINED_FUNCTION_14_16();
  v6 = *(v5 + 136);
  OUTLINED_FUNCTION_36_9();
  swift_beginAccess();
  if (!sub_2683ABE58(*(v0 + v6)))
  {
    OUTLINED_FUNCTION_14_16();
    v2 = *(v8 + 144);
    if (!sub_2683ABE58(*(v0 + v2)))
    {
      return 1;
    }

    goto LABEL_10;
  }

  swift_beginAccess();
  v7 = sub_268222A68();
  swift_endAccess();
  return v7;
}

unint64_t sub_26822741C(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_2683D0178();

      strcpy(v13, "readTaskList [");
      HIBYTE(v13[1]) = -18;
      v5 = [a1 title];
      v6 = [v5 description];
      v7 = sub_2683CFA78();
      v9 = v8;

      MEMORY[0x26D616690](v7, v9);

      MEMORY[0x26D616690](10333, 0xE200000000000000);
      v10 = [a1 tasks];
      sub_268129504(0, &qword_280253310, 0x277CD4220);
      v11 = sub_2683CFCA8();

      sub_2682228F8(v11);

      goto LABEL_8;
    case 2:
      v3 = 0x6B73615464616572;
      goto LABEL_4;
    case 3:
      result = 0x64656873696E6966;
      switch(a1)
      {
        case 1uLL:
          result = 0xD000000000000011;
          break;
        case 2uLL:
          result = 0xD000000000000017;
          break;
        case 3uLL:
          return result;
        case 4uLL:
          result = 0x676E6970706F7473;
          break;
        default:
          result = 0xD000000000000010;
          break;
      }

      return result;
    default:
      v3 = 0x65746F4E64616572;
LABEL_4:
      v13[0] = v3;
      v13[1] = 0xEB00000000282073;
      sub_2682228F8(a1);
LABEL_8:
      v12 = sub_2683D0568();
      MEMORY[0x26D616690](v12);

      MEMORY[0x26D616690](41, 0xE100000000000000);
      return v13[0];
  }
}

unint64_t sub_2682276C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_26822741C(*v1, *(v1 + 8));
}

uint64_t *sub_2682276D8()
{
  v1 = *v0;
  sub_2682286D4(v0[2], *(v0 + 24));
  OUTLINED_FUNCTION_14_16();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(v2 + 104));
  OUTLINED_FUNCTION_14_16();
  v4 = *(v3 + 120);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 8))(v0 + v4);
  OUTLINED_FUNCTION_14_16();
  v8 = *(v0 + *(v7 + 128));

  OUTLINED_FUNCTION_14_16();
  v10 = *(v0 + *(v9 + 136));

  OUTLINED_FUNCTION_14_16();
  v12 = *(v0 + *(v11 + 144));

  return v0;
}

uint64_t sub_2682277EC()
{
  sub_2682276D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_26822785C()
{
  if (!qword_28024FC20[0])
  {
    sub_268129504(255, &qword_28024D340, 0x277CD4058);
    sub_268129504(255, &qword_28024D348, 0x277CD4060);
    v0 = sub_2683CC858();
    if (!v1)
    {
      atomic_store(v0, qword_28024FC20);
    }
  }
}

uint64_t sub_2682278E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook09SearchForB5ItemsO11ReadingFlowC5State33_F3ED04642321D2047642E16DA4EA0ADCLLOy_x_G(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_26822793C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_26822797C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_2682279C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_2682279F0()
{
  v1 = *v0;
  sub_268225174();
  return v2 & 1;
}

uint64_t sub_268227A3C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268133EC8;

  return sub_268225490();
}

uint64_t sub_268227AD8(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  _s11ReadingFlowCMa();

  return sub_2683CBF88();
}

void *sub_268227B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return &unk_2683DE658;
}

uint64_t sub_268227C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 72);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681342AC;

  return v12(a1, a3, a4);
}

void *sub_268227D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return &unk_2683DE6B0;
}

uint64_t sub_268227E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 80);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681342AC;

  return v12(a1, a3, a4);
}

uint64_t sub_268227FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 + 48);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_268133EC8;

  return v15(a1, a4, a5, a6);
}

void *sub_2682280FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return &unk_2683DE6A0;
}

uint64_t sub_26822821C(uint64_t result, uint64_t a2)
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

  sub_2682C2138(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 40 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD30, &qword_2683DE6B8);
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

  result = sub_2681232F8((v9 + 40 * a2), v11 - a2, v10);
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