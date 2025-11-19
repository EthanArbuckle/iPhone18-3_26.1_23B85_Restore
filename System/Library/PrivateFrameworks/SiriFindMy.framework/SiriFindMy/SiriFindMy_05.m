BOOL sub_266C71834(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2;
  if (a2 >= 3u)
  {
    if (qword_2800C9218 != -1)
    {
      swift_once();
    }

    v3 = sub_266DA94AC();
    __swift_project_value_buffer(v3, qword_2800CA8D0);
    v4 = sub_266DA948C();
    v5 = sub_266DAAB0C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_266C08000, v4, v5, "FMFCoreFriendProvider: Filtering out undesirable FriendRecommendation", v6, 2u);
      MEMORY[0x26D5F2480](v6, -1, -1);
    }
  }

  return v2 < 3;
}

uint64_t sub_266C71930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA940, &qword_266DB20E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA948, &qword_266DB20F0);
  v35 = *(v32 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  v11 = &v31 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA950, &qword_266DB20F8);
  v39 = *(v36 - 8);
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA958, &qword_266DB2100);
  v16 = *(v15 - 8);
  v37 = v15;
  v38 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  v44 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA960, &qword_266DB2108);
  v20 = sub_266C230E8(&qword_2800CA968, &qword_2800CA960, &qword_266DB2108);
  sub_266C724D0();
  sub_266DA993C();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8F0, &qword_266DB20C0);
  v22 = sub_266C230E8(&qword_2800CA978, &qword_2800CA8F0, &qword_266DB20C0);
  sub_266C230E8(&qword_2800CA980, &qword_2800CA940, &qword_266DB20E8);
  sub_266DA981C();
  (*(v5 + 8))(v8, v4);
  v23 = swift_allocObject();
  v24 = v34;
  *(v23 + 16) = v33;
  *(v23 + 24) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_266C72540;
  *(v25 + 24) = v23;
  sub_266C230E8(&qword_2800CA988, &qword_2800CA948, &qword_266DB20F0);

  v26 = v32;
  sub_266DA98AC();

  (*(v35 + 8))(v11, v26);
  v40 = v21;
  v41 = v31;
  v42 = v22;
  v43 = v20;
  swift_getKeyPath();
  sub_266C230E8(&qword_2800CA990, &qword_2800CA950, &qword_266DB20F8);
  v27 = v36;
  sub_266DA983C();

  (*(v39 + 8))(v14, v27);
  sub_266C230E8(&qword_2800CA998, &qword_2800CA958, &qword_266DB2100);
  v28 = v37;
  v29 = sub_266DA97EC();
  (*(v38 + 8))(v19, v28);
  return v29;
}

uint64_t sub_266C71E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a2;
  v48 = a3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA9A8, &qword_266DB2140);
  OUTLINED_FUNCTION_0_2(v45);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA9B0, &qword_266DB2148);
  OUTLINED_FUNCTION_0_2(v46);
  v49 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA9B8, &qword_266DB2150);
  OUTLINED_FUNCTION_0_2(v50);
  v53 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA9C0, &qword_266DB2158);
  v51 = OUTLINED_FUNCTION_0_2(v25);
  v52 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v29);
  v31 = &v44 - v30;
  v58 = a4;
  v59 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA960, &qword_266DB2108);
  v32 = sub_266C230E8(&qword_2800CA968, &qword_2800CA960, &qword_266DB2108);
  sub_266DA993C();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA9C8, qword_266DB2160);
  v34 = sub_266C230E8(&qword_2800CA9D0, &qword_2800CA9C8, qword_266DB2160);
  sub_266C230E8(&qword_2800CA9D8, &qword_2800CA9A8, &qword_266DB2140);
  v35 = v45;
  sub_266DA981C();
  (*(v7 + 8))(v12, v35);
  v36 = swift_allocObject();
  v37 = v48;
  *(v36 + 16) = v47;
  *(v36 + 24) = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_266C726B8;
  *(v38 + 24) = v36;
  sub_266C230E8(&qword_2800CA9E0, &qword_2800CA9B0, &qword_266DB2148);

  v39 = v46;
  sub_266DA98AC();

  (*(v49 + 8))(v18, v39);
  v54 = v33;
  v55 = v44;
  v56 = v34;
  v57 = v32;
  swift_getKeyPath();
  sub_266C230E8(&qword_2800CA9E8, &qword_2800CA9B8, &qword_266DB2150);
  v40 = v50;
  sub_266DA983C();

  (*(v53 + 8))(v24, v40);
  sub_266C230E8(&qword_2800CA9F0, &qword_2800CA9C0, &qword_266DB2158);
  v41 = v51;
  v42 = sub_266DA97EC();
  (*(v52 + 8))(v31, v41);
  return v42;
}

uint64_t sub_266C7238C(uint64_t a1, char a2, char a3, uint64_t (*a4)(uint64_t *))
{
  v6 = a1;
  v7 = a2;
  if (a3)
  {
    v4 = 1;
  }

  else
  {
    v4 = a4(&v6);
  }

  return v4 & 1;
}

uint64_t sub_266C723D8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v5 = a1;
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3(&v5);
  }

  return v3 & 1;
}

uint64_t sub_266C72420(void *a1)
{
  v2 = [a1 scoredAlternatives];

  if (!v2)
  {
    return 0;
  }

  sub_266C7266C();
  v3 = sub_266DAA93C();

  return v3;
}

unint64_t sub_266C724D0()
{
  result = qword_2800CA970;
  if (!qword_2800CA970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA970);
  }

  return result;
}

uint64_t sub_266C72548(uint64_t *a1, uint64_t (*a2)(uint64_t *, uint64_t))
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v6 = *a1;
  v7 = v3;
  return a2(&v6, v4) & 1;
}

uint64_t sub_266C725A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8C8, &unk_266DB2130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266C72608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Friend();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_266C7266C()
{
  result = qword_2800CA9A0;
  if (!qword_2800CA9A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800CA9A0);
  }

  return result;
}

uint64_t sub_266C726C0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 8);
  v6 = *a1;
  return v2(&v6, v4) & 1;
}

uint64_t sub_266C72740(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_266DAAC1C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_266C72804()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CA9F8);
  v1 = __swift_project_value_buffer(v0, qword_2800CA9F8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_266C728CC()
{
  result = *(v0 + *(*v0 + 128));
  if (result)
  {
    return [result invalidate];
  }

  return result;
}

void sub_266C728F8(uint64_t a1)
{
  sub_266C728CC();
  v3 = *(*v1 + 128);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_266C72948()
{
  v1 = v0[4];
  v2 = *(*v0 + 80);
  return sub_266DAAB9C();
}

uint64_t sub_266C729B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v82 = a2;
  v83 = *a1;
  v5 = v83;
  v6 = *(v83 + 80);
  v7 = sub_266DAAC1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v80 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v79 = &v75 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v75 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v75 - v18;
  v20 = *(v6 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v17);
  v77 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v75 - v24;
  v26 = *(v5 + 120);
  swift_beginAccess();
  v27 = *(v8 + 16);
  v84 = v26;
  v85 = v27;
  v86 = v8 + 16;
  v27(v19, a1 + v26, v7);
  v87 = v6;
  if (__swift_getEnumTagSinglePayload(v19, 1, v6) == 1)
  {
    v81 = v20;
    (*(v8 + 8))(v19, v7);
LABEL_9:
    v42 = v7;
    v43 = v84;
    v85(v16, a1 + v84, v7);
    if (__swift_getEnumTagSinglePayload(v16, 1, v87))
    {
      v76 = *(v8 + 8);
      v76(v16, v7);
      v44 = 0;
    }

    else
    {
      v45 = v81;
      v46 = v77;
      v47 = v87;
      (*(v81 + 16))(v77, v16, v87);
      v76 = *(v8 + 8);
      v76(v16, v7);
      v48 = (*(*(v83 + 88) + 8))(v47);
      (*(v45 + 8))(v46, v47);
      v44 = (v48 & 1) == 0;
    }

    if (qword_2800C9220 != -1)
    {
      swift_once();
    }

    v49 = sub_266DA94AC();
    __swift_project_value_buffer(v49, qword_2800CA9F8);

    v50 = sub_266DA948C();
    v51 = sub_266DAAB0C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v78 = v7;
      v54 = v53;
      v88[0] = v53;
      *v52 = 136315394;
      v55 = a1[5];
      v56 = a1[6];
      v57 = *(a1 + 56);
      v58 = sub_266DAAE0C();
      v60 = v59;

      v61 = sub_266C22A3C(v58, v60, v88);
      v62 = v82;

      *(v52 + 4) = v61;
      *(v52 + 12) = 1024;
      *(v52 + 14) = v44;
      _os_log_impl(&dword_266C08000, v50, v51, "SessionLifetimeManager<%s>: creating new instance (existing inactive? %{BOOL}d)", v52, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v54);
      v63 = v54;
      v42 = v78;
      MEMORY[0x26D5F2480](v63, -1, -1);
      v64 = v52;
      v43 = v84;
      MEMORY[0x26D5F2480](v64, -1, -1);
    }

    else
    {

      v62 = v82;
    }

    v65 = v81;
    v66 = a1[3];
    (a1[2])();
    v67 = v79;
    v85(v79, a1 + v43, v42);
    if (__swift_getEnumTagSinglePayload(v67, 1, v87))
    {
      v76(v67, v42);
      v68 = *(v65 + 16);
    }

    else
    {
      v68 = *(v65 + 16);
      v78 = v42;
      v69 = v77;
      v70 = v87;
      v68(v77, v67, v87);
      v76(v67, v78);
      (*(*(v83 + 88) + 16))(v70);
      v71 = v69;
      v42 = v78;
      (*(v65 + 8))(v71, v70);
      v43 = v84;
    }

    v72 = v80;
    v73 = v87;
    v68(v80, v62, v87);
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v73);
    swift_beginAccess();
    (*(v8 + 40))(a1 + v43, v72, v42);
    swift_endAccess();
    return sub_266C739C0(a3);
  }

  v28 = *(v20 + 32);
  v29 = v87;
  v81 = v20 + 32;
  v78 = v28;
  v28(v25, v19, v87);
  if (((*(*(v83 + 88) + 8))(v29) & 1) == 0)
  {
    v81 = v20;
    (*(v20 + 8))(v25, v87);
    goto LABEL_9;
  }

  if (qword_2800C9220 != -1)
  {
    swift_once();
  }

  v30 = sub_266DA94AC();
  __swift_project_value_buffer(v30, qword_2800CA9F8);

  v31 = sub_266DA948C();
  v32 = sub_266DAAB0C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v88[0] = v34;
    *v33 = 136315138;
    v35 = a1[5];
    v36 = a1[6];
    v37 = *(a1 + 56);
    v38 = sub_266DAAE0C();
    v40 = v39;

    v41 = sub_266C22A3C(v38, v40, v88);

    *(v33 + 4) = v41;
    _os_log_impl(&dword_266C08000, v31, v32, "SessionLifetimeManager<%s>: re-using existing instance", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x26D5F2480](v34, -1, -1);
    MEMORY[0x26D5F2480](v33, -1, -1);
  }

  else
  {
  }

  v78(v82, v25, v87);
  return sub_266C739C0(a3);
}

uint64_t sub_266C731E8()
{
  v1 = v0;
  v2 = sub_266DA9FAC();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_6();
  v10 = v9 - v8;
  v11 = sub_266DA9FDC();
  v12 = OUTLINED_FUNCTION_0_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_6();
  v40 = v18 - v17;
  if (qword_2800C9220 != -1)
  {
    swift_once();
  }

  v19 = sub_266DA94AC();
  __swift_project_value_buffer(v19, qword_2800CA9F8);

  v20 = sub_266DA948C();
  v21 = sub_266DAAB0C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v39 = v5;
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136315138;
    v24 = *(v1 + 40);
    v25 = *(v1 + 48);
    v26 = *(v1 + 56);
    v38 = v14;
    v27 = v10;
    v28 = v2;
    v29 = v11;
    v30 = sub_266DAAE0C();
    v32 = v31;

    v33 = sub_266C22A3C(v30, v32, aBlock);

    *(v22 + 4) = v33;
    v11 = v29;
    v2 = v28;
    v10 = v27;
    v14 = v38;
    _os_log_impl(&dword_266C08000, v20, v21, "SessionLifetimeManager<%s>: Session invalidate requested", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v34 = v23;
    v5 = v39;
    MEMORY[0x26D5F2480](v34, -1, -1);
    MEMORY[0x26D5F2480](v22, -1, -1);
  }

  else
  {
  }

  v35 = *(v1 + 32);
  aBlock[4] = sub_266C73F94;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_266C73FC4;
  aBlock[3] = &block_descriptor_6;
  v36 = _Block_copy(aBlock);

  sub_266DA9FBC();
  sub_266C73ED4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAA90, &qword_266DB2250);
  sub_266C73F2C();
  OUTLINED_FUNCTION_2_17();
  MEMORY[0x26D5F1510](0, v40, v10, v36);
  _Block_release(v36);
  (*(v5 + 8))(v10, v2);
  (*(v14 + 8))(v40, v11);
}

void sub_266C7356C(uint64_t *a1)
{
  v29 = *a1;
  v2 = *(v29 + 80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v28 - v5;
  v7 = sub_266DAAC1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  sub_266C728F8(0);
  v15 = *(*a1 + 120);
  swift_beginAccess();
  (*(v8 + 16))(v14, a1 + v15, v7);
  if (__swift_getEnumTagSinglePayload(v14, 1, v2))
  {
    (*(v8 + 8))(v14, v7);
  }

  else
  {
    (*(v3 + 16))(v6, v14, v2);
    (*(v8 + 8))(v14, v7);
    (*(*(v29 + 88) + 16))(v2);
    (*(v3 + 8))(v6, v2);
  }

  __swift_storeEnumTagSinglePayload(v12, 1, 1, v2);
  swift_beginAccess();
  (*(v8 + 40))(a1 + v15, v12, v7);
  swift_endAccess();
  if (qword_2800C9220 != -1)
  {
    swift_once();
  }

  v16 = sub_266DA94AC();
  __swift_project_value_buffer(v16, qword_2800CA9F8);

  v17 = sub_266DA948C();
  v18 = sub_266DAAB0C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136315138;
    v21 = a1[5];
    v22 = a1[6];
    v23 = *(a1 + 56);
    v24 = sub_266DAAE0C();
    v26 = v25;

    v27 = sub_266C22A3C(v24, v26, &v30);

    *(v19 + 4) = v27;
    _os_log_impl(&dword_266C08000, v17, v18, "SessionLifetimeManager<%s>: Session invalidated", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x26D5F2480](v20, -1, -1);
    MEMORY[0x26D5F2480](v19, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_266C7397C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_266C739C0(double a1)
{
  v3 = sub_266DA9FAC();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_6();
  v11 = v10 - v9;
  v12 = sub_266DA9FDC();
  v13 = OUTLINED_FUNCTION_0_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_6();
  v20 = v19 - v18;
  sub_266C73E6C();
  v21 = sub_266DAAB8C();
  v22 = swift_allocObject();
  *(v22 + 16) = v1;
  *(v22 + 24) = a1;
  aBlock[4] = sub_266C73EB0;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_266C73FC4;
  aBlock[3] = &block_descriptor_1;
  v23 = _Block_copy(aBlock);

  sub_266DA9FBC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_266C73ED4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAA90, &qword_266DB2250);
  sub_266C73F2C();
  OUTLINED_FUNCTION_2_17();
  MEMORY[0x26D5F1510](0, v20, v11, v23);
  _Block_release(v23);

  (*(v6 + 8))(v11, v3);
  return (*(v15 + 8))(v20, v12);
}

void sub_266C73C1C(uint64_t a1, double a2)
{
  v4 = objc_opt_self();
  v7[4] = sub_266C73F90;
  v7[5] = a1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_266C5D6BC;
  v7[3] = &block_descriptor_3_0;
  v5 = _Block_copy(v7);

  v6 = [v4 scheduledTimerWithTimeInterval:0 repeats:v5 block:a2];
  _Block_release(v5);
  sub_266C728F8(v6);
}

uint64_t *sub_266C73D18()
{
  v1 = *v0;
  v2 = v0[3];

  v3 = *(*v0 + 120);
  v4 = *(v1 + 80);
  v5 = sub_266DAAC1C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return v0;
}

uint64_t sub_266C73DD0()
{
  sub_266C73D18();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_266C73E6C()
{
  result = qword_28156EFC0;
  if (!qword_28156EFC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28156EFC0);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_266C73ED4()
{
  result = qword_28156F010;
  if (!qword_28156F010)
  {
    sub_266DA9FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F010);
  }

  return result;
}

unint64_t sub_266C73F2C()
{
  result = qword_28156EFF0;
  if (!qword_28156EFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CAA90, &qword_266DB2250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156EFF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_17()
{

  return sub_266DAAD0C();
}

uint64_t sub_266C74018(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  sub_266C744CC(a1, &v15 - v6, &qword_2800CA050, &qword_266DB0080);
  v8 = type metadata accessor for Snippets();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_266C3A088(v7, &qword_2800CA050, &qword_266DB0080);
    return 2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_266C477B4(v7);
  if (EnumCaseMultiPayload != 8 || __swift_getEnumTagSinglePayload(a2, 1, v8) != 1)
  {
    return 2;
  }

  if (qword_2800C9110 != -1)
  {
    swift_once();
  }

  v10 = sub_266DA94AC();
  __swift_project_value_buffer(v10, &unk_2800E61A8);
  v11 = sub_266DA948C();
  v12 = sub_266DAAB0C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    MEMORY[0x26D5F2480](v13, -1, -1);
  }

  return 1;
}

uint64_t sub_266C741F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, unsigned __int8 (*a10)(uint64_t), uint64_t a11, uint64_t a12)
{
  v30 = a5;
  v31 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v28 - v16;
  v18 = sub_266DA7C7C();
  v29 = *(v18 - 8);
  v19 = *(v29 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v28 - v24;
  sub_266DA804C();
  if (!a4)
  {
  }

  v30 = a12;

  sub_266DA803C();
  sub_266C744CC(v31, v25, &qword_2800CA048, &unk_266DAFC00);
  sub_266DA805C();
  if (a8 == 2)
  {
    sub_266DA806C();
  }

  v26 = sub_266DA807C();
  if (a9 == 2 && a10(v26) == 2)
  {
    sub_266DA808C();
  }

  sub_266DA809C();
  sub_266C744CC(v30, v17, &qword_2800CA040, &unk_266DB0070);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_266DA801C();
    if (__swift_getEnumTagSinglePayload(v17, 1, v18) != 1)
    {
      sub_266C3A088(v17, &qword_2800CA040, &unk_266DB0070);
    }
  }

  else
  {
    (*(v29 + 32))(v21, v17, v18);
  }

  return sub_266DA802C();
}

uint64_t sub_266C744CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_266C7453C(uint64_t *a1, int a2)
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

uint64_t sub_266C7457C(uint64_t result, int a2, int a3)
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

uint64_t sub_266C745F0()
{
  v1 = v0;
  v2 = sub_266DA81AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v7 = sub_266DA94AC();
  __swift_project_value_buffer(v7, qword_2800E6498);
  v8 = sub_266DA948C();
  v9 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v9))
  {
    v10 = OUTLINED_FUNCTION_11();
    *v10 = 0;
    _os_log_impl(&dword_266C08000, v8, v9, "FindDevice.FlowStrategy.actionForInput() called", v10, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  __swift_project_boxed_opaque_existential_1((v1 + 8), *(v1 + 32));
  sub_266DA816C();
  sub_266D6B944(v6, &v12);
  (*(v3 + 8))(v6, v2);
  if (v13[24] == 255)
  {
    sub_266C47654(&v12, &qword_2800CAAB0, &qword_266DB2440);
    return sub_266DA7CCC();
  }

  else
  {
    v14 = v12;
    v15[0] = *v13;
    *(v15 + 9) = *&v13[9];
    sub_266C788F8(&v14, &v12);
    if (v13[24])
    {
      sub_266DA7CCC();
    }

    else
    {
      sub_266DA7CBC();
    }

    sub_266C78954(&v14);
    return sub_266C78954(&v12);
  }
}

uint64_t sub_266C74800(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = OUTLINED_FUNCTION_14_3();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266C7482C()
{
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, qword_2800E6498);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v3))
  {
    v4 = OUTLINED_FUNCTION_11();
    *v4 = 0;
    _os_log_impl(&dword_266C08000, v2, v3, "FindDevice.FlowStrategy.makeIntentFromParse() called", v4, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  v5 = *(v0 + 168);
  v6 = *(v0 + 152);

  __swift_project_boxed_opaque_existential_1((v5 + 8), *(v5 + 32));
  sub_266D6B944(v6, v0 + 64);
  if (*(v0 + 104) == 255)
  {
    sub_266C47654(v0 + 64, &qword_2800CAAB0, &qword_266DB2440);
    v14 = sub_266DA948C();
    v15 = sub_266DAAADC();
    if (OUTLINED_FUNCTION_16_0(v15))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_32_1(&dword_266C08000, v16, v17, "FindDevice.FlowStrategy unable to make task from parse");
      OUTLINED_FUNCTION_5_1();
    }

    sub_266C488FC();
    v18 = swift_allocError();
    OUTLINED_FUNCTION_53_1(v18, v19);
    goto LABEL_13;
  }

  v7 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v7;
  *(v0 + 41) = *(v0 + 89);
  sub_266C788F8(v0 + 16, v0 + 64);
  if (*(v0 + 104))
  {
    sub_266C78954(v0 + 64);
    v8 = sub_266DA948C();
    v9 = sub_266DAAADC();
    if (OUTLINED_FUNCTION_16_0(v9))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_32_1(&dword_266C08000, v10, v11, "FindDevice.FlowStrategy unexpected task, not findDeviceOrItem");
      OUTLINED_FUNCTION_5_1();
    }

    sub_266C488FC();
    v12 = swift_allocError();
    OUTLINED_FUNCTION_53_1(v12, v13);
    sub_266C78954(v0 + 16);
LABEL_13:
    OUTLINED_FUNCTION_28();

    return v20();
  }

  v22 = *(v0 + 160);
  sub_266C0B0D8((v0 + 64), v0 + 112);
  v23 = *(v0 + 160);
  if (v22)
  {
    v24 = *(v0 + 160);
  }

  else
  {
    [objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntent()) init];
  }

  v25 = v23;
  sub_266D97920((v0 + 112));
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  sub_266C78954(v0 + 16);
  v26 = OUTLINED_FUNCTION_15_5();

  return v27(v26);
}

