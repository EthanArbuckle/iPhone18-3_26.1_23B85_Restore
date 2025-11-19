void sub_266C5D6BC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_266C5D724(void *a1, void (*a2)(char *))
{
  if (qword_2800C91D8 != -1)
  {
    swift_once();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_28156F280);
  v5 = sub_266DA948C();
  v6 = sub_266DAAB0C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_266C08000, v5, v6, "Companion Link Discovery activate completion", v7, 2u);
    MEMORY[0x26D5F2480](v7, -1, -1);
  }

  if (a1)
  {
    v8 = a1;
    v9 = sub_266DA948C();
    v10 = sub_266DAAAEC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = sub_266DA72EC();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&dword_266C08000, v9, v10, "Companion Link Discovery activate error: %@", v11, 0xCu);
      sub_266C5DA24(v12);
      MEMORY[0x26D5F2480](v12, -1, -1);
      MEMORY[0x26D5F2480](v11, -1, -1);
    }

    v14 = 0;
    a2(&v14);
  }
}

unint64_t sub_266C5D904()
{
  result = qword_28156EFE8;
  if (!qword_28156EFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CC440, &qword_266DAF890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156EFE8);
  }

  return result;
}

uint64_t sub_266C5D968(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_266C5D9A8(uint64_t result, int a2, int a3)
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_266C5DA24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F78, &unk_266DB1430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id OUTLINED_FUNCTION_2_11(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

_BYTE *storeEnumTagSinglePayload for ConfirmationTask(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ConfirmationTask.Parser(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConfirmationTask.Parser(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_266C5DD0C()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CA580);
  v1 = __swift_project_value_buffer(v0, qword_2800CA580);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_266C5DDD8()
{
  result = qword_2800CA598;
  if (!qword_2800CA598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA598);
  }

  return result;
}

uint64_t sub_266C5DE2C(uint64_t a1, int a2)
{
  LODWORD(v100) = a2;
  v3 = sub_266DA81DC();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v92 = v5;
  v93 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_6();
  v91 = v9 - v8;
  v10 = sub_266DA819C();
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v98 = v12;
  v99 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_6();
  v97 = v16 - v15;
  v17 = sub_266DA8BDC();
  v18 = OUTLINED_FUNCTION_0_2(v17);
  v96 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_6();
  v24 = v23 - v22;
  v25 = sub_266DA81AC();
  v26 = OUTLINED_FUNCTION_0_2(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v26);
  v90 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v94 = &v89 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v89 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v89 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v89 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v89 - v44;
  v46 = *(v28 + 16);
  v95 = a1;
  v47 = a1;
  v48 = v46;
  (v46)(&v89 - v44, v47, v25);
  v49 = (*(v28 + 88))(v45, v25);
  if (v49 == *MEMORY[0x277D5C128])
  {
    (v48)(v43, v45, v25);
    v50 = v25;
    (*(v28 + 96))(v43, v25);
    v51 = v96;
    v96[4](v24, v43, v17);
    v52 = v45;
    if (qword_2800C91E0 != -1)
    {
      OUTLINED_FUNCTION_0_21();
    }

    v53 = sub_266DA94AC();
    __swift_project_value_buffer(v53, qword_2800CA580);
    v54 = sub_266DA948C();
    v55 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_266C08000, v54, v55, "[ConfirmationTask] parseTask NLv3IntentOnly", v56, 2u);
      v52 = v45;
      OUTLINED_FUNCTION_6_1();
    }

    v57 = sub_266C5E720(v24);
    (v51[1])(v24, v17);
    v58 = v50;
    goto LABEL_34;
  }

  v58 = v25;
  if (v49 == *MEMORY[0x277D5C150])
  {
    v96 = v48;
    (v48)(v40, v45, v25);
    (*(v28 + 96))(v40, v25);
    (*(v98 + 32))(v97, v40, v99);
    v59 = sub_266DA817C();
    v61 = v60;
    if (qword_2800C9400 != -1)
    {
      swift_once();
    }

    v62 = qword_2800CCE90;
    v63 = unk_2800CCE98;
    v101 = qword_2800CCE80;
    v102 = *algn_2800CCE88;

    MEMORY[0x26D5F1170](v62, v63);
    if (v59 == v101 && v61 == v102)
    {

      v52 = v45;
    }

    else
    {
      v65 = sub_266DAB17C();

      v52 = v45;
      if ((v65 & 1) == 0)
      {
        (*(v98 + 8))(v97, v99);
        v48 = v96;
LABEL_22:
        v73 = v94;
        if (qword_2800C91E0 != -1)
        {
          OUTLINED_FUNCTION_0_21();
        }

        v74 = sub_266DA94AC();
        __swift_project_value_buffer(v74, qword_2800CA580);
        (v48)(v73, v95, v58);
        v75 = sub_266DA948C();
        v76 = sub_266DAAB0C();
        if (OUTLINED_FUNCTION_16_0(v76))
        {
          v77 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v101 = v100;
          *v77 = 136315138;
          (v48)(v90, v73, v58);
          v78 = sub_266DAA72C();
          v79 = v73;
          v81 = v80;
          (*(v28 + 8))(v79, v58);
          v82 = sub_266C22A3C(v78, v81, &v101);
          v52 = v45;

          *(v77 + 4) = v82;
          _os_log_impl(&dword_266C08000, v75, v76, "[ConfirmationTask] unsupported parse type: %s", v77, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v100);
          OUTLINED_FUNCTION_6_1();
          OUTLINED_FUNCTION_6_1();
        }

        else
        {

          (*(v28 + 8))(v73, v58);
        }

        v57 = 3;
        goto LABEL_34;
      }
    }

    if (qword_2800C91E0 != -1)
    {
      OUTLINED_FUNCTION_0_21();
    }

    v83 = sub_266DA94AC();
    __swift_project_value_buffer(v83, qword_2800CA580);
    v84 = sub_266DA948C();
    v85 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_266C08000, v84, v85, "[ConfirmationTask] parseTask directInvocation", v86, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    v87 = v97;
    v57 = sub_266C5EC54(v97);
    (*(v98 + 8))(v87, v99);
  }

  else
  {
    v52 = v45;
    if (v49 != *MEMORY[0x277D5C160])
    {
      goto LABEL_22;
    }

    (v48)(v37, v45, v58);
    (*(v28 + 96))(v37, v58);
    v67 = v91;
    v66 = v92;
    v68 = v93;
    (*(v92 + 32))(v91, v37, v93);
    if (qword_2800C91E0 != -1)
    {
      OUTLINED_FUNCTION_0_21();
    }

    v69 = sub_266DA94AC();
    __swift_project_value_buffer(v69, qword_2800CA580);
    v70 = sub_266DA948C();
    v71 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_266C08000, v70, v71, "[ConfirmationTask] parseTask uso", v72, 2u);
      v52 = v45;
      OUTLINED_FUNCTION_6_1();
    }

    v57 = sub_266C5F0A0(v67, v100 & 1);
    (*(v66 + 8))(v67, v68);
  }

LABEL_34:
  (*(v28 + 8))(v52, v58);
  return v57;
}

uint64_t sub_266C5E720(uint64_t a1)
{
  DeviceNLIntent = type metadata accessor for FindDeviceNLIntent(0);
  v3 = *(*(DeviceNLIntent - 8) + 64);
  MEMORY[0x28223BE20](DeviceNLIntent - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContactNLIntent();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E0, &unk_266DB05F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v50 = &v44 - v12;
  v13 = sub_266DA8BDC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800C91E0 != -1)
  {
    swift_once();
  }

  v18 = sub_266DA94AC();
  __swift_project_value_buffer(v18, qword_2800CA580);
  v47 = *(v14 + 16);
  v48 = v14 + 16;
  v47(v17, a1, v13);
  v19 = sub_266DA948C();
  v20 = sub_266DAAB0C();
  v21 = os_log_type_enabled(v19, v20);
  v49 = v13;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v46 = v9;
    v23 = v22;
    v45 = swift_slowAlloc();
    v51 = v45;
    *v23 = 136315138;
    sub_266C5FDE0(&qword_2800CA5A0, MEMORY[0x277D5F458]);
    v24 = sub_266DAB13C();
    v26 = v25;
    (*(v14 + 8))(v17, v13);
    v27 = sub_266C22A3C(v24, v26, &v51);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_266C08000, v19, v20, "[ConfirmationTask] parsing nlv3 intent: %s", v23, 0xCu);
    v28 = v45;
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x26D5F2480](v28, -1, -1);
    v29 = v23;
    v9 = v46;
    MEMORY[0x26D5F2480](v29, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  v30 = v50;
  sub_266DA8BCC();
  v31 = sub_266DA876C();
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) != 1)
  {
    v33 = sub_266DA875C();
    v35 = v34;
    (*(*(v31 - 8) + 8))(v30, v31);
    if (v33 == 0x746361746E6F63 && v35 == 0xE700000000000000)
    {

      v38 = v49;
    }

    else
    {
      v37 = sub_266DAB17C();
      v38 = v49;
      if ((v37 & 1) == 0)
      {
        if (v33 == 0x794D646E6966 && v35 == 0xE600000000000000)
        {
        }

        else
        {
          v43 = sub_266DAB17C();

          if ((v43 & 1) == 0)
          {
            return 3;
          }
        }

        v47(v5, a1, v38);
        v32 = sub_266C5F914(v5);
        v39 = type metadata accessor for FindDeviceNLIntent;
        v40 = v5;
LABEL_17:
        sub_266C5FD18(v40, v39);
        return v32;
      }
    }

    v47(v9, a1, v38);
    v32 = sub_266C5F510(v9);
    v39 = type metadata accessor for ContactNLIntent;
    v40 = v9;
    goto LABEL_17;
  }

  sub_266C57D90(v30);
  return 3;
}

uint64_t sub_266C5EC54(uint64_t a1)
{
  v2 = sub_266DA819C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v39 - v8;
  if (qword_2800C91E0 != -1)
  {
    swift_once();
  }

  v10 = sub_266DA94AC();
  v11 = __swift_project_value_buffer(v10, qword_2800CA580);
  v41 = *(v3 + 16);
  v41(v9, a1, v2);
  v12 = sub_266DA948C();
  v13 = sub_266DAAB0C();
  v14 = &off_266DAD000;
  if (os_log_type_enabled(v12, v13))
  {
    v15 = swift_slowAlloc();
    v39[0] = swift_slowAlloc();
    v43 = v39[0];
    *v15 = 136315138;
    v41(v7, v9, v2);
    v16 = sub_266DAA72C();
    v39[1] = v11;
    v40 = a1;
    v17 = v7;
    v18 = v16;
    v20 = v19;
    (*(v3 + 8))(v9, v2);
    v21 = v18;
    v7 = v17;
    v22 = sub_266C22A3C(v21, v20, &v43);
    a1 = v40;

    *(v15 + 4) = v22;
    _os_log_impl(&dword_266C08000, v12, v13, "[ConfirmationTask] parsing DirectInvocation: %s", v15, 0xCu);
    v23 = v39[0];
    __swift_destroy_boxed_opaque_existential_0(v39[0]);
    MEMORY[0x26D5F2480](v23, -1, -1);
    v24 = v15;
    v14 = &off_266DAD000;
    MEMORY[0x26D5F2480](v24, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v9, v2);
  }

  v41(v7, a1, v2);
  sub_266D6EB44(v7, &v43);
  v25 = v43;
  if (v43 != 3)
  {
    v26 = sub_266DA948C();
    v27 = sub_266DAAB0C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43 = v29;
      *v28 = *(v14 + 134);
      v42 = v25;
      v30 = sub_266DAA72C();
      v32 = sub_266C22A3C(v30, v31, &v43);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_266C08000, v26, v27, "[ConfirmationTask] returning confirmation response: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x26D5F2480](v29, -1, -1);
      MEMORY[0x26D5F2480](v28, -1, -1);
    }

    v33 = sub_266DA948C();
    v34 = sub_266DAAB0C();
    v35 = os_log_type_enabled(v33, v34);
    if (v25)
    {
      if (v25 == 1)
      {
        if (!v35)
        {
          v25 = 1;
          goto LABEL_21;
        }

        v36 = "[ConfirmationTask] user rejected";
      }

      else
      {
        if (!v35)
        {
          v25 = 2;
          goto LABEL_21;
        }

        v36 = "[ConfirmationTask] user cancelled";
      }
    }

    else
    {
      if (!v35)
      {
        v25 = 0;
        goto LABEL_21;
      }

      v36 = "[ConfirmationTask] user confirmed";
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_266C08000, v33, v34, v36, v37, 2u);
    MEMORY[0x26D5F2480](v37, -1, -1);
LABEL_21:
  }

  return v25;
}

uint64_t sub_266C5F0A0(uint64_t a1, int a2)
{
  v4 = sub_266DA81DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v34[-v10];
  if (qword_2800C91E0 != -1)
  {
    swift_once();
  }

  v12 = sub_266DA94AC();
  v13 = __swift_project_value_buffer(v12, qword_2800CA580);
  v14 = *(v5 + 16);
  v14(v11, a1, v4);
  v37 = v13;
  v15 = sub_266DA948C();
  v16 = sub_266DAAB0C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v35 = a2;
    v20 = v19;
    v38 = v19;
    *v18 = 136315138;
    v14(v9, v11, v4);
    v21 = sub_266DAA72C();
    v23 = v22;
    (*(v5 + 8))(v11, v4);
    v24 = sub_266C22A3C(v21, v23, &v38);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_266C08000, v15, v16, "[ConfirmationTask] parsing USOParse: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v25 = v20;
    LOBYTE(v20) = v35;
    MEMORY[0x26D5F2480](v25, -1, -1);
    MEMORY[0x26D5F2480](v18, -1, -1);

    if ((v20 & 1) == 0)
    {
LABEL_5:
      v26 = sub_266DA948C();
      v27 = sub_266DAAB0C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_266C08000, v26, v27, "[ConfirmationTask] NLX is disabled, returning nil task", v28, 2u);
        v29 = 3;
LABEL_19:
        MEMORY[0x26D5F2480](v28, -1, -1);
        goto LABEL_20;
      }

      v29 = 3;
      goto LABEL_20;
    }
  }

  else
  {

    (*(v5 + 8))(v11, v4);
    if ((a2 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  if (sub_266D652C8())
  {
    v26 = sub_266DA948C();
    v30 = sub_266DAAB0C();
    if (os_log_type_enabled(v26, v30))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_266C08000, v26, v30, "[ConfirmationTask] user confirmed", v28, 2u);
      v29 = 0;
      goto LABEL_19;
    }

    v29 = 0;
  }

  else
  {
    if (sub_266D652E0())
    {
      v26 = sub_266DA948C();
      v31 = sub_266DAAB0C();
      if (!os_log_type_enabled(v26, v31))
      {
        v29 = 1;
        goto LABEL_20;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_266C08000, v26, v31, "[ConfirmationTask] user rejected", v28, 2u);
      v29 = 1;
      goto LABEL_19;
    }

    if ((sub_266D652F8() & 1) == 0)
    {
      return 3;
    }

    v26 = sub_266DA948C();
    v32 = sub_266DAAB0C();
    v29 = 2;
    if (os_log_type_enabled(v26, v32))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_266C08000, v26, v32, "[ConfirmationTask] user cancelled", v28, 2u);
      goto LABEL_19;
    }
  }

LABEL_20:

  return v29;
}

uint64_t sub_266C5F510(uint64_t a1)
{
  v2 = type metadata accessor for ContactNLIntent();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800C91E0 != -1)
  {
    swift_once();
  }

  v6 = sub_266DA94AC();
  __swift_project_value_buffer(v6, qword_2800CA580);
  sub_266C5FD78(a1, v5, type metadata accessor for ContactNLIntent);
  v7 = sub_266DA948C();
  v8 = sub_266DAAB0C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    sub_266C5FDE0(&unk_28156F658, type metadata accessor for ContactNLIntent);
    v11 = sub_266DAB13C();
    v13 = v12;
    sub_266C5FD18(v5, type metadata accessor for ContactNLIntent);
    v14 = sub_266C22A3C(v11, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_266C08000, v7, v8, "[ConfirmationTask] parsing contactNLIntent: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D5F2480](v10, -1, -1);
    MEMORY[0x26D5F2480](v9, -1, -1);
  }

  else
  {

    sub_266C5FD18(v5, type metadata accessor for ContactNLIntent);
  }

  if (qword_28156F720 != -1)
  {
    swift_once();
  }

  sub_266C5FDE0(&qword_28156F668, type metadata accessor for ContactNLIntent);
  sub_266DA873C();
  v15 = v22;
  switch(v22)
  {
    case 1u:
      v16 = sub_266DA948C();
      v17 = sub_266DAAB0C();
      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_16;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "[ConfirmationTask] user rejected";
      break;
    case 2u:
      v16 = sub_266DA948C();
      v17 = sub_266DAAB0C();
      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_16;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "[ConfirmationTask] user cancelled";
      break;
    case 3u:
      return v15;
    default:
      v16 = sub_266DA948C();
      v17 = sub_266DAAB0C();
      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_16;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "[ConfirmationTask] user confirmed";
      break;
  }

  _os_log_impl(&dword_266C08000, v16, v17, v19, v18, 2u);
  MEMORY[0x26D5F2480](v18, -1, -1);
LABEL_16:

  return v15;
}

uint64_t sub_266C5F914(uint64_t a1)
{
  DeviceNLIntent = type metadata accessor for FindDeviceNLIntent(0);
  v3 = *(*(DeviceNLIntent - 8) + 64);
  MEMORY[0x28223BE20](DeviceNLIntent);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800C91E0 != -1)
  {
    swift_once();
  }

  v6 = sub_266DA94AC();
  __swift_project_value_buffer(v6, qword_2800CA580);
  sub_266C5FD78(a1, v5, type metadata accessor for FindDeviceNLIntent);
  v7 = sub_266DA948C();
  v8 = sub_266DAAB0C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    sub_266C5FDE0(&qword_2800CA5B0, type metadata accessor for FindDeviceNLIntent);
    v11 = sub_266DAB13C();
    v13 = v12;
    sub_266C5FD18(v5, type metadata accessor for FindDeviceNLIntent);
    v14 = sub_266C22A3C(v11, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_266C08000, v7, v8, "[ConfirmationTask] parsing findDeviceNLIntent: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D5F2480](v10, -1, -1);
    MEMORY[0x26D5F2480](v9, -1, -1);
  }

  else
  {

    sub_266C5FD18(v5, type metadata accessor for FindDeviceNLIntent);
  }

  if (qword_2800C92E8 != -1)
  {
    swift_once();
  }

  sub_266C5FDE0(&qword_2800CA5A8, type metadata accessor for FindDeviceNLIntent);
  sub_266DA873C();
  v15 = v22;
  switch(v22)
  {
    case 1u:
      v16 = sub_266DA948C();
      v17 = sub_266DAAB0C();
      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_16;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "[ConfirmationTask] user rejected";
      break;
    case 2u:
      v16 = sub_266DA948C();
      v17 = sub_266DAAB0C();
      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_16;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "[ConfirmationTask] user cancelled";
      break;
    case 3u:
      return v15;
    default:
      v16 = sub_266DA948C();
      v17 = sub_266DAAB0C();
      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_16;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "[ConfirmationTask] user confirmed";
      break;
  }

  _os_log_impl(&dword_266C08000, v16, v17, v19, v18, 2u);
  MEMORY[0x26D5F2480](v18, -1, -1);
LABEL_16:

  return v15;
}

uint64_t sub_266C5FD18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_266C5FD78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_266C5FDE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_21()
{

  return swift_once();
}

id sub_266C5FE48(void *a1)
{
  swift_getErrorValue();
  v2 = sub_266D9D248(v12);
  v4 = v3;
  v5 = *MEMORY[0x277CEF588];
  if (v2 == sub_266DAA70C() && v4 == v6)
  {

    goto LABEL_8;
  }

  v8 = sub_266DAB17C();

  if (v8)
  {
LABEL_8:
    swift_getErrorValue();
    v9 = sub_266D9D360(v11);
    goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

double Location.coordinate.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t Location.horizontalAccuracy.getter()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  else
  {
    return *(v0 + 16);
  }
}

uint64_t Location.verticalAccuracy.getter()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  else
  {
    return *(v0 + 24);
  }
}

uint64_t sub_266C5FF68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  sub_266C61918(a1, 1701736302, 0xE400000000000000, &v13 - v8);
  v10 = type metadata accessor for Location();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    sub_266C1825C(v9, &qword_2800C9B20, &unk_266DB1EC0);
    v11 = 1;
  }

  else
  {
    sub_266C62440(v9, a2);
    v11 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v11, 1, v10);
}

__n128 Location.precision.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 Location.precision.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u8[0] = v2;
  return result;
}