uint64_t sub_266C74AF8()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_266DA7A4C();
  v1[5] = v4;
  OUTLINED_FUNCTION_11_3(v4);
  v1[6] = v5;
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266C74BA8()
{
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, qword_2800E6498);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v3))
  {
    *OUTLINED_FUNCTION_11() = 0;
    OUTLINED_FUNCTION_32_1(&dword_266C08000, v4, v5, "FindDevice.FlowStrategy.makeSiriKitIntentHandler() called");
    OUTLINED_FUNCTION_5_1();
  }

  v7 = v0[6];
  v6 = v0[7];
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[2];
  v11 = v0[3];

  v12 = *v9;
  type metadata accessor for FindDeviceAndPlaySoundIntent();

  v13 = v12;
  v14 = v11;
  sub_266DA7A3C();
  sub_266DA7A9C();
  sub_266DA7A8C();
  (*(v7 + 8))(v6, v8);

  v15 = OUTLINED_FUNCTION_15_5();

  return v16(v15);
}

uint64_t sub_266C74D0C()
{
  OUTLINED_FUNCTION_22_0();
  v1[47] = v2;
  v1[48] = v0;
  v1[45] = v3;
  v1[46] = v4;
  v5 = type metadata accessor for Snippets();
  v1[49] = v5;
  v6 = *(*(v5 - 8) + 64);
  v1[50] = OUTLINED_FUNCTION_64();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v7 = sub_266DA80AC();
  v1[58] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[59] = v8;
  v10 = *(v9 + 64);
  v1[60] = OUTLINED_FUNCTION_64();
  v1[61] = swift_task_alloc();
  v11 = sub_266DA7C0C();
  v1[62] = v11;
  OUTLINED_FUNCTION_11_3(v11);
  v1[63] = v12;
  v14 = *(v13 + 64);
  v1[64] = OUTLINED_FUNCTION_64();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070) - 8) + 64);
  v1[67] = OUTLINED_FUNCTION_64();
  v1[68] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00) - 8) + 64);
  v1[69] = OUTLINED_FUNCTION_64();
  v1[70] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v17);
  v1[71] = v18;
  v1[72] = *(v19 + 64);
  v1[73] = OUTLINED_FUNCTION_64();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_266C75010()
{
  v64 = v0;
  v1 = *(v0 + 376);
  v2 = OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_2800E6498);
  v5 = sub_266DA948C();
  v6 = sub_266DAAB0C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v63 = v8;
    *v7 = 136315138;
    DeviceAndPlaySoundIntentResponse = FindDeviceAndPlaySoundIntentResponseCode.description.getter(v3);
    v11 = sub_266C22A3C(DeviceAndPlaySoundIntentResponse, v10, &v63);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_266C08000, v5, v6, "FindDevice.FlowStrategy.makeFailureConfirmingIntentResponse called with response code: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  if ((v3 - 105) < 2)
  {
    v12 = __swift_project_boxed_opaque_existential_1((*(v0 + 384) + 104), *(*(v0 + 384) + 128));
    v13 = *v12;
    v14 = v12[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    *(v0 + 696) = v15;
    *v15 = v16;
    v15[1] = sub_266C755B0;
    v17 = *(v0 + 360);
    OUTLINED_FUNCTION_51_1();

    return sub_266CA23EC();
  }

  if (v3 == 107)
  {
    v20 = *(v0 + 688);
    v21 = *(v0 + 392);
    v22 = *(v0 + 368);
    *(v0 + 704) = *(*(v0 + 384) + 96);
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
    v23 = sub_266D14B44(v22);
    v26 = v23;
    if (v23)
    {
      if (sub_266C3A14C(v23, v24, v25))
      {
        sub_266CB9F54(0, (v26 & 0xC000000000000001) == 0, v26);
        if ((v26 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x26D5F1780](0, v26);
        }

        else
        {
          v27 = *(v26 + 32);
        }

        v28 = v27;

        v29 = sub_266C1CEB4(v28);
        v31 = v30;
        LOBYTE(v26) = sub_266CC7C44();

        goto LABEL_22;
      }

      LOBYTE(v26) = 0;
    }

    v29 = 0;
    v31 = 0;
LABEL_22:
    v53 = *(v0 + 680);
    v55 = *(v0 + 384);
    v54 = *(v0 + 392);
    *v53 = 4;
    *(v53 + 8) = v29;
    *(v53 + 16) = v31;
    *(v53 + 24) = v26 & 1;
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v54);
    *(v0 + 882) = 1;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
    v57 = *(v56 + 48);
    v58 = *(v56 + 52);
    swift_allocObject();
    *(v0 + 712) = sub_266DA93CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    v59 = swift_allocObject();
    *(v0 + 720) = v59;
    *(v59 + 16) = xmmword_266DAE3B0;
    v60 = *(v55 + 88);
    v61 = swift_task_alloc();
    *(v0 + 728) = v61;
    *v61 = v0;
    v61[1] = sub_266C75A28;
    OUTLINED_FUNCTION_51_1();

    return sub_266D44B5C();
  }

  v32 = sub_266DA948C();
  v33 = sub_266DAAAFC();
  if (OUTLINED_FUNCTION_16_0(v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v63 = v35;
    *v34 = 136446210;
    v36 = FindDeviceAndPlaySoundIntentResponseCode.description.getter(v3);
    v38 = sub_266C22A3C(v36, v37, &v63);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_266C08000, v32, v33, "FindDevice.FlowStrategy.makeFailureConfirmingIntentResponse called with unexpected error code: %{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_5_1();
  }

  v39 = *(v0 + 624);
  v40 = *(v0 + 616);
  v42 = *(v0 + 384);
  v41 = *(v0 + 392);
  *(v0 + 792) = *(v42 + 96);
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v41);
  *v40 = 4;
  *(v40 + 8) = xmmword_266DB2290;
  *(v40 + 24) = 0;
  OUTLINED_FUNCTION_32();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v41);
  *(v0 + 880) = 1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  *(v0 + 800) = sub_266DA93CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v46 = swift_allocObject();
  *(v0 + 808) = v46;
  *(v46 + 16) = xmmword_266DAE3B0;
  v47 = *(v42 + 88);
  *(v0 + 881) = 3;
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 816) = v48;
  *v48 = v49;
  v48[1] = sub_266C76C0C;
  OUTLINED_FUNCTION_51_1();

  return sub_266D945C8(v50, v51);
}

uint64_t sub_266C755B0()
{
  v1 = *v0;
  v2 = *(*v0 + 696);
  v58 = *v0;

  OUTLINED_FUNCTION_14_10();
  v4 = *(v3 + 688);
  v5 = v1[85];
  v6 = v1[84];
  v7 = v1[83];
  v8 = v1[82];
  v9 = v1[81];
  v10 = v1[80];
  v11 = v1[79];
  v12 = v1[78];
  v37 = v1[77];
  OUTLINED_FUNCTION_14_10();
  v38 = *(v13 + 608);
  OUTLINED_FUNCTION_14_10();
  v39 = *(v14 + 600);
  OUTLINED_FUNCTION_14_10();
  v40 = *(v15 + 592);
  OUTLINED_FUNCTION_14_10();
  v41 = *(v16 + 584);
  OUTLINED_FUNCTION_14_10();
  v42 = *(v17 + 560);
  OUTLINED_FUNCTION_14_10();
  v43 = *(v18 + 552);
  OUTLINED_FUNCTION_14_10();
  v44 = *(v19 + 544);
  OUTLINED_FUNCTION_14_10();
  v45 = *(v20 + 536);
  OUTLINED_FUNCTION_14_10();
  v46 = *(v21 + 528);
  OUTLINED_FUNCTION_14_10();
  v47 = *(v22 + 520);
  OUTLINED_FUNCTION_14_10();
  v48 = *(v23 + 512);
  OUTLINED_FUNCTION_14_10();
  v49 = *(v24 + 488);
  OUTLINED_FUNCTION_14_10();
  v50 = *(v25 + 480);
  OUTLINED_FUNCTION_14_10();
  v51 = *(v26 + 456);
  OUTLINED_FUNCTION_14_10();
  v52 = *(v27 + 448);
  OUTLINED_FUNCTION_14_10();
  v53 = *(v28 + 440);
  OUTLINED_FUNCTION_14_10();
  v54 = *(v29 + 432);
  OUTLINED_FUNCTION_14_10();
  v55 = *(v30 + 424);
  OUTLINED_FUNCTION_14_10();
  v56 = *(v31 + 416);
  OUTLINED_FUNCTION_14_10();
  v57 = *(v32 + 408);
  OUTLINED_FUNCTION_14_10();
  v34 = *(v33 + 400);

  OUTLINED_FUNCTION_28();

  return v35();
}

uint64_t sub_266C75A28(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 728);
  v9 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[92] = v1;

  if (v1)
  {
    v11 = v5[86];
    sub_266C47654(v5[85], &qword_2800CA050, &qword_266DB0080);
    v12 = OUTLINED_FUNCTION_32();
    sub_266C47654(v12, v13, &qword_266DB0080);
    v14 = sub_266C77DEC;
  }

  else
  {
    v5[93] = a1;
    v14 = sub_266C75B68;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

void sub_266C75B68()
{
  v1 = v0[90];
  v2 = v0[70];
  v3 = v0[68];
  v4 = v0[66];
  *(v1 + 32) = v0[93];
  sub_266DA7E5C();
  v5 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v5, v6, 1, v7);
  sub_266DA7C7C();
  v8 = OUTLINED_FUNCTION_55();
  __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
  sub_266DA7BCC();
  if (sub_266C3A14C(v1, v11, v12))
  {
    v13 = v0[90];
    v14 = v13 & 0xC000000000000001;
    sub_266CB9F54(0, (v13 & 0xC000000000000001) == 0, v13);
    v15 = v0[90];
    if (v14)
    {
      v16 = MEMORY[0x26D5F1780](0, v15);
    }

    else
    {
      v16 = *(v15 + 32);
    }

    v17 = v16;
    v18 = [v16 catId];

    v104 = sub_266DAA70C();
    v109 = v19;
  }

  else
  {
    v104 = 0;
    v109 = 0;
  }

  v20 = v0[88];
  v21 = v0[86];
  v22 = v0[84];
  v23 = v0[83];
  v24 = v0[72];
  v25 = v0[71];
  v98 = v0[70];
  v99 = v0[68];
  v97 = v0[66];
  v26 = v0[65];
  v28 = v0[62];
  v27 = v0[63];
  v101 = v0[61];
  v102 = v21;
  v105 = v0[49];
  v107 = v0[82];
  sub_266C4756C(v0[85], v22);
  sub_266C4756C(v21, v23);
  OUTLINED_FUNCTION_38_1();
  v31 = v30 & ~v29;
  v32 = swift_allocObject();
  v0[94] = v32;
  *(v32 + 16) = v20;
  sub_266C475DC(v22, v32 + v25);
  sub_266C475DC(v23, v32 + v31);
  v33 = OUTLINED_FUNCTION_47_1();
  v34(v33);
  v35 = swift_task_alloc();
  v43 = OUTLINED_FUNCTION_20_5(v35, v36, v37, v38, v39, v40, v41, v42, v97, v98, v99, v101, v102, v104, v105, v107, v109);
  v43[9] = sub_266C48BBC;
  v43[10] = v32;
  v43[11] = v100;

  OUTLINED_FUNCTION_52_1();

  sub_266C4756C(v103, v108);
  if (__swift_getEnumTagSinglePayload(v108, 1, v106) == 1)
  {
    v44 = v0 + 82;
  }

  else
  {
    v45 = v0[85];
    v46 = v0[81];
    v47 = v0[49];
    sub_266C476A8(v0[82], v0[57]);
    v48 = OUTLINED_FUNCTION_32();
    sub_266C4756C(v48, v49);
    v50 = OUTLINED_FUNCTION_31();
    if (__swift_getEnumTagSinglePayload(v50, v51, v47) != 1)
    {
      v78 = v0[57];
      v79 = v0[49];
      sub_266C476A8(v0[81], v0[56]);
      v0[35] = v79;
      v80 = sub_266C4DB4C();
      v0[36] = v80;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 32);
      OUTLINED_FUNCTION_55_0(boxed_opaque_existential_1);
      v0[40] = v79;
      v0[41] = v80;
      v82 = __swift_allocate_boxed_opaque_existential_1(v0 + 37);
      OUTLINED_FUNCTION_86(v82);
      OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_24_1();
      v0[95] = v83;
      *v83 = v84;
      v83[1] = sub_266C760C8;
      v85 = v0[90];
      v86 = v0[88];
      v87 = v0[61];
      v88 = v0[45];
      OUTLINED_FUNCTION_39();

      __asm { BR              X5 }
    }

    v44 = v0 + 81;
    sub_266C477B4(v0[57]);
  }

  v52 = *v44;
  v53 = v0[86];
  v54 = v0[80];
  v55 = v0[49];
  sub_266C47654(v52, &qword_2800CA050, &qword_266DB0080);
  v56 = OUTLINED_FUNCTION_32();
  sub_266C4756C(v56, v57);
  v58 = OUTLINED_FUNCTION_31();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, v59, v55);
  v61 = v0[80];
  v62 = v0[49];
  if (EnumTagSinglePayload == 1)
  {
    v63 = v0[85];
    v64 = v0[79];
    sub_266C47654(v61, &qword_2800CA050, &qword_266DB0080);
    sub_266C4756C(v63, v64);
    v65 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v65, v66, v62) == 1)
    {
      sub_266C47654(v0[79], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_24_1();
      v0[98] = v67;
      *v67 = v68;
      v67[1] = sub_266C76948;
      v69 = v0[90];
      v70 = v0[88];
      v71 = v0[61];
      v72 = v0[45];
      OUTLINED_FUNCTION_39();

      __asm { BR              X3 }
    }

    v91 = v0[49];
    sub_266C476A8(v0[79], v0[54]);
    v0[25] = v91;
    v0[26] = sub_266C4DB4C();
    v92 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
    OUTLINED_FUNCTION_55_0(v92);
    OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_24_1();
    v0[97] = v93;
    *v93 = v94;
    OUTLINED_FUNCTION_40_0(v93);
  }

  else
  {
    sub_266C476A8(v61, v0[55]);
    v0[30] = v62;
    v0[31] = sub_266C4DB4C();
    v75 = __swift_allocate_boxed_opaque_existential_1(v0 + 27);
    OUTLINED_FUNCTION_86(v75);
    OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_24_1();
    v0[96] = v76;
    *v76 = v77;
    OUTLINED_FUNCTION_40_0(v76);
  }

  OUTLINED_FUNCTION_39();

  __asm { BR              X4 }
}

uint64_t sub_266C760C8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 760);
  v6 = *(v4 + 720);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 296));
  __swift_destroy_boxed_opaque_existential_0((v2 + 256));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C761D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_48_1();
  v35 = *(v32 + 448);
  v34 = *(v32 + 456);

  sub_266C477B4(v35);
  sub_266C477B4(v34);
  v36 = OUTLINED_FUNCTION_3_16();
  v37(v36);
  v38 = OUTLINED_FUNCTION_6_14();
  v39(v38);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v33, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v35, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_0_29();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_266C763A8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 768);
  v6 = *(v4 + 720);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 216));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C764A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_48_1();
  v35 = *(v33 + 440);

  sub_266C477B4(v35);
  v36 = OUTLINED_FUNCTION_3_16();
  v37(v36);
  v38 = OUTLINED_FUNCTION_6_14();
  v39(v38);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v34, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v32, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_0_29();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_266C76678()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 776);
  v6 = *(v4 + 720);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C76778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_48_1();
  v35 = *(v33 + 432);

  sub_266C477B4(v35);
  v36 = OUTLINED_FUNCTION_3_16();
  v37(v36);
  v38 = OUTLINED_FUNCTION_6_14();
  v39(v38);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v34, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v32, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_0_29();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_266C76948()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 784);
  v3 = *(v1 + 720);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266C76A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_48_1();

  v34 = OUTLINED_FUNCTION_3_16();
  v35(v34);
  v36 = OUTLINED_FUNCTION_6_14();
  v37(v36);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v33, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v32, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_0_29();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_266C76C0C(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 816);
  v9 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[103] = v1;

  if (v1)
  {
    v11 = v5[78];
    sub_266C47654(v5[77], &qword_2800CA050, &qword_266DB0080);
    v12 = OUTLINED_FUNCTION_32();
    sub_266C47654(v12, v13, &qword_266DB0080);
    v14 = sub_266C77F74;
  }

  else
  {
    v5[104] = a1;
    v14 = sub_266C76D4C;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

void sub_266C76D4C()
{
  v1 = v0[101];
  v2 = v0[69];
  v3 = v0[67];
  v4 = v0[64];
  *(v1 + 32) = v0[104];
  sub_266DA7E5C();
  v5 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v5, v6, 1, v7);
  sub_266DA7C7C();
  v8 = OUTLINED_FUNCTION_55();
  __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
  sub_266DA7BCC();
  if (sub_266C3A14C(v1, v11, v12))
  {
    v13 = v0[101];
    v14 = v13 & 0xC000000000000001;
    sub_266CB9F54(0, (v13 & 0xC000000000000001) == 0, v13);
    v15 = v0[101];
    if (v14)
    {
      v16 = MEMORY[0x26D5F1780](0, v15);
    }

    else
    {
      v16 = *(v15 + 32);
    }

    v17 = v16;
    v18 = [v16 catId];

    v104 = sub_266DAA70C();
    v109 = v19;
  }

  else
  {
    v104 = 0;
    v109 = 0;
  }

  v20 = v0[99];
  v21 = v0[84];
  v22 = v0[83];
  v23 = v0[78];
  v24 = v0[72];
  v25 = v0[71];
  v98 = v0[69];
  v99 = v0[67];
  v26 = v0[65];
  v27 = v0[63];
  v97 = v0[64];
  v28 = v0[62];
  v101 = v0[60];
  v102 = v23;
  v105 = v0[49];
  v107 = v0[76];
  sub_266C4756C(v0[77], v21);
  sub_266C4756C(v23, v22);
  OUTLINED_FUNCTION_38_1();
  v31 = v30 & ~v29;
  v32 = swift_allocObject();
  v0[105] = v32;
  *(v32 + 16) = v20;
  sub_266C475DC(v21, v32 + v25);
  sub_266C475DC(v22, v32 + v31);
  v33 = OUTLINED_FUNCTION_47_1();
  v34(v33);
  v35 = swift_task_alloc();
  v43 = OUTLINED_FUNCTION_20_5(v35, v36, v37, v38, v39, v40, v41, v42, v97, v98, v99, v101, v102, v104, v105, v107, v109);
  v43[9] = sub_266C4764C;
  v43[10] = v32;
  v43[11] = v100;

  OUTLINED_FUNCTION_52_1();

  sub_266C4756C(v103, v108);
  if (__swift_getEnumTagSinglePayload(v108, 1, v106) == 1)
  {
    v44 = v0 + 76;
  }

  else
  {
    v45 = v0[77];
    v46 = v0[75];
    v47 = v0[49];
    sub_266C476A8(v0[76], v0[53]);
    v48 = OUTLINED_FUNCTION_32();
    sub_266C4756C(v48, v49);
    v50 = OUTLINED_FUNCTION_31();
    if (__swift_getEnumTagSinglePayload(v50, v51, v47) != 1)
    {
      v78 = v0[53];
      v79 = v0[49];
      sub_266C476A8(v0[75], v0[52]);
      v0[15] = v79;
      v80 = sub_266C4DB4C();
      v0[16] = v80;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
      OUTLINED_FUNCTION_55_0(boxed_opaque_existential_1);
      v0[20] = v79;
      v0[21] = v80;
      v82 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
      OUTLINED_FUNCTION_86(v82);
      OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_24_1();
      v0[106] = v83;
      *v83 = v84;
      v83[1] = sub_266C772A8;
      v85 = v0[101];
      v86 = v0[99];
      v87 = v0[60];
      v88 = v0[45];
      OUTLINED_FUNCTION_39();

      __asm { BR              X5 }
    }

    v44 = v0 + 75;
    sub_266C477B4(v0[53]);
  }

  v52 = *v44;
  v53 = v0[78];
  v54 = v0[74];
  v55 = v0[49];
  sub_266C47654(v52, &qword_2800CA050, &qword_266DB0080);
  v56 = OUTLINED_FUNCTION_32();
  sub_266C4756C(v56, v57);
  v58 = OUTLINED_FUNCTION_31();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, v59, v55);
  v61 = v0[74];
  v62 = v0[49];
  if (EnumTagSinglePayload == 1)
  {
    v63 = v0[77];
    v64 = v0[73];
    sub_266C47654(v61, &qword_2800CA050, &qword_266DB0080);
    sub_266C4756C(v63, v64);
    v65 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v65, v66, v62) == 1)
    {
      sub_266C47654(v0[73], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_24_1();
      v0[109] = v67;
      *v67 = v68;
      v67[1] = sub_266C77B28;
      v69 = v0[101];
      v70 = v0[99];
      v71 = v0[60];
      v72 = v0[45];
      OUTLINED_FUNCTION_39();

      __asm { BR              X3 }
    }

    v91 = v0[49];
    sub_266C476A8(v0[73], v0[50]);
    v0[5] = v91;
    v0[6] = sub_266C4DB4C();
    v92 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    OUTLINED_FUNCTION_55_0(v92);
    OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_24_1();
    v0[108] = v93;
    *v93 = v94;
    OUTLINED_FUNCTION_39_0(v93);
  }

  else
  {
    sub_266C476A8(v61, v0[51]);
    v0[10] = v62;
    v0[11] = sub_266C4DB4C();
    v75 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    OUTLINED_FUNCTION_86(v75);
    OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_24_1();
    v0[107] = v76;
    *v76 = v77;
    OUTLINED_FUNCTION_39_0(v76);
  }

  OUTLINED_FUNCTION_39();

  __asm { BR              X4 }
}

uint64_t sub_266C772A8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 848);
  v6 = *(v4 + 808);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C773B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_50_1();
  v35 = *(v32 + 416);
  v34 = *(v32 + 424);

  sub_266C477B4(v35);
  sub_266C477B4(v34);
  v36 = OUTLINED_FUNCTION_2_18();
  v37(v36);
  v38 = OUTLINED_FUNCTION_6_14();
  v39(v38);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v33, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v35, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_0_29();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_266C77588()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 856);
  v6 = *(v4 + 808);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C77688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_50_1();
  v35 = *(v33 + 408);

  sub_266C477B4(v35);
  v36 = OUTLINED_FUNCTION_2_18();
  v37(v36);
  v38 = OUTLINED_FUNCTION_6_14();
  v39(v38);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v34, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v32, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_0_29();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_266C77858()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 864);
  v6 = *(v4 + 808);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C77958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_50_1();
  v35 = *(v33 + 400);

  sub_266C477B4(v35);
  v36 = OUTLINED_FUNCTION_2_18();
  v37(v36);
  v38 = OUTLINED_FUNCTION_6_14();
  v39(v38);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v34, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v32, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_0_29();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_266C77B28()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 872);
  v3 = *(v1 + 808);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266C77C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_50_1();

  v34 = OUTLINED_FUNCTION_2_18();
  v35(v34);
  v36 = OUTLINED_FUNCTION_6_14();
  v37(v36);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v33, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v32, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_0_29();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_266C77DEC()
{
  v1 = v0[89];

  v4 = v0[92];
  *(v0[90] + 16) = 0;

  OUTLINED_FUNCTION_12_9();

  OUTLINED_FUNCTION_28();

  return v2();
}

uint64_t sub_266C77F74()
{
  v1 = v0[100];

  v4 = v0[103];
  *(v0[101] + 16) = 0;

  OUTLINED_FUNCTION_12_9();

  OUTLINED_FUNCTION_28();

  return v2();
}

uint64_t sub_266C78100(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266C781A4;

  return sub_266C74800(a1, a2);
}

uint64_t sub_266C781A4()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_266C78298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5BF48] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266C48BB4;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_266C7835C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B498] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_266C48BB4;

  return MEMORY[0x2821B9D90](a1, a2, a3, a4, a5);
}

uint64_t sub_266C78428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B490] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_266C4716C;

  return MEMORY[0x2821B9D88](a1, a2, a3, a4, a5);
}

uint64_t sub_266C784F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B488] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_266C48BB4;

  return MEMORY[0x2821B9D80](a1, a2, a3, a4, a5);
}

uint64_t sub_266C785C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5B480] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_266C48BB4;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_266C7869C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266C74D0C();
}

uint64_t sub_266C7874C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C4DA10;

  return sub_266C74AF8();
}

unint64_t sub_266C787F4()
{
  result = qword_2800CAA98;
  if (!qword_2800CAA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAA98);
  }

  return result;
}

unint64_t sub_266C7884C()
{
  result = qword_2800CAAA0;
  if (!qword_2800CAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAAA0);
  }

  return result;
}

unint64_t sub_266C788A4()
{
  result = qword_2800CAAA8;
  if (!qword_2800CAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAAA8);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;
  v11 = *(v0 + 16);

  v12 = (v0 + v9);
  v13 = type metadata accessor for Snippets();
  v14 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v14, v15, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v35 = v12[1];

        v36 = v12[3];

        v37 = type metadata accessor for Snippets.Contact();
        v38 = OUTLINED_FUNCTION_98(v37);
        OUTLINED_FUNCTION_8_0(v38);
        (*(v39 + 8))(&v2[v12]);
        v34 = v1[7];
        goto LABEL_35;
      case 1u:
      case 2u:
      case 3u:
        v16 = *v12;
        goto LABEL_36;
      case 4u:
        v21 = v12[1];

        v22 = v12[3];

        v23 = v12[5];

        v24 = v12[6];

        v12 = (v12 + *(type metadata accessor for Friend() + 40));
        v1 = type metadata accessor for FriendLocation();
        v25 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v25, v26, v1))
        {
          break;
        }

        v27 = v12[1];

        v28 = v1[8];
LABEL_23:
        v71 = v12 + v28;
        v1 = type metadata accessor for Location();
        v72 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v72, v73, v1))
        {
          v74 = v1[7];
          v75 = sub_266DA746C();
          OUTLINED_FUNCTION_8_0(v75);
          (*(v76 + 8))(&v71[v74]);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = &v71[v1[11]];
          v77 = type metadata accessor for Address();
          v78 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v78, v79, v77))
          {
            sub_266DA919C();
            v80 = OUTLINED_FUNCTION_109();
            v238 = v81;
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v80, v82, v81);
            if (!EnumTagSinglePayload)
            {
              OUTLINED_FUNCTION_20_2(EnumTagSinglePayload, v84, v85, v86, v87, v88, v89, v90, v235, v238);
              (*(v91 + 8))(v2);
            }

            OUTLINED_FUNCTION_70(v77[5]);
            OUTLINED_FUNCTION_70(v77[6]);
            v92 = OUTLINED_FUNCTION_70(v77[7]);
            v100 = OUTLINED_FUNCTION_115(v92, v93, v94, v95, v96, v97, v98, v99, v235, v238);
            if (!v100)
            {
              OUTLINED_FUNCTION_20_2(v100, v101, v102, v103, v104, v105, v106, v107, v235, v239);
              (*(v108 + 8))(v3 + v2);
            }

            OUTLINED_FUNCTION_70(v77[9]);
            OUTLINED_FUNCTION_70(v77[10]);
            OUTLINED_FUNCTION_70(v77[11]);
            v109 = *&v2[v77[12]];
          }

          v34 = v1[12];
LABEL_35:
          OUTLINED_FUNCTION_48(v34);
LABEL_36:
        }

        break;
      case 5u:
        v48 = v12[1];

        v49 = v12[3];

        v50 = v12[5];

        v51 = v12[6];

        v52 = v12 + *(type metadata accessor for Friend() + 40);
        v53 = type metadata accessor for FriendLocation();
        if (!OUTLINED_FUNCTION_66(v53))
        {
          v54 = *(v52 + 1);

          v55 = &v52[*(v2 + 8)];
          v56 = type metadata accessor for Location();
          if (!OUTLINED_FUNCTION_66(v56))
          {
            v57 = *(v2 + 7);
            v58 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v58);
            (*(v59 + 8))(&v55[v57]);
            OUTLINED_FUNCTION_21_0(*(v2 + 8));
            v60 = &v55[*(v2 + 11)];
            v3 = type metadata accessor for Address();
            if (!__swift_getEnumTagSinglePayload(v60, 1, v3))
            {
              v237 = sub_266DA919C();
              v61 = __swift_getEnumTagSinglePayload(v60, 1, v237);
              if (!v61)
              {
                OUTLINED_FUNCTION_20_2(v61, v62, v63, v64, v65, v66, v67, v68, v235, v237);
                (*(v69 + 8))(v60);
              }

              OUTLINED_FUNCTION_89(v3[5]);
              OUTLINED_FUNCTION_89(v3[6]);
              OUTLINED_FUNCTION_89(v3[7]);
              v235 = v3[8];
              if (!__swift_getEnumTagSinglePayload(v60 + v235, 1, v237))
              {
                (*(*(v237 - 8) + 8))(v60 + v235);
              }

              OUTLINED_FUNCTION_89(v3[9]);
              OUTLINED_FUNCTION_89(v3[10]);
              OUTLINED_FUNCTION_89(v3[11]);
              v70 = *(v60 + v3[12]);
            }

            OUTLINED_FUNCTION_21_0(*(v2 + 12));
          }
        }

        v28 = *(type metadata accessor for Snippets.CarPlayFriendLocation() + 20);
        goto LABEL_23;
      case 6u:
        v110 = v12[1];

        v111 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v112);
        }

        v113 = v12[8];

        v114 = v12[10];
        goto LABEL_36;
      case 7u:
        v40 = v12[1];

        v41 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v42);
        }

        v45 = v12[8];

        v46 = v12[10];

        v47 = v12[12];
        goto LABEL_36;
      case 8u:
        if ((v12[2] - 1) < 7)
        {
          break;
        }

        goto LABEL_36;
      case 9u:
        v29 = v12[1];

        v30 = v12[3];

        v31 = type metadata accessor for Snippets.Contact();
        v32 = OUTLINED_FUNCTION_98(v31);
        OUTLINED_FUNCTION_8_0(v32);
        (*(v33 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(v1[5]);

        v34 = v1[6];
        goto LABEL_35;
      case 0xAu:
        v115 = v12[1];

        v116 = v12[3];

        v117 = type metadata accessor for Snippets.Contact();
        v118 = OUTLINED_FUNCTION_98(v117);
        OUTLINED_FUNCTION_8_0(v118);
        (*(v119 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(v1[7]);

        v34 = v1[8];
        goto LABEL_35;
      case 0xBu:
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v17);
        (*(v18 + 8))(v12);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v2 = v1[5];
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v19);
        (*(v20 + 8))(&v2[v12]);
        if (*(v12 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_36;
      default:
        break;
    }
  }

  v120 = (v0 + v10);
  v121 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v121, v122, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v147 = *(v120 + 1);

        v148 = *(v120 + 3);

        v149 = type metadata accessor for Snippets.Contact();
        v150 = OUTLINED_FUNCTION_96(v149);
        OUTLINED_FUNCTION_8_0(v150);
        (*(v151 + 8))(v1 + v120);
        v146 = *(v13 + 28);
        goto LABEL_71;
      case 1u:
      case 2u:
      case 3u:
        v123 = *v120;
        goto LABEL_73;
      case 4u:
        v130 = *(v120 + 1);

        v131 = *(v120 + 3);

        v132 = *(v120 + 5);

        v133 = *(v120 + 6);

        v134 = &v120[*(type metadata accessor for Friend() + 40)];
        v135 = type metadata accessor for FriendLocation();
        v136 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v136, v137, v135))
        {
          break;
        }

        v138 = *(v134 + 1);

        v139 = &v134[*(v135 + 32)];
LABEL_59:
        v209 = type metadata accessor for Location();
        v210 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v210, v211, v209))
        {
          break;
        }

        v212 = v209[7];
        v213 = sub_266DA746C();
        OUTLINED_FUNCTION_8_0(v213);
        (*(v214 + 8))(&v139[v212]);
        v215 = *&v139[v209[8] + 8];

        v216 = &v139[v209[11]];
        v217 = type metadata accessor for Address();
        if (!OUTLINED_FUNCTION_66(v217))
        {
          v218 = sub_266DA919C();
          if (!__swift_getEnumTagSinglePayload(v216, 1, v218))
          {
            (*(*(v218 - 8) + 8))(v216, v218);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 5));
          OUTLINED_FUNCTION_21_0(*(v2 + 6));
          OUTLINED_FUNCTION_21_0(*(v2 + 7));
          v219 = *(v2 + 8);
          if (!__swift_getEnumTagSinglePayload(v216 + v219, 1, v218))
          {
            (*(*(v218 - 8) + 8))(v216 + v219, v218);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 9));
          OUTLINED_FUNCTION_21_0(*(v2 + 10));
          OUTLINED_FUNCTION_21_0(*(v2 + 11));
          v220 = *(v216 + *(v2 + 12));
        }

        v221 = &v139[v209[12]];
LABEL_72:
        v233 = *(v221 + 1);
LABEL_73:

        break;
      case 5u:
        v158 = *(v120 + 1);

        v159 = *(v120 + 3);

        v160 = *(v120 + 5);

        v161 = *(v120 + 6);

        v162 = &v120[*(type metadata accessor for Friend() + 40)];
        v163 = type metadata accessor for FriendLocation();
        v164 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v164, v165, v163))
        {
          v166 = *(v162 + 1);

          v167 = &v162[*(v163 + 32)];
          v168 = type metadata accessor for Location();
          v169 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v169, v170, v168))
          {
            v171 = v168[7];
            v172 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v172);
            (*(v173 + 8))(&v167[v171]);
            v174 = *&v167[v168[8] + 8];

            v2 = &v167[v168[11]];
            v175 = type metadata accessor for Address();
            v176 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v176, v177, v175))
            {
              sub_266DA919C();
              v178 = OUTLINED_FUNCTION_109();
              v240 = v179;
              v181 = __swift_getEnumTagSinglePayload(v178, v180, v179);
              if (!v181)
              {
                OUTLINED_FUNCTION_20_2(v181, v182, v183, v184, v185, v186, v187, v188, v235, v240);
                (*(v189 + 8))(v2);
              }

              OUTLINED_FUNCTION_70(v175[5]);
              OUTLINED_FUNCTION_70(v175[6]);
              v190 = OUTLINED_FUNCTION_70(v175[7]);
              v198 = OUTLINED_FUNCTION_115(v190, v191, v192, v193, v194, v195, v196, v197, v235, v240);
              if (!v198)
              {
                OUTLINED_FUNCTION_20_2(v198, v199, v200, v201, v202, v203, v204, v205, v236, v241);
                (*(v206 + 8))(v3 + v2);
              }

              OUTLINED_FUNCTION_70(v175[9]);
              OUTLINED_FUNCTION_70(v175[10]);
              OUTLINED_FUNCTION_70(v175[11]);
              v207 = *&v2[v175[12]];
            }

            v208 = *&v167[v168[12] + 8];
          }
        }

        v139 = &v120[*(type metadata accessor for Snippets.CarPlayFriendLocation() + 20)];
        goto LABEL_59;
      case 6u:
        v222 = *(v120 + 1);

        v223 = *(v120 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v120 + 5), v224);
        }

        v225 = *(v120 + 8);

        v226 = *(v120 + 10);
        goto LABEL_73;
      case 7u:
        v152 = *(v120 + 1);

        v153 = *(v120 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v120 + 5), v154);
        }

        v155 = *(v120 + 8);

        v156 = *(v120 + 10);

        v157 = *(v120 + 12);
        goto LABEL_73;
      case 8u:
        if ((*(v120 + 2) - 1) < 7)
        {
          break;
        }

        goto LABEL_73;
      case 9u:
        v140 = *(v120 + 1);

        v141 = *(v120 + 3);

        v142 = type metadata accessor for Snippets.Contact();
        v143 = OUTLINED_FUNCTION_96(v142);
        OUTLINED_FUNCTION_8_0(v143);
        (*(v144 + 8))(v1 + v120);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v145 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(*(v145 + 20));

        v146 = *(v145 + 24);
        goto LABEL_71;
      case 0xAu:
        v227 = *(v120 + 1);

        v228 = *(v120 + 3);

        v229 = type metadata accessor for Snippets.Contact();
        v230 = OUTLINED_FUNCTION_96(v229);
        OUTLINED_FUNCTION_8_0(v230);
        (*(v231 + 8))(v1 + v120);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v232 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(*(v232 + 28));

        v146 = *(v232 + 32);
LABEL_71:
        v221 = &v120[v146];
        goto LABEL_72;
      case 0xBu:
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v124);
        (*(v125 + 8))(v0 + v10);
        v126 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v127 = *(v126 + 20);
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v128);
        (*(v129 + 8))(&v120[v127]);
        if (*&v120[*(v126 + 24) + 16] == 1)
        {
          break;
        }

        goto LABEL_73;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

uint64_t OUTLINED_FUNCTION_0_29()
{
  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[84];
  v6 = v0[83];
  v7 = v0[82];
  v8 = v0[81];
  v9 = v0[80];
  v10 = v0[79];
  v11 = v0[78];
  v12 = v0[77];
  v18 = v0[76];
  v19 = v0[75];
  v20 = v0[74];
  v21 = v0[73];
  v22 = v0[70];
  v23 = v0[69];
  v24 = v0[68];
  v25 = v0[67];
  v26 = v0[66];
  v27 = v0[65];
  v28 = v0[64];
  v29 = v0[61];
  v30 = v0[60];
  v31 = v0[57];
  v32 = v0[56];
  v33 = v0[55];
  v14 = v0[52];
  v13 = v0[53];
  *(v1 - 112) = v0[54];
  *(v1 - 104) = v13;
  v15 = v0[50];
  v16 = v0[51];
  *(v1 - 96) = v14;
  *(v1 - 88) = v16;
  *(v1 - 80) = v15;
}

uint64_t OUTLINED_FUNCTION_2_18()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[69];
  v4 = v0[67];
  v6 = v0[63];
  v5 = v0[64];
  result = v0[60];
  v8 = v0[62];
  v9 = v0[58];
  v10 = *(v0[59] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_16()
{
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[70];
  v4 = v0[68];
  v5 = v0[66];
  v6 = v0[62];
  v7 = v0[63];
  result = v0[61];
  v9 = v0[58];
  v10 = *(v0[59] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_9()
{
  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[84];
  v6 = v0[83];
  v7 = v0[82];
  v8 = v0[81];
  v9 = v0[80];
  v10 = v0[79];
  v11 = v0[78];
  v12 = v0[77];
  v18 = v0[76];
  v19 = v0[75];
  v20 = v0[74];
  v21 = v0[73];
  v22 = v0[70];
  v23 = v0[69];
  v24 = v0[68];
  v25 = v0[67];
  v26 = v0[66];
  v27 = v0[65];
  v28 = v0[64];
  v29 = v0[61];
  v30 = v0[60];
  v31 = v0[57];
  v32 = v0[56];
  v33 = v0[55];
  v14 = v0[52];
  v13 = v0[53];
  *(v1 - 120) = v0[54];
  *(v1 - 112) = v13;
  v15 = v0[50];
  v16 = v0[51];
  *(v1 - 104) = v14;
  *(v1 - 96) = v16;
  *(v1 - 88) = v15;
}

uint64_t OUTLINED_FUNCTION_18_6()
{

  return sub_266C47654(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_19_5()
{

  return sub_266C47654(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_20_5(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(result + 16) = 1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a14;
  *(result + 48) = a17;
  *(result + 56) = a10;
  *(result + 64) = 514;
  return result;
}

void OUTLINED_FUNCTION_32_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_39_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[101];
  v4 = v2[99];
  v5 = v2[60];
  return v2[45];
}

uint64_t OUTLINED_FUNCTION_40_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[90];
  v4 = v2[88];
  v5 = v2[61];
  return v2[45];
}

uint64_t OUTLINED_FUNCTION_52_1()
{

  return sub_266DA800C();
}

uint64_t OUTLINED_FUNCTION_53_1(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_55_0(uint64_t a1)
{

  return sub_266C47750(v1, a1);
}

uint64_t type metadata accessor for FMIPCoreDevicePinger()
{
  result = qword_2800CAAD0;
  if (!qword_2800CAAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_266C799B8()
{
  result = type metadata accessor for FMIPCoreDeviceSearcher();
  if (v1 <= 0x3F)
  {
    result = sub_266C79A8C(319, &qword_2800CAAE0);
    if (v2 <= 0x3F)
    {
      result = sub_266C79A8C(319, &qword_2800CAAE8);
      if (v3 <= 0x3F)
      {
        result = sub_266C22FD4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_266C79A8C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_266C79B08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X6>, uint64_t *a7@<X7>, uint64_t a8@<X8>)
{
  *a8 = v8;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a6, a7) + 48);

  sub_266DA946C();
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 8) = a1;
  *(a8 + 16) = a2;

  return a2;
}

uint64_t sub_266C79BA0()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CAAB8);
  v1 = __swift_project_value_buffer(v0, qword_2800CAAB8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C79C68(uint64_t a1, uint64_t a2)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC360, &qword_266DB00D0) - 8) + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10();
  v93 = v7;
  v94 = sub_266DAAB4C();
  v8 = OUTLINED_FUNCTION_0_2(v94);
  v92 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v91 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMIPCoreDevicePinger();
  v14 = OUTLINED_FUNCTION_0_2(v13);
  v79[0] = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v95 = v18;
  OUTLINED_FUNCTION_15_0(v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAAF0, &qword_266DB2490);
  OUTLINED_FUNCTION_0_2(v80);
  v79[2] = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v23);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAAF8, &qword_266DB2498);
  OUTLINED_FUNCTION_0_2(v83);
  v82 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10();
  v96 = v28;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB00, &qword_266DB24A0);
  OUTLINED_FUNCTION_0_2(v89);
  v87 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v33);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB08, &qword_266DB24A8);
  OUTLINED_FUNCTION_0_2(v88);
  v86 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v38);
  v39 = sub_266DA947C();
  v40 = OUTLINED_FUNCTION_0_2(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  v46 = v79 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FD8, &unk_266DB24B0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_266DAE4A0;
  v101[0] = 1;
  *(v47 + 32) = a1;
  *(v47 + 40) = a2;
  *(v47 + 48) = 0u;
  *(v47 + 64) = 0u;
  *(v47 + 80) = 0u;
  *(v47 + 96) = 0;
  *(v47 + 104) = 1;
  *(v47 + 112) = 0;
  *(v47 + 120) = 0;
  *(v47 + 128) = 1;
  *(v47 + 136) = 0u;
  *(v47 + 152) = 0u;
  *(v47 + 168) = 0u;
  *(v47 + 184) = 0;
  v90 = v13;
  v48 = *(v13 + 20);
  v97 = v2;
  sub_266C233D0(v2 + v48, v98);

  sub_266DAABDC();
  if (qword_2800C9128 != -1)
  {
    swift_once();
  }

  sub_266DA946C();
  OUTLINED_FUNCTION_3_17();
  v49 = *(v42 + 8);
  v50 = v49(v46, v39);
  MEMORY[0x28223BE20](v50);
  v78 = v98;
  v99[0] = sub_266D69B00(sub_266C7ACB4, &v79[-4], v47);
  sub_266C233D0(v98, &v100);
  v99[1] = v47;
  sub_266DAABCC();
  sub_266DA946C();
  OUTLINED_FUNCTION_3_17();
  v49(v46, v39);
  __swift_destroy_boxed_opaque_existential_0(v98);
  v51 = v97;
  sub_266CD0570();
  v98[0] = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB10, &unk_266DB5340);
  sub_266C230E8(&qword_2800CAB18, &qword_2800CAB10, &unk_266DB5340);
  sub_266C7ACD4();
  v53 = v79[1];
  sub_266DA98FC();

  v54 = v81;
  sub_266C7AD28(v51, v81);
  v55 = (*(v79[0] + 80) + 16) & ~*(v79[0] + 80);
  v56 = swift_allocObject();
  sub_266C7AD8C(v54, v56 + v55);
  v79[0] = sub_266DA966C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F18, &qword_266DB24C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB28, &qword_266DB24C8);
  sub_266C230E8(&qword_2800CAB30, &qword_2800CAAF0, &qword_266DB2490);
  sub_266C230E8(&qword_2800CAB38, &qword_2800CAB28, &qword_266DB24C8);
  v57 = v80;
  sub_266DA98DC();

  OUTLINED_FUNCTION_9(v101);
  v58(v53, v57);
  v59 = v97;
  sub_266C7AD28(v97, v54);
  v60 = swift_allocObject();
  sub_266C7AD8C(v54, v60 + v55);
  sub_266DA966C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB40, &qword_266DB24D0);
  sub_266C230E8(&qword_2800CAB48, &qword_2800CAAF8, &qword_266DB2498);
  sub_266C230E8(&qword_2800CAB50, &qword_2800CAB40, &qword_266DB24D0);
  v61 = v85;
  v62 = v83;
  v63 = v96;
  sub_266DA98DC();

  OUTLINED_FUNCTION_9(&v102);
  v64(v63, v62);
  v65 = v91;
  sub_266DAAB3C();
  v98[0] = *(v59 + *(v90 + 28));
  v66 = v98[0];
  v67 = sub_266DAAB1C();
  v68 = v93;
  __swift_storeEnumTagSinglePayload(v93, 1, 1, v67);
  sub_266C22FD4();
  sub_266C230E8(&qword_2800CAB58, &qword_2800CAB00, &qword_266DB24A0);
  v69 = sub_266C23060();
  v70 = v66;
  v78 = v69;
  v71 = v84;
  v72 = v89;
  sub_266DA98EC();
  sub_266C47654(v68, &qword_2800CC360, &qword_266DB00D0);

  (*(v92 + 8))(v65, v94);
  OUTLINED_FUNCTION_9(&v104);
  v73(v61, v72);
  sub_266C230E8(&qword_2800CAB60, &qword_2800CAB08, &qword_266DB24A8);
  v74 = v88;
  v75 = sub_266DA97EC();
  OUTLINED_FUNCTION_9(&v103);
  v76(v71, v74);
  sub_266C7AFE4(v99);
  return v75;
}