uint64_t Location.timestamp.getter()
{
  v2 = *(OUTLINED_FUNCTION_23_2() + 28);
  v3 = sub_266DA746C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t type metadata accessor for Location()
{
  result = qword_2800CA630;
  if (!qword_2800CA630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Location.timestamp.setter()
{
  OUTLINED_FUNCTION_7_8();
  v2 = *(type metadata accessor for Location() + 28);
  v3 = sub_266DA746C();
  OUTLINED_FUNCTION_0(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t Location.timestamp.modify()
{
  OUTLINED_FUNCTION_7_8();
  v0 = *(type metadata accessor for Location() + 28);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Location.label.getter()
{
  v1 = (v0 + *(type metadata accessor for Location() + 32));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_4_4();
}

uint64_t Location.label.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_15_7() + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t Location.label.modify()
{
  OUTLINED_FUNCTION_7_8();
  v0 = *(type metadata accessor for Location() + 32);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Location.motionActivityState.getter()
{
  result = OUTLINED_FUNCTION_23_2();
  *v0 = *(v1 + *(result + 36));
  return result;
}

uint64_t Location.motionActivityState.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Location();
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t Location.motionActivityState.modify()
{
  OUTLINED_FUNCTION_7_8();
  v0 = *(type metadata accessor for Location() + 36);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Location.locationSource.getter()
{
  result = OUTLINED_FUNCTION_23_2();
  *v0 = *(v1 + *(result + 40));
  return result;
}

uint64_t Location.locationSource.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Location();
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t Location.locationSource.modify()
{
  OUTLINED_FUNCTION_7_8();
  v0 = *(type metadata accessor for Location() + 40);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Location.address.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_23_2() + 44);

  return sub_266C604A4(v2, v0);
}

uint64_t sub_266C604A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Location.address.setter()
{
  OUTLINED_FUNCTION_7_8();
  v2 = v1 + *(type metadata accessor for Location() + 44);

  return sub_266C60554(v0, v2);
}

uint64_t sub_266C60554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Location.address.modify()
{
  OUTLINED_FUNCTION_7_8();
  v0 = *(type metadata accessor for Location() + 44);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Location.emphasisId.getter()
{
  v1 = (v0 + *(type metadata accessor for Location() + 48));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_4_4();
}

uint64_t Location.emphasisId.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_15_7() + 48));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t Location.emphasisId.modify()
{
  OUTLINED_FUNCTION_7_8();
  v0 = *(type metadata accessor for Location() + 48);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Location.init(latitude:longitude:precision:timestamp:label:motionActivityState:locationSource:address:emphasisId:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12)
{
  v15 = *a1;
  v16 = a1[1];
  v17 = *(a1 + 16);
  v34 = *a5;
  v18 = *a6;
  v19 = type metadata accessor for Location();
  v20 = v19[8];
  v21 = v19[9];
  *(a9 + v21) = 6;
  v22 = (a9 + v20);
  v23 = v19[10];
  *(a9 + v23) = 4;
  v24 = v19[11];
  type metadata accessor for Address();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = v15;
  *(a9 + 24) = v16;
  *(a9 + 32) = v17;
  v29 = v19[7];
  v30 = sub_266DA746C();
  OUTLINED_FUNCTION_0(v30);
  (*(v31 + 32))(a9 + v29, a2);
  *v22 = a3;
  v22[1] = a4;
  *(a9 + v21) = v34;
  *(a9 + v23) = v18;
  result = sub_266C60554(a7, a9 + v24);
  v33 = (a9 + v19[12]);
  *v33 = a8;
  v33[1] = a12;
  return result;
}

uint64_t static Location.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21_2();
  v4 = type metadata accessor for Address();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_6();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  OUTLINED_FUNCTION_4_3(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA5B8, &qword_266DB1510);
  OUTLINED_FUNCTION_0(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v50 - v21;
  if (*v2 != *a2 || *(v2 + 8) != *(a2 + 8))
  {
    goto LABEL_39;
  }

  if (*(v2 + 32))
  {
    if (!*(a2 + 32))
    {
      goto LABEL_39;
    }
  }

  else
  {
    if (*(a2 + 32))
    {
      goto LABEL_39;
    }

    v23 = *(v2 + 16) == *(a2 + 16) && *(v2 + 24) == *(a2 + 24);
    if (!v23)
    {
      goto LABEL_39;
    }
  }

  v24 = type metadata accessor for Location();
  v25 = v24[7];
  if ((sub_266DA743C() & 1) == 0)
  {
    goto LABEL_39;
  }

  v26 = v24[8];
  v27 = (v2 + v26);
  v28 = *(v2 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_39;
    }

    v31 = *v27 == *v29 && v28 == v30;
    if (!v31 && (sub_266DAB17C() & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (v30)
  {
    goto LABEL_39;
  }

  v32 = v24[9];
  v33 = *(v2 + v32);
  v34 = *(a2 + v32);
  if (v33 == 6)
  {
    if (v34 != 6)
    {
      goto LABEL_39;
    }
  }

  else if (v33 != v34)
  {
    goto LABEL_39;
  }

  v35 = v24[10];
  v36 = *(v2 + v35);
  v37 = *(a2 + v35);
  if (v36 != 4)
  {
    if (v36 == v37)
    {
      goto LABEL_30;
    }

LABEL_39:
    v41 = 0;
    return v41 & 1;
  }

  if (v37 != 4)
  {
    goto LABEL_39;
  }

LABEL_30:
  v38 = v24[11];
  v39 = *(v17 + 48);
  sub_266C604A4(v2 + v38, v22);
  sub_266C604A4(a2 + v38, &v22[v39]);
  OUTLINED_FUNCTION_22_3(v22);
  if (v23)
  {
    OUTLINED_FUNCTION_22_3(&v22[v39]);
    if (v23)
    {
      sub_266C1825C(v22, &qword_2800CC420, &unk_266DB0480);
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  sub_266C604A4(v22, v16);
  OUTLINED_FUNCTION_22_3(&v22[v39]);
  if (v40)
  {
    sub_266C61F50();
LABEL_38:
    sub_266C1825C(v22, &qword_2800CA5B8, &qword_266DB1510);
    goto LABEL_39;
  }

  sub_266C62440(&v22[v39], v10);
  static Address.== infix(_:_:)();
  v44 = v43;
  sub_266C61F50();
  sub_266C61F50();
  sub_266C1825C(v22, &qword_2800CC420, &unk_266DB0480);
  if ((v44 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_42:
  v45 = v24[12];
  v46 = *(v2 + v45);
  v47 = *(v2 + v45 + 8);
  v48 = (a2 + v45);
  if (v46 == *v48 && v47 == v48[1])
  {
    v41 = 1;
  }

  else
  {
    v41 = sub_266DAB17C();
  }

  return v41 & 1;
}

uint64_t sub_266C60B48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F69736963657270 && a2 == 0xE90000000000006ELL;
      if (v7 || (sub_266DAB17C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
        if (v8 || (sub_266DAB17C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
          if (v9 || (sub_266DAB17C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x8000000266DC1D70 == a2;
            if (v10 || (sub_266DAB17C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEE00656372756F53;
              if (v11 || (sub_266DAB17C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
                if (v12 || (sub_266DAB17C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x7369736168706D65 && a2 == 0xEA00000000006449)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_266DAB17C();

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

unint64_t sub_266C60E2C(char a1)
{
  result = 0x656475746974616CLL;
  switch(a1)
  {
    case 1:
      result = 0x64757469676E6F6CLL;
      break;
    case 2:
      result = 0x6F69736963657270;
      break;
    case 3:
      result = 0x6D617473656D6974;
      break;
    case 4:
      result = 0x6C6562616CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    case 7:
      result = 0x73736572646461;
      break;
    case 8:
      result = 0x7369736168706D65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266C60F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266C60B48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266C60F7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C60E24();
  *a1 = result;
  return result;
}

uint64_t sub_266C60FA4(uint64_t a1)
{
  v2 = sub_266C61CBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C60FE0(uint64_t a1)
{
  v2 = sub_266C61CBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Location.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA5C0, &qword_266DB1518);
  OUTLINED_FUNCTION_0_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266C61CBC();
  sub_266DAB36C();
  v14 = *v3;
  LOBYTE(v33) = 0;
  OUTLINED_FUNCTION_5_4();
  sub_266DAB10C();
  if (!v2)
  {
    v15 = v3[1];
    LOBYTE(v33) = 1;
    OUTLINED_FUNCTION_5_4();
    sub_266DAB10C();
    v16 = *(v3 + 32);
    v33 = *(v3 + 1);
    v34 = v16;
    v32 = 2;
    sub_266C61D10();
    OUTLINED_FUNCTION_2_12();
    sub_266DAB11C();
    v17 = type metadata accessor for Location();
    v18 = v17[7];
    LOBYTE(v33) = 3;
    sub_266DA746C();
    OUTLINED_FUNCTION_5_10();
    sub_266C61F08(v19, v20);
    OUTLINED_FUNCTION_5_4();
    sub_266DAB11C();
    v21 = (v3 + v17[8]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v33) = 4;
    OUTLINED_FUNCTION_5_4();
    sub_266DAB09C();
    LOBYTE(v33) = *(v3 + v17[9]);
    v32 = 5;
    sub_266C61D64();
    OUTLINED_FUNCTION_2_12();
    sub_266DAB0DC();
    LOBYTE(v33) = *(v3 + v17[10]);
    v32 = 6;
    sub_266C61DB8();
    OUTLINED_FUNCTION_2_12();
    sub_266DAB0DC();
    v24 = v17[11];
    LOBYTE(v33) = 7;
    type metadata accessor for Address();
    OUTLINED_FUNCTION_4_12();
    sub_266C61F08(v25, v26);
    OUTLINED_FUNCTION_5_4();
    sub_266DAB0DC();
    v27 = (v3 + v17[12]);
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v33) = 8;
    OUTLINED_FUNCTION_5_4();
    sub_266DAB0EC();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t Location.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  OUTLINED_FUNCTION_4_3(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v70 = &v66 - v7;
  v78 = sub_266DA746C();
  v8 = OUTLINED_FUNCTION_0_2(v78);
  v74 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_6();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA5F8, &qword_266DB1520);
  v71 = OUTLINED_FUNCTION_0_2(v15);
  v72 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v66 - v20;
  v22 = type metadata accessor for Location();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_6();
  v28 = (v27 - v26);
  v30 = v29[9];
  *(v28 + v30) = 6;
  v31 = v29[10];
  *(v28 + v31) = 4;
  v32 = v29;
  v33 = v29[11];
  v34 = type metadata accessor for Address();
  v76 = v28;
  v77 = v33;
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  v39 = a1[3];
  v38 = a1[4];
  v79 = a1;
  v40 = __swift_project_boxed_opaque_existential_1(a1, v39);
  sub_266C61CBC();
  v73 = v21;
  v41 = v75;
  sub_266DAB34C();
  if (v41)
  {
    OUTLINED_FUNCTION_18_4();
    v42 = v77;
    v43 = v78;
    v47 = v76;
    __swift_destroy_boxed_opaque_existential_0(v79);
    if (v40)
    {
      (*(v74 + 8))(&v47[v32[7]], v43);
    }

    return sub_266C1825C(&v47[v42], &qword_2800CC420, &unk_266DB0480);
  }

  else
  {
    v44 = v14;
    v75 = v30;
    v67 = v31;
    v68 = v34;
    LOBYTE(v80) = 0;
    v45 = v71;
    OUTLINED_FUNCTION_13_4();
    sub_266DAB03C();
    v46 = v32;
    v48 = v76;
    *v76 = v49;
    OUTLINED_FUNCTION_12_6(1);
    sub_266DAB03C();
    v50 = v78;
    *(v48 + 8) = v51;
    v82 = 2;
    sub_266C61E0C();
    OUTLINED_FUNCTION_8_2();
    sub_266DAB05C();
    v52 = v77;
    v53 = v81;
    *(v48 + 16) = v80;
    *(v48 + 32) = v53;
    LOBYTE(v80) = 3;
    OUTLINED_FUNCTION_5_10();
    sub_266C61F08(v54, v55);
    sub_266DAB05C();
    (*(v74 + 32))(v48 + v32[7], v44, v50);
    OUTLINED_FUNCTION_12_6(4);
    v56 = sub_266DAAFCC();
    v57 = (v48 + v32[8]);
    *v57 = v56;
    v57[1] = v58;
    v82 = 5;
    sub_266C61E60();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_13_4();
    sub_266DAB00C();
    *(v48 + v75) = v80;
    v82 = 6;
    sub_266C61EB4();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_13_4();
    sub_266DAB00C();
    *(v48 + v67) = v80;
    LOBYTE(v80) = 7;
    OUTLINED_FUNCTION_4_12();
    sub_266C61F08(v59, v60);
    OUTLINED_FUNCTION_13_4();
    sub_266DAB00C();
    sub_266C60554(v70, v48 + v52);
    OUTLINED_FUNCTION_12_6(8);
    OUTLINED_FUNCTION_13_4();
    v61 = sub_266DAB01C();
    v63 = v62;
    (*(v72 + 8))(v73, v45);
    v64 = (v48 + v46[12]);
    *v64 = v61;
    v64[1] = v63;
    sub_266C24F5C(v48, v69);
    __swift_destroy_boxed_opaque_existential_0(v79);
    OUTLINED_FUNCTION_3_10();
    return sub_266C61F50();
  }
}

uint64_t sub_266C61918@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  OUTLINED_FUNCTION_4_3(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v13 = type metadata accessor for Location();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_6();
  v19 = v18 - v17;
  v51 = v20[9];
  *(v19 + v51) = 6;
  v21 = v20[10];
  *(v19 + v21) = 4;
  v22 = v20[11];
  v23 = type metadata accessor for Address();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  v27 = [a1 location];
  if (v27)
  {
    v28 = v27;
    v49 = a3;
    v50 = a4;
    [v27 coordinate];
    *v19 = v29;
    [v28 coordinate];
    *(v19 + 8) = v30;
    v31 = [a1 isCoarse];
    if (v31 && (v32 = v31, v33 = [v31 BOOLValue], v32, v33))
    {
      *(v19 + 16) = 0;
      *(v19 + 24) = 0;
      *(v19 + 32) = 1;
    }

    else
    {
      [v28 horizontalAccuracy];
      v35 = v34;
      [v28 verticalAccuracy];
      *(v19 + 16) = v35;
      *(v19 + 24) = v36;
      *(v19 + 32) = 0;
    }

    v37 = (v19 + v13[8]);
    v38 = [v28 timestamp];
    v39 = v19 + v13[7];
    sub_266DA744C();

    *v37 = sub_266C62498(a1);
    v37[1] = v40;
    sub_266D7FBD8();

    __swift_storeEnumTagSinglePayload(v12, 0, 1, v23);
    sub_266C60554(v12, v19 + v22);
    v41 = v52;
    *(v19 + v51) = 6;
    *(v19 + v21) = 4;
    v42 = (v19 + v13[12]);
    v43 = v49;
    v44 = v50;
    *v42 = v41;
    v42[1] = v43;
    sub_266C24F5C(v19, v44);
    __swift_storeEnumTagSinglePayload(v44, 0, 1, v13);
    OUTLINED_FUNCTION_3_10();
    return sub_266C61F50();
  }

  else
  {

    sub_266C1825C(v19 + v22, &qword_2800CC420, &unk_266DB0480);
    OUTLINED_FUNCTION_43();
    return __swift_storeEnumTagSinglePayload(v46, v47, v48, v13);
  }
}

uint64_t sub_266C61C34()
{
  v3 = OUTLINED_FUNCTION_15_7();
  v4 = OUTLINED_FUNCTION_4_3(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_6();
  v9 = v8 - v7;
  v2(0);
  sub_266C24F5C(v1, v9);
  return v0(v9);
}

unint64_t sub_266C61CBC()
{
  result = qword_2800CA5C8;
  if (!qword_2800CA5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA5C8);
  }

  return result;
}

unint64_t sub_266C61D10()
{
  result = qword_2800CA5D0;
  if (!qword_2800CA5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA5D0);
  }

  return result;
}

unint64_t sub_266C61D64()
{
  result = qword_2800CA5E0;
  if (!qword_2800CA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA5E0);
  }

  return result;
}

unint64_t sub_266C61DB8()
{
  result = qword_2800CA5E8;
  if (!qword_2800CA5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA5E8);
  }

  return result;
}

unint64_t sub_266C61E0C()
{
  result = qword_2800CA600;
  if (!qword_2800CA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA600);
  }

  return result;
}

unint64_t sub_266C61E60()
{
  result = qword_2800CA610;
  if (!qword_2800CA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA610);
  }

  return result;
}

unint64_t sub_266C61EB4()
{
  result = qword_2800CA618;
  if (!qword_2800CA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA618);
  }

  return result;
}

uint64_t sub_266C61F08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266C61F50()
{
  v1 = OUTLINED_FUNCTION_7_8();
  v3 = v2(v1);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_266C61FA4()
{
  result = qword_2800CA628;
  if (!qword_2800CA628)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800CA628);
  }

  return result;
}

void sub_266C62010()
{
  sub_266DA746C();
  if (v0 <= 0x3F)
  {
    sub_266C62130(319, &qword_2800C9C68);
    if (v1 <= 0x3F)
    {
      sub_266C62130(319, &qword_2800CA640);
      if (v2 <= 0x3F)
      {
        sub_266C62130(319, &qword_2800CA648);
        if (v3 <= 0x3F)
        {
          sub_266C6217C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_266C62130(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_266DAAC1C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_266C6217C()
{
  if (!qword_2800CA650)
  {
    type metadata accessor for Address();
    v0 = sub_266DAAC1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2800CA650);
    }
  }
}

uint64_t getEnumTagSinglePayload for Location.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for Location.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266C6233C()
{
  result = qword_2800CA658;
  if (!qword_2800CA658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA658);
  }

  return result;
}

unint64_t sub_266C62394()
{
  result = qword_2800CA660;
  if (!qword_2800CA660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA660);
  }

  return result;
}

unint64_t sub_266C623EC()
{
  result = qword_2800CA668;
  if (!qword_2800CA668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA668);
  }

  return result;
}

uint64_t sub_266C62440(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_21_2();
  v5 = v4(v3);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_4_4();
  v9(v8);
  return a2;
}

uint64_t sub_266C62498(void *a1)
{
  v1 = [a1 label];
  if (v1)
  {
    v2 = v1;
    sub_266DAA70C();
  }

  return OUTLINED_FUNCTION_4_4();
}

uint64_t OUTLINED_FUNCTION_15_7()
{

  return type metadata accessor for Location();
}

uint64_t OUTLINED_FUNCTION_23_2()
{

  return type metadata accessor for Location();
}

uint64_t sub_266C62630()
{
  sub_266DA919C();
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  *(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_isItem) = 0;
  *(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_isHeadphones) = 0;
  *(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_isEarbuds) = 0;
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  *(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_owner) = 0;
  *(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_ownerIsMe) = 0;
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  *(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_displayByName) = 0;
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  return v0;
}

uint64_t sub_266C62788(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_owner);
  *(v1 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_owner) = a1;
}

uint64_t sub_266C627D4()
{
  sub_266C55ECC(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_deviceName);
  sub_266C55ECC(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_emoji);
  sub_266C55ECC(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_productName);
  sub_266C55ECC(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_deviceClass);
  sub_266C55ECC(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_category);
  sub_266C55ECC(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_deviceLocality);
  v1 = *(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_owner);

  sub_266C55ECC(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_specificityLevel);
  sub_266C55ECC(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_conversationalProductName);
  sub_266C55ECC(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_image);
  sub_266C55ECC(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_selectAction);
  sub_266C55ECC(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_emphasisId);
  return v0;
}

uint64_t sub_266C628E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  *(v1 + 16) = 0;
  v9 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emphasisId;
  v10 = sub_266DA919C();
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  OUTLINED_FUNCTION_14_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_25_1(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceName);
  OUTLINED_FUNCTION_14_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_25_1(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emoji);
  OUTLINED_FUNCTION_14_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_25_1(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_productName);
  OUTLINED_FUNCTION_14_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_25_1(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceClass);
  OUTLINED_FUNCTION_14_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_25_1(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_category);
  *(v1 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_isItem) = *(a1 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_isItem);
  *(v1 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_isHeadphones) = *(a1 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_isHeadphones);
  *(v1 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_isEarbuds) = *(a1 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_isEarbuds);
  OUTLINED_FUNCTION_14_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_25_1(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceLocality);
  *(v1 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_owner) = *(a1 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_owner);
  *(v1 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_ownerIsMe) = *(a1 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_ownerIsMe);
  OUTLINED_FUNCTION_14_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_37_0(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_specificityLevel);
  OUTLINED_FUNCTION_14_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_37_0(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_conversationalProductName);
  *(v1 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_displayByName) = *(a1 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_displayByName);
  OUTLINED_FUNCTION_14_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_37_0(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_image);
  OUTLINED_FUNCTION_14_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_37_0(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_selectAction);
  v11 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_emphasisId;
  OUTLINED_FUNCTION_14_7();
  swift_beginAccess();
  sub_266C64D14(a1 + v11, v8);

  v12 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emphasisId;
  swift_beginAccess();
  sub_266C64CA4(v8, v1 + v12);
  swift_endAccess();
  return v1;
}

uint64_t sub_266C62BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v95 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v7 = OUTLINED_FUNCTION_4_3(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_33_0();
  v93 = v10;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_4();
  v92 = v12;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_4();
  v91 = v14;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19_4();
  v90 = v16;
  OUTLINED_FUNCTION_15_8();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v89 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v89 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v89 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v89 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v89 - v31;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v33);
  v35 = &v89 - v34;
  v36 = a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL;
  if (v36 || (OUTLINED_FUNCTION_9_5() & 1) != 0)
  {
    v37 = OUTLINED_FUNCTION_18_5(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceName);
    sub_266C64D14(v37, v35);
    sub_266DA919C();
    OUTLINED_FUNCTION_4_13(v35);
    if (!v36)
    {
      goto LABEL_130;
    }

    v38 = v35;
    goto LABEL_9;
  }

  v41 = a1 == 0x696A6F6D65 && a2 == 0xE500000000000000;
  if (v41 || (OUTLINED_FUNCTION_9_5() & 1) != 0)
  {
    v42 = OUTLINED_FUNCTION_18_5(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emoji);
    sub_266C64D14(v42, v3);
    sub_266DA919C();
    OUTLINED_FUNCTION_4_13(v3);
    if (!v36)
    {
      goto LABEL_130;
    }

    v38 = v3;
    goto LABEL_9;
  }

  v44 = a1 == OUTLINED_FUNCTION_27_1() && a2 == v43;
  if (v44 || (OUTLINED_FUNCTION_9_5() & 1) != 0)
  {
    v45 = OUTLINED_FUNCTION_18_5(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_productName);
    sub_266C64D14(v45, v32);
    sub_266DA919C();
    OUTLINED_FUNCTION_4_13(v32);
    if (!v36)
    {
      goto LABEL_130;
    }

    v38 = v32;
    goto LABEL_9;
  }

  v47 = a1 == OUTLINED_FUNCTION_26_3() && a2 == v46;
  if (v47 || (OUTLINED_FUNCTION_9_5() & 1) != 0)
  {
    v48 = OUTLINED_FUNCTION_18_5(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceClass);
    sub_266C64D14(v48, v29);
    sub_266DA919C();
    OUTLINED_FUNCTION_4_13(v29);
    if (!v36)
    {
      goto LABEL_130;
    }

    v38 = v29;
    goto LABEL_9;
  }

  v49 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v49 || (OUTLINED_FUNCTION_9_5() & 1) != 0)
  {
    v50 = OUTLINED_FUNCTION_18_5(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_category);
    sub_266C64D14(v50, v26);
    v51 = sub_266DA919C();
    if (__swift_getEnumTagSinglePayload(v26, 1, v51) != 1)
    {
      v52 = v95;
      v95[3] = v51;
      __swift_allocate_boxed_opaque_existential_1(v52);
      v53 = *(*(v51 - 8) + 32);
      return v53();
    }

    v38 = v26;
LABEL_9:
    result = sub_266C55ECC(v38);
LABEL_10:
    v40 = v95;
    *v95 = 0u;
    *(v40 + 1) = 0u;
    return result;
  }

  result = 0x6D6574497369;
  v54 = a1 == 0x6D6574497369 && a2 == 0xE600000000000000;
  if (v54 || (result = OUTLINED_FUNCTION_9_5(), (result & 1) != 0))
  {
    v55 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_isItem;
LABEL_50:
    v56 = v95;
    v57 = *(v94 + v55);
    v95[3] = MEMORY[0x277D839B0];
    *v56 = v57;
    return result;
  }

  result = OUTLINED_FUNCTION_28_0();
  v59 = a1 == result && a2 == v58;
  if (v59 || (result = OUTLINED_FUNCTION_9_5(), (result & 1) != 0))
  {
    v55 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_isHeadphones;
    goto LABEL_50;
  }

  result = 0x6475627261457369;
  v60 = a1 == 0x6475627261457369 && a2 == 0xE900000000000073;
  if (v60 || (result = OUTLINED_FUNCTION_9_5(), (result & 1) != 0))
  {
    v55 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_isEarbuds;
    goto LABEL_50;
  }

  v62 = a1 == OUTLINED_FUNCTION_24_3() && a2 == v61;
  if (v62 || (OUTLINED_FUNCTION_9_5() & 1) != 0)
  {
    v63 = OUTLINED_FUNCTION_18_5(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceLocality);
    sub_266C64D14(v63, v23);
    sub_266DA919C();
    OUTLINED_FUNCTION_4_13(v23);
    if (!v36)
    {
      goto LABEL_130;
    }

    v38 = v23;
    goto LABEL_9;
  }

  result = 0x72656E776FLL;
  if (a1 != 0x72656E776FLL || a2 != 0xE500000000000000)
  {
    result = OUTLINED_FUNCTION_9_5();
    if ((result & 1) == 0)
    {
      result = 0x4D734972656E776FLL;
      v68 = a1 == 0x4D734972656E776FLL && a2 == 0xE900000000000065;
      if (v68 || (result = OUTLINED_FUNCTION_9_5(), (result & 1) != 0))
      {
        v55 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_ownerIsMe;
      }

      else
      {
        v69 = a1 == 0xD000000000000010 && 0x8000000266DC1220 == a2;
        if (v69 || (OUTLINED_FUNCTION_9_5() & 1) != 0)
        {
          v70 = OUTLINED_FUNCTION_18_5(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_specificityLevel);
          sub_266C64D14(v70, v20);
          sub_266DA919C();
          OUTLINED_FUNCTION_4_13(v20);
          if (!v36)
          {
            goto LABEL_130;
          }

          v38 = v20;
          goto LABEL_9;
        }

        v71 = a1 == 0xD000000000000019 && 0x8000000266DC1240 == a2;
        if (v71 || (OUTLINED_FUNCTION_9_5() & 1) != 0)
        {
          v72 = OUTLINED_FUNCTION_18_5(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_conversationalProductName);
          v73 = v90;
          sub_266C64D14(v72, v90);
          sub_266DA919C();
          OUTLINED_FUNCTION_4_13(v73);
          if (!v36)
          {
            goto LABEL_130;
          }

          v38 = v90;
          goto LABEL_9;
        }

        result = OUTLINED_FUNCTION_23_3();
        if (a1 != result || a2 != v74)
        {
          result = OUTLINED_FUNCTION_9_5();
          if ((result & 1) == 0)
          {
            v76 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
            if (v76 || (OUTLINED_FUNCTION_9_5() & 1) != 0)
            {
              v77 = OUTLINED_FUNCTION_18_5(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_image);
              v78 = v91;
              sub_266C64D14(v77, v91);
              sub_266DA919C();
              OUTLINED_FUNCTION_4_13(v78);
              if (!v36)
              {
                goto LABEL_130;
              }

              v38 = v91;
            }

            else
            {
              v80 = a1 == OUTLINED_FUNCTION_29_0() && a2 == v79;
              if (v80 || (OUTLINED_FUNCTION_9_5() & 1) != 0)
              {
                v81 = OUTLINED_FUNCTION_18_5(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_selectAction);
                v82 = v92;
                sub_266C64D14(v81, v92);
                sub_266DA919C();
                OUTLINED_FUNCTION_4_13(v82);
                if (!v36)
                {
                  goto LABEL_130;
                }

                v38 = v92;
              }

              else
              {
                if (a1 != 0x7369736168706D65 || a2 != 0xEA00000000006449)
                {
                  result = OUTLINED_FUNCTION_9_5();
                  if ((result & 1) == 0)
                  {
                    goto LABEL_10;
                  }
                }

                v84 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emphasisId;
                v85 = v94;
                OUTLINED_FUNCTION_14_7();
                swift_beginAccess();
                v86 = v85 + v84;
                v87 = v93;
                sub_266C64D14(v86, v93);
                sub_266DA919C();
                OUTLINED_FUNCTION_4_13(v87);
                if (!v36)
                {
LABEL_130:
                  OUTLINED_FUNCTION_21_3();
                  OUTLINED_FUNCTION_6_10();
                  v53 = *(v88 + 32);
                  return v53();
                }

                v38 = v93;
              }
            }

            goto LABEL_9;
          }
        }

        v55 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_displayByName;
      }

      goto LABEL_50;
    }
  }

  v65 = *(v94 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_owner);
  if (!v65)
  {
    goto LABEL_10;
  }

  v66 = sub_266DA900C();
  v67 = v95;
  v95[3] = v66;
  *v67 = v65;
}

uint64_t sub_266C634DC()
{
  v0 = sub_266DAB1BC();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_266C63534(char a1)
{
  result = 0x614E656369766564;
  switch(a1)
  {
    case 1:
      result = 0x696A6F6D65;
      break;
    case 2:
      result = OUTLINED_FUNCTION_27_1();
      break;
    case 3:
      result = OUTLINED_FUNCTION_26_3();
      break;
    case 4:
      result = 0x79726F6765746163;
      break;
    case 5:
      result = 0x6D6574497369;
      break;
    case 6:
      result = OUTLINED_FUNCTION_28_0();
      break;
    case 7:
      result = 0x6475627261457369;
      break;
    case 8:
      result = OUTLINED_FUNCTION_24_3();
      break;
    case 9:
      result = 0x72656E776FLL;
      break;
    case 10:
      result = 0x4D734972656E776FLL;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000019;
      break;
    case 13:
      result = OUTLINED_FUNCTION_23_3();
      break;
    case 14:
      result = 0x6567616D69;
      break;
    case 15:
      result = OUTLINED_FUNCTION_29_0();
      break;
    case 16:
      result = 0x7369736168706D65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266C63734@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266C634DC();
  *a2 = result;
  return result;
}

uint64_t sub_266C63764@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266C63534(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266C63798@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C63530();
  *a1 = result;
  return result;
}

uint64_t sub_266C637CC(uint64_t a1)
{
  v2 = sub_266C64BE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C63808(uint64_t a1)
{
  v2 = sub_266C64BE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C63844()
{
  sub_266C55ECC(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceName);
  sub_266C55ECC(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emoji);
  sub_266C55ECC(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_productName);
  sub_266C55ECC(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceClass);
  sub_266C55ECC(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_category);
  sub_266C55ECC(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceLocality);
  v1 = *(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_owner);

  sub_266C55ECC(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_specificityLevel);
  sub_266C55ECC(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_conversationalProductName);
  sub_266C55ECC(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_image);
  sub_266C55ECC(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_selectAction);
  sub_266C55ECC(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emphasisId);
  return v0;
}

uint64_t sub_266C6393C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_266C639C0()
{
  sub_266C63E94();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_266C63A80(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA6C8, &qword_266DB1810);
  OUTLINED_FUNCTION_0_2(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266C64BE0();
  sub_266DAB36C();
  LOBYTE(v32) = 0;
  sub_266DA919C();
  OUTLINED_FUNCTION_17_7();
  sub_266C64B98(v20, v21);
  OUTLINED_FUNCTION_1_15();
  if (!v2)
  {
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_0_22();
    v22 = *(v3 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_isItem);
    OUTLINED_FUNCTION_8_3(5);
    v23 = *(v3 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_isHeadphones);
    OUTLINED_FUNCTION_8_3(6);
    v24 = *(v3 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_isEarbuds);
    OUTLINED_FUNCTION_8_3(7);
    OUTLINED_FUNCTION_0_22();
    v32 = *(v3 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_owner);
    v33 = 9;
    sub_266DA900C();
    OUTLINED_FUNCTION_16_5();
    sub_266C64B98(v25, v26);
    sub_266DAB0DC();
    v27 = *(v3 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_ownerIsMe);
    OUTLINED_FUNCTION_8_3(10);
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_0_22();
    v28 = *(v3 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_displayByName);
    OUTLINED_FUNCTION_8_3(13);
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_0_22();
    v29 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emphasisId;
    OUTLINED_FUNCTION_14_7();
    swift_beginAccess();
    sub_266C64D14(v3 + v29, v10);
    v33 = 16;
    OUTLINED_FUNCTION_1_15();
    sub_266C55ECC(v10);
  }

  return (*(v13 + 8))(v18, v11);
}

uint64_t sub_266C63E44(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_266C63FD0(a1);
  return v5;
}

void sub_266C63E94()
{
  if (!qword_2800CA680)
  {
    sub_266DA919C();
    v0 = sub_266DAAC1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2800CA680);
    }
  }
}

void sub_266C63F14()
{
  sub_266C63E94();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_266C63FD0(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v5 = OUTLINED_FUNCTION_4_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_33_0();
  v73 = v8;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_4();
  v74 = v10;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_4();
  v75 = v12;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_4();
  v76 = v14;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19_4();
  v77 = v16;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19_4();
  v78 = v18;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19_4();
  v79 = v20;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_19_4();
  v80 = v22;
  OUTLINED_FUNCTION_15_8();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v72 - v25;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v27);
  v83 = &v72 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA6A8, &qword_266DB1808);
  v30 = OUTLINED_FUNCTION_0_2(v29);
  v81 = v31;
  v82 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v34);
  v36 = &v72 - v35;
  *(v1 + 16) = 0;
  v37 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emphasisId;
  sub_266DA919C();
  v86 = v1;
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  v43 = a1[3];
  v42 = a1[4];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v43);
  sub_266C64BE0();
  v44 = v84;
  sub_266DAB34C();
  if (v44)
  {
    v48 = v86;

LABEL_4:
    sub_266C55ECC(v48 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emphasisId);
    type metadata accessor for FindmyDevice(0);
    v49 = *(*v48 + 48);
    v50 = *(*v48 + 52);
    swift_deallocPartialClassInstance();
    goto LABEL_5;
  }

  v84 = v37;
  LOBYTE(v87) = 0;
  OUTLINED_FUNCTION_17_7();
  v47 = sub_266C64B98(v45, v46);
  OUTLINED_FUNCTION_22_4();
  sub_266DAB00C();
  v52 = v86;
  sub_266C64C34(v83, v86 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceName);
  OUTLINED_FUNCTION_11_5(1);
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_22_4();
  sub_266DAB00C();
  sub_266C64C34(v2, v52 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emoji);
  OUTLINED_FUNCTION_11_5(2);
  OUTLINED_FUNCTION_12_7();
  v72 = 0;
  sub_266DAB00C();
  sub_266C64C34(v26, v52 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_productName);
  OUTLINED_FUNCTION_11_5(3);
  v53 = v80;
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_22_4();
  sub_266DAB00C();
  v54 = v47;
  sub_266C64C34(v53, v52 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceClass);
  OUTLINED_FUNCTION_11_5(4);
  v55 = v79;
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_22_4();
  sub_266DAB00C();
  sub_266C64C34(v55, v52 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_category);
  OUTLINED_FUNCTION_20_4(5);
  *(v52 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_isItem) = sub_266DAB02C() & 1;
  OUTLINED_FUNCTION_20_4(6);
  *(v52 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_isHeadphones) = sub_266DAB02C() & 1;
  OUTLINED_FUNCTION_20_4(7);
  *(v52 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_isEarbuds) = sub_266DAB02C() & 1;
  OUTLINED_FUNCTION_11_5(8);
  v56 = v78;
  OUTLINED_FUNCTION_12_7();
  sub_266DAB00C();
  v83 = 0;
  sub_266C64C34(v56, v52 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceLocality);
  sub_266DA900C();
  v88 = 9;
  OUTLINED_FUNCTION_16_5();
  sub_266C64B98(v57, v58);
  v59 = v83;
  sub_266DAB00C();
  v83 = v59;
  if (v59)
  {
    v60 = OUTLINED_FUNCTION_13_5();
    v61(v60);
    LODWORD(v84) = 0;
    OUTLINED_FUNCTION_7_9();
    v63 = v72;
    v48 = v86;

    sub_266C55ECC(v48 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceName);
    if (v63)
    {
      if (v36)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_266C55ECC(v48 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emoji);
      if (v36)
      {
LABEL_8:
        sub_266C55ECC(v48 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_productName);
        if ((v56 & 1) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }
    }

    if (!v56)
    {
LABEL_9:
      if (v54)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_266C55ECC(v48 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceClass);
    if (v54)
    {
LABEL_10:
      sub_266C55ECC(v48 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_category);
      if ((v53 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v53)
    {
LABEL_17:
      if (v84)
      {
        sub_266C55ECC(v48 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_image);
      }

      goto LABEL_4;
    }

LABEL_16:
    sub_266C55ECC(v48 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceLocality);
    goto LABEL_17;
  }

  *(v86 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_owner) = v87;
  v62 = OUTLINED_FUNCTION_36_1(10);
  v83 = 0;
  *(v86 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_ownerIsMe) = v62 & 1;
  OUTLINED_FUNCTION_11_5(11);
  OUTLINED_FUNCTION_10_6();
  v83 = 0;
  OUTLINED_FUNCTION_30_0(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_specificityLevel);
  sub_266C64C34(v77, v64);
  OUTLINED_FUNCTION_11_5(12);
  OUTLINED_FUNCTION_10_6();
  v83 = 0;
  OUTLINED_FUNCTION_30_0(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_conversationalProductName);
  sub_266C64C34(v76, v65);
  v66 = OUTLINED_FUNCTION_36_1(13);
  v83 = 0;
  *(v86 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_displayByName) = v66 & 1;
  OUTLINED_FUNCTION_11_5(14);
  OUTLINED_FUNCTION_10_6();
  v83 = 0;
  OUTLINED_FUNCTION_30_0(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_image);
  sub_266C64C34(v75, v67);
  OUTLINED_FUNCTION_11_5(15);
  OUTLINED_FUNCTION_10_6();
  v83 = 0;
  OUTLINED_FUNCTION_30_0(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_selectAction);
  sub_266C64C34(v74, v68);
  OUTLINED_FUNCTION_11_5(16);
  v69 = v82;
  v70 = v83;
  sub_266DAB00C();
  (*(v81 + 8))(v36, v69);
  v48 = v86;
  if (v70)
  {
  }

  else
  {
    v71 = v84;
    swift_beginAccess();
    sub_266C64CA4(v73, v48 + v71);
    swift_endAccess();
  }

LABEL_5:
  __swift_destroy_boxed_opaque_existential_0(v85);
  return v48;
}

void *sub_266C649A8()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_266C649F0(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t (*sub_266C64A3C())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_266C64AB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266C63E44(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_266C64B98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266C64BE0()
{
  result = qword_2800CA6B0;
  if (!qword_2800CA6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA6B0);
  }

  return result;
}

uint64_t sub_266C64C34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C64CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C64D14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for FindmyDevice.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266C64E64()
{
  result = qword_2800CA6E0;
  if (!qword_2800CA6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA6E0);
  }

  return result;
}

unint64_t sub_266C64EBC()
{
  result = qword_2800CA6E8;
  if (!qword_2800CA6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA6E8);
  }

  return result;
}

unint64_t sub_266C64F14()
{
  result = qword_2800CA6F0;
  if (!qword_2800CA6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA6F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_22()
{
  *(v1 - 104) = v0;

  return sub_266DAB0DC();
}

uint64_t OUTLINED_FUNCTION_1_15()
{

  return sub_266DAB0DC();
}

uint64_t OUTLINED_FUNCTION_8_3@<X0>(char a1@<W8>)
{
  *(v1 - 104) = a1;

  return sub_266DAB0FC();
}

uint64_t OUTLINED_FUNCTION_9_5()
{

  return sub_266DAB17C();
}

uint64_t OUTLINED_FUNCTION_10_6()
{
  v2 = *(v0 - 144);
  v3 = *(v0 - 136);

  return sub_266DAB00C();
}

uint64_t OUTLINED_FUNCTION_13_5()
{
  v2 = *(v1 - 144);
  v3 = *(*(v1 - 152) + 8);
  return v0;
}

uint64_t *OUTLINED_FUNCTION_21_3()
{
  v3 = *(v1 - 112);
  v3[3] = v0;

  return __swift_allocate_boxed_opaque_existential_1(v3);
}

uint64_t OUTLINED_FUNCTION_25_1@<X0>(uint64_t a1@<X8>)
{

  return sub_266C64D14(v2 + v3, v1 + a1);
}

uint64_t OUTLINED_FUNCTION_36_1@<X0>(char a1@<W8>)
{
  *(v1 - 104) = a1;
  v3 = *(v1 - 144);
  v4 = *(v1 - 136);

  return sub_266DAB02C();
}

uint64_t OUTLINED_FUNCTION_37_0@<X0>(uint64_t a1@<X8>)
{

  return sub_266C64D14(v2 + v3, v1 + a1);
}

uint64_t sub_266C652B0()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CA6F8);
  v1 = __swift_project_value_buffer(v0, qword_2800CA6F8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t Friend.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_4_4();
}

uint64_t Friend.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Friend.displayName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_4_4();
}

uint64_t Friend.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Friend.contactUUID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_4_4();
}

uint64_t Friend.contactUUID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Friend.contactHandles.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t type metadata accessor for Friend()
{
  result = qword_2800CA760;
  if (!qword_2800CA760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Friend.friendLocation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Friend() + 40);

  return sub_266C65690(a1, v3);
}

uint64_t sub_266C65690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA710, &qword_266DB6040);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Friend.init(identifier:displayName:contactUUID:contactHandles:sharesLocation:followsMyLocation:friendLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v18 = *(type metadata accessor for Friend() + 40);
  type metadata accessor for FriendLocation();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 57) = a10;

  return sub_266C65690(a11, a9 + v18);
}

void static Friend.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendLocation();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_6();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA710, &qword_266DB6040);
  OUTLINED_FUNCTION_4_3(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA718, &qword_266DB1968);
  OUTLINED_FUNCTION_0(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v32 - v21;
  v23 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v23 || (sub_266DAB17C() & 1) != 0)
  {
    v24 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (v24 || (sub_266DAB17C() & 1) != 0)
    {
      v25 = *(a1 + 40);
      v26 = *(a2 + 40);
      if (v25)
      {
        if (!v26)
        {
          goto LABEL_32;
        }

        v27 = *(a1 + 32) == *(a2 + 32) && v25 == v26;
        if (!v27 && (sub_266DAB17C() & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (v26)
      {
        goto LABEL_32;
      }

      if ((sub_266C65B10(*(a1 + 48), *(a2 + 48)) & 1) != 0 && *(a1 + 56) == *(a2 + 56) && *(a1 + 57) == *(a2 + 57))
      {
        v28 = *(type metadata accessor for Friend() + 40);
        v29 = *(v17 + 48);
        sub_266C67BE8(a1 + v28, v22, &qword_2800CA710, &qword_266DB6040);
        sub_266C67BE8(a2 + v28, &v22[v29], &qword_2800CA710, &qword_266DB6040);
        OUTLINED_FUNCTION_17_8(v22);
        if (v23)
        {
          OUTLINED_FUNCTION_17_8(&v22[v29]);
          if (v23)
          {
            sub_266C1825C(v22, &qword_2800CA710, &qword_266DB6040);
            goto LABEL_32;
          }
        }

        else
        {
          sub_266C67BE8(v22, v16, &qword_2800CA710, &qword_266DB6040);
          OUTLINED_FUNCTION_17_8(&v22[v29]);
          if (!v30)
          {
            sub_266C67C44(&v22[v29], v10, type metadata accessor for FriendLocation);
            static FriendLocation.== infix(_:_:)(v16, v10);
            sub_266C67CA0(v10, type metadata accessor for FriendLocation);
            sub_266C67CA0(v16, type metadata accessor for FriendLocation);
            sub_266C1825C(v22, &qword_2800CA710, &qword_266DB6040);
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_3_12();
          sub_266C67CA0(v16, v31);
        }

        sub_266C1825C(v22, &qword_2800CA718, &qword_266DB1968);
      }
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266C65B10(uint64_t result, uint64_t a2)
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
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v22 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a2 + 40);
      sub_266DAB2AC();

      sub_266DAA7BC();
      v16 = sub_266DAB2DC();
      v17 = ~(-1 << *(a2 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          return 0;
        }

        v19 = (*(a2 + 48) + 16 * v18);
        if (*v19 == v14 && v19[1] == v13)
        {
          break;
        }

        v21 = OUTLINED_FUNCTION_13_6();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);

      result = v22;
      if (v7)
      {
        continue;
      }

      break;
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
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_266C65CAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x55746361746E6F63 && a2 == 0xEB00000000444955;
      if (v7 || (sub_266DAB17C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x48746361746E6F63 && a2 == 0xEE0073656C646E61;
        if (v8 || (sub_266DAB17C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F4C736572616873 && a2 == 0xEE006E6F69746163;
          if (v9 || (sub_266DAB17C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x8000000266DC1E20 == a2;
            if (v10 || (sub_266DAB17C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6F4C646E65697266 && a2 == 0xEE006E6F69746163)
            {

              return 6;
            }

            else
            {
              v12 = sub_266DAB17C();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_266C65F14(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x4E79616C70736964;
      break;
    case 2:
      result = 0x55746361746E6F63;
      break;
    case 3:
      result = 0x48746361746E6F63;
      break;
    case 4:
      v3 = 0x736572616873;
      goto LABEL_8;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      v3 = 0x646E65697266;
LABEL_8:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F4C000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266C66010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266C65CAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266C66038@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C65F0C();
  *a1 = result;
  return result;
}

uint64_t sub_266C66060(uint64_t a1)
{
  v2 = sub_266C675D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C6609C(uint64_t a1)
{
  v2 = sub_266C675D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Friend.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA720, &qword_266DB1970);
  OUTLINED_FUNCTION_0_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v24[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266C675D0();
  sub_266DAB36C();
  v14 = *v3;
  v15 = v3[1];
  v28 = 0;
  OUTLINED_FUNCTION_5_4();
  sub_266DAB0EC();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v27 = 1;
    OUTLINED_FUNCTION_5_4();
    sub_266DAB0EC();
    v18 = v3[4];
    v19 = v3[5];
    v26 = 2;
    OUTLINED_FUNCTION_5_4();
    sub_266DAB09C();
    v25 = v3[6];
    v24[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA210, &qword_266DB02A8);
    sub_266C67624(&qword_2800CA730);
    OUTLINED_FUNCTION_5_4();
    sub_266DAB11C();
    v20 = *(v3 + 56);
    v24[14] = 4;
    OUTLINED_FUNCTION_5_4();
    sub_266DAB0FC();
    v21 = *(v3 + 57);
    v24[13] = 5;
    OUTLINED_FUNCTION_5_4();
    sub_266DAB0FC();
    v22 = *(type metadata accessor for Friend() + 40);
    v24[12] = 6;
    type metadata accessor for FriendLocation();
    sub_266C67690(&qword_2800CA738);
    OUTLINED_FUNCTION_5_4();
    sub_266DAB0DC();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t Friend.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA710, &qword_266DB6040);
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA740, &qword_266DB1978);
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v46 = v12;
  v47 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  v18 = type metadata accessor for Friend();
  v19 = OUTLINED_FUNCTION_4_3(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_6();
  v24 = v23 - v22;
  v26 = *(v25 + 48);
  v27 = type metadata accessor for FriendLocation();
  v50 = v26;
  v28 = v24;
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v27);
  v33 = a1[3];
  v32 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_266C675D0();
  v48 = v17;
  sub_266DAB34C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v49);

    return sub_266C1825C(v28 + v50, &qword_2800CA710, &qword_266DB6040);
  }

  else
  {
    v44 = v9;
    v34 = v46;
    v58 = 0;
    v35 = v28;
    *v28 = sub_266DAB01C();
    *(v28 + 8) = v36;
    v57 = 1;
    v37 = v34;
    *(v28 + 16) = sub_266DAB01C();
    *(v28 + 24) = v38;
    v56 = 2;
    *(v28 + 32) = sub_266DAAFCC();
    *(v28 + 40) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA210, &qword_266DB02A8);
    v55 = 3;
    sub_266C67624(&qword_2800CA748);
    sub_266DAB05C();
    *(v28 + 48) = v51;
    v54 = 4;
    *(v28 + 56) = sub_266DAB02C() & 1;
    v53 = 5;
    *(v28 + 57) = sub_266DAB02C() & 1;
    v52 = 6;
    sub_266C67690(&qword_2800CA750);
    v40 = v44;
    v42 = v47;
    v41 = v48;
    sub_266DAB00C();
    (*(v37 + 8))(v41, v42);
    sub_266C65690(v40, v35 + v50);
    sub_266C676D4(v35, v45);
    __swift_destroy_boxed_opaque_existential_0(v49);
    return sub_266C67CA0(v35, type metadata accessor for Friend);
  }
}

void Friend.init(from:friendLocation:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA710, &qword_266DB6040);
  OUTLINED_FUNCTION_4_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v71 - v10;
  v12 = [a1 person];
  if (v12)
  {
    v13 = v12;
    v14 = sub_266C67B18(v12);
    if (v15)
    {
      v16 = v15;
      v77 = v14;
      v17 = [v13 displayName];
      v18 = sub_266DAA70C();
      v75 = v19;
      v76 = v18;

      v20 = sub_266C39CB4(v13);
      v73 = v21;
      v74 = v20;
      v22 = [v13 personHandle];
      if (v22 && (v23 = sub_266C67B78(v22), v24))
      {
        v25 = v23;
        v26 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F88, &unk_266DB6EF0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_266DAE4A0;
        *(inited + 32) = v25;
        *(inited + 40) = v26;
        v72 = sub_266C67738(inited);
      }

      else
      {
        v72 = MEMORY[0x277D84FA0];
      }

      v28 = [a1 sharesLocation];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 BOOLValue];
      }

      else
      {
        v30 = 0;
      }

      v48 = [a1 followsMyLocation];
      if (v48)
      {
        v49 = v48;
        v50 = [v48 BOOLValue];

        if (a2)
        {
LABEL_21:
          v51 = a2;
          sub_266C25268(v51, v52, v53, v54, v55, v56, v57, v58, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);

          v59 = 0;
          a1 = v51;
LABEL_24:

          v60 = type metadata accessor for FriendLocation();
          __swift_storeEnumTagSinglePayload(v11, v59, 1, v60);
          v61 = type metadata accessor for Friend();
          v62 = *(v61 + 40);
          OUTLINED_FUNCTION_43();
          __swift_storeEnumTagSinglePayload(v63, v64, v65, v60);
          v66 = v76;
          *a3 = v77;
          *(a3 + 8) = v16;
          v68 = v74;
          v67 = v75;
          *(a3 + 16) = v66;
          *(a3 + 24) = v67;
          v69 = v72;
          v70 = v73;
          *(a3 + 32) = v68;
          *(a3 + 40) = v70;
          *(a3 + 48) = v69;
          *(a3 + 56) = v30;
          *(a3 + 57) = v50;
          sub_266C65690(v11, a3 + v62);
          __swift_storeEnumTagSinglePayload(a3, 0, 1, v61);
          OUTLINED_FUNCTION_5();
          return;
        }
      }

      else
      {
        v50 = 0;
        if (a2)
        {
          goto LABEL_21;
        }
      }

      v59 = 1;
      goto LABEL_24;
    }
  }

  if (qword_2800C91E8 != -1)
  {
    swift_once();
  }

  v31 = sub_266DA94AC();
  __swift_project_value_buffer(v31, qword_2800CA6F8);
  v32 = a1;
  v33 = sub_266DA948C();
  v34 = sub_266DAAAEC();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v83 = v36;
    *v35 = 136315138;
    v37 = v32;
    v38 = [v37 description];
    v39 = sub_266DAA70C();
    v41 = v40;

    v42 = sub_266C22A3C(v39, v41, &v83);

    *(v35 + 4) = v42;
    _os_log_impl(&dword_266C08000, v33, v34, "Cannot initialize Friend from INFriend missing customIdentifier: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x26D5F2480](v36, -1, -1);
    MEMORY[0x26D5F2480](v35, -1, -1);
  }

  else
  {
  }

  type metadata accessor for Friend();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
}

void sub_266C66C84()
{
  OUTLINED_FUNCTION_2_14();
  v3 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = v3;
    if (!v2)
    {
      break;
    }

LABEL_6:
    OUTLINED_FUNCTION_1_16();

    if (OUTLINED_FUNCTION_12_8())
    {
      v5 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_14_8();
        v5 = v8;
      }

      v6 = *(v5 + 16);
      v7 = v6 + 1;
      if (v6 >= *(v5 + 24) >> 1)
      {
        OUTLINED_FUNCTION_11_6(v7);
        v7 = v8;
      }

      OUTLINED_FUNCTION_15_9(v7);
    }

    else
    {
    }
  }

  while (1)
  {
    v3 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v3 >= v1)
    {

      return;
    }

    v2 = *(v0 + 8 * v3);
    ++v4;
    if (v2)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

void sub_266C66D88()
{
  OUTLINED_FUNCTION_2_14();
  v3 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = v3;
    if (!v2)
    {
      break;
    }

LABEL_6:
    OUTLINED_FUNCTION_1_16();

    if (OUTLINED_FUNCTION_12_8())
    {
    }

    else
    {
      v5 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_14_8();
        v5 = v8;
      }

      v6 = *(v5 + 16);
      v7 = v6 + 1;
      if (v6 >= *(v5 + 24) >> 1)
      {
        OUTLINED_FUNCTION_11_6(v7);
        v7 = v8;
      }

      OUTLINED_FUNCTION_15_9(v7);
    }
  }

  while (1)
  {
    v3 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v3 >= v1)
    {

      return;
    }

    v2 = *(v0 + 8 * v3);
    ++v4;
    if (v2)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

void Friend.navigationURL.getter()
{
  v1 = sub_266DA716C();
  v2 = OUTLINED_FUNCTION_0_2(v1);
  v48 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_6();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA710, &qword_266DB6040);
  OUTLINED_FUNCTION_4_3(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  v14 = v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_4_3(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v18);
  v20 = v47 - v19;
  v21 = type metadata accessor for Location();
  v22 = OUTLINED_FUNCTION_0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_6();
  v27 = (v26 - v25);
  v28 = type metadata accessor for Friend();
  sub_266C67BE8(v0 + *(v28 + 40), v14, &qword_2800CA710, &qword_266DB6040);
  v29 = type metadata accessor for FriendLocation();
  if (__swift_getEnumTagSinglePayload(v14, 1, v29) == 1)
  {
    sub_266C1825C(v14, &qword_2800CA710, &qword_266DB6040);
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v21);
  }

  else
  {
    sub_266C67BE8(&v14[*(v29 + 32)], v20, &qword_2800C9B20, &unk_266DB1EC0);
    OUTLINED_FUNCTION_3_12();
    sub_266C67CA0(v14, v33);
    if (__swift_getEnumTagSinglePayload(v20, 1, v21) != 1)
    {
      sub_266C67C44(v20, v27, type metadata accessor for Location);
      v39 = *(v0 + 16);
      v38 = *(v0 + 24);

      v40 = sub_266C672D4(v39, v38);
      v47[0] = v41;
      v47[1] = v40;
      sub_266DA715C();
      sub_266DA714C();
      MEMORY[0x26D5EDA90](0x7070612E7370616DLL, 0xEE006D6F632E656CLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA758, &qword_266DB1980);
      v42 = *(sub_266DA70FC() - 8);
      v43 = *(v42 + 72);
      v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      *(swift_allocObject() + 16) = xmmword_266DB05C0;
      v49 = 0;
      v50 = 0xE000000000000000;
      v45 = *v27;
      sub_266DAAA1C();
      MEMORY[0x26D5F1170](44, 0xE100000000000000);
      v46 = v27[1];
      sub_266DAAA1C();
      sub_266DA70EC();

      sub_266DA70EC();

      sub_266DA710C();
      sub_266DA711C();
      (*(v48 + 8))(v8, v1);
      sub_266C67CA0(v27, type metadata accessor for Location);
      goto LABEL_6;
    }
  }

  sub_266C1825C(v20, &qword_2800C9B20, &unk_266DB1EC0);
  sub_266DA737C();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
LABEL_6:
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266C672D4(uint64_t a1, unint64_t a2)
{
  v5 = sub_266DA70DC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  v10 = HIBYTE(a2) & 0xF;
  v29 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v25 = v10;
  if (v10)
  {
    v22 = v2;
    v11 = 0;
    v23 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v24 = a2 & 0xFFFFFFFFFFFFFFLL;
    v12 = (v7 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v15 = sub_266DAADEC();
        v17 = v16;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v26[0] = v29;
          v26[1] = v24;
          v14 = v26 + v11;
          v15 = *(v26 + v11);
          if (*(v26 + v11) < 0)
          {
            switch(__clz(v15 ^ 0xFF))
            {
              case 0x1Au:
LABEL_21:
                v15 = v14[1] & 0x3F | ((v15 & 0x1F) << 6);
                v17 = 2;
                break;
              case 0x1Bu:
LABEL_22:
                v15 = ((v15 & 0xF) << 12) | ((v14[1] & 0x3F) << 6) | v14[2] & 0x3F;
                v17 = 3;
                break;
              case 0x1Cu:
LABEL_23:
                v15 = ((v15 & 0xF) << 18) | ((v14[1] & 0x3F) << 12) | ((v14[2] & 0x3F) << 6) | v14[3] & 0x3F;
                v17 = 4;
                break;
              default:
                goto LABEL_13;
            }

            goto LABEL_14;
          }
        }

        else
        {
          v13 = v23;
          if ((v29 & 0x1000000000000000) == 0)
          {
            v13 = sub_266DAAE5C();
          }

          v14 = (v13 + v11);
          v15 = *(v13 + v11);
          if (*(v13 + v11) < 0)
          {
            switch(__clz(v15 ^ 0xFF))
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
        v17 = 1;
      }

LABEL_14:
      sub_266DA709C();
      v18 = sub_266DA70CC();
      v19 = *v12;
      (*v12)(v9, v5);
      if (v18 & 1) != 0 || (sub_266DA70AC(), v20 = sub_266DA70CC(), v19(v9, v5), (v20) || v15 == 32)
      {
        sub_266DAA78C();
      }

      v11 += v17;
      if (v11 >= v25)
      {

        return v27;
      }
    }
  }

  return 0;
}

unint64_t sub_266C675D0()
{
  result = qword_2800CA728;
  if (!qword_2800CA728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA728);
  }

  return result;
}

uint64_t sub_266C67624(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CA210, &qword_266DB02A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266C67690(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FriendLocation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266C676D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Friend();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C67738(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA7A0, &unk_266DB1B50);
  result = sub_266DAADCC();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_266DAB2AC();

    sub_266DAA7BC();
    result = sub_266DAB2DC();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_266DAB17C() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_266C678C8(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_45;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA798, &qword_266DB1B48);
  result = sub_266DAADCC();
  v3 = result;
  v35 = *(v1 + 16);
  if (!v35)
  {
    goto LABEL_45;
  }

  v4 = 0;
  v5 = result + 56;
  v33 = v1;
  v34 = v1 + 32;
  v36 = result;
  while (1)
  {
    if (v4 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_47;
    }

    v6 = v34 + 24 * v4;
    v8 = *v6;
    v7 = *(v6 + 8);
    v9 = *(v6 + 16);
    v10 = *(v3 + 40);
    sub_266DAB2AC();
    if (!v9)
    {
      v11 = 1;
      goto LABEL_9;
    }

    if (v9 == 1)
    {
      v11 = 2;
LABEL_9:
      MEMORY[0x26D5F1C20](v11);

      sub_266DAA7BC();
      goto LABEL_11;
    }

    MEMORY[0x26D5F1C20](0);
LABEL_11:
    result = sub_266DAB2DC();
    v12 = -1 << *(v3 + 32);
    v13 = result & ~v12;
    v14 = v13 >> 6;
    v15 = *(v5 + 8 * (v13 >> 6));
    v16 = 1 << v13;
    v17 = *(v3 + 48);
    if (((1 << v13) & v15) == 0)
    {
      break;
    }

    v18 = ~v12;
    v20 = v9 == 2 && (v7 | v8) == 0;
    while (1)
    {
      v21 = v17 + 24 * v13;
      result = *v21;
      v22 = *(v21 + 8);
      v23 = *(v21 + 16);
      if (!v23)
      {
        break;
      }

      if (v23 == 1)
      {
        if (v9 == 1)
        {
          v24 = result == v8 && v22 == v7;
          if (v24 || (result = OUTLINED_FUNCTION_13_6(), (result & 1) != 0))
          {
            v30 = v8;
            v31 = v7;
            v32 = 1;
            goto LABEL_41;
          }
        }
      }

      else if (v20)
      {
        goto LABEL_42;
      }

LABEL_35:
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if ((v15 & (1 << v13)) == 0)
      {
        v3 = v36;
        v17 = *(v36 + 48);
        goto LABEL_37;
      }
    }

    if (v9)
    {
      goto LABEL_35;
    }

    if (result != v8 || v22 != v7)
    {
      result = OUTLINED_FUNCTION_13_6();
      if ((result & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v30 = v8;
    v31 = v7;
    v32 = 0;
LABEL_41:
    result = sub_266C6814C(v30, v31, v32);
LABEL_42:
    ++v4;
    v3 = v36;
    v1 = v33;
    if (v4 == v35)
    {
LABEL_45:

      return v3;
    }
  }

LABEL_37:
  *(v5 + 8 * v14) = v15 | v16;
  v26 = v17 + 24 * v13;
  *v26 = v8;
  *(v26 + 8) = v7;
  *(v26 + 16) = v9;
  v27 = *(v3 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v3 + 16) = v29;
    goto LABEL_42;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_266C67B18(void *a1)
{
  v1 = [a1 customIdentifier];
  if (v1)
  {
    v2 = v1;
    sub_266DAA70C();
  }

  return OUTLINED_FUNCTION_4_4();
}

uint64_t sub_266C67B78(void *a1)
{
  v2 = [a1 value];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266DAA70C();

  return v3;
}

uint64_t sub_266C67BE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_4_4();
  v9(v8);
  return a2;
}

uint64_t sub_266C67C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_4_4();
  v8(v7);
  return a2;
}

uint64_t sub_266C67CA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_266C67D20()
{
  sub_266C2AA28();
  if (v0 <= 0x3F)
  {
    sub_266C67DDC();
    if (v1 <= 0x3F)
    {
      sub_266C67E34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_266C67DDC()
{
  if (!qword_2800CA770)
  {
    v0 = sub_266DAAA5C();
    if (!v1)
    {
      atomic_store(v0, &qword_2800CA770);
    }
  }
}

void sub_266C67E34()
{
  if (!qword_2800CA778)
  {
    type metadata accessor for FriendLocation();
    v0 = sub_266DAAC1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2800CA778);
    }
  }
}

uint64_t getEnumTagSinglePayload for Friend.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Friend.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266C67FF4()
{
  result = qword_2800CA780;
  if (!qword_2800CA780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA780);
  }

  return result;
}

unint64_t sub_266C6804C()
{
  result = qword_2800CA788;
  if (!qword_2800CA788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA788);
  }

  return result;
}

unint64_t sub_266C680A4()
{
  result = qword_2800CA790;
  if (!qword_2800CA790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA790);
  }

  return result;
}

unint64_t sub_266C680F8()
{
  result = qword_2800CA7F0;
  if (!qword_2800CA7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA7F0);
  }

  return result;
}

uint64_t sub_266C6814C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_1_16()
{
  v4 = (*(v0 + 48) + ((v1 << 10) | (16 * __clz(__rbit64(v2)))));
  v5 = *v4;
  v6 = v4[1];

  return sub_266C680F8();
}

uint64_t OUTLINED_FUNCTION_2_14()
{
  v2 = *(*(v0 + 48) + 56);
  *(*(v0 + 48) + 32);
}

uint64_t OUTLINED_FUNCTION_11_6@<X0>(int64_t a1@<X8>)
{

  return sub_266C387DC(v1 > 1, a1, 1);
}

uint64_t OUTLINED_FUNCTION_12_8()
{

  return sub_266DAACBC();
}

uint64_t OUTLINED_FUNCTION_13_6()
{

  return sub_266DAB17C();
}

uint64_t OUTLINED_FUNCTION_14_8()
{
  v2 = *(v0 + 16) + 1;

  return sub_266C387DC(0, v2, 1);
}

void OUTLINED_FUNCTION_15_9(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
  v5 = v1 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t sub_266C682D0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_266C68310(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_266C68360()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CA7A8);
  v1 = __swift_project_value_buffer(v0, qword_2800CA7A8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C68428(int a1, uint64_t a2, unint64_t a3, id a4)
{
  v7 = [a4 aa_primaryAppleAccount];
  if (v7)
  {
    v26 = v7;
    v8 = v7;
    swift_getAtKeyPath();

    if (v25)
    {
      v9 = [a4 credentialForAccount_];
      if (v9)
      {
        v10 = v9;

        return 1;
      }

      if (qword_2800C91F0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
      }

      v20 = sub_266DA94AC();
      __swift_project_value_buffer(v20, qword_2800CA7A8);

      v21 = sub_266DA948C();
      v22 = sub_266DAAAEC();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v26 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_266C22A3C(a2, a3, &v26);
        _os_log_impl(&dword_266C08000, v21, v22, "Unable to retrieve %s credential, not signed in.", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_6_1();
      }
    }

    else
    {
      if (qword_2800C91F0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
      }

      v15 = sub_266DA94AC();
      __swift_project_value_buffer(v15, qword_2800CA7A8);

      v16 = sub_266DA948C();
      v17 = sub_266DAAAEC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v26 = v19;
        *v18 = 136446210;
        *(v18 + 4) = sub_266C22A3C(a2, a3, &v26);
        _os_log_impl(&dword_266C08000, v16, v17, "Got nil for account '%{public}s' -- assuming not logged in", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_6_1();
      }
    }
  }

  else
  {
    if (qword_2800C91F0 != -1)
    {
      OUTLINED_FUNCTION_0_23();
    }

    v12 = sub_266DA94AC();
    __swift_project_value_buffer(v12, qword_2800CA7A8);
    v8 = sub_266DA948C();
    v13 = sub_266DAAAEC();
    if (os_log_type_enabled(v8, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_266C08000, v8, v13, "Unable to retrieve primary apple account", v14, 2u);
      OUTLINED_FUNCTION_6_1();
    }
  }

  return 0;
}

id sub_266C68774()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x277D25EA0];
    v3 = [v1 effectiveBoolValueForSetting_];

    return (v3 == 2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_23()
{

  return swift_once();
}

id sub_266C68820()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_266C68D2C(0xD000000000000015, 0x8000000266DC14B0);
  if (result)
  {
    qword_28156FCC0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SFMUserDefaultsSettingProvider.isVerboseLoggingEnabled.getter()
{
  if (qword_28156F8C8 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v0 = sub_266DAA6FC();
  v1 = OUTLINED_FUNCTION_1_17();
  v3 = [v1 v2];

  return v3;
}

uint64_t SFMUserDefaultsSettingProvider.isSpokenLocationsForItemsEnabled.getter()
{
  if (qword_28156F8C8 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v0 = sub_266DAA6FC();
  v1 = OUTLINED_FUNCTION_1_17();
  v3 = [v1 v2];

  if (v3)
  {
    sub_266DAACDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (OUTLINED_FUNCTION_2_15())
    {
      return v5;
    }
  }

  else
  {
    sub_266C689EC(v8);
  }

  return 1;
}

uint64_t sub_266C689EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA7C0, &qword_266DB1BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SFMUserDefaultsSettingProvider.isSpokenLocationsForFriendsEnabled.getter()
{
  if (qword_28156F8C8 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v0 = sub_266DAA6FC();
  v1 = OUTLINED_FUNCTION_1_17();
  v3 = [v1 v2];

  if (v3)
  {
    sub_266DAACDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (OUTLINED_FUNCTION_2_15())
    {
      return v5;
    }
  }

  else
  {
    sub_266C689EC(v8);
  }

  return 1;
}

id SFMUserDefaultsSettingProvider.forceFindDeviceOnAce.getter()
{
  if (qword_28156F8C8 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v0 = sub_266DAA6FC();
  v1 = OUTLINED_FUNCTION_1_17();
  v3 = [v1 v2];

  return v3;
}

_BYTE *storeEnumTagSinglePayload for SFMUserDefaultsSettingProvider(_BYTE *result, int a2, int a3)
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

id sub_266C68D2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t OUTLINED_FUNCTION_0_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_15()
{

  return swift_dynamicCast();
}

uint64_t SFMContactDataProvider.ownerContact(of:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  if ((*(v7 + 88))(v6, v7))
  {
    v8 = *(a3 + 8);

    return v8(a2, a3);
  }

  else
  {
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v12 = (*(v11 + 80))(v10, v11);
    (*(a3 + 16))(v12);
  }
}

uint64_t sub_266C68F90()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_28156F250);
  v1 = __swift_project_value_buffer(v0, qword_28156F250);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_266C69058()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_266C690C4()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = sub_266C69058();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA7C8, &unk_266DB1DB8);
  v3 = sub_266DAA91C();
  v9[0] = 0;
  v4 = [v1 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  if (v4)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    sub_266DA72FC();

    swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

void *sub_266C691B8(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = sub_266C69058();
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA7C8, &unk_266DB1DB8);
  v5 = sub_266DAA91C();
  v12[0] = 0;
  v6 = [v3 unifiedContactsMatchingPredicate:a1 keysToFetch:v5 error:v12];

  v7 = v12[0];
  if (v6)
  {
    sub_266C29814(0, &unk_2800CA7D0, 0x277CBDA58);
    v3 = sub_266DAA93C();
    v8 = v7;
  }

  else
  {
    v9 = v12[0];
    sub_266DA72FC();

    swift_willThrow();
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_266C692E8()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_266C69310()
{
  sub_266C692E8();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_266C69368()
{
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_266DB1D00;
  v2 = *MEMORY[0x277CBD000];
  v3 = *MEMORY[0x277CBCFF8];
  v4 = MEMORY[0x277CBD070];
  *(v1 + 32) = *MEMORY[0x277CBD000];
  *(v1 + 40) = v3;
  v5 = *v4;
  v6 = *MEMORY[0x277CBD078];
  *(v1 + 48) = *v4;
  *(v1 + 56) = v6;
  v7 = *MEMORY[0x277CBD0B0];
  v8 = *MEMORY[0x277CBD0A8];
  *(v1 + 64) = *MEMORY[0x277CBD0B0];
  *(v1 + 72) = v8;
  v9 = *MEMORY[0x277CBCFC0];
  v10 = *MEMORY[0x277CBD098];
  *(v1 + 80) = *MEMORY[0x277CBCFC0];
  *(v1 + 88) = v10;
  *(v0 + 24) = v1;
  v11 = v2;
  v12 = v3;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  return v0;
}

uint64_t sub_266C694B4(uint64_t a1, int a2)
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

uint64_t sub_266C694F4(uint64_t result, int a2, int a3)
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

void sub_266C69558(Swift::String_optional *a1@<X8>)
{
  v3 = sub_266DA947C();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266DAABDC();
  if (qword_2800C9128 != -1)
  {
    OUTLINED_FUNCTION_2_16();
  }

  sub_266DA946C();
  OUTLINED_FUNCTION_3_13();
  sub_266DA945C();
  v11 = *(v6 + 8);
  v11(v10, v3);
  v12 = v1[8];
  v13 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v12);
  v14 = (*(v13 + 8))(v12, v13);
  SFMPerson.init(from:)(&v18, v14);
  nickName = v18.nickName;
  *a1 = v18.givenName;
  a1[1] = nickName;
  identifier = v18.identifier;
  a1[2] = v18.familyName;
  a1[3].value = identifier;
  sub_266DAABCC();
  sub_266DA946C();
  OUTLINED_FUNCTION_3_13();
  sub_266DA944C();
  v11(v10, v3);
}

double sub_266C6997C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, Swift::String_optional *a3@<X8>)
{
  v63 = a3;
  v6 = sub_266DA947C();
  v7 = OUTLINED_FUNCTION_0_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266DAABDC();
  if (qword_2800C9128 != -1)
  {
    OUTLINED_FUNCTION_2_16();
  }

  v14 = qword_28156EF98;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA7E0, &unk_266DB1E20);
  v15 = OUTLINED_FUNCTION_7_10();
  v61 = xmmword_266DAE4A0;
  *(v15 + 16) = xmmword_266DAE4A0;
  *(v15 + 56) = MEMORY[0x277D837D0];
  v16 = sub_266C33C74();
  *(v15 + 64) = v16;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;

  sub_266DA946C();
  OUTLINED_FUNCTION_0_25();
  v54.value._countAndFlagsBits = 10;
  identifier._countAndFlagsBits = v14;
  OUTLINED_FUNCTION_6_11();
  sub_266DA944C();

  v17 = *(v9 + 8);
  v64 = v9 + 8;
  v17(v13, v6);
  v18 = v3;
  v19 = v6;
  v20 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v21 = *(v20 + 8);
  v22 = OUTLINED_FUNCTION_5_12();
  v23(v22);
  givenName = v67.givenName;
  nickName = v67.nickName;
  familyName = v67.familyName;
  object = v67.identifier._object;
  countAndFlagsBits = v67.identifier._countAndFlagsBits;
  if (v67.identifier._object)
  {
    sub_266DAABCC();
    sub_266DA946C();
    v55.value._countAndFlagsBits = MEMORY[0x277D84F90];
    LOBYTE(v54.value._object) = 2;
    v54.value._countAndFlagsBits = 16;
    OUTLINED_FUNCTION_6_11();
    sub_266DA944C();
    v17(v13, v19);
    v25 = nickName;
    v26 = v63;
    *v63 = givenName;
    v26[1] = v25;
    result = *&familyName.value._countAndFlagsBits;
    v26[2] = familyName;
    v26[3].value._countAndFlagsBits = countAndFlagsBits;
    v26[3].value._object = object;
  }

  else
  {
    v58 = v13;
    v59 = v17;
    v57 = v19;
    v67.givenName.value._countAndFlagsBits = a1;
    v67.givenName.value._object = a2;
    v65 = 64;
    v66 = 0xE100000000000000;
    sub_266C680F8();
    v28 = sub_266DAACBC();
    v29 = objc_opt_self();
    if (v28)
    {
      OUTLINED_FUNCTION_5_12();
      v30 = sub_266DAA6FC();
      v31 = &selRef_predicateForContactsMatchingEmailAddress_;
    }

    else
    {
      sub_266C29814(0, &qword_2800CA7F8, 0x277CBDB70);

      OUTLINED_FUNCTION_5_12();
      v30 = sub_266C6A190();
      v31 = &selRef_predicateForContactsMatchingPhoneNumber_;
    }

    v32 = v16;
    v33 = [v29 *v31];

    v34 = v18[8];
    v35 = v18[9];
    __swift_project_boxed_opaque_existential_1(v18 + 5, v34);
    v36 = (*(v35 + 16))(v33, v34, v35);
    v39 = sub_266C3A14C(v36, v37, v38);
    v40 = v57;
    v41 = v59;
    if (v39)
    {
      sub_266CB9F54(0, (v36 & 0xC000000000000001) == 0, v36);
      if ((v36 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x26D5F1780](0, v36);
      }

      else
      {
        v42 = *(v36 + 32);
      }

      v43 = v42;

      v44 = v43;
      SFMPerson.init(from:)(&v67, v44);
      v55 = v67.nickName;
      v56 = v67.givenName;
      identifier = v67.identifier;
      v54 = v67.familyName;
    }

    else
    {

      v44 = 0;
      v56 = 0;
      v55 = 0;
      v54 = 0;
      identifier = 0;
    }

    sub_266DAABCC();
    v45 = OUTLINED_FUNCTION_7_10();
    v46 = v63;
    *(v45 + 16) = v61;
    v47 = v46 == 0;
    v48 = 0x73736563637573;
    if (v47)
    {
      v48 = 0x64656C696166;
    }

    v49 = 0xE700000000000000;
    *(v45 + 56) = MEMORY[0x277D837D0];
    *(v45 + 64) = v32;
    if (v47)
    {
      v49 = 0xE600000000000000;
    }

    *(v45 + 32) = v48;
    *(v45 + 40) = v49;
    v50 = v58;
    sub_266DA946C();
    OUTLINED_FUNCTION_0_25();
    v56.value._countAndFlagsBits = 18;
    OUTLINED_FUNCTION_6_11();
    sub_266DA944C();

    v41(v50, v40);
    v51 = v63;
    v52 = v55;
    *v63 = v56;
    v51[1] = v52;
    v53 = identifier;
    result = *&v54.value._countAndFlagsBits;
    v51[2] = v54;
    v51[3].value = v53;
  }

  return result;
}

id sub_266C6A190()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_266DAA6FC();

  v2 = [v0 initWithStringValue_];

  return v2;
}

uint64_t OUTLINED_FUNCTION_1_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_10()
{

  return swift_allocObject();
}

uint64_t sub_266C6A2A0()
{
  if (sub_266DA7B6C() & 1) != 0 || (sub_266DA7B4C() & 1) != 0 || (sub_266DA7B5C())
  {
    v0 = sub_266DA7BAC() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_266C6A330(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v26 = MEMORY[0x277D84F90];
    v4 = OUTLINED_FUNCTION_6_12();
    sub_266C387FC(v4, v5, v6);
    v2 = v26;
    v7 = (a1 + 32);
    do
    {
      v8 = v7[1];
      v21[0] = *v7;
      v21[1] = v8;
      v9 = v7[3];
      v11 = *v7;
      v10 = v7[1];
      v21[2] = v7[2];
      v21[3] = v9;
      v22 = v11;
      v23 = v10;
      v12 = v7[3];
      v24 = v7[2];
      v25 = v12;
      sub_266C24964(v21, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B18, &qword_266DBFC40);
      swift_dynamicCast();
      v24 = v20[2];
      v25 = v20[3];
      v22 = v20[0];
      v23 = v20[1];
      v26 = v2;
      v14 = *(v2 + 16);
      v13 = *(v2 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_266C387FC(v13 > 1, v14 + 1, 1);
        v2 = v26;
      }

      *(v2 + 16) = v14 + 1;
      v15 = (v2 + (v14 << 6));
      v16 = v22;
      v17 = v23;
      v18 = v25;
      v15[4] = v24;
      v15[5] = v18;
      v15[2] = v16;
      v15[3] = v17;
      v7 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_266C6A478(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v19 = MEMORY[0x277D84F90];
    v4 = OUTLINED_FUNCTION_6_12();
    sub_266C38A48(v4, v5, v6);
    v2 = v19;
    v7 = (a1 + 48);
    do
    {
      v8 = *v7;
      v15 = *(v7 - 2);
      v16 = *(v7 - 1);

      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA860, &qword_266DB1EA8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F58, &unk_266DB1EB0);
      swift_dynamicCast();
      v10 = v18;
      v12 = *(v19 + 16);
      v11 = *(v19 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_266C38A48((v11 > 1), v12 + 1, 1);
        v10 = v18;
      }

      *(v19 + 16) = v12 + 1;
      v13 = v19 + 24 * v12;
      *(v13 + 32) = v17;
      *(v13 + 40) = v10;
      v7 += 3;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_266C6A5BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v15 = MEMORY[0x277D84F90];
    v4 = OUTLINED_FUNCTION_6_12();
    sub_266C387BC(v4, v5, v6);
    v2 = v15;
    v7 = (a1 + 40);
    do
    {
      v12 = *(v7 - 1);
      v13 = *v7;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
      swift_dynamicCast();
      v8 = v14;
      v10 = *(v15 + 16);
      v9 = *(v15 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_266C387BC(v9 > 1, v10 + 1, 1);
        v8 = v14;
      }

      *(v15 + 16) = v10 + 1;
      *(v15 + 16 * v10 + 32) = v8;
      v7 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_266C6A70C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v23 = a3;
  v4 = a2(0);
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v27 = MEMORY[0x277D84F90];
    sub_266C38B20(0, v12, 0);
    v13 = v27;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v22 = *(v14 + 56);
    do
    {
      v15(v11, v17, v4);
      v27 = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_266C38B20(v18 > 1, v19 + 1, 1);
      }

      v25 = v4;
      v26 = v23;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
      v15(boxed_opaque_existential_1, v11, v4);
      v13 = v27;
      *(v27 + 16) = v19 + 1;
      sub_266C0B0D8(&v24, v13 + 40 * v19 + 32);
      (*(v14 - 8))(v11, v4);
      v17 += v22;
      --v12;
    }

    while (v12);
  }

  return v13;
}

uint64_t sub_266C6A8E0(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = sub_266DAAD5C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v12 = MEMORY[0x277D84F90];
  result = sub_266C3879C(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v5 = v12;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D5F1780](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      a2(0);
      swift_dynamicCast();
      v12 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_266C3879C(v9 > 1, v10 + 1, 1);
        v5 = v12;
      }

      ++v7;
      *(v5 + 16) = v10 + 1;
      sub_266C6DF38(&v11, (v5 + 32 * v10 + 32));
    }

    while (v4 != v7);
    return v5;
  }

  __break(1u);
  return result;
}

id sub_266C6AA38(uint64_t a1)
{
  v2 = sub_266DAA91C();

  v3 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason:a1 alternativeItems:v2];

  return v3;
}

uint64_t sub_266C6AAB4()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CA810);
  v1 = __swift_project_value_buffer(v0, qword_2800CA810);
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156F1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_266C6AB7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_266C233D0(a1, &v3[OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_deviceState]);
  sub_266C36270(a2, &v3[OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_sessionManager], type metadata accessor for FindFriendSessionManager);
  *&v3[OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_siriEnvironment] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for FindFriendIntentHandler();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_266C6E034(a2, type metadata accessor for FindFriendSessionManager);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

void sub_266C6AC3C(void *a1, void *a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  v7 = [a1 friend];
  if (!v7)
  {
    if (qword_2800C9208 != -1)
    {
      swift_once();
    }

    v10 = sub_266DA94AC();
    __swift_project_value_buffer(v10, qword_2800CA810);
    v11 = sub_266DA948C();
    v12 = sub_266DAAB0C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_266C08000, v11, v12, "friend parameter on intent is nil, punch out to main friends list.", v13, 2u);
      MEMORY[0x26D5F2480](v13, -1, -1);
    }

    type metadata accessor for FindFriendFriendResolutionResult();
    sub_266C6A8E0(MEMORY[0x277D84F90], type metadata accessor for INFriend);
    v14 = sub_266C6AA38(4);
    (a3)[2](a3, v14);

    goto LABEL_16;
  }

  v8 = v7;
  if (sub_266C6D740(a1))
  {
    type metadata accessor for FindFriendFriendResolutionResult();
    sub_266C6A8E0(MEMORY[0x277D84F90], type metadata accessor for INFriend);
    v9 = sub_266C6AA38(4);
LABEL_15:
    v14 = v9;
    (a3)[2](a3, v9);

LABEL_16:
    goto LABEL_17;
  }

  v8 = v8;
  sub_266C22F3C(v8);
  if (v15)
  {

    if (qword_2800C9208 != -1)
    {
      swift_once();
    }

    v16 = sub_266DA94AC();
    __swift_project_value_buffer(v16, qword_2800CA810);
    v17 = sub_266DA948C();
    v18 = sub_266DAAB0C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_266C08000, v17, v18, "Friend parameter is fully resolved to a friend.", v19, 2u);
      MEMORY[0x26D5F2480](v19, -1, -1);
    }

    v9 = sub_266C6DA84(v8);
    goto LABEL_15;
  }

  v20 = swift_allocObject();
  v20[2] = sub_266C23638;
  v20[3] = v6;
  v20[4] = a2;

  v21 = a2;
  sub_266C34174();

LABEL_17:

  _Block_release(a3);
}

void sub_266C6AFA0(void *a1, void (*a2)(void), uint64_t a3)
{
  v7 = [a1 friend];
  if (!v7)
  {
    if (qword_2800C9208 != -1)
    {
      OUTLINED_FUNCTION_0_26();
    }

    v12 = sub_266DA94AC();
    __swift_project_value_buffer(v12, qword_2800CA810);
    v13 = sub_266DA948C();
    v14 = sub_266DAAB0C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_11();
      *v15 = 0;
      _os_log_impl(&dword_266C08000, v13, v14, "friend parameter on intent is nil, punch out to main friends list.", v15, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    type metadata accessor for FindFriendFriendResolutionResult();
    OUTLINED_FUNCTION_1_19();
    sub_266C6A8E0(v16, v17);
    v25 = sub_266C6AA38(4);
    a2();
    goto LABEL_16;
  }

  v8 = v7;
  if (sub_266C6D740(a1))
  {
    type metadata accessor for FindFriendFriendResolutionResult();
    OUTLINED_FUNCTION_1_19();
    sub_266C6A8E0(v9, v10);
    v11 = sub_266C6AA38(4);
LABEL_15:
    v25 = v11;
    a2();

LABEL_16:

    return;
  }

  v8 = v8;
  sub_266C22F3C(v8);
  if (v18)
  {

    if (qword_2800C9208 != -1)
    {
      OUTLINED_FUNCTION_0_26();
    }

    v19 = sub_266DA94AC();
    __swift_project_value_buffer(v19, qword_2800CA810);
    v20 = sub_266DA948C();
    v21 = sub_266DAAB0C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_11();
      *v22 = 0;
      _os_log_impl(&dword_266C08000, v20, v21, "Friend parameter is fully resolved to a friend.", v22, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    v11 = sub_266C6DA84(v8);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_18_1();
  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = v3;

  v24 = v3;
  sub_266C34174();
}

void sub_266C6B264(void *a1, char a2, void (*a3)(void))
{
  switch(a2)
  {
    case 1:
      type metadata accessor for FindFriendFriendResolutionResult();
      v6 = sub_266DA5B8C(a1);
      goto LABEL_11;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_266DAE3B0;
      *(inited + 32) = a1;
      type metadata accessor for FindFriendFriendResolutionResult();
      v8 = a1;
      sub_266C6A8E0(inited, type metadata accessor for INFriend);
      swift_setDeallocating();
      sub_266C6F074();
      v9 = sub_266C6AA38(2);
      a3();

      return;
    case 4:
      type metadata accessor for FindFriendFriendResolutionResult();
      sub_266C6A8E0(a1, type metadata accessor for INFriend);
      v10 = 2;
      goto LABEL_10;
    case 5:
      if (!a1)
      {
        type metadata accessor for FindFriendFriendResolutionResult();
        sub_266C6A8E0(MEMORY[0x277D84F90], type metadata accessor for INFriend);
        v10 = 1;
        goto LABEL_10;
      }

      if (a1 == 1)
      {
        type metadata accessor for FindFriendFriendResolutionResult();
        sub_266C6A8E0(MEMORY[0x277D84F90], type metadata accessor for INFriend);
        v10 = 3;
LABEL_10:
        v6 = sub_266C6AA38(v10);
        goto LABEL_11;
      }

      if (qword_2800C9208 != -1)
      {
        swift_once();
      }

      v11 = sub_266DA94AC();
      __swift_project_value_buffer(v11, qword_2800CA810);
      v12 = sub_266DA948C();
      v13 = sub_266DAAAFC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_266C08000, v12, v13, "Friend resolver returned an unexpected error", v14, 2u);
        MEMORY[0x26D5F2480](v14, -1, -1);
      }

      type metadata accessor for FindFriendFriendResolutionResult();
      v6 = [swift_getObjCClassFromMetadata() unsupported];
LABEL_11:
      v15 = v6;
LABEL_12:
      (a3)(v6);

      return;
    default:
      sub_266C235B0(a1, a2);
      v15 = sub_266C6DA84(a1);
      sub_266C235EC(a1, a2);
      v6 = v15;
      goto LABEL_12;
  }
}

void sub_266C6B588(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for FindFriendIntentResponse());
  v5 = FindFriendIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_266C6B5F4(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for FindFriendIntentResponse());
  v4 = FindFriendIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_266C6B680(void *a1, uint64_t a2, void (**a3)(void, char *))
{
  v95 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA828, &qword_266DB1E30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v91 = v83 - v7;
  v90 = sub_266DA8E6C();
  v88 = *(v90 - 8);
  v8 = *(v88 + 64);
  MEMORY[0x28223BE20](v90);
  v85 = v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA830, &qword_266DB1E38);
  v10 = *(*(v92 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v92);
  v87 = v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v89 = v83 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA838, &unk_266DB1E40);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v84 = v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v93 = v83 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v86 = v83 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v83 - v23;
  MEMORY[0x28223BE20](v22);
  v94 = v83 - v25;
  v26 = sub_266DA7F0C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = swift_allocObject();
  *(v96 + 16) = a3;
  v31 = a2;
  v32 = (a2 + OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_deviceState);
  v34 = *(a2 + OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_deviceState + 24);
  v33 = *(a2 + OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_deviceState + 32);
  __swift_project_boxed_opaque_existential_1(v32, v34);
  v97 = a3;
  _Block_copy(a3);
  sub_266DA7EFC();
  LOBYTE(v33) = sub_266DA7B1C();
  (*(v27 + 8))(v30, v26);
  if ((v33 & 1) == 0)
  {
    if (qword_2800C9208 != -1)
    {
      swift_once();
    }

    v43 = sub_266DA94AC();
    __swift_project_value_buffer(v43, qword_2800CA810);
    v44 = sub_266DA948C();
    v45 = sub_266DAAB0C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_266C08000, v44, v45, "Device is not authenticated, attempting to unlock before handling the request.", v46, 2u);
      MEMORY[0x26D5F2480](v46, -1, -1);
    }

    v47 = [objc_allocWithZone(type metadata accessor for FindFriendIntentResponse()) init];
    [v47 _setRequiresAuthentication_];
    goto LABEL_17;
  }

  v35 = [v95 friend];
  if (!v35 || (v36 = sub_266C22F3C(v35), !v37))
  {
    if (qword_2800C9208 != -1)
    {
      swift_once();
    }

    v48 = sub_266DA94AC();
    __swift_project_value_buffer(v48, qword_2800CA810);
    v49 = sub_266DA948C();
    v50 = sub_266DAAAFC();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_266C08000, v49, v50, "Friend identifier from FMFCore is nil.", v51, 2u);
      MEMORY[0x26D5F2480](v51, -1, -1);
    }

    v52 = objc_allocWithZone(type metadata accessor for FindFriendIntentResponse());
    v42 = 5;
    goto LABEL_16;
  }

  v38 = v36;
  v39 = v37;
  v40 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  if ((sub_266DA7B7C() & 1) == 0)
  {
    v83[0] = v31;
    v83[1] = v38;
    v95 = v39;
    if (*(v31 + OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_siriEnvironment))
    {
      sub_266DA8DAC();
      v54 = v94;
      sub_266DA93FC();

      v55 = 0;
    }

    else
    {
      v55 = 1;
      v54 = v94;
    }

    v56 = v90;
    v58 = v92;
    v57 = v93;
    __swift_storeEnumTagSinglePayload(v54, v55, 1, v90);
    sub_266DA8E3C();
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v56);
    v59 = *(v58 + 48);
    v60 = v89;
    sub_266C6DFE8(v54, v89, &qword_2800CA838, &unk_266DB1E40);
    sub_266C6DFE8(v24, v60 + v59, &qword_2800CA838, &unk_266DB1E40);
    if (__swift_getEnumTagSinglePayload(v60, 1, v56) == 1)
    {
      sub_266C1825C(v24, &qword_2800CA838, &unk_266DB1E40);
      if (__swift_getEnumTagSinglePayload(v60 + v59, 1, v56) == 1)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v61 = v86;
      sub_266C6DFE8(v60, v86, &qword_2800CA838, &unk_266DB1E40);
      if (__swift_getEnumTagSinglePayload(v60 + v59, 1, v56) != 1)
      {
        v69 = v88;
        v70 = v60 + v59;
        v71 = v85;
        (*(v88 + 32))(v85, v70, v56);
        sub_266C6DD34();
        v72 = v60;
        v73 = sub_266DAA6EC();
        v74 = *(v69 + 8);
        v74(v71, v56);
        sub_266C1825C(v24, &qword_2800CA838, &unk_266DB1E40);
        v54 = v94;
        v74(v61, v56);
        v58 = v92;
        v57 = v93;
        sub_266C1825C(v72, &qword_2800CA838, &unk_266DB1E40);
        if (v73)
        {
          goto LABEL_40;
        }

LABEL_28:
        sub_266DA8E5C();
        __swift_storeEnumTagSinglePayload(v57, 0, 1, v56);
        v62 = *(v58 + 48);
        v63 = v87;
        sub_266C6DFE8(v54, v87, &qword_2800CA838, &unk_266DB1E40);
        sub_266C6DFE8(v57, v63 + v62, &qword_2800CA838, &unk_266DB1E40);
        if (__swift_getEnumTagSinglePayload(v63, 1, v56) == 1)
        {
          sub_266C1825C(v57, &qword_2800CA838, &unk_266DB1E40);
          if (__swift_getEnumTagSinglePayload(v63 + v62, 1, v56) == 1)
          {
            v60 = v63;
LABEL_31:
            sub_266C1825C(v60, &qword_2800CA838, &unk_266DB1E40);
            goto LABEL_40;
          }
        }

        else
        {
          v64 = v84;
          sub_266C6DFE8(v63, v84, &qword_2800CA838, &unk_266DB1E40);
          if (__swift_getEnumTagSinglePayload(v63 + v62, 1, v56) != 1)
          {
            v75 = v88;
            v76 = v63 + v62;
            v77 = v85;
            (*(v88 + 32))(v85, v76, v56);
            sub_266C6DD34();
            v78 = sub_266DAA6EC();
            v79 = *(v75 + 8);
            v79(v77, v56);
            sub_266C1825C(v57, &qword_2800CA838, &unk_266DB1E40);
            v79(v64, v56);
            sub_266C1825C(v63, &qword_2800CA838, &unk_266DB1E40);
            if (v78)
            {
              goto LABEL_40;
            }

            goto LABEL_35;
          }

          sub_266C1825C(v57, &qword_2800CA838, &unk_266DB1E40);
          (*(v88 + 8))(v64, v56);
        }

        sub_266C1825C(v63, &qword_2800CA830, &qword_266DB1E38);
LABEL_35:
        v65 = v32[4];
        __swift_project_boxed_opaque_existential_1(v32, v32[3]);
        if ((sub_266DA7BBC() & 1) == 0)
        {
          v66 = 0;
          v67 = 1;
          v68 = v91;
LABEL_41:
          v80 = sub_266DAAB4C();
          __swift_storeEnumTagSinglePayload(v68, v67, 1, v80);
          v81 = swift_allocObject();
          *(v81 + 16) = v66;
          v82 = v96;
          *(v81 + 24) = sub_266C23320;
          *(v81 + 32) = v82;

          sub_266C34AA8();

          sub_266C1825C(v68, &qword_2800CA828, &qword_266DB1E30);
          sub_266C1825C(v54, &qword_2800CA838, &unk_266DB1E40);

          v53 = v97;
          goto LABEL_18;
        }

LABEL_40:
        v68 = v91;
        sub_266DAAB3C();
        v67 = 0;
        v66 = 1;
        goto LABEL_41;
      }

      sub_266C1825C(v24, &qword_2800CA838, &unk_266DB1E40);
      (*(v88 + 8))(v61, v56);
    }

    sub_266C1825C(v60, &qword_2800CA830, &qword_266DB1E38);
    goto LABEL_28;
  }

  v41 = objc_allocWithZone(type metadata accessor for FindFriendIntentResponse());
  v42 = 4;
LABEL_16:
  v47 = FindFriendIntentResponse.init(code:userActivity:)(v42, 0);
LABEL_17:
  v53 = v97;
  v97[2](v97, v47);

LABEL_18:
  _Block_release(v53);
}

void sub_266C6C1B4(void *a1, void (*a2)(char *), uint64_t a3)
{
  v106 = a2;
  v107 = a3;
  v105 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA828, &qword_266DB1E30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v102 = v93 - v6;
  v104 = sub_266DA8E6C();
  v7 = OUTLINED_FUNCTION_0_2(v104);
  v100 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v95 = v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA830, &qword_266DB1E38);
  v12 = OUTLINED_FUNCTION_0(v103);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_5();
  v98 = v15 - v16;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v17);
  v101 = v93 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA838, &unk_266DB1E40);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_0_5();
  v96 = (v21 - v22);
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v23);
  v99 = v93 - v24;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v25);
  v97 = v93 - v26;
  OUTLINED_FUNCTION_15_8();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = v93 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = v93 - v31;
  v33 = sub_266DA7F0C();
  v34 = OUTLINED_FUNCTION_0_2(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  v40 = v93 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v3;
  v42 = &v3[OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_deviceState];
  v43 = *&v3[OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_deviceState + 32];
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_deviceState], *&v3[OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_deviceState + 24]);
  sub_266DA7EFC();
  v44 = sub_266DA7B1C();
  (*(v36 + 8))(v40, v33);
  if ((v44 & 1) == 0)
  {
    if (qword_2800C9208 != -1)
    {
      OUTLINED_FUNCTION_0_26();
    }

    v53 = sub_266DA94AC();
    __swift_project_value_buffer(v53, qword_2800CA810);
    v54 = sub_266DA948C();
    v55 = sub_266DAAB0C();
    if (os_log_type_enabled(v54, v55))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v56, v57, "Device is not authenticated, attempting to unlock before handling the request.");
      OUTLINED_FUNCTION_6_1();
    }

    v58 = [objc_allocWithZone(type metadata accessor for FindFriendIntentResponse()) init];
    [v58 _setRequiresAuthentication_];
    v59 = v58;
    goto LABEL_17;
  }

  v45 = [v105 friend];
  if (!v45 || (v46 = sub_266C22F3C(v45), !v47))
  {
    if (qword_2800C9208 != -1)
    {
      OUTLINED_FUNCTION_0_26();
    }

    v60 = sub_266DA94AC();
    __swift_project_value_buffer(v60, qword_2800CA810);
    v61 = sub_266DA948C();
    v62 = sub_266DAAAFC();
    if (os_log_type_enabled(v61, v62))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v63, v64, "Friend identifier from FMFCore is nil.");
      OUTLINED_FUNCTION_6_1();
    }

    v65 = objc_allocWithZone(type metadata accessor for FindFriendIntentResponse());
    v52 = 5;
    goto LABEL_16;
  }

  v48 = v46;
  v49 = v47;
  v50 = *(v42 + 4);
  __swift_project_boxed_opaque_existential_1(v42, *(v42 + 3));
  if (sub_266DA7B7C())
  {

    v51 = objc_allocWithZone(type metadata accessor for FindFriendIntentResponse());
    v52 = 4;
LABEL_16:
    v59 = FindFriendIntentResponse.init(code:userActivity:)(v52, 0);
    v58 = v59;
LABEL_17:
    v106(v59);

    return;
  }

  v105 = v41;
  if (*&v41[OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_siriEnvironment])
  {
    sub_266DA8DAC();
    sub_266DA93FC();

    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v104;
  __swift_storeEnumTagSinglePayload(v32, v66, 1, v104);
  sub_266DA8E3C();
  OUTLINED_FUNCTION_14_9();
  v68 = v101;
  sub_266C6DFE8(v32, v101, &qword_2800CA838, &unk_266DB1E40);
  sub_266C6DFE8(v30, &v50[v68], &qword_2800CA838, &unk_266DB1E40);
  OUTLINED_FUNCTION_3_14(v68);
  if (v71)
  {
    sub_266C1825C(v30, &qword_2800CA838, &unk_266DB1E40);
    OUTLINED_FUNCTION_3_14(&v50[v68]);
    v69 = v102;
    if (v71)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v70 = v97;
  sub_266C6DFE8(v68, v97, &qword_2800CA838, &unk_266DB1E40);
  OUTLINED_FUNCTION_3_14(&v50[v68]);
  if (v71)
  {
    sub_266C1825C(v30, &qword_2800CA838, &unk_266DB1E40);
    (*(v100 + 8))(v70, v67);
    v69 = v102;
LABEL_29:
    sub_266C1825C(v68, &qword_2800CA830, &qword_266DB1E38);
    goto LABEL_30;
  }

  v93[1] = v49;
  v94 = v48;
  v79 = v100;
  v80 = &v50[v68];
  v81 = v95;
  (*(v100 + 32))(v95, v80, v67);
  sub_266C6DD34();
  v82 = v68;
  v83 = sub_266DAA6EC();
  v84 = *(v79 + 8);
  v84(v81, v104);
  v50 = &unk_266DB1E40;
  sub_266C1825C(v30, &qword_2800CA838, &unk_266DB1E40);
  v84(v70, v104);
  v48 = v94;
  v67 = v104;
  sub_266C1825C(v82, &qword_2800CA838, &unk_266DB1E40);
  v69 = v102;
  if (v83)
  {
    goto LABEL_45;
  }

LABEL_30:
  v94 = v48;
  v72 = v99;
  sub_266DA8E5C();
  OUTLINED_FUNCTION_14_9();
  v73 = v98;
  sub_266C6DFE8(v32, v98, &qword_2800CA838, &unk_266DB1E40);
  sub_266C6DFE8(v72, &v50[v73], &qword_2800CA838, &unk_266DB1E40);
  OUTLINED_FUNCTION_3_14(v73);
  if (v71)
  {
    sub_266C1825C(v72, &qword_2800CA838, &unk_266DB1E40);
    OUTLINED_FUNCTION_3_14(&v50[v73]);
    if (!v71)
    {
      goto LABEL_39;
    }

    v68 = v73;
LABEL_35:
    sub_266C1825C(v68, &qword_2800CA838, &unk_266DB1E40);
LABEL_45:
    sub_266DAAB3C();
    v78 = 0;
    v77 = 1;
    goto LABEL_46;
  }

  v74 = v96;
  sub_266C6DFE8(v73, v96, &qword_2800CA838, &unk_266DB1E40);
  OUTLINED_FUNCTION_3_14(&v50[v73]);
  if (v75)
  {
    sub_266C1825C(v72, &qword_2800CA838, &unk_266DB1E40);
    (*(v100 + 8))(v74, v67);
LABEL_39:
    sub_266C1825C(v73, &qword_2800CA830, &qword_266DB1E38);
    goto LABEL_40;
  }

  v85 = v100;
  v86 = &v50[v73];
  v87 = v95;
  (*(v100 + 32))(v95, v86, v67);
  sub_266C6DD34();
  LODWORD(v104) = sub_266DAA6EC();
  v88 = *(v85 + 8);
  v88(v87, v67);
  sub_266C1825C(v99, &qword_2800CA838, &unk_266DB1E40);
  v88(v96, v67);
  v89 = OUTLINED_FUNCTION_4_4();
  sub_266C1825C(v89, v90, &unk_266DB1E40);
  if (v104)
  {
    goto LABEL_45;
  }

LABEL_40:
  v76 = *(v42 + 4);
  __swift_project_boxed_opaque_existential_1(v42, *(v42 + 3));
  OUTLINED_FUNCTION_4_4();
  if (sub_266DA7BBC())
  {
    goto LABEL_45;
  }

  v77 = 0;
  v78 = 1;
LABEL_46:
  v91 = sub_266DAAB4C();
  __swift_storeEnumTagSinglePayload(v69, v78, 1, v91);
  OUTLINED_FUNCTION_18_1();
  v92 = swift_allocObject();
  *(v92 + 16) = v77;
  *(v92 + 24) = v106;
  *(v92 + 32) = v107;

  sub_266C34AA8();

  sub_266C1825C(v69, &qword_2800CA828, &qword_266DB1E30);
  sub_266C1825C(v32, &qword_2800CA838, &unk_266DB1E40);
}

void sub_266C6CB90(uint64_t a1, int a2, void (*a3)(void), uint64_t a4)
{
  v109 = a3;
  v108 = a2;
  v105 = type metadata accessor for Location();
  v6 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v99 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v8 = *(*(v101 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v101);
  v106 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v102 = &v96 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v100 = &v96 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v96 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v96 - v18;
  v104 = type metadata accessor for FriendLocation();
  v20 = *(*(v104 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v104);
  v107 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v96 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v96 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9AF8, &qword_266DAE460);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v96 - v30;
  sub_266C6DFE8(a1, &v96 - v30, &qword_2800C9AF8, &qword_266DAE460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v31;
    if (*v31)
    {
      if (qword_2800C9208 != -1)
      {
        swift_once();
      }

      v33 = sub_266DA94AC();
      __swift_project_value_buffer(v33, qword_2800CA810);
      v34 = sub_266DA948C();
      v35 = sub_266DAAAFC();
      if (!os_log_type_enabled(v34, v35))
      {
        goto LABEL_28;
      }

      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v111 = v37;
      *v36 = 136315138;
      v110 = v32;
      v38 = sub_266DAA72C();
      v40 = sub_266C22A3C(v38, v39, &v111);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_266C08000, v34, v35, "Unexpected error of %s when attempting to resolve location.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x26D5F2480](v37, -1, -1);
    }

    else
    {
      if ((v108 & 1) == 0)
      {
        if (qword_2800C9208 != -1)
        {
          swift_once();
        }

        v91 = sub_266DA94AC();
        __swift_project_value_buffer(v91, qword_2800CA810);
        v92 = sub_266DA948C();
        v93 = sub_266DAAB0C();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          *v94 = 0;
          _os_log_impl(&dword_266C08000, v92, v93, "Fetching location for friend timed out before coming back with a response.", v94, 2u);
          MEMORY[0x26D5F2480](v94, -1, -1);
        }

        v95 = objc_allocWithZone(type metadata accessor for FindFriendIntentResponse());
        v88 = 4;
        goto LABEL_29;
      }

      if (qword_2800C9208 != -1)
      {
        swift_once();
      }

      v85 = sub_266DA94AC();
      __swift_project_value_buffer(v85, qword_2800CA810);
      v34 = sub_266DA948C();
      v86 = sub_266DAAAEC();
      if (!os_log_type_enabled(v34, v86))
      {
LABEL_28:

        v87 = objc_allocWithZone(type metadata accessor for FindFriendIntentResponse());
        v88 = 5;
LABEL_29:
        v89 = FindFriendIntentResponse.init(code:userActivity:)(v88, 0);
        v109();

        return;
      }

      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_266C08000, v34, v86, "Fetching location for friend timed out before coming back with a response. Completing with .failure", v36, 2u);
    }

    MEMORY[0x26D5F2480](v36, -1, -1);
    goto LABEL_28;
  }

  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9AF0, &unk_266DAF8E0) + 48);
  sub_266C6DF84(v31, v27);
  sub_266C6E08C(&v31[v41], v19, &qword_2800C9B20, &unk_266DB1EC0);
  if (qword_2800C9208 != -1)
  {
    swift_once();
  }

  v42 = sub_266DA94AC();
  v43 = __swift_project_value_buffer(v42, qword_2800CA810);
  v96 = v27;
  sub_266C36270(v27, v25, type metadata accessor for FriendLocation);
  v98 = v43;
  v44 = sub_266DA948C();
  v45 = sub_266DAAB0C();
  v46 = os_log_type_enabled(v44, v45);
  v97 = a4;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v111 = v48;
    *v47 = 136315138;
    v49 = v19;
    sub_266C36270(v25, v107, type metadata accessor for FriendLocation);
    v50 = sub_266DAA72C();
    v52 = v51;
    sub_266C6E034(v25, type metadata accessor for FriendLocation);
    v53 = sub_266C22A3C(v50, v52, &v111);

    *(v47 + 4) = v53;
    v19 = v49;
    _os_log_impl(&dword_266C08000, v44, v45, "Resolved location: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x26D5F2480](v48, -1, -1);
    MEMORY[0x26D5F2480](v47, -1, -1);
  }

  else
  {

    sub_266C6E034(v25, type metadata accessor for FriendLocation);
  }

  v103 = v19;
  sub_266C6DFE8(v19, v17, &qword_2800C9B20, &unk_266DB1EC0);
  v54 = sub_266DA948C();
  v55 = sub_266DAAB0C();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v111 = v57;
    *v56 = 136315138;
    sub_266C6DFE8(v17, v100, &qword_2800C9B20, &unk_266DB1EC0);
    v58 = sub_266DAA72C();
    v60 = v59;
    sub_266C1825C(v17, &qword_2800C9B20, &unk_266DB1EC0);
    v61 = sub_266C22A3C(v58, v60, &v111);

    *(v56 + 4) = v61;
    _os_log_impl(&dword_266C08000, v54, v55, "Resolved user location: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x26D5F2480](v57, -1, -1);
    MEMORY[0x26D5F2480](v56, -1, -1);
  }

  else
  {

    sub_266C1825C(v17, &qword_2800C9B20, &unk_266DB1EC0);
  }

  v62 = v109;
  v63 = v96;
  v65 = v105;
  v64 = v106;
  if ((v108 & 1) != 0 && (v66 = v102, sub_266C6DFE8(&v96[*(v104 + 32)], v102, &qword_2800C9B20, &unk_266DB1EC0), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v66, 1, v65), sub_266C1825C(v66, &qword_2800C9B20, &unk_266DB1EC0), EnumTagSinglePayload == 1))
  {
    v68 = sub_266DA948C();
    v69 = sub_266DAAAEC();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_266C08000, v68, v69, "Nil location in VOX. Completing with .failure", v70, 2u);
      MEMORY[0x26D5F2480](v70, -1, -1);
    }

    v71 = objc_allocWithZone(type metadata accessor for FindFriendIntentResponse());
    v72 = FindFriendIntentResponse.init(code:userActivity:)(5, 0);
  }

  else
  {
    v73 = objc_allocWithZone(type metadata accessor for FindFriendIntentResponse());
    v72 = FindFriendIntentResponse.init(code:userActivity:)(4, 0);
    type metadata accessor for INFriendLocation();
    v74 = v107;
    sub_266C36270(v63, v107, type metadata accessor for FriendLocation);
    sub_266C24CC8(v74, v75, v76, v77, v78, v79, v80, v81, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
    v83 = v82;
    [v72 setFriendLocation_];

    sub_266C6DFE8(v103, v64, &qword_2800C9B20, &unk_266DB1EC0);
    if (__swift_getEnumTagSinglePayload(v64, 1, v65) == 1)
    {
      sub_266C1825C(v64, &qword_2800C9B20, &unk_266DB1EC0);
      v84 = 0;
    }

    else
    {
      type metadata accessor for SpeakableLocation();
      v90 = v99;
      sub_266C36270(v64, v99, type metadata accessor for Location);
      v84 = sub_266D6CE4C(v90);
      sub_266C6E034(v64, type metadata accessor for Location);
    }

    [v72 setUserLocation_];
  }

  (v62)(v72);

  sub_266C1825C(v103, &qword_2800C9B20, &unk_266DB1EC0);
  sub_266C6E034(v63, type metadata accessor for FriendLocation);
}