uint64_t sub_266C7A6D8(uint64_t *a1)
{
  sub_266C7A74C(*a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB70, &unk_266DB24E0);
  sub_266DAB31C();
  return sub_266C47654(v2, &qword_2800CAB70, &unk_266DB24E0);
}

void sub_266C7A74C(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_266CB7AE8(a1, &v8);
  if (v9)
  {
    sub_266C0B0D8(&v8, v10);
    if (*(a1 + 16) == 1)
    {
      sub_266C0B0D8(v10, a2);
      a2[40] = 0;
      return;
    }

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_266C47654(&v8, &qword_2800CAB78, &qword_266DB5300);
  }

  if (qword_2800C9228 != -1)
  {
    swift_once();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_2800CAAB8);

  v5 = sub_266DA948C();
  v6 = sub_266DAAAEC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(a1 + 16);

    _os_log_impl(&dword_266C08000, v5, v6, "Did not get exactly one device results for PlaySound. (result count: %ld)", v7, 0xCu);
    MEMORY[0x26D5F2480](v7, -1, -1);
  }

  else
  {
  }

  *a2 = 0;
  a2[40] = 1;
}

uint64_t sub_266C7A8D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_266DA947C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPCoreDevicePinger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_266C7AD28(v2, &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_266C233D0(a1, v21);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  sub_266C7AD8C(&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_266C0B0D8(v21, v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB68, &qword_266DB24D8);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_266DA97AC();
  v18 = sub_266C7AB8C(a1);
  sub_266DA946C();
  sub_266C79B08(&dword_266C08000, v18, "P-01 Play Sound", 15, 2, &qword_2800CAB40, &qword_266DB24D0, a2);

  return (*(v6 + 8))(v9, v5);
}

void sub_266C7AB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for FMIPCoreDevicePinger();
  v5 = *__swift_project_boxed_opaque_existential_1((a3 + *(v4 + 24)), *(a3 + *(v4 + 24) + 24));
  sub_266CFE0EC();
}

id sub_266C7AB8C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  if ((*(v2 + 40))(v1, v2) == 1296389193 && v3 == 0xE400000000000000)
  {
  }

  else
  {
    v5 = sub_266DAB17C();

    if ((v5 & 1) == 0)
    {
      if (qword_2800C9140 != -1)
      {
        swift_once();
      }

      v6 = &qword_2800C9828;
      goto LABEL_13;
    }
  }

  if (qword_2800C9138 != -1)
  {
    swift_once();
  }

  v6 = &qword_2800C9820;
LABEL_13:
  v7 = *v6;

  return v7;
}

unint64_t sub_266C7ACD4()
{
  result = qword_2800CAB20;
  if (!qword_2800CAB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAB20);
  }

  return result;
}

uint64_t sub_266C7AD28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPCoreDevicePinger();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C7AD8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPCoreDevicePinger();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C7ADF0(uint64_t *a1)
{
  v2 = *(*(type metadata accessor for FMIPCoreDevicePinger() - 8) + 80);

  return sub_266C7A6D8(a1);
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for FMIPCoreDevicePinger();
  OUTLINED_FUNCTION_24_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_19();
  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + 216));
  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + 256));
  v7 = type metadata accessor for FMIPCoreDeviceSearcher();
  v8 = *(v7 + 52);
  v9 = sub_266DAAB4C();
  OUTLINED_FUNCTION_8_0(v9);
  (*(v10 + 8))(v0 + v4 + v8);

  OUTLINED_FUNCTION_6_15();

  return MEMORY[0x2821FE8E8](v0, v4 + v6, v3 | 7);
}

uint64_t sub_266C7AF70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FMIPCoreDevicePinger() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_266C7A8D4(a1, a2);
}

void sub_266C7B038(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for FMIPCoreDevicePinger() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_266C7AB2C(a1, a2, v2 + v6);
}

uint64_t OUTLINED_FUNCTION_2_19()
{
  __swift_destroy_boxed_opaque_existential_0(v0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  v1 = v0[26];
}

uint64_t OUTLINED_FUNCTION_3_17()
{

  return sub_266DA945C();
}

void OUTLINED_FUNCTION_6_15()
{
  __swift_destroy_boxed_opaque_existential_0((v1 + v0[7]));
  __swift_destroy_boxed_opaque_existential_0((v1 + v0[8]));
  v2 = *(v1 + v0[9]);
}

uint64_t sub_266C7B198()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CAB90);
  v1 = __swift_project_value_buffer(v0, qword_2800CAB90);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C7B268(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = sub_266DA7FDC();
  if (v4 <= 0x3F)
  {
    result = sub_266C79A8C(319, &qword_2800CAC28);
    if (v5 <= 0x3F)
    {
      result = sub_266C79A8C(319, &qword_2800CAC30);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_266C7B384(uint64_t a1)
{
  v1 = *(a1 + 36);
  v2 = *(a1 + 40);
  sub_266DA77EC();
  sub_266DA77CC();
  v3 = sub_266DA798C();

  return v3;
}

uint64_t sub_266C7B3E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_266DA7FDC();
  v5 = sub_266DA7FCC();
  v6 = sub_266DA7FBC();
  *a2 = v5;
  a2[1] = v6;
  v7 = *MEMORY[0x277D5B3E0];
  v8 = sub_266DA75DC();
  v9 = *(*(v8 - 8) + 104);

  return v9(a2, v7, v8);
}

uint64_t sub_266C7B4A0()
{
  swift_getWitnessTable();

  return sub_266DA79AC();
}

uint64_t sub_266C7B50C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_266C7B530, 0, 0);
}

uint64_t sub_266C7B530()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_266C7B384(v0[3]);
  sub_266DA7D6C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_266C7B5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_266C7B658;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_266C7B658(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_266C7B758(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266C29DCC;

  return sub_266C7B50C(a1, a2);
}

uint64_t DeviceSearchError.hashValue.getter()
{
  v1 = *v0;
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](v1);
  return sub_266DAB2DC();
}

unint64_t sub_266C7B89C()
{
  result = qword_2800CAC38;
  if (!qword_2800CAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAC38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceSearchError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_266C7B9D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_266C7BA14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266C7BA84()
{
  OUTLINED_FUNCTION_22_0();
  v1[43] = v2;
  v1[44] = v0;
  v1[42] = v3;
  v4 = type metadata accessor for Snippets();
  v1[45] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  v1[46] = OUTLINED_FUNCTION_64();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v7 = sub_266DA80AC();
  v1[54] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[55] = v8;
  v10 = *(v9 + 64);
  v1[56] = OUTLINED_FUNCTION_64();
  v1[57] = swift_task_alloc();
  v11 = sub_266DA7C0C();
  v1[58] = v11;
  OUTLINED_FUNCTION_11_3(v11);
  v1[59] = v12;
  v14 = *(v13 + 64);
  v1[60] = OUTLINED_FUNCTION_64();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v15);
  v17 = *(v16 + 64);
  v1[63] = OUTLINED_FUNCTION_64();
  v1[64] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v18);
  v20 = *(v19 + 64);
  v1[65] = OUTLINED_FUNCTION_64();
  v1[66] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v21);
  v1[67] = v22;
  v1[68] = *(v23 + 64);
  v1[69] = OUTLINED_FUNCTION_64();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v24);
  v26 = *(v25 + 64) + 15;
  v1[83] = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_266C7BDB0()
{
  v54 = v0;
  v1 = *(v0 + 344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA268, &qword_266DB0490);
  v2 = sub_266DA80CC();
  *(v0 + 672) = v2;
  v3 = sub_266DA80DC();
  *(v0 + 680) = v3;
  if ([v3 unsupportedReason] == 1)
  {
    sub_266DA914C();
    if (qword_2800C93F0 != -1)
    {
      swift_once();
    }

    *(v0 + 688) = sub_266C556E8(v4);
    v5 = [v2 location];
    if (!v5 || (v6 = v5, sub_266D6CDF4(&v48), v6, v7 = v50, v50 == 255))
    {
      v19 = *(v0 + 664);
      sub_266DA919C();
      v12 = OUTLINED_FUNCTION_72();
    }

    else
    {
      v8 = *(v0 + 664);
      v10 = v48;
      v9 = v49;
      v51 = v48;
      v52 = v49;
      v53 = v50;
      sub_266D91274();
      sub_266C23130(v10, v9, v7);
      v11 = sub_266DA919C();
      v12 = v8;
      v13 = 0;
    }

    __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
    v20 = *(v0 + 656);
    v21 = *(v0 + 648);
    v23 = *(v0 + 352);
    v22 = *(v0 + 360);
    *(v0 + 696) = *(v23 + 128);
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v22);
    v24 = OUTLINED_FUNCTION_72();
    __swift_storeEnumTagSinglePayload(v24, v25, 1, v22);
    *(v0 + 873) = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    *(v0 + 704) = sub_266DA93CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    v29 = swift_allocObject();
    *(v0 + 712) = v29;
    *(v29 + 16) = xmmword_266DAE3B0;
    v30 = *(v23 + 40);
    v31 = swift_task_alloc();
    *(v0 + 720) = v31;
    *v31 = v0;
    v31[1] = sub_266C7C224;
    v32 = *(v0 + 664);

    return sub_266CB2710();
  }

  else
  {
    if (qword_2800C93F8 != -1)
    {
      swift_once();
    }

    v14 = sub_266DA94AC();
    __swift_project_value_buffer(v14, qword_2800E64C0);
    v15 = v3;
    v16 = sub_266DA948C();
    v17 = sub_266DAAAFC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = [v15 unsupportedReason];

      _os_log_impl(&dword_266C08000, v16, v17, "Unexpected unsupported reason of %ld", v18, 0xCu);
      MEMORY[0x26D5F2480](v18, -1, -1);
    }

    else
    {

      v16 = v15;
    }

    v34 = *(v0 + 592);
    v35 = *(v0 + 584);
    v37 = *(v0 + 352);
    v36 = *(v0 + 360);

    *(v0 + 784) = *(v37 + 128);
    v38 = OUTLINED_FUNCTION_31();
    __swift_storeEnumTagSinglePayload(v38, v39, 1, v36);
    v40 = OUTLINED_FUNCTION_55();
    __swift_storeEnumTagSinglePayload(v40, v41, 1, v36);
    *(v0 + 872) = 0;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    *(v0 + 792) = sub_266DA93CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    v45 = swift_allocObject();
    *(v0 + 800) = v45;
    *(v45 + 16) = xmmword_266DAE3B0;
    v46 = *(v37 + 40);
    v47 = swift_task_alloc();
    *(v0 + 808) = v47;
    *v47 = v0;
    v47[1] = sub_266C7D4AC;

    return sub_266CB4B54();
  }
}

uint64_t sub_266C7C224(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 720);
  v9 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[91] = v1;

  if (v1)
  {
    v11 = v5[82];
    sub_266C47654(v5[81], &qword_2800CA050, &qword_266DB0080);
    v12 = OUTLINED_FUNCTION_32();
    sub_266C47654(v12, v13, &qword_266DB0080);
    v14 = sub_266C7E6B0;
  }

  else
  {
    v5[92] = a1;
    v14 = sub_266C7C364;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

void sub_266C7C364()
{
  v1 = v0[89];
  v2 = v0[66];
  v3 = v0[64];
  v4 = v0[62];
  *(v1 + 32) = v0[92];
  sub_266DA7E5C();
  v5 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v5, v6, 1, v7);
  sub_266DA7C7C();
  v8 = OUTLINED_FUNCTION_55();
  __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
  sub_266DA7BCC();
  if (sub_266C3A14C(v1, v11, v12))
  {
    v13 = v0[89];
    v14 = v13 & 0xC000000000000001;
    sub_266CB9F54(0, (v13 & 0xC000000000000001) == 0, v13);
    v15 = v0[89];
    if (v14)
    {
      v16 = MEMORY[0x26D5F1780](0, v15);
    }

    else
    {
      v16 = *(v15 + 32);
    }

    v17 = v16;
    v18 = [v16 catId];

    v105 = sub_266DAA70C();
    v110 = v19;
  }

  else
  {
    v105 = 0;
    v110 = 0;
  }

  v20 = v0[87];
  v21 = v0[82];
  v22 = v0[80];
  v23 = v0[79];
  v24 = v0[78];
  v25 = v0[68];
  v26 = v0[67];
  v99 = v0[66];
  v100 = v0[64];
  v27 = v0[61];
  v98 = v0[62];
  v29 = v0[58];
  v28 = v0[59];
  v30 = v0[57];
  OUTLINED_FUNCTION_49_1(v0[81]);
  sub_266C4756C(v21, v23);
  OUTLINED_FUNCTION_30_1();
  v31 = swift_allocObject();
  v0[93] = v31;
  *(v31 + 16) = v20;
  sub_266C475DC(v22, v31 + v26);
  sub_266C475DC(v23, v31 + v21);
  v32 = OUTLINED_FUNCTION_47_1();
  v33(v32);
  v34 = swift_task_alloc();
  v42 = OUTLINED_FUNCTION_17_9(v34, v35, v36, v37, v38, v39, v40, v41, v98, v99, v100, v102, v103, v105, v106, v108, v110);
  v42[9] = sub_266C48BBC;
  v42[10] = v31;
  v42[11] = v101;

  OUTLINED_FUNCTION_52_1();

  sub_266C4756C(v104, v109);
  v43 = OUTLINED_FUNCTION_72();
  if (__swift_getEnumTagSinglePayload(v43, v44, v107) == 1)
  {
    v45 = v0 + 78;
  }

  else
  {
    v46 = v0[81];
    v47 = v0[77];
    v48 = v0[45];
    sub_266C476A8(v0[78], v0[53]);
    v49 = OUTLINED_FUNCTION_32();
    sub_266C4756C(v49, v50);
    v51 = OUTLINED_FUNCTION_31();
    if (__swift_getEnumTagSinglePayload(v51, v52, v48) != 1)
    {
      v79 = v0[53];
      v80 = v0[45];
      sub_266C476A8(v0[77], v0[52]);
      v0[35] = v80;
      v81 = sub_266C4DB4C();
      v0[36] = v81;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 32);
      OUTLINED_FUNCTION_55_0(boxed_opaque_existential_1);
      v0[40] = v80;
      v0[41] = v81;
      v83 = __swift_allocate_boxed_opaque_existential_1(v0 + 37);
      OUTLINED_FUNCTION_86(v83);
      OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_24_1();
      v0[94] = v84;
      *v84 = v85;
      v84[1] = sub_266C7C8A8;
      v86 = v0[89];
      v87 = v0[87];
      v88 = v0[57];
      v89 = v0[42];
      OUTLINED_FUNCTION_39();

      __asm { BR              X5 }
    }

    v45 = v0 + 77;
    sub_266C477B4(v0[53]);
  }

  v53 = *v45;
  v54 = v0[82];
  v55 = v0[76];
  v56 = v0[45];
  sub_266C47654(v53, &qword_2800CA050, &qword_266DB0080);
  v57 = OUTLINED_FUNCTION_32();
  sub_266C4756C(v57, v58);
  v59 = OUTLINED_FUNCTION_31();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, v60, v56);
  v62 = v0[76];
  v63 = v0[45];
  if (EnumTagSinglePayload == 1)
  {
    v64 = v0[81];
    v65 = v0[75];
    sub_266C47654(v62, &qword_2800CA050, &qword_266DB0080);
    sub_266C4756C(v64, v65);
    v66 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v66, v67, v63) == 1)
    {
      sub_266C47654(v0[75], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_24_1();
      v0[97] = v68;
      *v68 = v69;
      v68[1] = sub_266C7D1B8;
      v70 = v0[89];
      v71 = v0[87];
      v72 = v0[57];
      v73 = v0[42];
      OUTLINED_FUNCTION_39();

      __asm { BR              X3 }
    }

    v92 = v0[45];
    sub_266C476A8(v0[75], v0[50]);
    v0[25] = v92;
    v0[26] = sub_266C4DB4C();
    v93 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
    OUTLINED_FUNCTION_55_0(v93);
    OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_24_1();
    v0[96] = v94;
    *v94 = v95;
    OUTLINED_FUNCTION_36_2(v94);
  }

  else
  {
    sub_266C476A8(v62, v0[51]);
    v0[30] = v63;
    v0[31] = sub_266C4DB4C();
    v76 = __swift_allocate_boxed_opaque_existential_1(v0 + 27);
    OUTLINED_FUNCTION_86(v76);
    OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_24_1();
    v0[95] = v77;
    *v77 = v78;
    OUTLINED_FUNCTION_36_2(v77);
  }

  OUTLINED_FUNCTION_39();

  __asm { BR              X4 }
}

uint64_t sub_266C7C8A8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 752);
  v6 = *(v4 + 712);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 296));
  __swift_destroy_boxed_opaque_existential_0((v2 + 256));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C7C9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_41_0();
  v40 = *(v35 + 416);
  v39 = *(v35 + 424);

  sub_266C477B4(v40);
  sub_266C477B4(v39);
  v41 = OUTLINED_FUNCTION_2_20();
  v42(v41);
  v43 = OUTLINED_FUNCTION_20_6();
  v44(v43);
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_27_2();
  sub_266C47654(v37, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v36, &qword_2800CA048, &unk_266DAFC00);

  sub_266C47654(a31, &qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_0_30();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_15_10();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_266C7CBB8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 760);
  v6 = *(v4 + 712);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 216));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C7CCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_41_0();
  v39 = *(v35 + 408);

  sub_266C477B4(v39);
  v40 = OUTLINED_FUNCTION_2_20();
  v41(v40);
  v42 = OUTLINED_FUNCTION_20_6();
  v43(v42);
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_27_2();
  sub_266C47654(v37, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v36, &qword_2800CA048, &unk_266DAFC00);

  sub_266C47654(a31, &qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_0_30();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_15_10();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_266C7CEB8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 768);
  v6 = *(v4 + 712);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C7CFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_41_0();
  v39 = *(v35 + 400);

  sub_266C477B4(v39);
  v40 = OUTLINED_FUNCTION_2_20();
  v41(v40);
  v42 = OUTLINED_FUNCTION_20_6();
  v43(v42);
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_27_2();
  sub_266C47654(v37, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v36, &qword_2800CA048, &unk_266DAFC00);

  sub_266C47654(a31, &qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_0_30();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_15_10();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_266C7D1B8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 776);
  v3 = *(v1 + 712);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266C7D2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_41_0();

  v38 = OUTLINED_FUNCTION_2_20();
  v39(v38);
  v40 = OUTLINED_FUNCTION_20_6();
  v41(v40);
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_27_2();
  sub_266C47654(v36, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v35, &qword_2800CA048, &unk_266DAFC00);

  sub_266C47654(a31, &qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_0_30();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_15_10();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_266C7D4AC(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 808);
  v9 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[102] = v1;

  if (v1)
  {
    v11 = v5[74];
    sub_266C47654(v5[73], &qword_2800CA050, &qword_266DB0080);
    v12 = OUTLINED_FUNCTION_32();
    sub_266C47654(v12, v13, &qword_266DB0080);
    v14 = sub_266C7E880;
  }

  else
  {
    v5[103] = a1;
    v14 = sub_266C7D5EC;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

void sub_266C7D5EC()
{
  v1 = v0[100];
  v2 = v0[65];
  v3 = v0[63];
  v4 = v0[60];
  *(v1 + 32) = v0[103];
  sub_266DA7E5C();
  v5 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v5, v6, 1, v7);
  sub_266DA7C7C();
  v8 = OUTLINED_FUNCTION_55();
  __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
  sub_266DA7BCC();
  if (sub_266C3A14C(v1, v11, v12))
  {
    v13 = v0[100];
    v14 = v13 & 0xC000000000000001;
    sub_266CB9F54(0, (v13 & 0xC000000000000001) == 0, v13);
    v15 = v0[100];
    if (v14)
    {
      v16 = MEMORY[0x26D5F1780](0, v15);
    }

    else
    {
      v16 = *(v15 + 32);
    }

    v17 = v16;
    v18 = [v16 catId];

    v105 = sub_266DAA70C();
    v110 = v19;
  }

  else
  {
    v105 = 0;
    v110 = 0;
  }

  v20 = v0[98];
  v21 = v0[80];
  v22 = v0[79];
  v23 = v0[74];
  v24 = v0[72];
  v25 = v0[68];
  v26 = v0[67];
  v99 = v0[65];
  v100 = v0[63];
  v27 = v0[61];
  v98 = v0[60];
  v29 = v0[58];
  v28 = v0[59];
  v30 = v0[56];
  OUTLINED_FUNCTION_49_1(v0[73]);
  sub_266C4756C(v23, v22);
  OUTLINED_FUNCTION_30_1();
  v31 = swift_allocObject();
  v0[104] = v31;
  *(v31 + 16) = v20;
  sub_266C475DC(v21, v31 + v26);
  sub_266C475DC(v22, v31 + v23);
  v32 = OUTLINED_FUNCTION_47_1();
  v33(v32);
  v34 = swift_task_alloc();
  v42 = OUTLINED_FUNCTION_17_9(v34, v35, v36, v37, v38, v39, v40, v41, v98, v99, v100, v102, v103, v105, v106, v108, v110);
  v42[9] = sub_266C4764C;
  v42[10] = v31;
  v42[11] = v101;

  OUTLINED_FUNCTION_52_1();

  sub_266C4756C(v104, v109);
  v43 = OUTLINED_FUNCTION_72();
  if (__swift_getEnumTagSinglePayload(v43, v44, v107) == 1)
  {
    v45 = v0 + 72;
  }

  else
  {
    v46 = v0[73];
    v47 = v0[71];
    v48 = v0[45];
    sub_266C476A8(v0[72], v0[49]);
    v49 = OUTLINED_FUNCTION_32();
    sub_266C4756C(v49, v50);
    v51 = OUTLINED_FUNCTION_31();
    if (__swift_getEnumTagSinglePayload(v51, v52, v48) != 1)
    {
      v79 = v0[49];
      v80 = v0[45];
      sub_266C476A8(v0[71], v0[48]);
      v0[15] = v80;
      v81 = sub_266C4DB4C();
      v0[16] = v81;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
      OUTLINED_FUNCTION_55_0(boxed_opaque_existential_1);
      v0[20] = v80;
      v0[21] = v81;
      v83 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
      OUTLINED_FUNCTION_86(v83);
      OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_24_1();
      v0[105] = v84;
      *v84 = v85;
      v84[1] = sub_266C7DB2C;
      v86 = v0[100];
      v87 = v0[98];
      v88 = v0[56];
      v89 = v0[42];
      OUTLINED_FUNCTION_39();

      __asm { BR              X5 }
    }

    v45 = v0 + 71;
    sub_266C477B4(v0[49]);
  }

  v53 = *v45;
  v54 = v0[74];
  v55 = v0[70];
  v56 = v0[45];
  sub_266C47654(v53, &qword_2800CA050, &qword_266DB0080);
  v57 = OUTLINED_FUNCTION_32();
  sub_266C4756C(v57, v58);
  v59 = OUTLINED_FUNCTION_31();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, v60, v56);
  v62 = v0[70];
  v63 = v0[45];
  if (EnumTagSinglePayload == 1)
  {
    v64 = v0[73];
    v65 = v0[69];
    sub_266C47654(v62, &qword_2800CA050, &qword_266DB0080);
    sub_266C4756C(v64, v65);
    v66 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v66, v67, v63) == 1)
    {
      sub_266C47654(v0[69], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_24_1();
      v0[108] = v68;
      *v68 = v69;
      v68[1] = sub_266C7E3DC;
      v70 = v0[100];
      v71 = v0[98];
      v72 = v0[56];
      v73 = v0[42];
      OUTLINED_FUNCTION_39();

      __asm { BR              X3 }
    }

    v92 = v0[45];
    sub_266C476A8(v0[69], v0[46]);
    v0[5] = v92;
    v0[6] = sub_266C4DB4C();
    v93 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    OUTLINED_FUNCTION_55_0(v93);
    OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_24_1();
    v0[107] = v94;
    *v94 = v95;
    OUTLINED_FUNCTION_35_2(v94);
  }

  else
  {
    sub_266C476A8(v62, v0[47]);
    v0[10] = v63;
    v0[11] = sub_266C4DB4C();
    v76 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    OUTLINED_FUNCTION_86(v76);
    OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_24_1();
    v0[106] = v77;
    *v77 = v78;
    OUTLINED_FUNCTION_35_2(v77);
  }

  OUTLINED_FUNCTION_39();

  __asm { BR              X4 }
}

uint64_t sub_266C7DB2C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 840);
  v6 = *(v4 + 800);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C7DC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_45_1();
  v39 = *(v34 + 384);
  v38 = *(v34 + 392);

  sub_266C477B4(v39);
  sub_266C477B4(v38);
  v40 = OUTLINED_FUNCTION_3_18();
  v41(v40);
  v42 = OUTLINED_FUNCTION_22_5();
  v43(v42);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v35, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v39, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_30();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_15_10();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_266C7DE1C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 848);
  v6 = *(v4 + 800);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C7DF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_45_1();
  v39 = *(v35 + 376);

  sub_266C477B4(v39);
  v40 = OUTLINED_FUNCTION_3_18();
  v41(v40);
  v42 = OUTLINED_FUNCTION_22_5();
  v43(v42);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v36, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v34, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_30();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_15_10();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_266C7E0FC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 856);
  v6 = *(v4 + 800);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C7E1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_45_1();
  v39 = *(v35 + 368);

  sub_266C477B4(v39);
  v40 = OUTLINED_FUNCTION_3_18();
  v41(v40);
  v42 = OUTLINED_FUNCTION_22_5();
  v43(v42);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v36, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v34, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_30();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_15_10();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_266C7E3DC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 864);
  v3 = *(v1 + 800);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266C7E4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_45_1();

  v38 = OUTLINED_FUNCTION_3_18();
  v39(v38);
  v40 = OUTLINED_FUNCTION_22_5();
  v41(v40);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v35, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v34, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_30();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_15_10();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_266C7E6B0()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 664);

  sub_266C47654(v4, &qword_2800CA038, &unk_266DAFBF0);
  v7 = *(v0 + 728);
  OUTLINED_FUNCTION_10_7(*(v0 + 712));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_266C7E880()
{
  v1 = v0[99];
  v2 = v0[85];
  v3 = v0[84];

  v6 = v0[102];
  OUTLINED_FUNCTION_10_7(v0[100]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_266C7EA24(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_14_3();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_266C7EA4C()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA268, &qword_266DB0490);
  v2 = sub_266DA80CC();
  [v2 setLocation_];

  v3 = sub_266DA80CC();
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_266C7EAF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C7EB98;

  return sub_266C7BA84();
}

uint64_t sub_266C7EB98()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_266C7EC7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266C781A4;

  return sub_266C7EA24(a1);
}

uint64_t sub_266C7ED10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B4C8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266C7FA4C;

  return MEMORY[0x2821B9E00](a1, a2, a3, a4);
}

uint64_t objectdestroyTm_5()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;
  v11 = *(v0 + 16);

  v12 = (v0 + v9);
  v13 = type metadata accessor for Snippets();
  v14 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v14, v15, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v35 = v12[1];

        v36 = v12[3];

        v37 = type metadata accessor for Snippets.Contact();
        v38 = OUTLINED_FUNCTION_98(v37);
        OUTLINED_FUNCTION_8_0(v38);
        (*(v39 + 8))(&v2[v12]);
        v34 = v1[7];
        goto LABEL_35;
      case 1u:
      case 2u:
      case 3u:
        v16 = *v12;
        goto LABEL_36;
      case 4u:
        v21 = v12[1];

        v22 = v12[3];

        v23 = v12[5];

        v24 = v12[6];

        v12 = (v12 + *(type metadata accessor for Friend() + 40));
        v1 = type metadata accessor for FriendLocation();
        v25 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v25, v26, v1))
        {
          break;
        }

        v27 = v12[1];

        v28 = v1[8];
LABEL_23:
        v71 = v12 + v28;
        v1 = type metadata accessor for Location();
        v72 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v72, v73, v1))
        {
          v74 = v1[7];
          v75 = sub_266DA746C();
          OUTLINED_FUNCTION_8_0(v75);
          (*(v76 + 8))(&v71[v74]);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = &v71[v1[11]];
          v77 = type metadata accessor for Address();
          v78 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v78, v79, v77))
          {
            sub_266DA919C();
            v80 = OUTLINED_FUNCTION_109();
            v238 = v81;
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v80, v82, v81);
            if (!EnumTagSinglePayload)
            {
              OUTLINED_FUNCTION_20_2(EnumTagSinglePayload, v84, v85, v86, v87, v88, v89, v90, v235, v238);
              (*(v91 + 8))(v2);
            }

            OUTLINED_FUNCTION_70(v77[5]);
            OUTLINED_FUNCTION_70(v77[6]);
            v92 = OUTLINED_FUNCTION_70(v77[7]);
            v100 = OUTLINED_FUNCTION_115(v92, v93, v94, v95, v96, v97, v98, v99, v235, v238);
            if (!v100)
            {
              OUTLINED_FUNCTION_20_2(v100, v101, v102, v103, v104, v105, v106, v107, v235, v239);
              (*(v108 + 8))(v3 + v2);
            }

            OUTLINED_FUNCTION_70(v77[9]);
            OUTLINED_FUNCTION_70(v77[10]);
            OUTLINED_FUNCTION_70(v77[11]);
            v109 = *&v2[v77[12]];
          }

          v34 = v1[12];
LABEL_35:
          OUTLINED_FUNCTION_48(v34);
LABEL_36:
        }

        break;
      case 5u:
        v48 = v12[1];

        v49 = v12[3];

        v50 = v12[5];

        v51 = v12[6];

        v52 = v12 + *(type metadata accessor for Friend() + 40);
        v53 = type metadata accessor for FriendLocation();
        if (!OUTLINED_FUNCTION_66(v53))
        {
          v54 = *(v52 + 1);

          v55 = &v52[*(v2 + 8)];
          v56 = type metadata accessor for Location();
          if (!OUTLINED_FUNCTION_66(v56))
          {
            v57 = *(v2 + 7);
            v58 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v58);
            (*(v59 + 8))(&v55[v57]);
            OUTLINED_FUNCTION_21_0(*(v2 + 8));
            v60 = &v55[*(v2 + 11)];
            v3 = type metadata accessor for Address();
            if (!__swift_getEnumTagSinglePayload(v60, 1, v3))
            {
              v237 = sub_266DA919C();
              v61 = __swift_getEnumTagSinglePayload(v60, 1, v237);
              if (!v61)
              {
                OUTLINED_FUNCTION_20_2(v61, v62, v63, v64, v65, v66, v67, v68, v235, v237);
                (*(v69 + 8))(v60);
              }

              OUTLINED_FUNCTION_89(v3[5]);
              OUTLINED_FUNCTION_89(v3[6]);
              OUTLINED_FUNCTION_89(v3[7]);
              v235 = v3[8];
              if (!__swift_getEnumTagSinglePayload(v60 + v235, 1, v237))
              {
                (*(*(v237 - 8) + 8))(v60 + v235);
              }

              OUTLINED_FUNCTION_89(v3[9]);
              OUTLINED_FUNCTION_89(v3[10]);
              OUTLINED_FUNCTION_89(v3[11]);
              v70 = *(v60 + v3[12]);
            }

            OUTLINED_FUNCTION_21_0(*(v2 + 12));
          }
        }

        v28 = *(type metadata accessor for Snippets.CarPlayFriendLocation() + 20);
        goto LABEL_23;
      case 6u:
        v110 = v12[1];

        v111 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v112);
        }

        v113 = v12[8];

        v114 = v12[10];
        goto LABEL_36;
      case 7u:
        v40 = v12[1];

        v41 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v42);
        }

        v45 = v12[8];

        v46 = v12[10];

        v47 = v12[12];
        goto LABEL_36;
      case 8u:
        if ((v12[2] - 1) < 7)
        {
          break;
        }

        goto LABEL_36;
      case 9u:
        v29 = v12[1];

        v30 = v12[3];

        v31 = type metadata accessor for Snippets.Contact();
        v32 = OUTLINED_FUNCTION_98(v31);
        OUTLINED_FUNCTION_8_0(v32);
        (*(v33 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(v1[5]);

        v34 = v1[6];
        goto LABEL_35;
      case 0xAu:
        v115 = v12[1];

        v116 = v12[3];

        v117 = type metadata accessor for Snippets.Contact();
        v118 = OUTLINED_FUNCTION_98(v117);
        OUTLINED_FUNCTION_8_0(v118);
        (*(v119 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(v1[7]);

        v34 = v1[8];
        goto LABEL_35;
      case 0xBu:
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v17);
        (*(v18 + 8))(v12);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v2 = v1[5];
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v19);
        (*(v20 + 8))(&v2[v12]);
        if (*(v12 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_36;
      default:
        break;
    }
  }

  v120 = (v0 + v10);
  v121 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v121, v122, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v147 = *(v120 + 1);

        v148 = *(v120 + 3);

        v149 = type metadata accessor for Snippets.Contact();
        v150 = OUTLINED_FUNCTION_96(v149);
        OUTLINED_FUNCTION_8_0(v150);
        (*(v151 + 8))(v1 + v120);
        v146 = *(v13 + 28);
        goto LABEL_71;
      case 1u:
      case 2u:
      case 3u:
        v123 = *v120;
        goto LABEL_73;
      case 4u:
        v130 = *(v120 + 1);

        v131 = *(v120 + 3);

        v132 = *(v120 + 5);

        v133 = *(v120 + 6);

        v134 = &v120[*(type metadata accessor for Friend() + 40)];
        v135 = type metadata accessor for FriendLocation();
        v136 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v136, v137, v135))
        {
          break;
        }

        v138 = *(v134 + 1);

        v139 = &v134[*(v135 + 32)];
LABEL_59:
        v209 = type metadata accessor for Location();
        v210 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v210, v211, v209))
        {
          break;
        }

        v212 = v209[7];
        v213 = sub_266DA746C();
        OUTLINED_FUNCTION_8_0(v213);
        (*(v214 + 8))(&v139[v212]);
        v215 = *&v139[v209[8] + 8];

        v216 = &v139[v209[11]];
        v217 = type metadata accessor for Address();
        if (!OUTLINED_FUNCTION_66(v217))
        {
          v218 = sub_266DA919C();
          if (!__swift_getEnumTagSinglePayload(v216, 1, v218))
          {
            (*(*(v218 - 8) + 8))(v216, v218);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 5));
          OUTLINED_FUNCTION_21_0(*(v2 + 6));
          OUTLINED_FUNCTION_21_0(*(v2 + 7));
          v219 = *(v2 + 8);
          if (!__swift_getEnumTagSinglePayload(v216 + v219, 1, v218))
          {
            (*(*(v218 - 8) + 8))(v216 + v219, v218);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 9));
          OUTLINED_FUNCTION_21_0(*(v2 + 10));
          OUTLINED_FUNCTION_21_0(*(v2 + 11));
          v220 = *(v216 + *(v2 + 12));
        }

        v221 = &v139[v209[12]];
LABEL_72:
        v233 = *(v221 + 1);
LABEL_73:

        break;
      case 5u:
        v158 = *(v120 + 1);

        v159 = *(v120 + 3);

        v160 = *(v120 + 5);

        v161 = *(v120 + 6);

        v162 = &v120[*(type metadata accessor for Friend() + 40)];
        v163 = type metadata accessor for FriendLocation();
        v164 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v164, v165, v163))
        {
          v166 = *(v162 + 1);

          v167 = &v162[*(v163 + 32)];
          v168 = type metadata accessor for Location();
          v169 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v169, v170, v168))
          {
            v171 = v168[7];
            v172 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v172);
            (*(v173 + 8))(&v167[v171]);
            v174 = *&v167[v168[8] + 8];

            v2 = &v167[v168[11]];
            v175 = type metadata accessor for Address();
            v176 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v176, v177, v175))
            {
              sub_266DA919C();
              v178 = OUTLINED_FUNCTION_109();
              v240 = v179;
              v181 = __swift_getEnumTagSinglePayload(v178, v180, v179);
              if (!v181)
              {
                OUTLINED_FUNCTION_20_2(v181, v182, v183, v184, v185, v186, v187, v188, v235, v240);
                (*(v189 + 8))(v2);
              }

              OUTLINED_FUNCTION_70(v175[5]);
              OUTLINED_FUNCTION_70(v175[6]);
              v190 = OUTLINED_FUNCTION_70(v175[7]);
              v198 = OUTLINED_FUNCTION_115(v190, v191, v192, v193, v194, v195, v196, v197, v235, v240);
              if (!v198)
              {
                OUTLINED_FUNCTION_20_2(v198, v199, v200, v201, v202, v203, v204, v205, v236, v241);
                (*(v206 + 8))(v3 + v2);
              }

              OUTLINED_FUNCTION_70(v175[9]);
              OUTLINED_FUNCTION_70(v175[10]);
              OUTLINED_FUNCTION_70(v175[11]);
              v207 = *&v2[v175[12]];
            }

            v208 = *&v167[v168[12] + 8];
          }
        }

        v139 = &v120[*(type metadata accessor for Snippets.CarPlayFriendLocation() + 20)];
        goto LABEL_59;
      case 6u:
        v222 = *(v120 + 1);

        v223 = *(v120 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v120 + 5), v224);
        }

        v225 = *(v120 + 8);

        v226 = *(v120 + 10);
        goto LABEL_73;
      case 7u:
        v152 = *(v120 + 1);

        v153 = *(v120 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v120 + 5), v154);
        }

        v155 = *(v120 + 8);

        v156 = *(v120 + 10);

        v157 = *(v120 + 12);
        goto LABEL_73;
      case 8u:
        if ((*(v120 + 2) - 1) < 7)
        {
          break;
        }

        goto LABEL_73;
      case 9u:
        v140 = *(v120 + 1);

        v141 = *(v120 + 3);

        v142 = type metadata accessor for Snippets.Contact();
        v143 = OUTLINED_FUNCTION_96(v142);
        OUTLINED_FUNCTION_8_0(v143);
        (*(v144 + 8))(v1 + v120);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v145 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(*(v145 + 20));

        v146 = *(v145 + 24);
        goto LABEL_71;
      case 0xAu:
        v227 = *(v120 + 1);

        v228 = *(v120 + 3);

        v229 = type metadata accessor for Snippets.Contact();
        v230 = OUTLINED_FUNCTION_96(v229);
        OUTLINED_FUNCTION_8_0(v230);
        (*(v231 + 8))(v1 + v120);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v232 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(*(v232 + 28));

        v146 = *(v232 + 32);
LABEL_71:
        v221 = &v120[v146];
        goto LABEL_72;
      case 0xBu:
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v124);
        (*(v125 + 8))(v0 + v10);
        v126 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v127 = *(v126 + 20);
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v128);
        (*(v129 + 8))(&v120[v127]);
        if (*&v120[*(v126 + 24) + 16] == 1)
        {
          break;
        }

        goto LABEL_73;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

uint64_t OUTLINED_FUNCTION_0_30()
{
  v3 = v0[83];
  v4 = v0[82];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[79];
  v8 = v0[78];
  v9 = v0[77];
  v10 = v0[76];
  v11 = v0[75];
  v12 = v0[74];
  v17 = v0[73];
  v18 = v0[72];
  v19 = v0[71];
  v20 = v0[70];
  v21 = v0[69];
  v22 = v0[66];
  v23 = v0[65];
  v24 = v0[64];
  v25 = v0[63];
  v26 = v0[62];
  v27 = v0[61];
  v28 = v0[60];
  v29 = v0[57];
  v30 = v0[56];
  v31 = v0[53];
  v32 = v0[52];
  v13 = v0[50];
  *(v1 - 120) = v0[51];
  *(v1 - 112) = v13;
  v14 = v0[48];
  *(v1 - 104) = v0[49];
  *(v1 - 96) = v14;
  v15 = v0[46];
  *(v1 - 88) = v0[47];
  *(v1 - 80) = v15;
}