void sub_266C6D6B4(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

uint64_t sub_266C6D740(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F80, &unk_266DB1ED0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_0_5();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = v32 - v8;
  v10 = [a1 friend];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 person];

    if (v12)
    {
      v13 = [v12 displayName];

      v14 = sub_266DAA70C();
      v16 = v15;

      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        v18 = [a1 friend];
        if (v18 && (v19 = v18, v20 = [v18 person], v19, v20))
        {
          v21 = [v20 nameComponents];

          if (v21)
          {
            sub_266DA729C();

            v22 = sub_266DA72DC();
            v23 = 0;
          }

          else
          {
            v22 = sub_266DA72DC();
            v23 = 1;
          }

          __swift_storeEnumTagSinglePayload(v6, v23, 1, v22);
          sub_266C6E08C(v6, v9, &qword_2800C9F80, &unk_266DB1ED0);
          sub_266DA72DC();
          if (__swift_getEnumTagSinglePayload(v9, 1, v22) != 1)
          {
            sub_266C1825C(v9, &qword_2800C9F80, &unk_266DB1ED0);
            goto LABEL_19;
          }
        }

        else
        {
          v24 = sub_266DA72DC();
          __swift_storeEnumTagSinglePayload(v9, 1, 1, v24);
        }

        sub_266C1825C(v9, &qword_2800C9F80, &unk_266DB1ED0);
      }
    }
  }

  v25 = [a1 friend];
  if (!v25)
  {
LABEL_19:
    LOBYTE(v27) = 0;
    return v27 & 1;
  }

  v26 = v25;
  v27 = [v25 person];

  if (v27)
  {
    v28 = [v27 relationship];

    if (v28)
    {
      sub_266DAA70C();

      v27 = sub_266DAA73C();
      v30 = v29;

      v32[2] = v27;
      v32[3] = v30;
      v32[0] = 0x646E65697266;
      v32[1] = 0xE600000000000000;
      sub_266C680F8();
      LOBYTE(v27) = sub_266DAACBC();

      return v27 & 1;
    }

    goto LABEL_19;
  }

  return v27 & 1;
}