uint64_t OUTLINED_FUNCTION_2_20()
{
  v2 = v0[85];
  v3 = v0[84];
  v4 = v0[83];
  *(v1 - 88) = v0[86];
  *(v1 - 80) = v4;
  v5 = v0[82];
  v6 = v0[81];
  v7 = v0[66];
  v8 = v0[64];
  v9 = v0[62];
  v11 = v0[58];
  v10 = v0[59];
  result = v0[57];
  v13 = v0[54];
  v14 = *(v0[55] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_18()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[65];
  v6 = v0[63];
  v8 = v0[59];
  v7 = v0[60];
  v9 = v0[58];
  result = v0[56];
  v11 = v0[54];
  v12 = *(v0[55] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_7(uint64_t a1)
{
  v4 = v1[83];
  v5 = v1[82];
  v6 = v1[81];
  v7 = v1[80];
  v8 = v1[79];
  v9 = v1[78];
  v10 = v1[77];
  v11 = v1[76];
  v12 = v1[75];
  v17 = v1[74];
  v18 = v1[73];
  v19 = v1[72];
  v20 = v1[71];
  v21 = v1[70];
  v22 = v1[69];
  v23 = v1[66];
  v24 = v1[65];
  v25 = v1[64];
  v26 = v1[63];
  v27 = v1[62];
  v28 = v1[61];
  v29 = v1[60];
  v30 = v1[57];
  v31 = v1[56];
  v32 = v1[53];
  v33 = v1[52];
  v13 = v1[50];
  *(v2 - 136) = v1[51];
  *(v2 - 128) = v13;
  v14 = v1[48];
  *(v2 - 120) = v1[49];
  *(v2 - 112) = v14;
  v15 = v1[46];
  *(v2 - 104) = v1[47];
  *(v2 - 96) = v15;
  *(a1 + 16) = 0;
}

uint64_t OUTLINED_FUNCTION_17_9(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a14;
  *(result + 48) = a17;
  *(result + 56) = a10;
  *(result + 64) = 514;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_2()
{

  return sub_266C47654(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return sub_266C47654(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_35_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[100];
  v4 = v2[98];
  v5 = v2[56];
  return v2[42];
}

uint64_t OUTLINED_FUNCTION_36_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[89];
  v4 = v2[87];
  v5 = v2[57];
  return v2[42];
}

uint64_t OUTLINED_FUNCTION_49_1(uint64_t a1)
{
  v5 = *(v1 + 360);

  return sub_266C4756C(a1, v2);
}

uint64_t sub_266C7FD90()
{
  OUTLINED_FUNCTION_22_0();
  v1[124] = v0;
  v1[123] = v2;
  v1[122] = v3;
  v4 = type metadata accessor for Snippets();
  v1[125] = v4;
  v5 = *(*(v4 - 8) + 64);
  v1[126] = OUTLINED_FUNCTION_64();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();
  v1[134] = swift_task_alloc();
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v1[139] = swift_task_alloc();
  v1[140] = swift_task_alloc();
  v1[141] = swift_task_alloc();
  v1[142] = swift_task_alloc();
  v1[143] = swift_task_alloc();
  v1[144] = swift_task_alloc();
  v1[145] = swift_task_alloc();
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();
  v6 = sub_266DA80AC();
  v1[150] = v6;
  OUTLINED_FUNCTION_11_3(v6);
  v1[151] = v7;
  v9 = *(v8 + 64);
  v1[152] = OUTLINED_FUNCTION_64();
  v1[153] = swift_task_alloc();
  v1[154] = swift_task_alloc();
  v1[155] = swift_task_alloc();
  v1[156] = swift_task_alloc();
  v1[157] = swift_task_alloc();
  v10 = sub_266DA7C0C();
  v1[158] = v10;
  OUTLINED_FUNCTION_11_3(v10);
  v1[159] = v11;
  v13 = *(v12 + 64);
  v1[160] = OUTLINED_FUNCTION_64();
  v1[161] = swift_task_alloc();
  v1[162] = swift_task_alloc();
  v1[163] = swift_task_alloc();
  v1[164] = swift_task_alloc();
  v1[165] = swift_task_alloc();
  v1[166] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070) - 8) + 64);
  v1[167] = OUTLINED_FUNCTION_64();
  v1[168] = swift_task_alloc();
  v1[169] = swift_task_alloc();
  v1[170] = swift_task_alloc();
  v1[171] = swift_task_alloc();
  v1[172] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00) - 8) + 64);
  v1[173] = OUTLINED_FUNCTION_64();
  v1[174] = swift_task_alloc();
  v1[175] = swift_task_alloc();
  v1[176] = swift_task_alloc();
  v1[177] = swift_task_alloc();
  v1[178] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v16);
  v1[179] = v17;
  v1[180] = *(v18 + 64);
  v1[181] = OUTLINED_FUNCTION_64();
  v1[182] = swift_task_alloc();
  v1[183] = swift_task_alloc();
  v1[184] = swift_task_alloc();
  v1[185] = swift_task_alloc();
  v1[186] = swift_task_alloc();
  v1[187] = swift_task_alloc();
  v1[188] = swift_task_alloc();
  v1[189] = swift_task_alloc();
  v1[190] = swift_task_alloc();
  v1[191] = swift_task_alloc();
  v1[192] = swift_task_alloc();
  v1[193] = swift_task_alloc();
  v1[194] = swift_task_alloc();
  v1[195] = swift_task_alloc();
  v1[196] = swift_task_alloc();
  v1[197] = swift_task_alloc();
  v1[198] = swift_task_alloc();
  v1[199] = swift_task_alloc();
  v1[200] = swift_task_alloc();
  v1[201] = swift_task_alloc();
  v1[202] = swift_task_alloc();
  v1[203] = swift_task_alloc();
  v1[204] = swift_task_alloc();
  v1[205] = swift_task_alloc();
  v1[206] = swift_task_alloc();
  v1[207] = swift_task_alloc();
  v1[208] = swift_task_alloc();
  v1[209] = swift_task_alloc();
  v1[210] = swift_task_alloc();
  v1[211] = swift_task_alloc();
  v1[212] = swift_task_alloc();
  v1[213] = swift_task_alloc();
  v1[214] = swift_task_alloc();
  v1[215] = swift_task_alloc();
  v1[216] = swift_task_alloc();
  v1[217] = swift_task_alloc();
  v1[218] = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

void sub_266C80338()
{
  v1 = *(v0 + 984);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0B8, &qword_266DAFCC0);
  v2 = sub_266DA80CC();
  *(v0 + 1752) = v2;
  v3 = sub_266DA80DC();
  *(v0 + 1760) = v3;
  if (qword_2800C93D8 != -1)
  {
    swift_once();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_2800E6498);
  v5 = v3;
  v6 = sub_266DA948C();
  v7 = sub_266DAAB0C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = [v5 unsupportedReason];

    OUTLINED_FUNCTION_115_0(&dword_266C08000, v9, v10, "FindDevice.UnsupportedValueStrategy.makeUnsupportedValueOutput() called with unsupportedReason: %ld");
    MEMORY[0x26D5F2480](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  v11 = [v5 alternatives];
  v12 = sub_266DAA93C();

  v13 = sub_266C3A9CC(v12);

  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v17 = sub_266C3A14C(v16, v14, v15);
  if (v17)
  {
    v18 = OUTLINED_FUNCTION_63();
    sub_266CB9F54(v18, v19, v16);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x26D5F1780](0, v16);
    }

    else
    {
      v20 = *(v16 + 32);
    }

    v21 = v20;
    v22 = sub_266CC7C44();

    v23 = 3;
    if (v22)
    {
      v23 = 6;
    }
  }

  else
  {
    v23 = 3;
  }

  *(v0 + 1768) = v23;
  v24 = *(v0 + 992);
  v25 = swift_task_alloc();
  *(v25 + 16) = v24;
  *(v0 + 1776) = sub_266D69880(sub_266C8DC14, v25, v16);

  v26 = [v2 deviceQuery];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 deviceOwner];

    if (v28)
    {
      v29 = [v28 isMe];

      v28 = v29 ^ 1;
    }
  }

  else
  {
    v28 = 0;
  }

  v30 = FindDeviceAndPlaySoundDevicesUnsupportedReason.init(rawValue:)([v5 unsupportedReason]);
  if (v31)
  {

    v32 = v5;
    v33 = sub_266DA948C();
    v34 = sub_266DAAAFC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      *(v35 + 4) = [v32 unsupportedReason];

      OUTLINED_FUNCTION_115_0(&dword_266C08000, v36, v37, "FindDevice.UnsupportedValueStrategy.makeUnsupportedValueOutput() called with unrecognized unsupported reason: %ld");
      MEMORY[0x26D5F2480](v35, -1, -1);
    }

    else
    {

      v33 = v32;
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    *(v0 + 2336) = v45;
    *v45 = v46;
    v47 = sub_266C8AB0C;
LABEL_29:
    v45[1] = v47;
    v48 = *(v0 + 992);
    OUTLINED_FUNCTION_62_0();
    OUTLINED_FUNCTION_49_2();

    sub_266C8C570(v49);
  }

  else
  {
    switch(v30)
    {
      case 1:
        v72 = *(v0 + 1744);
        v73 = *(v0 + 1736);
        OUTLINED_FUNCTION_96_0();

        *(v0 + 1784) = v2[11];
        OUTLINED_FUNCTION_43();
        __swift_storeEnumTagSinglePayload(v74, v75, v76, v28);
        *v73 = 5;
        OUTLINED_FUNCTION_53_2(xmmword_266DB27B0);
        OUTLINED_FUNCTION_74_0();
        *(v0 + 2353) = 1;
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
        OUTLINED_FUNCTION_7_7(v77);
        *(v0 + 1792) = sub_266DA93CC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
        v78 = OUTLINED_FUNCTION_101();
        *(v0 + 1800) = v78;
        *(v78 + 16) = xmmword_266DAE3B0;
        v79 = v2[10];
        v80 = swift_task_alloc();
        *(v0 + 1808) = v80;
        *v80 = v0;
        OUTLINED_FUNCTION_88_0(v80);
        OUTLINED_FUNCTION_49_2();

        sub_266D44CAC();
        return;
      case 2:
        v59 = *(v0 + 1488);
        v60 = *(v0 + 1480);
        OUTLINED_FUNCTION_96_0();

        *(v0 + 2216) = v2[11];
        OUTLINED_FUNCTION_43();
        __swift_storeEnumTagSinglePayload(v61, v62, v63, v28);
        *v60 = 5;
        OUTLINED_FUNCTION_53_2(xmmword_266DB27A0);
        OUTLINED_FUNCTION_74_0();
        *(v0 + 2357) = 1;
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
        OUTLINED_FUNCTION_7_7(v64);
        *(v0 + 2224) = sub_266DA93CC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
        v65 = OUTLINED_FUNCTION_101();
        *(v0 + 2232) = v65;
        *(v65 + 16) = xmmword_266DAE3B0;
        v66 = v2[10];
        v67 = swift_task_alloc();
        *(v0 + 2240) = v67;
        *v67 = v0;
        OUTLINED_FUNCTION_88_0(v67);
        OUTLINED_FUNCTION_49_2();

        sub_266D44C04();
        return;
      case 4:

        v69 = [v2 &off_279C034B0 + 3];
        if (v69)
        {
          v70 = v69;
          v71 = sub_266CAACE4(1, (*(v0 + 992) + 40));
        }

        else
        {
          v71 = 0;
        }

        *(v0 + 2128) = v71;
        v95 = *(*(v0 + 992) + 80);
        v96 = swift_task_alloc();
        *(v0 + 2136) = v96;
        *v96 = v0;
        OUTLINED_FUNCTION_88_0(v96);
        OUTLINED_FUNCTION_49_2();

        sub_266D44E78(v97, v98);
        return;
      case 6:

        v82 = [v2 &off_279C034B0 + 3];
        if (v82)
        {
          v83 = v82;
          v84 = sub_266CAACE4(0, (*(v0 + 992) + 40));
        }

        else
        {
          v84 = 0;
        }

        *(v0 + 1960) = v84;
        v100 = *(*(v0 + 992) + 80);
        v101 = swift_task_alloc();
        *(v0 + 1968) = v101;
        *v101 = v0;
        OUTLINED_FUNCTION_88_0(v101);
        OUTLINED_FUNCTION_49_2();

        sub_266D44D54(v102, v103);
        return;
      case 7:
        v85 = *(v0 + 1680);
        v86 = *(v0 + 1672);
        OUTLINED_FUNCTION_96_0();

        *(v0 + 1872) = v2[11];
        OUTLINED_FUNCTION_43();
        __swift_storeEnumTagSinglePayload(v87, v88, v89, v28);
        *v86 = 4;
        OUTLINED_FUNCTION_53_2(xmmword_266DB2290);
        OUTLINED_FUNCTION_74_0();
        *(v0 + 2354) = 1;
        v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
        OUTLINED_FUNCTION_7_7(v90);
        *(v0 + 1880) = sub_266DA93CC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
        v91 = OUTLINED_FUNCTION_101();
        *(v0 + 1888) = v91;
        *(v91 + 16) = xmmword_266DAE3B0;
        v92 = v2[10];
        v93 = swift_task_alloc();
        *(v0 + 1896) = v93;
        *v93 = v0;
        OUTLINED_FUNCTION_88_0(v93);
        OUTLINED_FUNCTION_49_2();

        sub_266D44F9C();
        return;
      case 8:
        v110 = *(*(v0 + 992) + 80);
        Array<A>.hasAirPods.getter(v16);
        v52 = 0;
        break;
      case 9:
      case 10:
        v38 = *(v0 + 992);

        v39 = __swift_project_boxed_opaque_existential_1((v38 + 96), *(v38 + 120));
        v40 = *v39;
        v41 = v39[1];
        swift_task_alloc();
        OUTLINED_FUNCTION_24_1();
        *(v0 + 2304) = v42;
        *v42 = v43;
        v42[1] = sub_266C8A2E0;
        OUTLINED_FUNCTION_62_0();
        OUTLINED_FUNCTION_49_2();

        sub_266CA23EC();
        return;
      default:

        swift_task_alloc();
        OUTLINED_FUNCTION_24_1();
        *(v0 + 2320) = v45;
        *v45 = v51;
        v47 = sub_266C8AA10;
        goto LABEL_29;
    }

    do
    {
      v53 = v52;
      if (v17 == v52)
      {
        break;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x26D5F1780](v52, v16);
      }

      else
      {
        if (v52 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v54 = *(v16 + 8 * v52 + 32);
      }

      v55 = v54;
      if (__OFADD__(v53, 1))
      {
        __break(1u);
LABEL_70:
        __break(1u);
        return;
      }

      v56 = [v54 byte_279C039B8];
      if (!v56)
      {

        break;
      }

      v57 = v56;
      v58 = [v56 isMe];

      v52 = v53 + 1;
    }

    while ((v58 & 1) != 0);

    v105 = swift_task_alloc();
    *(v0 + 2048) = v105;
    *v105 = v0;
    v105[1] = sub_266C85830;
    OUTLINED_FUNCTION_49_2();

    sub_266D44A04(v106, v107, v108);
  }
}

uint64_t sub_266C80E28()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 1808);
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[227] = v0;

  if (v0)
  {
    v11 = v5[218];
    OUTLINED_FUNCTION_84_0(v5[217]);
    v12 = OUTLINED_FUNCTION_32();
    sub_266C47654(v12, v13, &qword_266DB0080);
  }

  else
  {
    v5[228] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266C81428()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1840);
  v6 = *(v4 + 1800);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 616));
  __swift_destroy_boxed_opaque_existential_0((v2 + 216));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C81530()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_112_0();
  v4 = *(v0 + 1192);
  v5 = *(v0 + 1184);

  sub_266C477B4(v5);
  sub_266C477B4(v4);
  v6 = OUTLINED_FUNCTION_11_7();
  v7(v6);
  v8 = OUTLINED_FUNCTION_22_5();
  v9(v8);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v1, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v5, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C818D8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1848);
  v6 = *(v4 + 1800);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 416));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C819D8()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_112_0();
  v5 = *(v1 + 1176);

  sub_266C477B4(v5);
  v6 = OUTLINED_FUNCTION_11_7();
  v7(v6);
  v8 = OUTLINED_FUNCTION_22_5();
  v9(v8);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C81D74()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1856);
  v6 = *(v4 + 1800);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 816));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C81E74()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_112_0();
  v5 = *(v1 + 1168);

  sub_266C477B4(v5);
  v6 = OUTLINED_FUNCTION_11_7();
  v7(v6);
  v8 = OUTLINED_FUNCTION_22_5();
  v9(v8);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C82210()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 1864);
  v3 = *(v1 + 1800);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_266C82310()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_112_0();

  v4 = OUTLINED_FUNCTION_11_7();
  v5(v4);
  v6 = OUTLINED_FUNCTION_22_5();
  v7(v6);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v1, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C826A0()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 1896);
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[238] = v0;

  if (v0)
  {
    v11 = v5[210];
    OUTLINED_FUNCTION_84_0(v5[209]);
    v12 = OUTLINED_FUNCTION_32();
    sub_266C47654(v12, v13, &qword_266DB0080);
  }

  else
  {
    v5[239] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266C82CA0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1928);
  v6 = *(v4 + 1888);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  __swift_destroy_boxed_opaque_existential_0((v2 + 936));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C82DA8()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_103_0();
  v4 = *(v0 + 1160);
  v5 = *(v0 + 1152);

  sub_266C477B4(v5);
  sub_266C477B4(v4);
  v6 = OUTLINED_FUNCTION_9_6();
  v7(v6);
  v8 = OUTLINED_FUNCTION_22_5();
  v9(v8);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v1, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v5, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C83150()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1936);
  v6 = *(v4 + 1888);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 896));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C83250()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_103_0();
  v5 = *(v1 + 1144);

  sub_266C477B4(v5);
  v6 = OUTLINED_FUNCTION_9_6();
  v7(v6);
  v8 = OUTLINED_FUNCTION_22_5();
  v9(v8);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C835EC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1944);
  v6 = *(v4 + 1888);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 856));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C836EC()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_103_0();
  v5 = *(v1 + 1136);

  sub_266C477B4(v5);
  v6 = OUTLINED_FUNCTION_9_6();
  v7(v6);
  v8 = OUTLINED_FUNCTION_22_5();
  v9(v8);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C83A88()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 1952);
  v3 = *(v1 + 1888);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_266C83B88()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_103_0();

  v4 = OUTLINED_FUNCTION_9_6();
  v5(v4);
  v6 = OUTLINED_FUNCTION_22_5();
  v7(v6);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v1, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C83F18()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 1968);
  *v3 = *v1;
  *(v2 + 1976) = v6;
  *(v2 + 1984) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266C84578()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 2016);
  v6 = *(v4 + 2000);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 776));
  __swift_destroy_boxed_opaque_existential_0((v2 + 736));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C84680()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_111_0();
  v5 = *(v1 + 1128);
  v6 = *(v1 + 1120);

  sub_266C477B4(v6);
  sub_266C477B4(v5);
  v7 = OUTLINED_FUNCTION_6_16();
  v8(v7);
  v9 = OUTLINED_FUNCTION_24_4();
  v10(v9);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v3, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v2, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C84A38()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 2024);
  v6 = *(v4 + 2000);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 696));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C84B38()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_111_0();
  v5 = *(v1 + 1112);

  sub_266C477B4(v5);
  v6 = OUTLINED_FUNCTION_6_16();
  v7(v6);
  v8 = OUTLINED_FUNCTION_24_4();
  v9(v8);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v3, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v2, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C84EE4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 2032);
  v6 = *(v4 + 2000);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 656));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C84FE4()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_111_0();
  v5 = *(v1 + 1104);

  sub_266C477B4(v5);
  v6 = OUTLINED_FUNCTION_6_16();
  v7(v6);
  v8 = OUTLINED_FUNCTION_24_4();
  v9(v8);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v3, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v2, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C85390()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 2040);
  v3 = *(v1 + 2000);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_266C85490()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_111_0();

  v4 = OUTLINED_FUNCTION_6_16();
  v5(v4);
  v6 = OUTLINED_FUNCTION_24_4();
  v7(v6);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v1, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C85830()
{
  OUTLINED_FUNCTION_34();
  v2 = *v1;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *(v2 + 2048);
  v6 = *v1;
  OUTLINED_FUNCTION_21_1();
  *v7 = v6;
  *(v9 + 2056) = v8;
  *(v9 + 2064) = v0;

  v10 = *(v2 + 1776);

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266C85EB0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 2096);
  v6 = *(v4 + 2080);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 576));
  __swift_destroy_boxed_opaque_existential_0((v2 + 536));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C85FB8()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_109_0();
  v5 = *(v0 + 1096);
  v6 = *(v0 + 1088);

  sub_266C477B4(v6);
  sub_266C477B4(v5);
  v7 = OUTLINED_FUNCTION_7_11();
  v8(v7);
  v9 = *(v2 + 8);
  v10 = OUTLINED_FUNCTION_83();
  v11(v10);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v1, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v6, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C8636C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 2104);
  v6 = *(v4 + 2080);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 496));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C8646C()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_109_0();
  v6 = *(v1 + 1080);

  sub_266C477B4(v6);
  v7 = OUTLINED_FUNCTION_7_11();
  v8(v7);
  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_83();
  v11(v10);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C86814()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 2112);
  v6 = *(v4 + 2080);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 456));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C86914()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_109_0();
  v6 = *(v1 + 1072);

  sub_266C477B4(v6);
  v7 = OUTLINED_FUNCTION_7_11();
  v8(v7);
  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_83();
  v11(v10);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C86CBC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 2120);
  v3 = *(v1 + 2080);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_266C86DBC()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_109_0();

  v5 = OUTLINED_FUNCTION_7_11();
  v6(v5);
  v7 = *(v2 + 8);
  v8 = OUTLINED_FUNCTION_83();
  v9(v8);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v1, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C87158()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 2136);
  *v3 = *v1;
  *(v2 + 2144) = v6;
  *(v2 + 2152) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266C877B0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 2184);
  v6 = *(v4 + 2168);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 376));
  __swift_destroy_boxed_opaque_existential_0((v2 + 336));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C878B8()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_106_0();
  v5 = *(v1 + 1064);
  v6 = *(v1 + 1056);

  sub_266C477B4(v6);
  sub_266C477B4(v5);
  v7 = OUTLINED_FUNCTION_5_14();
  v8(v7);
  v9 = OUTLINED_FUNCTION_24_4();
  v10(v9);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v3, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v2, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C87C70()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 2192);
  v6 = *(v4 + 2168);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 296));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C87D70()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_106_0();
  v5 = *(v1 + 1048);

  sub_266C477B4(v5);
  v6 = OUTLINED_FUNCTION_5_14();
  v7(v6);
  v8 = OUTLINED_FUNCTION_24_4();
  v9(v8);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v3, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v2, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C8811C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 2200);
  v6 = *(v4 + 2168);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 256));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C8821C()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_106_0();
  v5 = *(v1 + 1040);

  sub_266C477B4(v5);
  v6 = OUTLINED_FUNCTION_5_14();
  v7(v6);
  v8 = OUTLINED_FUNCTION_24_4();
  v9(v8);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v3, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v2, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C885C8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 2208);
  v3 = *(v1 + 2168);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_266C886C8()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_106_0();

  v4 = OUTLINED_FUNCTION_5_14();
  v5(v4);
  v6 = OUTLINED_FUNCTION_24_4();
  v7(v6);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v1, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C88A68()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 2240);
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[281] = v0;

  if (v0)
  {
    v11 = v5[186];
    OUTLINED_FUNCTION_84_0(v5[185]);
    v12 = OUTLINED_FUNCTION_32();
    sub_266C47654(v12, v13, &qword_266DB0080);
  }

  else
  {
    v5[282] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266C89068()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 2272);
  v6 = *(v4 + 2232);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C89170()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_104_0();
  v4 = *(v0 + 1032);
  v5 = *(v0 + 1024);

  sub_266C477B4(v5);
  sub_266C477B4(v4);
  v6 = OUTLINED_FUNCTION_10_8();
  v7(v6);
  v8 = OUTLINED_FUNCTION_22_5();
  v9(v8);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v1, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v5, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C89518()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 2280);
  v6 = *(v4 + 2232);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C89618()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_104_0();
  v5 = *(v1 + 1016);

  sub_266C477B4(v5);
  v6 = OUTLINED_FUNCTION_10_8();
  v7(v6);
  v8 = OUTLINED_FUNCTION_22_5();
  v9(v8);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C899B4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 2288);
  v6 = *(v4 + 2232);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C89AB4()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_104_0();
  v5 = *(v1 + 1008);

  sub_266C477B4(v5);
  v6 = OUTLINED_FUNCTION_10_8();
  v7(v6);
  v8 = OUTLINED_FUNCTION_22_5();
  v9(v8);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C89E50()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 2296);
  v3 = *(v1 + 2232);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_266C89F50()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_104_0();

  v4 = OUTLINED_FUNCTION_10_8();
  v5(v4);
  v6 = OUTLINED_FUNCTION_22_5();
  v7(v6);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v1, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C8A2E0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 2304);
  v6 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;
  *(v8 + 2312) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C8A3DC()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_102_0();

  OUTLINED_FUNCTION_0_31();

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266C8A6F4()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_102_0();

  OUTLINED_FUNCTION_1_21(*(v1 + 2312));

  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C8AA10()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 2320);
  v6 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;
  *(v8 + 2328) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C8AB0C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 2336);
  v6 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;
  *(v8 + 2344) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C8AC08()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_102_0();

  OUTLINED_FUNCTION_1_21(*(v1 + 2344));

  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266C8AF24()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = v0[225];
  v2 = v0[224];
  v3 = v0[220];
  v4 = v0[219];

  *(v1 + 16) = 0;

  OUTLINED_FUNCTION_1_21(v0[227]);

  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266C8B260()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = v0[236];
  v2 = v0[235];
  v3 = v0[220];
  v4 = v0[219];

  *(v1 + 16) = 0;

  OUTLINED_FUNCTION_1_21(v0[238]);

  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266C8B59C()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 1960);
  v2 = *(v0 + 1752);

  OUTLINED_FUNCTION_1_21(*(v0 + 1984));

  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266C8B8CC()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_102_0();

  OUTLINED_FUNCTION_1_21(*(v1 + 2064));

  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266C8BBE8()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 2128);
  v2 = *(v0 + 1752);

  OUTLINED_FUNCTION_1_21(*(v0 + 2152));

  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266C8BF18()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = v0[279];
  v2 = v0[278];
  v3 = v0[220];
  v4 = v0[219];

  *(v1 + 16) = 0;

  OUTLINED_FUNCTION_1_21(v0[281]);

  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266C8C254()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_102_0();

  OUTLINED_FUNCTION_1_21(*(v1 + 2328));

  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C8C570(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = type metadata accessor for Snippets();
  v2[24] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v5 = sub_266DA80AC();
  v2[29] = v5;
  v6 = *(v5 - 8);
  v2[30] = v6;
  v7 = *(v6 + 64) + 15;
  v2[31] = swift_task_alloc();
  v8 = sub_266DA7C0C();
  v2[32] = v8;
  v9 = *(v8 - 8);
  v2[33] = v9;
  v10 = *(v9 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070) - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080) - 8);
  v2[38] = v13;
  v2[39] = *(v13 + 64);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266C8C81C, 0, 0);
}