id sub_266C6DA84(void *a1)
{
  v2 = [a1 sharesLocation];
  if (v2 && (v3 = v2, v4 = [v2 BOOLValue], v3, v4))
  {
    type metadata accessor for FindFriendFriendResolutionResult();
    return sub_266DA5B28(a1);
  }

  else
  {
    if (qword_2800C9208 != -1)
    {
      OUTLINED_FUNCTION_0_26();
    }

    v6 = sub_266DA94AC();
    __swift_project_value_buffer(v6, qword_2800CA810);
    v7 = sub_266DA948C();
    v8 = sub_266DAAB0C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_11();
      *v9 = 0;
      _os_log_impl(&dword_266C08000, v7, v8, "Resolved friend does not share their location.", v9, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266DAE3B0;
    *(inited + 32) = a1;
    type metadata accessor for FindFriendFriendResolutionResult();
    v11 = a1;
    OUTLINED_FUNCTION_1_19();
    sub_266C6A8E0(inited, v12);
    swift_setDeallocating();
    sub_266C6F074();
    return sub_266C6AA38(5);
  }
}

id FindFriendIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FindFriendIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FindFriendIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_266C6DD1C(void *a1, char a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_266C6B264(a1, a2, *(v2 + 16));
}

unint64_t sub_266C6DD34()
{
  result = qword_2800CA848;
  if (!qword_2800CA848)
  {
    sub_266DA8E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA848);
  }

  return result;
}

uint64_t type metadata accessor for FindFriendIntentHandler()
{
  result = qword_2800CA850;
  if (!qword_2800CA850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266C6DDE0()
{
  result = type metadata accessor for FindFriendSessionManager();
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

_OWORD *sub_266C6DF38(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_266C6DF84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C6DFE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_13_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_4_4();
  v9(v8);
  return v4;
}

uint64_t sub_266C6E034(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_266C6E08C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_13_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_4_4();
  v9(v8);
  return v4;
}

uint64_t OUTLINED_FUNCTION_0_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_14_9()
{
  result = __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
  v4 = *(*(v2 - 120) + 48);
  return result;
}

uint64_t sub_266C6E194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  v11 = sub_266DA999C();
  if (!v12)
  {
    v11 = sub_266DA99BC();
  }

  v13 = v11;
  v14 = v12;
  sub_266DA99FC();
  if (v15)
  {
    goto LABEL_6;
  }

  if (v14)
  {

LABEL_6:
    sub_266DAA77C();

    v16 = sub_266DA919C();
    v17 = 0;
    goto LABEL_7;
  }

  v16 = sub_266DA919C();
  v17 = 1;
LABEL_7:
  v18 = 1;
  v58 = v10;
  __swift_storeEnumTagSinglePayload(v10, v17, 1, v16);
  v19 = sub_266DA997C();
  v54 = v20;
  v55 = v19;
  sub_266DA9A0C();
  v56 = v14;
  v57 = v13;
  if (v21)
  {
    sub_266DAA77C();

    v18 = 0;
  }

  v22 = sub_266DA919C();
  __swift_storeEnumTagSinglePayload(v8, v18, 1, v22);
  v23 = sub_266DA99CC();
  v52 = v24;
  v53 = v23;
  v25 = sub_266DA99EC();
  v50 = v26;
  v51 = v25;
  v27 = sub_266DA998C();
  v48 = v28;
  v49 = v27;
  v47 = sub_266DA99AC();
  v29 = sub_266DA9A1C();
  (*(*(v29 - 8) + 8))(a1, v29);
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v22);
  v30 = type metadata accessor for Address();
  v31 = (a2 + v30[5]);
  v32 = (a2 + v30[6]);
  v33 = v30[8];
  v34 = v8;
  v35 = (a2 + v30[7]);
  __swift_storeEnumTagSinglePayload(a2 + v33, 1, 1, v22);
  v36 = (a2 + v30[9]);
  v37 = (a2 + v30[10]);
  v38 = v30[11];
  v39 = v30[12];
  v40 = (a2 + v38);
  sub_266C64CA4(v58, a2);
  v41 = v54;
  *v31 = v55;
  v31[1] = v41;
  *v32 = 0;
  v32[1] = 0;
  v42 = v56;
  *v35 = v57;
  v35[1] = v42;
  result = sub_266C64CA4(v34, a2 + v33);
  v44 = v52;
  *v36 = v53;
  v36[1] = v44;
  v45 = v50;
  *v37 = v51;
  v37[1] = v45;
  v46 = v48;
  *v40 = v49;
  v40[1] = v46;
  *(a2 + v39) = v47;
  return result;
}

uint64_t sub_266C6E424()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_28156F238);
  v1 = __swift_project_value_buffer(v0, qword_28156F238);
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156F1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t FindMyFriendFlowProvider.init()@<X0>(uint64_t a1@<X8>)
{
  sub_266DA81BC();
  v20[3] = &type metadata for AccountStateProvider;
  v20[4] = &off_28785FB48;
  v20[0] = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v20[1] = 0xD000000000000015;
  v20[2] = 0x8000000266DC2130;
  v2 = type metadata accessor for AppInstalledStateProvider();
  swift_allocObject();
  v20[8] = v2;
  v20[5] = sub_266D1E26C();
  v20[9] = &off_287864960;
  v20[13] = &type metadata for SFMUserDefaultsSettingProvider;
  v20[14] = &protocol witness table for SFMUserDefaultsSettingProvider;
  sub_266C233D0(v22, &v21);
  v3 = sub_266DA7E7C();
  OUTLINED_FUNCTION_3_15(v3);
  v19 = sub_266DA7E6C();
  *(a1 + 224) = &unk_287867FA0;
  *(a1 + 232) = &off_287867FB0;
  v4 = sub_266DA942C();
  v5 = sub_266DA941C();
  v6 = MEMORY[0x277D5FDD8];
  *(a1 + 264) = v4;
  *(a1 + 272) = v6;
  *(a1 + 240) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0A8, &qword_266DB1EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266DAE4A0;
  *(inited + 56) = &unk_287867F78;
  v8 = sub_266C6F020();
  *(inited + 64) = v8;
  v9 = swift_allocObject();
  *(inited + 32) = v9;
  *(v9 + 16) = "SiriFindMy";
  *(v9 + 24) = 10;
  *(v9 + 32) = 2;
  *(v9 + 40) = "FindMyFriendsNLX";
  *(v9 + 48) = 16;
  *(v9 + 56) = 2;
  v18 = sub_266D7E674(inited);
  swift_setDeallocating();
  sub_266C6F5BC(&qword_2800CA8A0, &qword_266DB1F90);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_266DAE4A0;
  *(v10 + 56) = &unk_287867F78;
  *(v10 + 64) = v8;
  v11 = swift_allocObject();
  *(v10 + 32) = v11;
  *(v11 + 16) = "SiriFindMy";
  *(v11 + 24) = 10;
  *(v11 + 32) = 2;
  *(v11 + 40) = "FindMyFriendsNLX";
  *(v11 + 48) = 16;
  *(v11 + 56) = 2;
  v12 = sub_266D7E674(v10);
  swift_setDeallocating();
  sub_266C6F5BC(&qword_2800CA8A0, &qword_266DB1F90);
  v13 = sub_266DA941C();
  *(a1 + 320) = v4;
  *(a1 + 328) = MEMORY[0x277D5FDD8];
  *(a1 + 296) = v13;
  *(a1 + 288) = v12 & 1;
  *(a1 + 24) = &type metadata for FindMyFriendFlowFactoryImpl;
  *(a1 + 32) = &off_2878616E8;
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D5BD58];
  *a1 = v14;
  *(v14 + 40) = v2;
  *(v14 + 48) = v15;
  *(v14 + 16) = v19;
  *(v14 + 80) = &unk_287867FA0;
  *(v14 + 88) = &off_287867FB0;
  sub_266C6F0C8(a1 + 200, v14 + 96);
  sub_266C6F124(a1 + 288, v14 + 184);
  *(v14 + 176) = v18 & 1;
  *(a1 + 64) = &type metadata for FMFStateValidator;
  *(a1 + 72) = &off_2878669B8;
  v16 = swift_allocObject();
  *(a1 + 40) = v16;
  sub_266C6F180(v20, v16 + 16);
  sub_266C233D0(v22, a1 + 80);
  *(a1 + 144) = v2;
  *(a1 + 152) = v15;
  *(a1 + 120) = v19;
  *(a1 + 184) = &unk_287867FA0;
  *(a1 + 192) = &off_287867FB0;

  sub_266C6F1DC(v20);
  result = __swift_destroy_boxed_opaque_existential_0(v22);
  *(a1 + 280) = v18 & 1;
  return result;
}