uint64_t sub_266C8C81C()
{
  OUTLINED_FUNCTION_34();
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  *(v0 + 384) = *(v4 + 88);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v3);
  OUTLINED_FUNCTION_105_0();
  *(v2 + 8) = xmmword_266DB2290;
  *(v2 + 24) = 0;
  OUTLINED_FUNCTION_32();
  swift_storeEnumTagMultiPayload();
  v8 = OUTLINED_FUNCTION_57_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
  *(v0 + 472) = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
  OUTLINED_FUNCTION_7_7(v11);
  *(v0 + 392) = sub_266DA93CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v12 = OUTLINED_FUNCTION_101();
  *(v0 + 400) = v12;
  *(v12 + 16) = xmmword_266DAE3B0;
  v13 = *(v4 + 80);
  *(v0 + 473) = 3;
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 408) = v14;
  *v14 = v15;
  v14[1] = sub_266C8C960;

  return sub_266D945C8((v0 + 473), 0);
}

uint64_t sub_266C8C960()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 408);
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[52] = v0;

  if (v0)
  {
    v11 = v5[47];
    OUTLINED_FUNCTION_84_0(v5[46]);
    v12 = OUTLINED_FUNCTION_32();
    sub_266C47654(v12, v13, &qword_266DB0080);
  }

  else
  {
    v5[53] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266C8CF48()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 440);
  v6 = *(v4 + 400);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C8D050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_110_0();
  v26 = *(v22 + 216);
  v25 = *(v22 + 224);

  sub_266C477B4(v26);
  sub_266C477B4(v25);
  v27 = OUTLINED_FUNCTION_1_12();
  v28(v27);
  v29 = OUTLINED_FUNCTION_18_3();
  v30(v29);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_37();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266C8D1BC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 448);
  v6 = *(v4 + 400);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C8D2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_110_0();
  v25 = *(v22 + 208);

  sub_266C477B4(v25);
  v26 = OUTLINED_FUNCTION_1_12();
  v27(v26);
  v28 = OUTLINED_FUNCTION_18_3();
  v29(v28);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_37();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266C8D420()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *(v4 + 400);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C8D520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_110_0();
  v25 = *(v22 + 200);

  sub_266C477B4(v25);
  v26 = OUTLINED_FUNCTION_1_12();
  v27(v26);
  v28 = OUTLINED_FUNCTION_18_3();
  v29(v28);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_37();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266C8D684()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 464);
  v3 = *(v1 + 400);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266C8D784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_110_0();

  v24 = OUTLINED_FUNCTION_1_12();
  v25(v24);
  v26 = OUTLINED_FUNCTION_18_3();
  v27(v26);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_37();
  sub_266C47654(v22, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v23, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266C8D8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  v21 = v20[49];
  v22 = v20[50];
  v24 = v20[46];
  v23 = v20[47];
  v25 = v20[44];
  v26 = v20[45];
  v28 = v20[42];
  v27 = v20[43];
  v30 = v20[40];
  v29 = v20[41];
  v42 = v20[37];
  v43 = v20[36];
  v44 = v20[35];
  v45 = v20[34];
  v46 = v20[31];
  v47 = v20[28];
  v48 = v20[27];
  v49 = v20[26];
  v50 = v20[25];

  *(v22 + 16) = 0;

  v31 = v20[1];
  v32 = v20[52];
  OUTLINED_FUNCTION_39();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v42, v43, v44, v45, v46, v47, v48, v49, v50, a18, a19, a20);
}

uint64_t sub_266C8DA10(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_14_3();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_266C8DA38()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0B8, &qword_266DAFCC0);
  v2 = sub_266DA80CC();
  [v2 setDevices_];

  v3 = sub_266DA80CC();
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_266C8DAD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C7EB98;

  return sub_266C7FD90();
}

uint64_t sub_266C8DB80(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266C781A4;

  return sub_266C8DA10(a1);
}

uint64_t sub_266C8DC14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  result = sub_266CC7CC0((v4 + 40));
  *a2 = result;
  return result;
}

uint64_t objectdestroyTm_6()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;
  v11 = *(v0 + 16);

  v12 = (v0 + v9);
  v13 = type metadata accessor for Snippets();
  v14 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v14, v15, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v35 = v12[1];

        v36 = v12[3];

        v37 = type metadata accessor for Snippets.Contact();
        v38 = OUTLINED_FUNCTION_98(v37);
        OUTLINED_FUNCTION_8_0(v38);
        (*(v39 + 8))(&v2[v12]);
        v34 = v1[7];
        goto LABEL_35;
      case 1u:
      case 2u:
      case 3u:
        v16 = *v12;
        goto LABEL_36;
      case 4u:
        v21 = v12[1];

        v22 = v12[3];

        v23 = v12[5];

        v24 = v12[6];

        v12 = (v12 + *(type metadata accessor for Friend() + 40));
        v1 = type metadata accessor for FriendLocation();
        v25 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v25, v26, v1))
        {
          break;
        }

        v27 = v12[1];

        v28 = v1[8];
LABEL_23:
        v71 = v12 + v28;
        v1 = type metadata accessor for Location();
        v72 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v72, v73, v1))
        {
          v74 = v1[7];
          v75 = sub_266DA746C();
          OUTLINED_FUNCTION_8_0(v75);
          (*(v76 + 8))(&v71[v74]);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = &v71[v1[11]];
          v77 = type metadata accessor for Address();
          v78 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v78, v79, v77))
          {
            sub_266DA919C();
            v80 = OUTLINED_FUNCTION_109();
            v238 = v81;
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v80, v82, v81);
            if (!EnumTagSinglePayload)
            {
              OUTLINED_FUNCTION_20_2(EnumTagSinglePayload, v84, v85, v86, v87, v88, v89, v90, v235, v238);
              (*(v91 + 8))(v2);
            }

            OUTLINED_FUNCTION_70(v77[5]);
            OUTLINED_FUNCTION_70(v77[6]);
            v92 = OUTLINED_FUNCTION_70(v77[7]);
            v100 = OUTLINED_FUNCTION_115(v92, v93, v94, v95, v96, v97, v98, v99, v235, v238);
            if (!v100)
            {
              OUTLINED_FUNCTION_20_2(v100, v101, v102, v103, v104, v105, v106, v107, v235, v239);
              (*(v108 + 8))(v3 + v2);
            }

            OUTLINED_FUNCTION_70(v77[9]);
            OUTLINED_FUNCTION_70(v77[10]);
            OUTLINED_FUNCTION_70(v77[11]);
            v109 = *&v2[v77[12]];
          }

          v34 = v1[12];
LABEL_35:
          OUTLINED_FUNCTION_48(v34);
LABEL_36:
        }

        break;
      case 5u:
        v48 = v12[1];

        v49 = v12[3];

        v50 = v12[5];

        v51 = v12[6];

        v52 = v12 + *(type metadata accessor for Friend() + 40);
        v53 = type metadata accessor for FriendLocation();
        if (!OUTLINED_FUNCTION_66(v53))
        {
          v54 = *(v52 + 1);

          v55 = &v52[*(v2 + 8)];
          v56 = type metadata accessor for Location();
          if (!OUTLINED_FUNCTION_66(v56))
          {
            v57 = *(v2 + 7);
            v58 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v58);
            (*(v59 + 8))(&v55[v57]);
            OUTLINED_FUNCTION_21_0(*(v2 + 8));
            v60 = &v55[*(v2 + 11)];
            v3 = type metadata accessor for Address();
            if (!__swift_getEnumTagSinglePayload(v60, 1, v3))
            {
              v237 = sub_266DA919C();
              v61 = __swift_getEnumTagSinglePayload(v60, 1, v237);
              if (!v61)
              {
                OUTLINED_FUNCTION_20_2(v61, v62, v63, v64, v65, v66, v67, v68, v235, v237);
                (*(v69 + 8))(v60);
              }

              OUTLINED_FUNCTION_89(v3[5]);
              OUTLINED_FUNCTION_89(v3[6]);
              OUTLINED_FUNCTION_89(v3[7]);
              v235 = v3[8];
              if (!__swift_getEnumTagSinglePayload(v60 + v235, 1, v237))
              {
                (*(*(v237 - 8) + 8))(v60 + v235);
              }

              OUTLINED_FUNCTION_89(v3[9]);
              OUTLINED_FUNCTION_89(v3[10]);
              OUTLINED_FUNCTION_89(v3[11]);
              v70 = *(v60 + v3[12]);
            }

            OUTLINED_FUNCTION_21_0(*(v2 + 12));
          }
        }

        v28 = *(type metadata accessor for Snippets.CarPlayFriendLocation() + 20);
        goto LABEL_23;
      case 6u:
        v110 = v12[1];

        v111 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v112);
        }

        v113 = v12[8];

        v114 = v12[10];
        goto LABEL_36;
      case 7u:
        v40 = v12[1];

        v41 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v42);
        }

        v45 = v12[8];

        v46 = v12[10];

        v47 = v12[12];
        goto LABEL_36;
      case 8u:
        if ((v12[2] - 1) < 7)
        {
          break;
        }

        goto LABEL_36;
      case 9u:
        v29 = v12[1];

        v30 = v12[3];

        v31 = type metadata accessor for Snippets.Contact();
        v32 = OUTLINED_FUNCTION_98(v31);
        OUTLINED_FUNCTION_8_0(v32);
        (*(v33 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(v1[5]);

        v34 = v1[6];
        goto LABEL_35;
      case 0xAu:
        v115 = v12[1];

        v116 = v12[3];

        v117 = type metadata accessor for Snippets.Contact();
        v118 = OUTLINED_FUNCTION_98(v117);
        OUTLINED_FUNCTION_8_0(v118);
        (*(v119 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(v1[7]);

        v34 = v1[8];
        goto LABEL_35;
      case 0xBu:
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v17);
        (*(v18 + 8))(v12);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v2 = v1[5];
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v19);
        (*(v20 + 8))(&v2[v12]);
        if (*(v12 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_36;
      default:
        break;
    }
  }

  v120 = (v0 + v10);
  v121 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v121, v122, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v147 = *(v120 + 1);

        v148 = *(v120 + 3);

        v149 = type metadata accessor for Snippets.Contact();
        v150 = OUTLINED_FUNCTION_96(v149);
        OUTLINED_FUNCTION_8_0(v150);
        (*(v151 + 8))(v1 + v120);
        v146 = *(v13 + 28);
        goto LABEL_71;
      case 1u:
      case 2u:
      case 3u:
        v123 = *v120;
        goto LABEL_73;
      case 4u:
        v130 = *(v120 + 1);

        v131 = *(v120 + 3);

        v132 = *(v120 + 5);

        v133 = *(v120 + 6);

        v134 = &v120[*(type metadata accessor for Friend() + 40)];
        v135 = type metadata accessor for FriendLocation();
        v136 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v136, v137, v135))
        {
          break;
        }

        v138 = *(v134 + 1);

        v139 = &v134[*(v135 + 32)];
LABEL_59:
        v209 = type metadata accessor for Location();
        v210 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v210, v211, v209))
        {
          break;
        }

        v212 = v209[7];
        v213 = sub_266DA746C();
        OUTLINED_FUNCTION_8_0(v213);
        (*(v214 + 8))(&v139[v212]);
        v215 = *&v139[v209[8] + 8];

        v216 = &v139[v209[11]];
        v217 = type metadata accessor for Address();
        if (!OUTLINED_FUNCTION_66(v217))
        {
          v218 = sub_266DA919C();
          if (!__swift_getEnumTagSinglePayload(v216, 1, v218))
          {
            (*(*(v218 - 8) + 8))(v216, v218);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 5));
          OUTLINED_FUNCTION_21_0(*(v2 + 6));
          OUTLINED_FUNCTION_21_0(*(v2 + 7));
          v219 = *(v2 + 8);
          if (!__swift_getEnumTagSinglePayload(v216 + v219, 1, v218))
          {
            (*(*(v218 - 8) + 8))(v216 + v219, v218);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 9));
          OUTLINED_FUNCTION_21_0(*(v2 + 10));
          OUTLINED_FUNCTION_21_0(*(v2 + 11));
          v220 = *(v216 + *(v2 + 12));
        }

        v221 = &v139[v209[12]];
LABEL_72:
        v233 = *(v221 + 1);
LABEL_73:

        break;
      case 5u:
        v158 = *(v120 + 1);

        v159 = *(v120 + 3);

        v160 = *(v120 + 5);

        v161 = *(v120 + 6);

        v162 = &v120[*(type metadata accessor for Friend() + 40)];
        v163 = type metadata accessor for FriendLocation();
        v164 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v164, v165, v163))
        {
          v166 = *(v162 + 1);

          v167 = &v162[*(v163 + 32)];
          v168 = type metadata accessor for Location();
          v169 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v169, v170, v168))
          {
            v171 = v168[7];
            v172 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v172);
            (*(v173 + 8))(&v167[v171]);
            v174 = *&v167[v168[8] + 8];

            v2 = &v167[v168[11]];
            v175 = type metadata accessor for Address();
            v176 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v176, v177, v175))
            {
              sub_266DA919C();
              v178 = OUTLINED_FUNCTION_109();
              v240 = v179;
              v181 = __swift_getEnumTagSinglePayload(v178, v180, v179);
              if (!v181)
              {
                OUTLINED_FUNCTION_20_2(v181, v182, v183, v184, v185, v186, v187, v188, v235, v240);
                (*(v189 + 8))(v2);
              }

              OUTLINED_FUNCTION_70(v175[5]);
              OUTLINED_FUNCTION_70(v175[6]);
              v190 = OUTLINED_FUNCTION_70(v175[7]);
              v198 = OUTLINED_FUNCTION_115(v190, v191, v192, v193, v194, v195, v196, v197, v235, v240);
              if (!v198)
              {
                OUTLINED_FUNCTION_20_2(v198, v199, v200, v201, v202, v203, v204, v205, v236, v241);
                (*(v206 + 8))(v3 + v2);
              }

              OUTLINED_FUNCTION_70(v175[9]);
              OUTLINED_FUNCTION_70(v175[10]);
              OUTLINED_FUNCTION_70(v175[11]);
              v207 = *&v2[v175[12]];
            }

            v208 = *&v167[v168[12] + 8];
          }
        }

        v139 = &v120[*(type metadata accessor for Snippets.CarPlayFriendLocation() + 20)];
        goto LABEL_59;
      case 6u:
        v222 = *(v120 + 1);

        v223 = *(v120 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v120 + 5), v224);
        }

        v225 = *(v120 + 8);

        v226 = *(v120 + 10);
        goto LABEL_73;
      case 7u:
        v152 = *(v120 + 1);

        v153 = *(v120 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v120 + 5), v154);
        }

        v155 = *(v120 + 8);

        v156 = *(v120 + 10);

        v157 = *(v120 + 12);
        goto LABEL_73;
      case 8u:
        if ((*(v120 + 2) - 1) < 7)
        {
          break;
        }

        goto LABEL_73;
      case 9u:
        v140 = *(v120 + 1);

        v141 = *(v120 + 3);

        v142 = type metadata accessor for Snippets.Contact();
        v143 = OUTLINED_FUNCTION_96(v142);
        OUTLINED_FUNCTION_8_0(v143);
        (*(v144 + 8))(v1 + v120);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v145 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(*(v145 + 20));

        v146 = *(v145 + 24);
        goto LABEL_71;
      case 0xAu:
        v227 = *(v120 + 1);

        v228 = *(v120 + 3);

        v229 = type metadata accessor for Snippets.Contact();
        v230 = OUTLINED_FUNCTION_96(v229);
        OUTLINED_FUNCTION_8_0(v230);
        (*(v231 + 8))(v1 + v120);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v232 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(*(v232 + 28));

        v146 = *(v232 + 32);
LABEL_71:
        v221 = &v120[v146];
        goto LABEL_72;
      case 0xBu:
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v124);
        (*(v125 + 8))(v0 + v10);
        v126 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v127 = *(v126 + 20);
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v128);
        (*(v129 + 8))(&v120[v127]);
        if (*&v120[*(v126 + 24) + 16] == 1)
        {
          break;
        }

        goto LABEL_73;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