uint64_t FindMyFriendFlowProvider.makeFlow(parse:)(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SharedLocationVisibilityInvocationFlow();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_6();
  v8 = (v7 - v6);
  sub_266CD6764(a1, v43);
  if (v43[40] != 255)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
    v9 = sub_266D52FB4();
    if (v9 != 5)
    {
      v12 = v9;
      if (qword_28156F230 != -1)
      {
        swift_once();
      }

      v13 = sub_266DA94AC();
      __swift_project_value_buffer(v13, qword_28156F238);
      v14 = sub_266DA948C();
      v15 = sub_266DAAAEC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v41[0] = v17;
        *v16 = 136315138;
        LOBYTE(v36) = v12;
        v18 = sub_266DAA72C();
        v20 = sub_266C22A3C(v18, v19, v41);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_266C08000, v14, v15, "Find My Friends has an invalid state of: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x26D5F2480](v17, -1, -1);
        MEMORY[0x26D5F2480](v16, -1, -1);
      }

      OUTLINED_FUNCTION_1_20();
      v21 = sub_266CBC0E0(v12);
      sub_266C6ED38(v21, 2);
      OUTLINED_FUNCTION_6_13();
      v22 = v43;
      goto LABEL_26;
    }
  }

  sub_266C6F230(v43, v41);
  if (v42 != 255)
  {
    sub_266C6F230(v41, &v36);
    v10 = v36;
    switch(v40)
    {
      case 1:
        OUTLINED_FUNCTION_1_20();
        v11 = sub_266CBB330();
        goto LABEL_22;
      case 2:
        sub_266C0B0D8(&v36, v33);
        OUTLINED_FUNCTION_1_20();
        v24 = sub_266CBB89C();
        v25 = v34;
        v26 = v35;
        __swift_project_boxed_opaque_existential_1(v33, v34);
        v27 = sub_266C16430(v25, v26);
        sub_266C6ED38(v24, v27);
        OUTLINED_FUNCTION_6_13();
        sub_266C6F2A0(v43);
        __swift_destroy_boxed_opaque_existential_0(v33);
        goto LABEL_25;
      case 3:
        if (qword_2800C9178 != -1)
        {
          swift_once();
        }

        FriendSessionManager = type metadata accessor for FindFriendSessionManager();
        v29 = __swift_project_value_buffer(FriendSessionManager, qword_2800E61C0);
        sub_266C6F3B0(v29, v8 + *(v4 + 20));
        *v8 = v10;
        sub_266C6F414();
        v2 = sub_266DA798C();
        sub_266C6F46C(v8);
        goto LABEL_24;
      case 4:
        if (v38 | v39 | v36 | v37 | *(&v36 + 1) && ((v23 = v38 | v39 | v37 | *(&v36 + 1), v36 != 1) || v23))
        {
          if (v36 == 2 && !v23)
          {
            sub_266C6F2A0(v43);
            sub_266C6F308(&v36);
            goto LABEL_12;
          }

          sub_266C6F35C();
          v2 = sub_266DA798C();
        }

        else
        {
          sub_266DA7FEC();
          v30 = sub_266DA75FC();
          OUTLINED_FUNCTION_3_15(v30);
          v33[0] = sub_266DA75EC();
          v31 = sub_266DA798C();

          sub_266C6ED38(v31, 2);
          OUTLINED_FUNCTION_6_13();
        }

LABEL_24:
        sub_266C6F2A0(v43);
LABEL_25:
        v22 = v41;
        break;
      default:
        OUTLINED_FUNCTION_1_20();
        v11 = sub_266CBA6C4();
LABEL_22:
        sub_266C6ED38(v11, 2);
        OUTLINED_FUNCTION_6_13();
        sub_266C6F2A0(v43);
        sub_266C6F308(&v36);
        goto LABEL_25;
    }

LABEL_26:
    sub_266C6F2A0(v22);
    return v2;
  }

  sub_266C6F2A0(v43);