uint64_t OUTLINED_FUNCTION_0_31()
{
  v3 = v0[218];
  v4 = v0[217];
  v5 = v0[216];
  v6 = v0[215];
  v7 = v0[214];
  v8 = v0[213];
  v9 = v0[212];
  v10 = v0[211];
  v11 = v0[210];
  v12 = v0[209];
  v25 = v0[208];
  v26 = v0[207];
  v27 = v0[206];
  v28 = v0[205];
  v29 = v0[204];
  v30 = v0[203];
  v31 = v0[202];
  v32 = v0[201];
  v33 = v0[200];
  v34 = v0[199];
  v35 = v0[198];
  v36 = v0[197];
  v37 = v0[196];
  v38 = v0[195];
  v39 = v0[194];
  v40 = v0[193];
  v41 = v0[192];
  v42 = v0[191];
  v43 = v0[190];
  v44 = v0[189];
  v45 = v0[188];
  v46 = v0[187];
  v47 = v0[186];
  v48 = v0[185];
  v49 = v0[184];
  v50 = v0[183];
  v51 = v0[182];
  v52 = v0[181];
  v53 = v0[178];
  v54 = v0[177];
  v55 = v0[176];
  v56 = v0[175];
  v57 = v0[174];
  v58 = v0[173];
  v59 = v0[172];
  v60 = v0[171];
  v61 = v0[170];
  v62 = v0[169];
  v63 = v0[168];
  v64 = v0[167];
  v65 = v0[166];
  v66 = v0[165];
  v67 = v0[164];
  v68 = v0[163];
  v69 = v0[162];
  v70 = v0[161];
  v71 = v0[160];
  v72 = v0[157];
  v73 = v0[156];
  v74 = v0[155];
  v75 = v0[154];
  v76 = v0[153];
  v77 = v0[152];
  v78 = v0[149];
  v79 = v0[148];
  v13 = v0[146];
  *(v1 - 256) = v0[147];
  *(v1 - 248) = v13;
  v14 = v0[144];
  *(v1 - 240) = v0[145];
  *(v1 - 232) = v14;
  v15 = v0[142];
  *(v1 - 224) = v0[143];
  *(v1 - 216) = v15;
  v16 = v0[140];
  *(v1 - 208) = v0[141];
  *(v1 - 200) = v16;
  v17 = v0[138];
  *(v1 - 192) = v0[139];
  *(v1 - 184) = v17;
  v18 = v0[136];
  *(v1 - 176) = v0[137];
  *(v1 - 168) = v18;
  v19 = v0[134];
  *(v1 - 160) = v0[135];
  *(v1 - 152) = v19;
  v20 = v0[132];
  *(v1 - 144) = v0[133];
  *(v1 - 136) = v20;
  v21 = v0[130];
  *(v1 - 128) = v0[131];
  *(v1 - 120) = v21;
  v22 = v0[128];
  *(v1 - 112) = v0[129];
  *(v1 - 104) = v22;
  v23 = v0[126];
  *(v1 - 96) = v0[127];
  *(v1 - 88) = v23;
}

uint64_t OUTLINED_FUNCTION_1_21@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;
  v4 = v1[218];
  v5 = v1[217];
  v6 = v1[216];
  v7 = v1[215];
  v8 = v1[214];
  v9 = v1[213];
  v10 = v1[212];
  v11 = v1[211];
  v12 = v1[210];
  v13 = v1[209];
  v25 = v1[208];
  v26 = v1[207];
  v27 = v1[206];
  v28 = v1[205];
  v29 = v1[204];
  v30 = v1[203];
  v31 = v1[202];
  v32 = v1[201];
  v33 = v1[200];
  v34 = v1[199];
  v35 = v1[198];
  v36 = v1[197];
  v37 = v1[196];
  v38 = v1[195];
  v39 = v1[194];
  v40 = v1[193];
  v41 = v1[192];
  v42 = v1[191];
  v43 = v1[190];
  v44 = v1[189];
  v45 = v1[188];
  v46 = v1[187];
  v47 = v1[186];
  v48 = v1[185];
  v49 = v1[184];
  v50 = v1[183];
  v51 = v1[182];
  v52 = v1[181];
  v53 = v1[178];
  v54 = v1[177];
  v55 = v1[176];
  v56 = v1[175];
  v57 = v1[174];
  v58 = v1[173];
  v59 = v1[172];
  v60 = v1[171];
  v61 = v1[170];
  v62 = v1[169];
  v63 = v1[168];
  v64 = v1[167];
  v65 = v1[166];
  v66 = v1[165];
  v67 = v1[164];
  v68 = v1[163];
  v69 = v1[162];
  v70 = v1[161];
  v71 = v1[160];
  v72 = v1[157];
  v73 = v1[156];
  v74 = v1[155];
  v75 = v1[154];
  v76 = v1[153];
  v77 = v1[152];
  v78 = v1[149];
  v79 = v1[148];
  v80 = v1[147];
  v14 = v1[145];
  *(v2 - 256) = v1[146];
  *(v2 - 248) = v14;
  v15 = v1[143];
  *(v2 - 240) = v1[144];
  *(v2 - 232) = v15;
  v16 = v1[141];
  *(v2 - 224) = v1[142];
  *(v2 - 216) = v16;
  v17 = v1[139];
  *(v2 - 208) = v1[140];
  *(v2 - 200) = v17;
  v18 = v1[137];
  *(v2 - 192) = v1[138];
  *(v2 - 184) = v18;
  v19 = v1[135];
  *(v2 - 176) = v1[136];
  *(v2 - 168) = v19;
  v20 = v1[133];
  *(v2 - 160) = v1[134];
  *(v2 - 152) = v20;
  v21 = v1[131];
  *(v2 - 144) = v1[132];
  *(v2 - 136) = v21;
  v22 = v1[129];
  *(v2 - 128) = v1[130];
  *(v2 - 120) = v22;
  v23 = v1[127];
  *(v2 - 112) = v1[128];
  *(v2 - 104) = v23;
  *(v2 - 96) = v1[126];
}

uint64_t OUTLINED_FUNCTION_2_21(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a14;
  *(result + 48) = a17;
  *(result + 56) = a10;
  *(result + 64) = 514;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_19()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_14()
{
  v2 = v0[268];
  v3 = v0[266];
  v4 = v0[220];
  *(v1 - 96) = v0[219];
  *(v1 - 88) = v3;
  v5 = v0[192];
  v6 = v0[191];
  v7 = v0[174];
  v8 = v0[168];
  v9 = v0[161];
  v10 = v0[159];
  v11 = v0[158];
  result = v0[153];
  v13 = v0[150];
  v14 = *(v0[151] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_16()
{
  v2 = v0[247];
  v3 = v0[245];
  v4 = v0[220];
  *(v1 - 96) = v0[219];
  *(v1 - 88) = v3;
  v5 = v0[204];
  v6 = v0[203];
  v7 = v0[176];
  v8 = v0[170];
  v9 = v0[163];
  v10 = v0[159];
  v11 = v0[158];
  result = v0[155];
  v13 = v0[150];
  v14 = *(v0[151] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_11()
{
  v2 = v0[257];
  v3 = v0[220];
  *(v1 - 88) = v0[219];
  v4 = v0[198];
  v5 = v0[197];
  v6 = v0[175];
  v7 = v0[169];
  v8 = v0[162];
  v9 = v0[159];
  v10 = v0[158];
  result = v0[154];
  v12 = v0[150];
  v13 = *(v0[151] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_6()
{
  v1 = v0[220];
  v2 = v0[219];
  v3 = v0[210];
  v4 = v0[209];
  v5 = v0[177];
  v6 = v0[171];
  v7 = v0[164];
  v8 = v0[159];
  v9 = v0[158];
  result = v0[156];
  v11 = v0[150];
  v12 = *(v0[151] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_8()
{
  v1 = v0[220];
  v2 = v0[219];
  v3 = v0[186];
  v4 = v0[185];
  v5 = v0[173];
  v6 = v0[167];
  v7 = v0[160];
  v8 = v0[159];
  v9 = v0[158];
  result = v0[152];
  v11 = v0[150];
  v12 = *(v0[151] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_7()
{
  v1 = v0[220];
  v2 = v0[219];
  v3 = v0[218];
  v4 = v0[217];
  v5 = v0[178];
  v6 = v0[172];
  v7 = v0[166];
  v8 = v0[159];
  v9 = v0[158];
  result = v0[157];
  v11 = v0[150];
  v12 = *(v0[151] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_7()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_45_2()
{

  return sub_266C47654(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_46_1()
{

  return sub_266C47654(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_53_2(__n128 a1)
{
  *(v1 + 8) = a1;
  *(v1 + 24) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_68_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 1, a4);

  return sub_266DA7C7C();
}

uint64_t OUTLINED_FUNCTION_74_0()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_76_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(a1 + 16) = a19;

  return sub_266C475DC(v19, a1 + v20);
}

uint64_t OUTLINED_FUNCTION_77_0()
{
  *(v0 + 24) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_84_0(uint64_t a1)
{

  return sub_266C47654(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_87_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[279];
  v4 = v2[277];
  v5 = v2[152];
  return v2[122];
}

uint64_t OUTLINED_FUNCTION_89_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[225];
  v4 = v2[223];
  v5 = v2[157];
  return v2[122];
}

uint64_t OUTLINED_FUNCTION_90_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[50];
  v4 = v2[48];
  v5 = v2[31];
  return v2[22];
}

uint64_t OUTLINED_FUNCTION_91_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[236];
  v4 = v2[234];
  v5 = v2[156];
  return v2[122];
}

uint64_t OUTLINED_FUNCTION_95_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;

  return sub_266DA7E5C();
}

uint64_t OUTLINED_FUNCTION_96_0()
{
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
}

uint64_t OUTLINED_FUNCTION_99_0(uint64_t a1)
{
  v4 = *(v2 + 1000);

  return sub_266C476A8(a1, v1);
}

uint64_t OUTLINED_FUNCTION_100_0(uint64_t a1)
{
  v4 = *(v2 + 1000);

  return sub_266C476A8(a1, v1);
}

void OUTLINED_FUNCTION_102_0()
{
  v2 = *(v0 + 1760);
  v3 = *(v0 + 1752);
}

uint64_t OUTLINED_FUNCTION_113_0(uint64_t a1)
{
  v5 = *(v1 + 1000);

  return sub_266C4756C(a1, v2);
}

void OUTLINED_FUNCTION_115_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_116_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 32) = a1;

  return sub_266DA7E5C();
}

uint64_t OUTLINED_FUNCTION_118(uint64_t a1)
{

  return sub_266C475DC(v2, a1 + v1);
}

uint64_t sub_266C8F304(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x616E6F6974617473 && a2 == 0xEA00000000007972;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E696B6C6177 && a2 == 0xE700000000000000;
      if (v7 || (sub_266DAB17C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E696E6E7572 && a2 == 0xE700000000000000;
        if (v8 || (sub_266DAB17C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x676E696C637963 && a2 == 0xE700000000000000;
          if (v9 || (sub_266DAB17C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x69746F6D6F747561 && a2 == 0xEA00000000006576)
          {

            return 5;
          }

          else
          {
            v11 = sub_266DAB17C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_266C8F500(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      return 0x616E6F6974617473;
    case 2:
      v3 = 1802264951;
      goto LABEL_6;
    case 3:
      v3 = 1852732786;
      goto LABEL_6;
    case 4:
      v3 = 1818458467;
LABEL_6:
      result = v3 | 0x676E6900000000;
      break;
    case 5:
      result = 0x69746F6D6F747561;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266C8F5A0(uint64_t a1)
{
  v2 = sub_266C8FE58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C8F5DC(uint64_t a1)
{
  v2 = sub_266C8FE58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C8F620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266C8F304(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266C8F648(uint64_t a1)
{
  v2 = sub_266C8FE04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C8F684(uint64_t a1)
{
  v2 = sub_266C8FE04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C8F6C0(uint64_t a1)
{
  v2 = sub_266C8FEAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C8F6FC(uint64_t a1)
{
  v2 = sub_266C8FEAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C8F738(uint64_t a1)
{
  v2 = sub_266C8FF00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C8F774(uint64_t a1)
{
  v2 = sub_266C8FF00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C8F7B0(uint64_t a1)
{
  v2 = sub_266C8FFA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C8F7EC(uint64_t a1)
{
  v2 = sub_266C8FFA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C8F828(uint64_t a1)
{
  v2 = sub_266C8FFFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C8F864(uint64_t a1)
{
  v2 = sub_266C8FFFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C8F8A0(uint64_t a1)
{
  v2 = sub_266C8FF54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C8F8DC(uint64_t a1)
{
  v2 = sub_266C8FF54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MotionActivityState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAC40, &qword_266DB28B0);
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v73 = v5;
  v74 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10();
  v72 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAC48, &qword_266DB28B8);
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v70 = v12;
  v71 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10();
  v69 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAC50, &qword_266DB28C0);
  v18 = OUTLINED_FUNCTION_0_2(v17);
  v67 = v19;
  v68 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10();
  v66 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAC58, &qword_266DB28C8);
  v25 = OUTLINED_FUNCTION_0_2(v24);
  v64 = v26;
  v65 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_10();
  v63 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAC60, &qword_266DB28D0);
  v32 = OUTLINED_FUNCTION_0_2(v31);
  v61 = v33;
  v62 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v36);
  v38 = &v59 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAC68, &qword_266DB28D8);
  v40 = OUTLINED_FUNCTION_0_2(v39);
  v59 = v41;
  v60 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v44);
  v46 = &v59 - v45;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAC70, &qword_266DB28E0);
  OUTLINED_FUNCTION_0_2(v75);
  v48 = v47;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v51);
  v53 = &v59 - v52;
  v54 = *v1;
  v55 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266C8FE04();
  sub_266DAB36C();
  switch(v54)
  {
    case 1:
      v77 = 1;
      sub_266C8FFA8();
      v54 = v75;
      sub_266DAB08C();
      (*(v61 + 8))(v38, v62);
      return (*(v48 + 8))(v53, v54);
    case 2:
      v78 = 2;
      sub_266C8FF54();
      v46 = v63;
      OUTLINED_FUNCTION_1_22();
      v57 = v64;
      v56 = v65;
      goto LABEL_8;
    case 3:
      v79 = 3;
      sub_266C8FF00();
      v46 = v66;
      OUTLINED_FUNCTION_1_22();
      v57 = v67;
      v56 = v68;
      goto LABEL_8;
    case 4:
      v80 = 4;
      sub_266C8FEAC();
      v46 = v69;
      OUTLINED_FUNCTION_1_22();
      v57 = v70;
      v56 = v71;
      goto LABEL_8;
    case 5:
      v81 = 5;
      sub_266C8FE58();
      v46 = v72;
      OUTLINED_FUNCTION_1_22();
      v57 = v73;
      v56 = v74;
      goto LABEL_8;
    default:
      v76 = 0;
      sub_266C8FFFC();
      OUTLINED_FUNCTION_1_22();
      v57 = v59;
      v56 = v60;
LABEL_8:
      (*(v57 + 8))(v46, v56);
      return (*(v48 + 8))(v53, v54);
  }
}

unint64_t sub_266C8FE04()
{
  result = qword_2800CAC78;
  if (!qword_2800CAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAC78);
  }

  return result;
}

unint64_t sub_266C8FE58()
{
  result = qword_2800CAC80;
  if (!qword_2800CAC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAC80);
  }

  return result;
}

unint64_t sub_266C8FEAC()
{
  result = qword_2800CAC88;
  if (!qword_2800CAC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAC88);
  }

  return result;
}

unint64_t sub_266C8FF00()
{
  result = qword_2800CAC90;
  if (!qword_2800CAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAC90);
  }

  return result;
}

unint64_t sub_266C8FF54()
{
  result = qword_2800CAC98;
  if (!qword_2800CAC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAC98);
  }

  return result;
}

unint64_t sub_266C8FFA8()
{
  result = qword_2800CACA0;
  if (!qword_2800CACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CACA0);
  }

  return result;
}

unint64_t sub_266C8FFFC()
{
  result = qword_2800CACA8;
  if (!qword_2800CACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CACA8);
  }

  return result;
}

uint64_t MotionActivityState.hashValue.getter()
{
  v1 = *v0;
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](v1);
  return sub_266DAB2DC();
}

uint64_t MotionActivityState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v99 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CACB0, &qword_266DB28E8);
  v95 = OUTLINED_FUNCTION_0_2(v3);
  v96 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10();
  v97 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CACB8, &qword_266DB28F0);
  v93 = OUTLINED_FUNCTION_0_2(v9);
  v94 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10();
  v102 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CACC0, &qword_266DB28F8);
  v16 = OUTLINED_FUNCTION_0_2(v15);
  v91 = v17;
  v92 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10();
  v98 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CACC8, &qword_266DB2900);
  v23 = OUTLINED_FUNCTION_0_2(v22);
  v89 = v24;
  v90 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10();
  v101 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CACD0, &qword_266DB2908);
  v30 = OUTLINED_FUNCTION_0_2(v29);
  v87 = v31;
  v88 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v34);
  v36 = &v81 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CACD8, &qword_266DB2910);
  OUTLINED_FUNCTION_0_2(v37);
  v86 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v41);
  v43 = &v81 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CACE0, &unk_266DB2918);
  OUTLINED_FUNCTION_0_2(v44);
  v100 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v48);
  v50 = &v81 - v49;
  v51 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266C8FE04();
  v52 = v103;
  sub_266DAB34C();
  v103 = v52;
  if (v52)
  {
LABEL_12:
    v77 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v77);
  }

  v82 = v43;
  v81 = v37;
  v83 = v36;
  v84 = a1;
  v53 = v101;
  v54 = v102;
  v55 = v100;
  v85 = v50;
  v56 = sub_266DAB06C();
  result = sub_266C1E2FC(v56, 0);
  v61 = v44;
  if (v59 == v60 >> 1)
  {
    v62 = v55;
LABEL_10:
    v71 = sub_266DAAE4C();
    v72 = swift_allocError();
    v74 = v73;
    v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9908, &qword_266DAD8C0) + 48);
    *v74 = &type metadata for MotionActivityState;
    v76 = v85;
    sub_266DAAFBC();
    sub_266DAAE3C();
    (*(*(v71 - 8) + 104))(v74, *MEMORY[0x277D84160], v71);
    v103 = v72;
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v62 + 8))(v76, v61);
LABEL_11:
    a1 = v84;
    goto LABEL_12;
  }

  if (v59 < (v60 >> 1))
  {
    v63 = *(v58 + v59);
    sub_266C1E2EC(v59 + 1);
    v65 = v64;
    v67 = v66;
    swift_unknownObjectRelease();
    if (v65 == v67 >> 1)
    {
      v68 = v99;
      v69 = v85;
      switch(v63)
      {
        case 1:
          v105 = 1;
          sub_266C8FFA8();
          v53 = v83;
          OUTLINED_FUNCTION_2_22();
          v103 = 0;
          swift_unknownObjectRelease();
          v80 = v87;
          v79 = v88;
          goto LABEL_25;
        case 2:
          v106 = 2;
          sub_266C8FF54();
          OUTLINED_FUNCTION_2_22();
          v103 = 0;
          swift_unknownObjectRelease();
          v80 = v89;
          v79 = v90;
          goto LABEL_25;
        case 3:
          v107 = 3;
          sub_266C8FF00();
          v53 = v98;
          OUTLINED_FUNCTION_2_22();
          v103 = 0;
          swift_unknownObjectRelease();
          v80 = v91;
          v79 = v92;
          goto LABEL_25;
        case 4:
          v108 = 4;
          sub_266C8FEAC();
          v78 = v103;
          sub_266DAAFAC();
          v103 = v78;
          if (v78)
          {
            (*(v55 + 8))(v69, v44);
            swift_unknownObjectRelease();
            goto LABEL_11;
          }

          swift_unknownObjectRelease();
          (*(v94 + 8))(v54, v93);
LABEL_26:
          (*(v55 + 8))(v69, v44);
          *v68 = v63;
          v77 = v84;
          break;
        case 5:
          v109 = 5;
          sub_266C8FE58();
          v53 = v97;
          OUTLINED_FUNCTION_2_22();
          v103 = 0;
          swift_unknownObjectRelease();
          v79 = v95;
          v80 = v96;
LABEL_25:
          (*(v80 + 8))(v53, v79);
          goto LABEL_26;
        default:
          v104 = 0;
          sub_266C8FFFC();
          v70 = v82;
          OUTLINED_FUNCTION_2_22();
          v103 = 0;
          swift_unknownObjectRelease();
          (*(v86 + 8))(v70, v81);
          goto LABEL_26;
      }

      return __swift_destroy_boxed_opaque_existential_0(v77);
    }

    v62 = v55;
    v61 = v44;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t MotionActivityState.init(_:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_266C90854()
{
  result = qword_2800CACE8;
  if (!qword_2800CACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CACE8);
  }

  return result;
}

_BYTE *sub_266C908B8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266C909F8()
{
  result = qword_2800CACF0;
  if (!qword_2800CACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CACF0);
  }

  return result;
}

unint64_t sub_266C90A50()
{
  result = qword_2800CACF8;
  if (!qword_2800CACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CACF8);
  }

  return result;
}

unint64_t sub_266C90AA8()
{
  result = qword_2800CAD00;
  if (!qword_2800CAD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAD00);
  }

  return result;
}

unint64_t sub_266C90B00()
{
  result = qword_2800CAD08;
  if (!qword_2800CAD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAD08);
  }

  return result;
}

unint64_t sub_266C90B58()
{
  result = qword_2800CAD10;
  if (!qword_2800CAD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAD10);
  }

  return result;
}

unint64_t sub_266C90BB0()
{
  result = qword_2800CAD18;
  if (!qword_2800CAD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAD18);
  }

  return result;
}

unint64_t sub_266C90C08()
{
  result = qword_2800CAD20;
  if (!qword_2800CAD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAD20);
  }

  return result;
}

unint64_t sub_266C90C60()
{
  result = qword_2800CAD28;
  if (!qword_2800CAD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAD28);
  }

  return result;
}

unint64_t sub_266C90CB8()
{
  result = qword_2800CAD30;
  if (!qword_2800CAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAD30);
  }

  return result;
}

unint64_t sub_266C90D10()
{
  result = qword_2800CAD38;
  if (!qword_2800CAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAD38);
  }

  return result;
}

unint64_t sub_266C90D68()
{
  result = qword_2800CAD40;
  if (!qword_2800CAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAD40);
  }

  return result;
}

unint64_t sub_266C90DC0()
{
  result = qword_2800CAD48;
  if (!qword_2800CAD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAD48);
  }

  return result;
}

unint64_t sub_266C90E18()
{
  result = qword_2800CAD50;
  if (!qword_2800CAD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAD50);
  }

  return result;
}

unint64_t sub_266C90E70()
{
  result = qword_2800CAD58;
  if (!qword_2800CAD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAD58);
  }

  return result;
}

unint64_t sub_266C90EC8()
{
  result = qword_2800CAD60;
  if (!qword_2800CAD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAD60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_22()
{
  v2 = *(v0 - 96);

  return sub_266DAB08C();
}

uint64_t OUTLINED_FUNCTION_2_22()
{
  v2 = *(v0 - 96);

  return sub_266DAAFAC();
}

uint64_t sub_266C90F68()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_266C90FB8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_266C90FF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}