LABEL_12:
  sub_266C6F2A0(v41);
  return 0;
}

uint64_t sub_266C6ED38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_266DA788C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_6();
  v10 = v9 - v8;
  v11 = sub_266DA926C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_0_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_266DB1EE0;
  type metadata accessor for SiriFindMyCommonCATsSimple();

  sub_266DA925C();
  v14 = sub_266DA91CC();
  sub_266C233D0((v2 + 15), &__src[1]);
  sub_266C233D0((v2 + 20), &__src[6]);
  v15 = sub_266DA7E7C();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  __src[0] = v14;
  __src[11] = sub_266DA7E6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA888, &qword_266DB5D70);
  v18 = swift_allocObject();
  *(v18 + 16) = 1;
  memcpy((v18 + 24), __src, 0x60uLL);
  __src[0] = v18;
  sub_266C6F6F4();
  v19 = sub_266DA799C();

  *(v13 + 32) = v19;
  sub_266D2AF8C(a2);
  v20 = sub_266DA785C();
  (*(v6 + 8))(v10, v5);
  *(v13 + 40) = v20;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  *(v13 + 48) = sub_266CBC7A8();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_266DAE3B0;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  *(v21 + 32) = sub_266CBC614();
  __src[0] = sub_266CC5B9C(a1, v13, v21);
  __src[1] = v22;
  __src[2] = v23;
  sub_266C6F758();
  v24 = sub_266DA798C();

  return v24;
}

unint64_t sub_266C6F020()
{
  result = qword_2800CA868;
  if (!qword_2800CA868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA868);
  }

  return result;
}

uint64_t sub_266C6F074()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_0_27();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_266C6F230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA870, &qword_266DB1F08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C6F2A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA870, &qword_266DB1F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266C6F35C()
{
  result = qword_2800CA878;
  if (!qword_2800CA878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA878);
  }

  return result;
}

uint64_t sub_266C6F3B0(uint64_t a1, uint64_t a2)
{
  FriendSessionManager = type metadata accessor for FindFriendSessionManager();
  (*(*(FriendSessionManager - 8) + 16))(a2, a1, FriendSessionManager);
  return a2;
}

unint64_t sub_266C6F414()
{
  result = qword_2800CA880;
  if (!qword_2800CA880)
  {
    type metadata accessor for SharedLocationVisibilityInvocationFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA880);
  }

  return result;
}

uint64_t sub_266C6F46C(uint64_t a1)
{
  v2 = type metadata accessor for SharedLocationVisibilityInvocationFlow();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266C6F4C8()
{
  v0 = *(*(sub_266DA7C9C() - 8) + 80);
  OUTLINED_FUNCTION_5_13();
  v1 = OUTLINED_FUNCTION_0_27();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_266C6F53C()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0) - 8) + 80);
  OUTLINED_FUNCTION_5_13();
  v1 = OUTLINED_FUNCTION_0_27();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_266C6F5BC(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  v4 = OUTLINED_FUNCTION_0_27();

  return MEMORY[0x2821FE8D8](v4, v5, v6);
}

uint64_t sub_266C6F60C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 336))
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

uint64_t sub_266C6F64C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
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
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_266C6F6F4()
{
  result = qword_2800CA890;
  if (!qword_2800CA890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CA888, &qword_266DB5D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA890);
  }

  return result;
}

unint64_t sub_266C6F758()
{
  result = qword_2800CA898;
  if (!qword_2800CA898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA898);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_15(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_4_14()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return __swift_destroy_boxed_opaque_existential_0(v0 + 17);
}

uint64_t OUTLINED_FUNCTION_5_13()
{
  v2 = *(v0 + 16);

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_6_13()
{
}

uint64_t sub_266C6F86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8C0, &qword_266DB1FB0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  result = sub_266DA96FC();
  a3[5] = result;
  return result;
}

uint64_t sub_266C6F900(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_266C6F940(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266C6F9A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = v1[5];
  v6 = *(v4 + 16);
  swift_retain_n();
  v6(sub_266C6FC94, v5, sub_266C6FC98, v5, v3, v4);

  sub_266C6FCA0(v1, v14);
  v7 = swift_allocObject();
  v8 = v14[1];
  v7[1] = v14[0];
  v7[2] = v8;
  v7[3] = v14[2];
  v9 = sub_266DA96AC();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_266DA96BC();
  v13 = MEMORY[0x277CBCDA0];
  a1[3] = v9;
  a1[4] = v13;
  *a1 = result;
  return result;
}

uint64_t sub_266C6FB18(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_266C6FB68(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v5 = *(v2 + 40);
  (*(v6 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_266DA96EC();
}

unint64_t sub_266C6FC40()
{
  result = qword_28156F398;
  if (!qword_28156F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F398);
  }

  return result;
}

id sub_266C6FCE0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8C8, &unk_266DB2130);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v35 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v35 - v15);
  MEMORY[0x28223BE20](v14);
  v18 = (&v35 - v17);
  sub_266C70184(a2, &v35 - v17);
  type metadata accessor for Friend();
  if (OUTLINED_FUNCTION_0_28(v18) == 1)
  {
    sub_266C3A088(v18, &qword_2800CA8C8, &unk_266DB2130);
    v19 = 0;
  }

  else
  {
    v20 = *v18;
    v21 = v18[1];

    sub_266C701F4(v18);
    v19 = sub_266DAA6FC();
  }

  v22 = objc_allocWithZone(v3);
  v23 = sub_266DAA6FC();
  v24 = [v22 initWithIdentifier:v19 displayString:v23];

  sub_266C70184(a2, v16);
  if (OUTLINED_FUNCTION_0_28(v16) == 1)
  {
    v25 = v24;
    sub_266C3A088(v16, &qword_2800CA8C8, &unk_266DB2130);
    v26 = 0;
  }

  else
  {
    v27 = *v16;
    v28 = v16[1];
    v29 = v24;

    sub_266C701F4(v16);
    v26 = sub_266DAA6FC();
  }

  [a1 setCustomIdentifier_];

  [v24 setPerson_];
  sub_266C70184(a2, v13);
  if (OUTLINED_FUNCTION_0_28(v13) == 1)
  {
    sub_266C3A088(v13, &qword_2800CA8C8, &unk_266DB2130);
    v30 = 0;
  }

  else
  {
    v31 = v13[56];
    sub_266C701F4(v13);
    v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  [v24 setSharesLocation_];

  sub_266C70184(a2, v10);
  if (OUTLINED_FUNCTION_0_28(v10) == 1)
  {
    sub_266C3A088(v10, &qword_2800CA8C8, &unk_266DB2130);
    v32 = 0;
  }

  else
  {
    v33 = v10[57];
    sub_266C701F4(v10);
    v32 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  [v24 setFollowsMyLocation_];

  sub_266C3A088(a2, &qword_2800CA8C8, &unk_266DB2130);
  return v24;
}

uint64_t sub_266C70048@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = [v2 person];
  if (v8)
  {
    sub_266D4E120(v8, v7);
    v9 = sub_266DA957C();
    if (!__swift_getEnumTagSinglePayload(v7, 1, v9))
    {
      (*(*(v9 - 8) + 32))(a1, v7, v9);
      v11 = a1;
      v12 = 0;
      v10 = v9;
      return __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
    }

    sub_266C3A088(v7, &qword_2800CA8B8, &qword_266DB30F0);
  }

  v10 = sub_266DA957C();
  v11 = a1;
  v12 = 1;
  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
}

uint64_t sub_266C70184(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8C8, &unk_266DB2130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C701F4(uint64_t a1)
{
  v2 = type metadata accessor for Friend();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_28(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t sub_266C70278()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CA8D0);
  v1 = __swift_project_value_buffer(v0, qword_2800CA8D0);
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156F1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C70340(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8E8, &qword_266DB20B8);
  OUTLINED_FUNCTION_0_2(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v65 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8F0, &qword_266DB20C0);
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v67 = v12;
  v68 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v65 - v16;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8F8, &qword_266DB20C8);
  OUTLINED_FUNCTION_0_2(v73);
  v71 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v65 - v22;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA900, &qword_266DB20D0);
  OUTLINED_FUNCTION_0_2(v74);
  v72 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v27);
  v70 = &v65 - v28;
  v29 = [a1 person];
  if (!v29)
  {
    goto LABEL_15;
  }

  v30 = sub_266C72420(v29);
  if (!v30)
  {
    goto LABEL_15;
  }

  v33 = v30;
  if (!sub_266C3A14C(v30, v31, v32))
  {

LABEL_15:
    if (qword_2800C9218 != -1)
    {
      swift_once();
    }

    v50 = sub_266DA94AC();
    __swift_project_value_buffer(v50, qword_2800CA8D0);
    v51 = sub_266DA948C();
    v52 = sub_266DAAB0C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_266C08000, v51, v52, "FMFCoreFriendProvider: No siri matches found on skeleton person", v53, 2u);
      MEMORY[0x26D5F2480](v53, -1, -1);
    }

    *&v75[0] = 0;
    BYTE8(v75[0]) = 5;
    sub_266DA977C();
    sub_266C230E8(&qword_2800CA908, &qword_2800CA8E8, &qword_266DB20B8);
    v54 = sub_266DA97EC();
    (*(v4 + 8))(v9, v2);
    return v54;
  }

  sub_266CB9F54(0, (v33 & 0xC000000000000001) == 0, v33);
  if ((v33 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x26D5F1780](0, v33);
  }

  else
  {
    v34 = *(v33 + 32);
  }

  v35 = v34;
  v36 = [v34 recommendation];

  v39 = sub_266C3A14C(v33, v37, v38);
  if (!v39)
  {

    v49 = MEMORY[0x277D84F90];
LABEL_21:
    v55 = v69;
    v56 = sub_266C70A70(v49, v47, v48);

    v77 = *(*__swift_project_boxed_opaque_existential_1(v55, v55[3]) + 16);
    sub_266C72488(v55, v75);
    v57 = swift_allocObject();
    v58 = v75[1];
    *(v57 + 16) = v75[0];
    *(v57 + 32) = v58;
    *(v57 + 48) = v76;
    *(v57 + 56) = v56;
    *(v57 + 64) = v36 == 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA910, &qword_266DB20D8);
    sub_266C230E8(&qword_2800CA918, &qword_2800CA910, &qword_266DB20D8);
    sub_266DA984C();

    v59 = *(*__swift_project_boxed_opaque_existential_1(v55, v55[3]) + 32);

    v61 = sub_266C71930(v60, sub_266C71920, 0);

    (*(v67 + 8))(v17, v68);
    v77 = v61;
    *&v75[0] = 2;
    BYTE8(v75[0]) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA920, &qword_266DB20E0);
    sub_266C230E8(&qword_2800CA928, &qword_2800CA920, &qword_266DB20E0);
    sub_266DA980C();

    sub_266C230E8(&qword_2800CA930, &qword_2800CA8F8, &qword_266DB20C8);
    v62 = v70;
    v63 = v73;
    sub_266DA988C();
    (*(v71 + 8))(v23, v63);
    sub_266C230E8(&qword_2800CA938, &qword_2800CA900, &qword_266DB20D0);
    v64 = v74;
    v54 = sub_266DA97EC();
    (*(v72 + 8))(v62, v64);
    return v54;
  }

  v40 = v39;
  v66 = v36;
  *&v75[0] = MEMORY[0x277D84F90];
  result = sub_266DAAE8C();
  if ((v40 & 0x8000000000000000) == 0)
  {
    v42 = 0;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x26D5F1780](v42, v33);
      }

      else
      {
        v43 = *(v33 + 8 * v42 + 32);
      }

      v44 = v43;
      ++v42;
      v45 = [v43 person];

      sub_266DAAE6C();
      v46 = *(*&v75[0] + 16);
      sub_266DAAE9C();
      sub_266DAAEAC();
      sub_266DAAE7C();
    }

    while (v40 != v42);

    v49 = *&v75[0];
    v36 = v66;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_266C70A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_266C3A14C(a1, a2, a3);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    v9 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v6 = v4;
  v55 = MEMORY[0x277D84F90];
  result = sub_266C387BC(0, v4 & ~(v4 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v55;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D5F1780](v8, a1);
      }

      else
      {
        v10 = *(a1 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v11 contactIdentifier];
      if (v12)
      {
        v13 = v12;
        v14 = sub_266DAA70C();
        v16 = v15;
      }

      else
      {

        v14 = 0;
        v16 = 0;
      }

      v18 = *(v55 + 16);
      v17 = *(v55 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_266C387BC(v17 > 1, v18 + 1, 1);
      }

      ++v8;
      *(v55 + 16) = v18 + 1;
      v19 = v55 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
    }

    while (v6 != v8);
    v5 = MEMORY[0x277D84F90];
LABEL_15:
    sub_266CB8718(v9);
    v21 = v20;
    if (qword_2800C9218 != -1)
    {
      goto LABEL_58;
    }

    while (1)
    {
      v22 = sub_266DA94AC();
      __swift_project_value_buffer(v22, qword_2800CA8D0);

      v23 = sub_266DA948C();
      v24 = sub_266DAAB0C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134217984;
        result = sub_266C3A14C(a1, v26, v27);
        v28 = *(v21 + 16);
        v29 = __OFSUB__(result, v28);
        v30 = result - v28;
        if (v29)
        {
          goto LABEL_60;
        }

        *(v25 + 4) = v30;

        _os_log_impl(&dword_266C08000, v23, v24, "FMFCoreFriendProvider: removed %ld duplicate contacts in siri matches", v25, 0xCu);
        MEMORY[0x26D5F2480](v25, -1, -1);
      }

      else
      {
      }

      v51 = v5;
      v56 = v5;
      v31 = v21 + 56;
      v32 = 1 << *(v21 + 32);
      v33 = -1;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      v5 = v33 & *(v21 + 56);
      v34 = (v32 + 63) >> 6;

      v37 = 0;
      v52 = v34;
      v53 = v21 + 56;
      v54 = v21;
LABEL_23:
      v38 = v37;
      if (!v5)
      {
        goto LABEL_25;
      }

      while (2)
      {
        v37 = v38;
LABEL_28:
        v39 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v40 = (*(v21 + 48) + ((v37 << 10) | (16 * v39)));
        v42 = *v40;
        v41 = v40[1];
        v43 = sub_266C3A14C(a1, v35, v36);

        v44 = 0;
        v21 = a1 & 0xC000000000000001;
        while (v43 != v44)
        {
          if (v21)
          {
            v45 = MEMORY[0x26D5F1780](v44, a1);
          }

          else
          {
            if (v44 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_56;
            }

            v45 = *(a1 + 8 * v44 + 32);
          }

          v46 = v45;
          if (__OFADD__(v44, 1))
          {
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          v47 = sub_266C39CB4(v45);
          if (v48)
          {
            if (v41)
            {
              if (v47 == v42 && v48 == v41)
              {

LABEL_50:

LABEL_51:
                MEMORY[0x26D5F1270](v47);
                if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_266DAA95C();
                }

                sub_266DAA96C();
                v51 = v56;
                v31 = v53;
                v21 = v54;
                v34 = v52;
                goto LABEL_23;
              }

              v50 = sub_266DAB17C();

              if (v50)
              {
                goto LABEL_50;
              }

              v21 = a1 & 0xC000000000000001;
            }

            else
            {
            }
          }

          else
          {
            if (!v41)
            {
              goto LABEL_51;
            }
          }

          ++v44;
        }

        v38 = v37;
        v31 = v53;
        v21 = v54;
        v34 = v52;
        if (v5)
        {
          continue;
        }

        break;
      }

LABEL_25:
      while (1)
      {
        v37 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v37 >= v34)
        {

          return v51;
        }

        v5 = *(v31 + 8 * v37);
        ++v38;
        if (v5)
        {
          goto LABEL_28;
        }
      }

LABEL_57:
      __break(1u);
LABEL_58:
      swift_once();
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_266C70F0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  result = sub_266C70F48(a2, *a1, a3);
  *a4 = result;
  *(a4 + 8) = v6;
  return result;
}

uint64_t sub_266C70F48(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v96 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8C8, &unk_266DB2130);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v95 = v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v104 = v92 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = v92 - v11;
  v106 = type metadata accessor for Friend();
  v103 = *(v106 - 8);
  v13 = *(v103 + 64);
  v14 = MEMORY[0x28223BE20](v106);
  v16 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v97 = v92 - v17;
  v102 = *(a2 + 16);
  if (v102)
  {
    if (qword_2800C9218 != -1)
    {
LABEL_70:
      swift_once();
    }

    v92[3] = v3;
    v18 = sub_266DA94AC();
    v19 = __swift_project_value_buffer(v18, qword_2800CA8D0);

    v93 = v19;
    v20 = sub_266DA948C();
    v21 = sub_266DAAB0C();

    v22 = os_log_type_enabled(v20, v21);
    v23 = MEMORY[0x277D84F90];
    v100 = a2;
    v94 = MEMORY[0x277D84F90];
    if (v22)
    {
      LODWORD(v101) = v21;
      v105 = v20;
      v24 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v107 = v23;
      v108 = v98;
      v99 = v24;
      *v24 = 136315138;
      v25 = v102;
      sub_266C387BC(0, v102, 0);
      v26 = v107;
      v27 = a2 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
      v28 = *(v103 + 72);
      do
      {
        v29 = v97;
        sub_266C676D4(v27, v97);
        v31 = *(v29 + 32);
        v30 = *(v29 + 40);

        sub_266C701F4(v29);
        v107 = v26;
        v33 = v26[2];
        v32 = v26[3];
        if (v33 >= v32 >> 1)
        {
          sub_266C387BC(v32 > 1, v33 + 1, 1);
          v26 = v107;
        }

        v26[2] = v33 + 1;
        v34 = &v26[2 * v33];
        v34[4] = v31;
        v34[5] = v30;
        v27 += v28;
        --v25;
      }

      while (v25);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
      v41 = MEMORY[0x26D5F12B0](v26, v40);
      v43 = v42;

      v44 = sub_266C22A3C(v41, v43, &v108);

      v45 = v99;
      *(v99 + 4) = v44;
      v46 = v105;
      _os_log_impl(&dword_266C08000, v105, v101, "FMFCoreFriendProvider: Friends contact identifier %s", v45, 0xCu);
      v47 = v98;
      __swift_destroy_boxed_opaque_existential_0(v98);
      MEMORY[0x26D5F2480](v47, -1, -1);
      MEMORY[0x26D5F2480](v45, -1, -1);

      a2 = v100;
      v23 = MEMORY[0x277D84F90];
    }

    else
    {
    }

    v108 = v23;
    v3 = v96;
    v101 = sub_266C3A14C(v96, v48, v49);
    v52 = 0;
    v105 = (v3 & 0xC000000000000001);
    v98 = (v3 + 32);
    v99 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    if (v52 != v101)
    {
      if (v105)
      {
        v53 = MEMORY[0x26D5F1780](v52, v96);
      }

      else
      {
        if (v52 >= *(v99 + 16))
        {
          goto LABEL_69;
        }

        v53 = v98[v52];
      }

      v54 = v53;
      if (!__OFADD__(v52++, 1))
      {
        v56 = v102;
        v57 = a2 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
        v58 = *(v103 + 72);
        while (1)
        {
          if (!v56)
          {
            __break(1u);
            goto LABEL_67;
          }

          sub_266C676D4(v57, v16);
          v60 = *(v16 + 4);
          v59 = *(v16 + 5);
          v61 = sub_266C39CB4(v54);
          if (v59)
          {
            if (v62)
            {
              if (v60 == v61 && v59 == v62)
              {

LABEL_36:
                sub_266C72608(v16, v12);
                v65 = 0;
LABEL_37:
                v3 = v106;
                __swift_storeEnumTagSinglePayload(v12, v65, 1, v106);
                v66 = v104;
                sub_266C70184(v12, v104);
                EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v66, 1, v3);
                a2 = v100;
                if (EnumTagSinglePayload == 1)
                {
                  sub_266C725A0(v12);
                }

                else
                {
                  v68 = v97;
                  sub_266C72608(v104, v97);
                  type metadata accessor for INFriend();
                  v69 = v95;
                  sub_266C676D4(v68, v95);
                  __swift_storeEnumTagSinglePayload(v69, 0, 1, v106);
                  LODWORD(v3) = sub_266C6FCE0(v54, v69);
                  sub_266C701F4(v68);
                  v70 = sub_266C725A0(v12);
                  MEMORY[0x26D5F1270](v70);
                  if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_266DAA95C();
                  }

                  sub_266DAA96C();
                  v94 = v108;
                }

                goto LABEL_16;
              }

              v64 = sub_266DAB17C();

              if (v64)
              {
                goto LABEL_36;
              }
            }
          }

          else
          {
            if (!v62)
            {
              goto LABEL_36;
            }
          }

          sub_266C701F4(v16);
          v57 += v58;
          if (!--v56)
          {
            v65 = 1;
            goto LABEL_37;
          }
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v71 = v94;
    if (sub_266C3A14C(v94, v50, v51))
    {
      if (sub_266C3A14C(v71, v72, v73) == 1)
      {
        sub_266CB9F54(0, (v71 & 0xC000000000000001) == 0, v71);
        if ((v71 & 0xC000000000000001) != 0)
        {
          v74 = MEMORY[0x26D5F1780](0, v71);
        }

        else
        {
          v74 = v71[4];
        }

        v39 = v74;

        return v39;
      }

      return v71;
    }

    v75 = sub_266DA948C();
    v76 = sub_266DAAB0C();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_266C08000, v75, v76, "FMFCoreFriendProvider: No contact ids in siri matches matched friends in FMF", v77, 2u);
      MEMORY[0x26D5F2480](v77, -1, -1);
    }

    v78 = v96;
    v81 = sub_266C3A14C(v96, v79, v80);
    v39 = MEMORY[0x277D84F90];
    v84 = v95;
    if (v81)
    {
      v85 = v81;
      v108 = MEMORY[0x277D84F90];
      sub_266DAAE8C();
      if (v85 < 0)
      {
        __break(1u);
        goto LABEL_73;
      }

      type metadata accessor for INFriend();
      v86 = 0;
      do
      {
        if (v105)
        {
          v87 = MEMORY[0x26D5F1780](v86, v78);
        }

        else
        {
          v87 = *(v78 + 8 * v86 + 32);
        }

        v88 = v87;
        ++v86;
        __swift_storeEnumTagSinglePayload(v84, 1, 1, v106);
        sub_266C6FCE0(v88, v84);
        sub_266DAAE6C();
        v89 = *(v108 + 16);
        sub_266DAAE9C();
        sub_266DAAEAC();
        sub_266DAAE7C();
      }

      while (v85 != v86);
      v39 = v108;
      if (v85 > 1)
      {
        return v39;
      }
    }

    if (!sub_266C3A14C(v39, v82, v83))
    {
LABEL_67:

      return 0;
    }

    sub_266CB9F54(0, (v39 & 0xC000000000000001) == 0, v39);
    if ((v39 & 0xC000000000000001) == 0)
    {
      v90 = *(v39 + 32);
LABEL_63:
      v71 = v90;

      return v71;
    }

LABEL_73:
    v90 = MEMORY[0x26D5F1780](0, v39);
    goto LABEL_63;
  }

  if (qword_2800C9218 != -1)
  {
    swift_once();
  }

  v35 = sub_266DA94AC();
  __swift_project_value_buffer(v35, qword_2800CA8D0);
  v36 = sub_266DA948C();
  v37 = sub_266DAAB0C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_266C08000, v36, v37, "FMFCoreFriendProvider: manager reported no friends", v38, 2u);
    MEMORY[0x26D5F2480](v38, -1, -1);
  }

  return 1;
}