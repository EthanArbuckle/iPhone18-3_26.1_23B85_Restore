uint64_t sub_266D025AC()
{
  OUTLINED_FUNCTION_22_0();
  v1[20] = v2;
  v1[21] = v0;
  v1[19] = v3;
  v4 = sub_266DA750C();
  v1[22] = v4;
  v5 = *(v4 - 8);
  v1[23] = v5;
  v6 = *(v5 + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D0266C, 0, 0);
}

uint64_t sub_266D0266C()
{
  v36 = v0;
  if (qword_2800C9430 != -1)
  {
    OUTLINED_FUNCTION_3_36();
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, qword_2800E64F0);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266C08000, v2, v3, "FindFriend.FlowStrategy.makeIntentFromParse() called", v4, 2u);
    OUTLINED_FUNCTION_33_6();
  }

  v5 = *(v0 + 168);
  v6 = *(v0 + 152);

  sub_266CD6764(v6, v0 + 16);
  sub_266C744CC(v0 + 16, v0 + 64, &qword_2800CA870, &qword_266DB1F08);
  if (*(v0 + 104))
  {
    if (*(v0 + 104) == 255)
    {
      sub_266C3A088(v0 + 64, &qword_2800CA870, &qword_266DB1F08);
    }

    else
    {
      sub_266C6F308(v0 + 64);
    }

    v10 = *(v0 + 192);
    sub_266D0350C();
    swift_allocError();
    *v11 = 1;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 2;
    swift_willThrow();
    sub_266C3A088(v0 + 16, &qword_2800CA870, &qword_266DB1F08);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v7 = *(v0 + 160);
    sub_266C0B0D8((v0 + 64), v0 + 112);
    v8 = *(v0 + 160);
    if (v7)
    {
      v9 = *(v0 + 160);
    }

    else
    {
      v9 = [objc_allocWithZone(type metadata accessor for FindFriendIntent()) init];
    }

    v15 = *(v0 + 184);
    v14 = *(v0 + 192);
    v16 = *(v0 + 168);
    v34 = *(v0 + 176);
    v17 = v16[5];
    __swift_project_boxed_opaque_existential_1(v16 + 1, v16[4]);
    v18 = v8;
    sub_266DA7AFC();
    v19 = __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));
    v20 = __swift_project_boxed_opaque_existential_1(v16 + 6, v16[9]);
    sub_266D03CD8(v19, v20, v14, v9);
    (*(v15 + 8))(v14, v34);
    v21 = v9;
    v22 = sub_266DA948C();
    v23 = sub_266DAAB0C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_14_0();
      v25 = OUTLINED_FUNCTION_13_0();
      v35 = v25;
      *v24 = 136315138;
      v26 = v21;
      v27 = [v26 description];
      v28 = sub_266DAA70C();
      v30 = v29;

      v31 = sub_266C22A3C(v28, v30, &v35);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_266C08000, v22, v23, "FindFriend Intent created: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_33_6();
    }

    sub_266C3A088(v0 + 16, &qword_2800CA870, &qword_266DB1F08);
    __swift_destroy_boxed_opaque_existential_0((v0 + 112));
    v32 = *(v0 + 192);

    OUTLINED_FUNCTION_43_4();

    return v33(v21);
  }
}

uint64_t sub_266D02A48()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_266DA7A4C();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D02B08, 0, 0);
}

uint64_t sub_266D02B08()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = **(v0 + 32);
  type metadata accessor for FindFriendIntent();

  v7 = v6;
  v8 = v5;
  sub_266DA7A3C();
  sub_266DA7A9C();
  v9 = sub_266DA7A8C();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43_4();

  return v10(v9);
}

uint64_t sub_266D02BFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266D02CA0;

  return sub_266D025AC();
}

uint64_t sub_266D02CA0()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;

  OUTLINED_FUNCTION_43_4();
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_266D02D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5BF48] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266D03FC0;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_266D02E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B498] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_266D03FC0;

  return MEMORY[0x2821B9D90](a1, a2, a3, a4, a5);
}

uint64_t sub_266D02F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B490] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_266D03FC0;

  return MEMORY[0x2821B9D88](a1, a2, a3, a4, a5);
}

uint64_t sub_266D02FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B488] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_266D03FC0;

  return MEMORY[0x2821B9D80](a1, a2, a3, a4, a5);
}

uint64_t sub_266D030BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5B480] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_266CE81BC;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_266D03198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5B6D8] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_266D03FC0;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_266D03274()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266D03318;

  return sub_266D02A48();
}

uint64_t sub_266D03318()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  OUTLINED_FUNCTION_43_4();

  return v6(v2);
}

unint64_t sub_266D03408()
{
  result = qword_2800CC9D8;
  if (!qword_2800CC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC9D8);
  }

  return result;
}

unint64_t sub_266D03460()
{
  result = qword_2800CC9E0;
  if (!qword_2800CC9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC9E0);
  }

  return result;
}

unint64_t sub_266D034B8()
{
  result = qword_2800CC9E8;
  if (!qword_2800CC9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC9E8);
  }

  return result;
}

unint64_t sub_266D0350C()
{
  result = qword_2800CC9F0;
  if (!qword_2800CC9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC9F0);
  }

  return result;
}

id sub_266D03560(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v80 = a3;
  v7 = sub_266DA8D1C();
  v8 = OUTLINED_FUNCTION_0_2(v7);
  v82 = v9;
  v83 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_6();
  v81 = v13 - v12;
  v14 = sub_266DA8D6C();
  v15 = OUTLINED_FUNCTION_0_2(v14);
  v78 = v16;
  v79 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_6();
  v77 = v20 - v19;
  v21 = sub_266DA8D5C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_0_6();
  v74 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC9F8, &qword_266DB7948);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v73 = v71 - v27;
  v72 = sub_266DA750C();
  v28 = OUTLINED_FUNCTION_0_2(v72);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_0_6();
  v35 = v34 - v33;
  v36 = sub_266DA8D3C();
  v37 = OUTLINED_FUNCTION_0_2(v36);
  v75 = v38;
  v76 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_0_6();
  v43 = v42 - v41;
  v44 = sub_266DA8C4C();
  v85 = v44;
  v86 = &off_28785D468;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v84);
  (*(*(v44 - 8) + 16))(boxed_opaque_existential_1, a2, v44);
  v71[2] = __swift_project_boxed_opaque_existential_1(v84, v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCA00, &qword_266DB7950);
  v46 = sub_266DA8D0C();
  OUTLINED_FUNCTION_0_2(v46);
  v48 = v47;
  v50 = *(v49 + 72);
  v51 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_266DAE4A0;
  (*(v48 + 16))(v52 + v51, a4, v46);
  v53 = sub_266C1CEB4(a1);
  if (v54)
  {
    v55 = v53;
  }

  else
  {
    v55 = 0;
  }

  v71[1] = v55;
  v56 = [a1 typeName];
  sub_266DAA70C();

  (*(v30 + 16))(v35, v80, v72);
  v57 = sub_266DA8D9C();
  __swift_storeEnumTagSinglePayload(v73, 1, 1, v57);
  sub_266DA8D4C();
  (*(v78 + 104))(v77, *MEMORY[0x277D56148], v79);
  (*(v82 + 104))(v81, *MEMORY[0x277D560D0], v83);
  sub_266DA8D2C();
  v58 = sub_266DA8C2C();
  (*(v75 + 8))(v43, v76);

  if (sub_266C3A14C(v58, v59, v60) == 1 && sub_266C3A14C(v58, v61, v62))
  {
    sub_266CB9F54(0, (v58 & 0xC000000000000001) == 0, v58);
    if ((v58 & 0xC000000000000001) != 0)
    {
      v63 = MEMORY[0x26D5F1780](0, v58);
    }

    else
    {
      v63 = *(v58 + 32);
    }

    v64 = v63;
  }

  else
  {
    if (qword_2800C9190 != -1)
    {
      OUTLINED_FUNCTION_2_41();
    }

    v65 = sub_266DA94AC();
    __swift_project_value_buffer(v65, qword_2800CA010);

    v66 = sub_266DA948C();
    v67 = sub_266DAAAFC();
    if (OUTLINED_FUNCTION_16_0(v67))
    {
      v68 = OUTLINED_FUNCTION_14_0();
      *v68 = 134217984;
      if (v58 >> 62)
      {
        v69 = sub_266DAAD5C();
      }

      else
      {
        v69 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v68 + 4) = v69;

      _os_log_impl(&dword_266C08000, v66, v67, "Contact resolver created %ld skeletons when exactly 1 is expected.", v68, 0xCu);
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v64 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v84);
  return v64;
}

uint64_t sub_266D03CD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8C8, &unk_266DB2130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800C95E0, &unk_266DAE370);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v26 - v14;
  FriendIntentWrapper = type metadata accessor for FindFriendIntentWrapper();
  v31 = &off_28785D820;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  sub_266D03F5C(a1, boxed_opaque_existential_1);
  v17 = sub_266DA8C4C();
  v27 = v17;
  v28 = &off_28785D468;
  v18 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(v17 - 8) + 16))(v18, a2, v17);
  v19 = __swift_project_boxed_opaque_existential_1(v29, FriendIntentWrapper);
  sub_266C744CC(v19, v15, &unk_2800C95E0, &unk_266DAE370);
  v20 = sub_266DA8D0C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v20) == 1)
  {
    sub_266C3A088(v15, &unk_2800C95E0, &unk_266DAE370);
LABEL_5:
    v24 = 0;
    goto LABEL_6;
  }

  v21 = __swift_project_boxed_opaque_existential_1(v26, v27);
  v22 = sub_266D03560(a4, v21, a3, v15);
  (*(*(v20 - 8) + 8))(v15, v20);
  if (!v22)
  {
    goto LABEL_5;
  }

  type metadata accessor for INFriend();
  v23 = type metadata accessor for Friend();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v23);
  v24 = sub_266C6FCE0(v22, v11);
LABEL_6:
  [a4 setFriend_];

  __swift_destroy_boxed_opaque_existential_0(v29);
  return __swift_destroy_boxed_opaque_existential_0(v26);
}

uint64_t sub_266D03F5C(uint64_t a1, uint64_t a2)
{
  FriendIntentWrapper = type metadata accessor for FindFriendIntentWrapper();
  (*(*(FriendIntentWrapper - 8) + 16))(a2, a1, FriendIntentWrapper);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_36()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_16()
{

  return sub_266C3A088(v2 - 184, v0, v1);
}

void OUTLINED_FUNCTION_12_18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_13_17()
{

  return sub_266C744CC(v2 - 184, v2 - 240, v0, v1);
}

uint64_t sub_266D04068(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_266D040A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266D04108(uint64_t a1, uint64_t a2, unint64_t a3)
{
  Array<A>.getDisplayHints(idNode:referenceNode:)();
  sub_266D04210(a1, a2, a3);
  sub_266CC4C74();
  sub_266CC4FB8();

  v7 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v9 = *v7;
  v10 = v7[1];
  v11 = v7[2];
  v12 = v7[3];
  sub_266CC0DAC();
}

uint64_t sub_266D04210(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v22 = a3;
  v23 = sub_266DA835C();
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v23);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_266DA838C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  sub_266DA837C();
  v29 = MEMORY[0x277D84F90];
  v25 = a1;
  v26 = a2;
  v27 = v21[1];
  v28 = &v29;
  sub_266CB9F3C(sub_266D0479C, v24, v22);
  sub_266DA836C();
  sub_266DA834C();
  (*(v10 + 16))(v14, v16, v9);
  sub_266DA832C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7B8, &unk_266DB79E0);
  v17 = *(v5 + 72);
  v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_266DAE4A0;
  (*(v5 + 32))(v19 + v18, v8, v23);
  (*(v10 + 8))(v16, v9);
  return v19;
}

uint64_t sub_266D0447C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v31 = a5;
  v29 = a4;
  v32 = sub_266DA82EC();
  v6 = *(v32 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v32);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = sub_266DA824C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_266DA831C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v29 - v20;
  v22 = *a1;
  sub_266DA830C();
  type metadata accessor for FindFriendIntent();
  if (swift_dynamicCastClass())
  {
    sub_266D047BC(v22);
LABEL_5:
    sub_266DA82FC();
    goto LABEL_6;
  }

  type metadata accessor for SetGeoFenceIntent();
  if (swift_dynamicCastClass())
  {
    sub_266D048FC(v22);
    goto LABEL_5;
  }

LABEL_6:
  sub_266DA82DC();
  (*(v15 + 16))(v19, v21, v14);
  sub_266DA82BC();
  v23 = v30;
  v24 = v32;
  (*(v6 + 16))(v30, v11, v32);
  v25 = v31;
  sub_266C386B0();
  v26 = *(*v25 + 16);
  sub_266C3873C(v26);
  (*(v6 + 8))(v11, v24);
  (*(v15 + 8))(v21, v14);
  v27 = *v25;
  *(v27 + 16) = v26 + 1;
  return (*(v6 + 32))(v27 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26, v23, v24);
}

uint64_t sub_266D047BC(void *a1)
{
  v2 = sub_266DA8B2C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_266DA8B1C();
  v6 = sub_266DA895C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_266DA894C();
  v9 = [a1 displayName];
  sub_266DAA70C();

  sub_266DA893C();

  sub_266DA89FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_266DAE3B0;
  *(v10 + 32) = v5;

  sub_266D04A98(v10);
}

uint64_t sub_266D048FC(void *a1)
{
  v2 = sub_266DA8BAC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_266DA8B9C();
  v6 = sub_266DA8A5C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_266DA8A4C();
  v9 = sub_266DA895C();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_266DA894C();
  v12 = [a1 displayName];
  sub_266DAA70C();

  sub_266DA893C();

  sub_266DA8A3C();

  sub_266DA8B6C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_266DAE3B0;
  *(v13 + 32) = v5;

  sub_266D04A98(v13);
}

uint64_t sub_266D04A98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7E8, &unk_266DB79F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  v6 = sub_266DA86BC();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  MEMORY[0x26D5EEFB0](a1, v5);
  sub_266D04C1C(v5);
  sub_266DA83DC();
}

uint64_t sub_266D04C1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7E8, &unk_266DB79F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266D04C84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10SiriFindMy15StringLocalizer_bundle;
  type metadata accessor for StringLocalizer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v3) = [objc_opt_self() bundleForClass_];
  v5 = OBJC_IVAR____TtC10SiriFindMy15StringLocalizer_siriLocale;
  v6 = sub_266DA750C();
  (*(*(v6 - 8) + 32))(v1 + v5, a1, v6);
  return v1;
}

ValueMetadata *sub_266D04D34(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v54 = a4;
  v46 = a1;
  v10 = sub_266DA750C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v5;
  if (a3)
  {
    v15 = v5 + OBJC_IVAR____TtC10SiriFindMy15StringLocalizer_siriLocale;
    v16 = sub_266DA74CC();
    v18 = OUTLINED_FUNCTION_1_39(v16, v17);
    OUTLINED_FUNCTION_0_58(v18, v19, v20, v21, v22, v23, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_2_42();
  }

  else
  {
    sub_266DA74FC();
    v15 = v14;
    v24 = sub_266DA74CC();
    v26 = OUTLINED_FUNCTION_1_39(v24, v25);
    OUTLINED_FUNCTION_0_58(v26, v27, v28, v29, v30, v31, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_2_42();
    (*(v11 + 8))(v14, v10);
  }

  v32 = [objc_opt_self() sharedInstance];
  if (v32 && (v33 = *(v45 + OBJC_IVAR____TtC10SiriFindMy15StringLocalizer_bundle), v34 = v32, v35 = sub_266D05170(v46, a2, v54, a5, v33, v6, v15, v34), v37 = v36, v34, v34, v37))
  {
  }

  else
  {

    v38 = a3;
    v39 = v46;
    v47 = v46;
    v48 = a2;
    v40 = v54;
    v49 = v54;
    v50 = a5;
    v41 = v38 & 1;
    v51 = v38 & 1;
    v52 = v6;
    v53 = v15;
    sub_266D0511C();
    v35 = &type metadata for StringLocalizingError;
    swift_willThrowTypedImpl();
    swift_allocError();
    *v42 = v39;
    *(v42 + 8) = a2;
    *(v42 + 16) = v40;
    *(v42 + 24) = a5;
    *(v42 + 32) = v41;
    *(v42 + 40) = v6;
    *(v42 + 48) = v15;
  }

  return v35;
}

uint64_t sub_266D04F80()
{
  v1 = OBJC_IVAR____TtC10SiriFindMy15StringLocalizer_siriLocale;
  v2 = sub_266DA750C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for StringLocalizer()
{
  result = qword_2800CCA18;
  if (!qword_2800CCA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266D05080()
{
  result = sub_266DA750C();
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

unint64_t sub_266D0511C()
{
  result = qword_2800CCA28;
  if (!qword_2800CCA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCA28);
  }

  return result;
}

uint64_t sub_266D05170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = sub_266DAA6FC();
  v11 = sub_266DAA6FC();
  v12 = sub_266DAA6FC();
  v13 = [a8 localizedStringForKey:v10 table:v11 bundle:a5 languageCode:v12];

  if (!v13)
  {
    return 0;
  }

  v14 = sub_266DAA70C();

  return v14;
}

uint64_t sub_266D05248(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_266D05288(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocalizationSystem(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266D053C4()
{
  result = qword_2800CCA30;
  if (!qword_2800CCA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCA30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return MEMORY[0x28211F2F8](v7 - 96, v7 - 112, 0, 0, 0, 1, a7, a7, a7, a1, a1, a1);
}

unint64_t OUTLINED_FUNCTION_1_39(uint64_t a1, uint64_t a2)
{
  *(v2 - 168) = a1;
  *(v2 - 160) = a2;
  *(v2 - 96) = 45;
  *(v2 - 88) = 0xE100000000000000;
  *(v2 - 112) = 95;
  *(v2 - 104) = 0xE100000000000000;

  return sub_266C680F8();
}

uint64_t OUTLINED_FUNCTION_2_42()
{
}

uint64_t sub_266D0549C()
{
  OUTLINED_FUNCTION_22_0();
  v0[23] = v1;
  v0[24] = v2;
  v0[22] = v3;
  v4 = type metadata accessor for Snippets();
  v0[25] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  v0[26] = OUTLINED_FUNCTION_64();
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v7 = sub_266DA80AC();
  v0[30] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v0[31] = v8;
  v10 = *(v9 + 64) + 15;
  v0[32] = swift_task_alloc();
  v11 = sub_266DA7C0C();
  v0[33] = v11;
  OUTLINED_FUNCTION_11_3(v11);
  v0[34] = v12;
  v14 = *(v13 + 64);
  v0[35] = OUTLINED_FUNCTION_64();
  v0[36] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v15);
  v17 = *(v16 + 64) + 15;
  v0[37] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v18);
  v20 = *(v19 + 64) + 15;
  v0[38] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v21);
  v0[39] = v22;
  v0[40] = *(v23 + 64);
  v0[41] = OUTLINED_FUNCTION_64();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();
  v0[45] = swift_task_alloc();
  v0[46] = swift_task_alloc();
  v0[47] = swift_task_alloc();
  v0[48] = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_266D05704()
{
  OUTLINED_FUNCTION_22_0();
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 200);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  *v2 = 4;
  *(v2 + 8) = xmmword_266DB2FB0;
  *(v2 + 24) = 0;
  OUTLINED_FUNCTION_32();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_86_0();
  *(v0 + 472) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v0 + 392) = sub_266DA93CC();
  v10 = swift_task_alloc();
  *(v0 + 400) = v10;
  *v10 = v0;
  v10[1] = sub_266D05800;
  v11 = *(v0 + 184);

  return sub_266CB4908();
}

uint64_t sub_266D05800()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 400);
  *v4 = *v1;
  v3[51] = v7;
  v3[52] = v0;

  if (v0)
  {
    v8 = v3[48];
    OUTLINED_FUNCTION_84_0(v3[47]);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266D05DD4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 440);
  v6 = *(v4 + 424);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D05EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = v22[54];
  v26 = v22[51];
  v27 = v22[49];
  v29 = v22[28];
  v28 = v22[29];

  sub_266C477B4(v29);
  sub_266C477B4(v28);
  v30 = OUTLINED_FUNCTION_6_7();
  v31(v30);
  v32 = OUTLINED_FUNCTION_18_3();
  v33(v32);
  OUTLINED_FUNCTION_17_5();
  v34 = OUTLINED_FUNCTION_38();
  sub_266C47654(v34, v35, &qword_266DB0080);
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D0605C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 448);
  v6 = *(v4 + 424);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D0615C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = v22[54];
  v26 = v22[51];
  v27 = v22[49];
  v28 = v22[27];

  sub_266C477B4(v28);
  v29 = OUTLINED_FUNCTION_6_7();
  v30(v29);
  v31 = OUTLINED_FUNCTION_18_3();
  v32(v31);
  OUTLINED_FUNCTION_17_5();
  v33 = OUTLINED_FUNCTION_38();
  sub_266C47654(v33, v34, &qword_266DB0080);
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D062D4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *(v4 + 424);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D063D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = v22[54];
  v26 = v22[51];
  v27 = v22[49];
  v28 = v22[26];

  sub_266C477B4(v28);
  v29 = OUTLINED_FUNCTION_6_7();
  v30(v29);
  v31 = OUTLINED_FUNCTION_18_3();
  v32(v31);
  OUTLINED_FUNCTION_17_5();
  v33 = OUTLINED_FUNCTION_38();
  sub_266C47654(v33, v34, &qword_266DB0080);
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D0654C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 464);
  v3 = *(v1 + 424);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266D0664C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = v22[54];
  v26 = v22[51];
  v27 = v22[49];

  v28 = OUTLINED_FUNCTION_6_7();
  v29(v28);
  v30 = OUTLINED_FUNCTION_18_3();
  v31(v30);
  OUTLINED_FUNCTION_17_5();
  v32 = OUTLINED_FUNCTION_38();
  sub_266C47654(v32, v33, &qword_266DB0080);
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

void sub_266D067B8()
{
  v2 = v0[48];
  v1 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[42];
  v8 = v0[43];
  v9 = v0[41];
  v10 = v0[38];
  v15 = v0[37];
  v16 = v0[36];
  v17 = v0[35];
  v18 = v0[32];
  v19 = v0[29];
  v20 = v0[28];
  v21 = v0[27];
  v22 = v0[26];

  v11 = v0[1];
  v12 = v0[52];
  OUTLINED_FUNCTION_39();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D068EC()
{
  OUTLINED_FUNCTION_22_0();
  *(v0 + 832) = v1;
  *(v0 + 824) = v2;
  *(v0 + 1849) = v3;
  *(v0 + 816) = v4;
  v5 = type metadata accessor for Snippets();
  *(v0 + 840) = v5;
  OUTLINED_FUNCTION_4_3(v5);
  v7 = *(v6 + 64);
  *(v0 + 848) = OUTLINED_FUNCTION_64();
  *(v0 + 856) = swift_task_alloc();
  *(v0 + 864) = swift_task_alloc();
  *(v0 + 872) = swift_task_alloc();
  *(v0 + 880) = swift_task_alloc();
  *(v0 + 888) = swift_task_alloc();
  *(v0 + 896) = swift_task_alloc();
  *(v0 + 904) = swift_task_alloc();
  *(v0 + 912) = swift_task_alloc();
  *(v0 + 920) = swift_task_alloc();
  *(v0 + 928) = swift_task_alloc();
  *(v0 + 936) = swift_task_alloc();
  *(v0 + 944) = swift_task_alloc();
  *(v0 + 952) = swift_task_alloc();
  *(v0 + 960) = swift_task_alloc();
  *(v0 + 968) = swift_task_alloc();
  *(v0 + 976) = swift_task_alloc();
  *(v0 + 984) = swift_task_alloc();
  *(v0 + 992) = swift_task_alloc();
  *(v0 + 1000) = swift_task_alloc();
  v8 = sub_266DA80AC();
  *(v0 + 1008) = v8;
  OUTLINED_FUNCTION_11_3(v8);
  *(v0 + 1016) = v9;
  v11 = *(v10 + 64);
  *(v0 + 1024) = OUTLINED_FUNCTION_64();
  *(v0 + 1032) = swift_task_alloc();
  *(v0 + 1040) = swift_task_alloc();
  *(v0 + 1048) = swift_task_alloc();
  *(v0 + 1056) = swift_task_alloc();
  v12 = sub_266DA7C0C();
  *(v0 + 1064) = v12;
  OUTLINED_FUNCTION_11_3(v12);
  *(v0 + 1072) = v13;
  v15 = *(v14 + 64);
  *(v0 + 1080) = OUTLINED_FUNCTION_64();
  *(v0 + 1088) = swift_task_alloc();
  *(v0 + 1096) = swift_task_alloc();
  *(v0 + 1104) = swift_task_alloc();
  *(v0 + 1112) = swift_task_alloc();
  *(v0 + 1120) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v16);
  v18 = *(v17 + 64);
  *(v0 + 1128) = OUTLINED_FUNCTION_64();
  *(v0 + 1136) = swift_task_alloc();
  *(v0 + 1144) = swift_task_alloc();
  *(v0 + 1152) = swift_task_alloc();
  *(v0 + 1160) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v19);
  v21 = *(v20 + 64);
  *(v0 + 1168) = OUTLINED_FUNCTION_64();
  *(v0 + 1176) = swift_task_alloc();
  *(v0 + 1184) = swift_task_alloc();
  *(v0 + 1192) = swift_task_alloc();
  *(v0 + 1200) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v22);
  *(v0 + 1208) = v23;
  *(v0 + 1216) = *(v24 + 64);
  *(v0 + 1224) = OUTLINED_FUNCTION_64();
  *(v0 + 1232) = swift_task_alloc();
  *(v0 + 1240) = swift_task_alloc();
  *(v0 + 1248) = swift_task_alloc();
  *(v0 + 1256) = swift_task_alloc();
  *(v0 + 1264) = swift_task_alloc();
  *(v0 + 1272) = swift_task_alloc();
  *(v0 + 1280) = swift_task_alloc();
  *(v0 + 1288) = swift_task_alloc();
  *(v0 + 1296) = swift_task_alloc();
  *(v0 + 1304) = swift_task_alloc();
  *(v0 + 1312) = swift_task_alloc();
  *(v0 + 1320) = swift_task_alloc();
  *(v0 + 1328) = swift_task_alloc();
  *(v0 + 1336) = swift_task_alloc();
  *(v0 + 1344) = swift_task_alloc();
  *(v0 + 1352) = swift_task_alloc();
  *(v0 + 1360) = swift_task_alloc();
  *(v0 + 1368) = swift_task_alloc();
  *(v0 + 1376) = swift_task_alloc();
  *(v0 + 1384) = swift_task_alloc();
  *(v0 + 1392) = swift_task_alloc();
  *(v0 + 1400) = swift_task_alloc();
  *(v0 + 1408) = swift_task_alloc();
  *(v0 + 1416) = swift_task_alloc();
  *(v0 + 1424) = swift_task_alloc();
  *(v0 + 1432) = swift_task_alloc();
  *(v0 + 1440) = swift_task_alloc();
  *(v0 + 1448) = swift_task_alloc();
  *(v0 + 1456) = swift_task_alloc();
  *(v0 + 1464) = swift_task_alloc();
  *(v0 + 1472) = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_266D06DE4()
{
  OUTLINED_FUNCTION_22_0();
  switch(*(v0 + 1849))
  {
    case 1:
      v40 = *(v0 + 1360);
      v41 = *(v0 + 1352);
      v42 = *(v0 + 840);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
      v46 = OUTLINED_FUNCTION_28_6();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v42);
      v49 = swift_task_alloc();
      *(v0 + 1632) = v49;
      *v49 = v0;
      OUTLINED_FUNCTION_58_1(v49);

      result = sub_266CB382C();
      break;
    case 2:
      v23 = *(v0 + 1312);
      v24 = *(v0 + 1304);
      v25 = *(v0 + 840);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
      v29 = OUTLINED_FUNCTION_28_6();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v25);
      v32 = swift_task_alloc();
      *(v0 + 1704) = v32;
      *v32 = v0;
      OUTLINED_FUNCTION_58_1(v32);

      result = sub_266CB3784();
      break;
    case 3:
      v33 = *(v0 + 1472);
      v34 = *(v0 + 1464);
      v35 = *(v0 + 840);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
      *v34 = 3;
      *(v34 + 8) = xmmword_266DAFA10;
      *(v34 + 24) = 0;
      OUTLINED_FUNCTION_32();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_86_0();
      v39 = swift_task_alloc();
      *(v0 + 1480) = v39;
      *v39 = v0;
      OUTLINED_FUNCTION_58_1(v39);

      result = sub_266CB2AD0();
      break;
    case 4:
      v13 = *(v0 + 1264);
      v14 = *(v0 + 1256);
      v15 = *(v0 + 840);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
      v19 = OUTLINED_FUNCTION_28_6();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v15);
      v22 = swift_task_alloc();
      *(v0 + 1776) = v22;
      *v22 = v0;
      OUTLINED_FUNCTION_58_1(v22);

      result = sub_266CB59CC();
      break;
    default:
      v1 = *(v0 + 1408);
      v2 = *(v0 + 1400);
      v3 = *(v0 + 840);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
      *v2 = 5;
      *(v2 + 8) = xmmword_266DB27A0;
      *(v2 + 24) = 0;
      OUTLINED_FUNCTION_32();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_86_0();
      *(v0 + 1848) = 0;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      *(v0 + 1552) = sub_266DA93CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v10 = OUTLINED_FUNCTION_101();
      *(v0 + 1560) = v10;
      *(v10 + 16) = xmmword_266DAE3B0;
      v11 = swift_task_alloc();
      *(v0 + 1568) = v11;
      *v11 = v0;
      OUTLINED_FUNCTION_58_1(v11);

      result = sub_266CB476C();
      break;
  }

  return result;
}

uint64_t sub_266D07154()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 1480);
  *v4 = *v1;
  v3[186] = v7;
  v3[187] = v0;

  if (v0)
  {
    v8 = v3[184];
    OUTLINED_FUNCTION_84_0(v3[183]);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266D07730()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1520);
  v6 = *(v4 + 1504);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 776));
  __swift_destroy_boxed_opaque_existential_0((v2 + 736));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266D07838()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v3 = v2[189];
  v4 = v2[186];
  v43 = v2[183];
  v44 = v2[184];
  v5 = v2[140];
  OUTLINED_FUNCTION_115_1();
  v6 = v2[132];
  OUTLINED_FUNCTION_114_0();
  v7 = v2[125];
  v8 = v2[124];

  sub_266C477B4(v8);
  sub_266C477B4(v7);
  v9 = *(v0 + 8);
  v10 = OUTLINED_FUNCTION_83();
  v11(v10);
  v12 = *(v1 + 8);
  v13 = OUTLINED_FUNCTION_38();
  v14(v13);
  OUTLINED_FUNCTION_31_1(v43);
  OUTLINED_FUNCTION_49_6();
  v15 = v2[150];
  v26 = v2[145];
  v16 = v2[184];
  OUTLINED_FUNCTION_79_1();
  v17 = v2[181];
  v18 = v2[180];
  v19 = v2[179];
  v20 = v2[178];
  v21 = v2[177];
  OUTLINED_FUNCTION_1_40();
  v25 = v2[160];
  v27 = v2[159];
  v28 = v2[158];
  v29 = v2[157];
  v30 = v2[156];
  OUTLINED_FUNCTION_19_15();
  v31 = v2[149];
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_77_3();
  v32 = v2[144];
  OUTLINED_FUNCTION_75_1();
  v33 = v2[141];
  v34 = v2[140];
  v35 = v2[139];
  v36 = v2[138];
  v37 = v2[137];
  v38 = v2[136];
  v39 = v2[135];
  v40 = v2[132];
  v41 = v2[131];
  v42 = v2[130];
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v22, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v15, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D07C40()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1528);
  v6 = *(v4 + 1504);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 696));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266D07D40()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_66_2();
  v2 = v0[123];

  sub_266C477B4(v2);
  v3 = OUTLINED_FUNCTION_23_14();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_10();
  v6(v5);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_49_6();
  v7 = v0[150];
  v18 = v0[145];
  v8 = v0[184];
  OUTLINED_FUNCTION_79_1();
  v9 = v0[181];
  v10 = v0[180];
  v11 = v0[179];
  v12 = v0[178];
  v13 = v0[177];
  OUTLINED_FUNCTION_1_40();
  v17 = v0[160];
  v19 = v0[159];
  v20 = v0[158];
  v21 = v0[157];
  v22 = v0[156];
  OUTLINED_FUNCTION_19_15();
  v23 = v0[149];
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_77_3();
  v24 = v0[144];
  OUTLINED_FUNCTION_75_1();
  v25 = v0[141];
  v26 = v0[140];
  v27 = v0[139];
  v28 = v0[138];
  v29 = v0[137];
  v30 = v0[136];
  v31 = v0[135];
  v32 = v0[132];
  v33 = v0[131];
  v34 = v0[130];
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v14, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v7, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D08110()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1536);
  v6 = *(v4 + 1504);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 656));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266D08210()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_66_2();
  v2 = v0[122];

  sub_266C477B4(v2);
  v3 = OUTLINED_FUNCTION_23_14();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_10();
  v6(v5);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_49_6();
  v7 = v0[150];
  v18 = v0[145];
  v8 = v0[184];
  OUTLINED_FUNCTION_79_1();
  v9 = v0[181];
  v10 = v0[180];
  v11 = v0[179];
  v12 = v0[178];
  v13 = v0[177];
  OUTLINED_FUNCTION_1_40();
  v17 = v0[160];
  v19 = v0[159];
  v20 = v0[158];
  v21 = v0[157];
  v22 = v0[156];
  OUTLINED_FUNCTION_19_15();
  v23 = v0[149];
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_77_3();
  v24 = v0[144];
  OUTLINED_FUNCTION_75_1();
  v25 = v0[141];
  v26 = v0[140];
  v27 = v0[139];
  v28 = v0[138];
  v29 = v0[137];
  v30 = v0[136];
  v31 = v0[135];
  v32 = v0[132];
  v33 = v0[131];
  v34 = v0[130];
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v14, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v7, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D085E0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 1544);
  v3 = *(v1 + 1504);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_266D086E0()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v3 = v0[189];
  v4 = v0[186];
  v5 = v0[184];
  v6 = v0[183];
  v7 = v0[140];
  OUTLINED_FUNCTION_116_1();
  v8 = v0[132];
  OUTLINED_FUNCTION_122();

  v9 = *(v2 + 8);
  v10 = OUTLINED_FUNCTION_83();
  v11(v10);
  v12 = *(v1 + 8);
  v13 = OUTLINED_FUNCTION_38();
  v14(v13);
  OUTLINED_FUNCTION_41_2();
  v15 = OUTLINED_FUNCTION_58();
  sub_266C47654(v15, v16, &qword_266DB0080);
  v17 = v0[150];
  v28 = v0[145];
  v18 = v0[184];
  OUTLINED_FUNCTION_79_1();
  v19 = v0[181];
  v20 = v0[180];
  v21 = v0[179];
  v22 = v0[178];
  v23 = v0[177];
  OUTLINED_FUNCTION_1_40();
  v27 = v0[160];
  v29 = v0[159];
  v30 = v0[158];
  v31 = v0[157];
  v32 = v0[156];
  OUTLINED_FUNCTION_19_15();
  v33 = v0[149];
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_77_3();
  v34 = v0[144];
  OUTLINED_FUNCTION_75_1();
  v35 = v0[141];
  v36 = v0[140];
  v37 = v0[139];
  v38 = v0[138];
  v39 = v0[137];
  v40 = v0[136];
  v41 = v0[135];
  v42 = v0[132];
  v43 = v0[131];
  v44 = v0[130];
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v24, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v17, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D08ACC()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 1568);
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[197] = v0;

  if (v0)
  {
    v11 = v5[176];
    OUTLINED_FUNCTION_84_0(v5[175]);
    v12 = OUTLINED_FUNCTION_32();
    sub_266C47654(v12, v13, &qword_266DB0080);
  }

  else
  {
    v5[198] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

void sub_266D08BFC()
{
  v1 = v0[195];
  v2 = v0[149];
  v3 = v0[144];
  v4 = v0[138];
  *(v1 + 32) = v0[198];
  sub_266DA7E5C();
  v5 = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_123(v5, v6, 1, v7);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  sub_266DA7BCC();
  if (sub_266C3A14C(v1, v12, v13))
  {
    v14 = v0[195];
    v15 = v14 & 0xC000000000000001;
    sub_266CB9F54(0, (v14 & 0xC000000000000001) == 0, v14);
    v16 = v0[195];
    if (v15)
    {
      v17 = MEMORY[0x26D5F1780](0, v16);
    }

    else
    {
      v17 = *(v16 + 32);
    }

    v18 = v17;
    v19 = [v17 catId];

    v89 = sub_266DAA70C();
    v92 = v20;
  }

  else
  {
    v89 = 0;
    v92 = 0;
  }

  v21 = v0[182];
  v22 = v0[181];
  v23 = v0[176];
  v24 = v0[152];
  v25 = v0[151];
  v86 = v0[149];
  v87 = v0[144];
  v26 = v0[139];
  v85 = v0[138];
  v27 = v0[134];
  v28 = v0[133];
  v88 = v23;
  v90 = v0[105];
  v91 = v0[174];
  v29 = v0[104];
  sub_266C4756C(v0[175], v21);
  sub_266C4756C(v23, v22);
  v30 = *(v25 + 80);
  v31 = (v30 + 24) & ~v30;
  v32 = (v24 + v30 + v31) & ~v30;
  v33 = swift_allocObject();
  v0[199] = v33;
  *(v33 + 16) = v29;
  sub_266C475DC(v21, v33 + v31);
  sub_266C475DC(v22, v33 + v32);
  (*(v27 + 16))(v26, v85, v28);
  v34 = swift_task_alloc();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = 0;
  *(v34 + 40) = v89;
  *(v34 + 48) = v92;
  *(v34 + 56) = v86;
  *(v34 + 64) = 514;
  *(v34 + 72) = sub_266C48BBC;
  *(v34 + 80) = v33;
  *(v34 + 88) = v87;

  sub_266DA800C();

  sub_266C4756C(v88, v91);
  if (__swift_getEnumTagSinglePayload(v91, 1, v90) == 1)
  {
    v35 = v0 + 174;
  }

  else
  {
    v36 = v0[175];
    v37 = v0[173];
    v38 = v0[105];
    sub_266C476A8(v0[174], v0[121]);
    v39 = OUTLINED_FUNCTION_32();
    sub_266C4756C(v39, v40);
    OUTLINED_FUNCTION_19_2();
    if (!v41)
    {
      v66 = v0[121];
      v67 = v0[120];
      OUTLINED_FUNCTION_109_1(v0[173]);
      v0[75] = v34;
      v68 = sub_266C4DB4C();
      v0[76] = v68;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 72);
      OUTLINED_FUNCTION_55_0(boxed_opaque_existential_1);
      v0[80] = v34;
      v0[81] = v68;
      v70 = __swift_allocate_boxed_opaque_existential_1(v0 + 77);
      OUTLINED_FUNCTION_86(v70);
      OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD30]);
      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      v0[200] = v71;
      *v71 = v72;
      v71[1] = sub_266D091B8;
      v73 = v0[195];
      v74 = v0[131];
      OUTLINED_FUNCTION_47_5();
      OUTLINED_FUNCTION_39();

      __asm { BR              X5 }
    }

    v35 = v0 + 173;
    sub_266C477B4(v0[121]);
  }

  v42 = *v35;
  v43 = v0[176];
  v44 = v0[172];
  v45 = v0[105];
  sub_266C47654(v42, &qword_2800CA050, &qword_266DB0080);
  v46 = OUTLINED_FUNCTION_32();
  sub_266C4756C(v46, v47);
  OUTLINED_FUNCTION_29();
  v48 = v0[172];
  v49 = v0[105];
  if (v50 == 1)
  {
    v51 = v0[175];
    v52 = v0[171];
    sub_266C47654(v48, &qword_2800CA050, &qword_266DB0080);
    sub_266C4756C(v51, v52);
    v53 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v53, v54, v49) == 1)
    {
      sub_266C47654(v0[171], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD50]);
      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      v0[203] = v55;
      *v55 = v56;
      v55[1] = sub_266D09FD0;
      v57 = v0[195];
      v58 = v0[131];
      OUTLINED_FUNCTION_47_5();
      OUTLINED_FUNCTION_39();

      __asm { BR              X3 }
    }

    v77 = v0[118];
    OUTLINED_FUNCTION_111_1(v0[171]);
    v0[65] = v51;
    v0[66] = sub_266C4DB4C();
    v78 = __swift_allocate_boxed_opaque_existential_1(v0 + 62);
    OUTLINED_FUNCTION_55_0(v78);
    OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD40]);
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    v0[202] = v79;
    *v79 = v80;
    v79[1] = sub_266D09B24;
    v81 = v0[195];
    v82 = v0[131];
    OUTLINED_FUNCTION_47_5();
  }

  else
  {
    sub_266C476A8(v48, v0[119]);
    v0[70] = v49;
    v0[71] = sub_266C4DB4C();
    v61 = __swift_allocate_boxed_opaque_existential_1(v0 + 67);
    OUTLINED_FUNCTION_86(v61);
    OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD38]);
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    v0[201] = v62;
    *v62 = v63;
    v62[1] = sub_266D09678;
    v64 = v0[195];
    v65 = v0[131];
    OUTLINED_FUNCTION_47_5();
  }

  OUTLINED_FUNCTION_39();

  __asm { BR              X4 }
}

uint64_t sub_266D091B8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1600);
  v6 = *(v4 + 1560);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 616));
  __swift_destroy_boxed_opaque_existential_0((v2 + 576));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266D092C0()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_112_1();
  v2 = v0[121];
  v3 = v0[120];

  sub_266C477B4(v3);
  sub_266C477B4(v2);
  v4 = OUTLINED_FUNCTION_14_24();
  v5(v4);
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_38();
  v8(v7);
  OUTLINED_FUNCTION_41_2();
  v9 = OUTLINED_FUNCTION_58();
  sub_266C47654(v9, v10, &qword_266DB0080);
  v11 = v0[149];
  v22 = v0[144];
  v12 = v0[184];
  v13 = v0[183];
  OUTLINED_FUNCTION_78_0();
  v14 = v0[180];
  v15 = v0[179];
  v16 = v0[178];
  v17 = v0[177];
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_4_34();
  OUTLINED_FUNCTION_5_31();
  v18 = v0[148];
  OUTLINED_FUNCTION_11_20();
  v23 = v0[143];
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  v24 = v0[130];
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v19, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v11, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D09678()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1608);
  v6 = *(v4 + 1560);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 536));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266D09778()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_112_1();
  v2 = v0[119];

  sub_266C477B4(v2);
  v3 = OUTLINED_FUNCTION_14_24();
  v4(v3);
  v5 = *(v1 + 8);
  v6 = OUTLINED_FUNCTION_38();
  v7(v6);
  OUTLINED_FUNCTION_41_2();
  v8 = OUTLINED_FUNCTION_58();
  sub_266C47654(v8, v9, &qword_266DB0080);
  v10 = v0[149];
  v21 = v0[144];
  v11 = v0[184];
  v12 = v0[183];
  OUTLINED_FUNCTION_78_0();
  v13 = v0[180];
  v14 = v0[179];
  v15 = v0[178];
  v16 = v0[177];
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_4_34();
  OUTLINED_FUNCTION_5_31();
  v17 = v0[148];
  OUTLINED_FUNCTION_11_20();
  v22 = v0[143];
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  v23 = v0[130];
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v18, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v10, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D09B24()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1616);
  v6 = *(v4 + 1560);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 496));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266D09C24()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_112_1();
  v2 = v0[118];

  sub_266C477B4(v2);
  v3 = OUTLINED_FUNCTION_14_24();
  v4(v3);
  v5 = *(v1 + 8);
  v6 = OUTLINED_FUNCTION_38();
  v7(v6);
  OUTLINED_FUNCTION_41_2();
  v8 = OUTLINED_FUNCTION_58();
  sub_266C47654(v8, v9, &qword_266DB0080);
  v10 = v0[149];
  v21 = v0[144];
  v11 = v0[184];
  v12 = v0[183];
  OUTLINED_FUNCTION_78_0();
  v13 = v0[180];
  v14 = v0[179];
  v15 = v0[178];
  v16 = v0[177];
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_4_34();
  OUTLINED_FUNCTION_5_31();
  v17 = v0[148];
  OUTLINED_FUNCTION_11_20();
  v22 = v0[143];
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  v23 = v0[130];
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v18, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v10, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D09FD0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 1624);
  v3 = *(v1 + 1560);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_266D0A0D0()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_112_1();

  v2 = OUTLINED_FUNCTION_14_24();
  v3(v2);
  v4 = *(v1 + 8);
  v5 = OUTLINED_FUNCTION_38();
  v6(v5);
  OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_58();
  sub_266C47654(v7, v8, &qword_266DB0080);
  v9 = v0[149];
  v20 = v0[144];
  v10 = v0[184];
  v11 = v0[183];
  OUTLINED_FUNCTION_78_0();
  v12 = v0[180];
  v13 = v0[179];
  v14 = v0[178];
  v15 = v0[177];
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_4_34();
  OUTLINED_FUNCTION_5_31();
  v16 = v0[148];
  OUTLINED_FUNCTION_11_20();
  v21 = v0[143];
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  v22 = v0[130];
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v17, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v9, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0A470()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 1632);
  *v4 = *v1;
  v3[205] = v7;
  v3[206] = v0;

  if (v0)
  {
    v8 = v3[170];
    OUTLINED_FUNCTION_84_0(v3[169]);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266D0AA40()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1672);
  v6 = *(v4 + 1656);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 456));
  __swift_destroy_boxed_opaque_existential_0((v2 + 416));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266D0AB48()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v3 = v2[208];
  v4 = v2[205];
  v28 = v2[169];
  v29 = v2[170];
  v5 = v2[137];
  OUTLINED_FUNCTION_115_1();
  v6 = v2[130];
  OUTLINED_FUNCTION_114_0();
  v7 = v2[117];
  v8 = v2[116];

  sub_266C477B4(v8);
  sub_266C477B4(v7);
  v9 = *(v0 + 8);
  v10 = OUTLINED_FUNCTION_83();
  v11(v10);
  v12 = *(v1 + 8);
  v13 = OUTLINED_FUNCTION_38();
  v14(v13);
  OUTLINED_FUNCTION_31_1(v28);
  OUTLINED_FUNCTION_49_6();
  v15 = v2[148];
  v26 = v2[143];
  v16 = v2[184];
  v17 = v2[183];
  v18 = v2[182];
  OUTLINED_FUNCTION_62_2();
  v19 = v2[179];
  v20 = v2[178];
  v21 = v2[177];
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  OUTLINED_FUNCTION_5_31();
  v22 = v2[149];
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  v27 = v2[130];
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v15, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0AF14()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1680);
  v6 = *(v4 + 1656);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 376));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266D0B014()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_67_1();
  v2 = v0[115];

  sub_266C477B4(v2);
  v3 = OUTLINED_FUNCTION_23_14();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_10();
  v6(v5);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_49_6();
  v7 = v0[148];
  v18 = v0[143];
  v8 = v0[184];
  v9 = v0[183];
  v10 = v0[182];
  OUTLINED_FUNCTION_62_2();
  v11 = v0[179];
  v12 = v0[178];
  v13 = v0[177];
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  OUTLINED_FUNCTION_5_31();
  v14 = v0[149];
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  v19 = v0[130];
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v15, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v7, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0B3A8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1688);
  v6 = *(v4 + 1656);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 336));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266D0B4A8()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_67_1();
  v2 = v0[114];

  sub_266C477B4(v2);
  v3 = OUTLINED_FUNCTION_23_14();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_10();
  v6(v5);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_49_6();
  v7 = v0[148];
  v18 = v0[143];
  v8 = v0[184];
  v9 = v0[183];
  v10 = v0[182];
  OUTLINED_FUNCTION_62_2();
  v11 = v0[179];
  v12 = v0[178];
  v13 = v0[177];
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  OUTLINED_FUNCTION_5_31();
  v14 = v0[149];
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  v19 = v0[130];
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v15, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v7, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0B83C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 1696);
  v3 = *(v1 + 1656);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_266D0B93C()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v3 = v0[208];
  v4 = v0[205];
  v5 = v0[170];
  v6 = v0[169];
  v7 = v0[137];
  OUTLINED_FUNCTION_116_1();
  v8 = v0[130];
  OUTLINED_FUNCTION_122();

  v9 = *(v2 + 8);
  v10 = OUTLINED_FUNCTION_83();
  v11(v10);
  v12 = *(v1 + 8);
  v13 = OUTLINED_FUNCTION_38();
  v14(v13);
  OUTLINED_FUNCTION_41_2();
  v15 = OUTLINED_FUNCTION_58();
  sub_266C47654(v15, v16, &qword_266DB0080);
  v17 = v0[148];
  v28 = v0[143];
  v18 = v0[184];
  v19 = v0[183];
  v20 = v0[182];
  OUTLINED_FUNCTION_62_2();
  v21 = v0[179];
  v22 = v0[178];
  v23 = v0[177];
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  OUTLINED_FUNCTION_5_31();
  v24 = v0[149];
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  v29 = v0[130];
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v25, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v17, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0BCEC()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 1704);
  *v4 = *v1;
  v3[214] = v7;
  v3[215] = v0;

  if (v0)
  {
    v8 = v3[164];
    OUTLINED_FUNCTION_84_0(v3[163]);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266D0C2BC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1744);
  v6 = *(v4 + 1728);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 296));
  __swift_destroy_boxed_opaque_existential_0((v2 + 256));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266D0C3C4()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v3 = v2[217];
  v4 = v2[214];
  v40 = v2[163];
  v41 = v2[164];
  v5 = v2[136];
  OUTLINED_FUNCTION_115_1();
  v6 = v2[129];
  OUTLINED_FUNCTION_114_0();
  v7 = v2[113];
  v8 = v2[112];

  sub_266C477B4(v8);
  sub_266C477B4(v7);
  v9 = *(v0 + 8);
  v10 = OUTLINED_FUNCTION_83();
  v11(v10);
  v12 = *(v1 + 8);
  v13 = OUTLINED_FUNCTION_38();
  v14(v13);
  OUTLINED_FUNCTION_31_1(v40);
  OUTLINED_FUNCTION_49_6();
  v15 = v2[147];
  v26 = v2[142];
  v16 = v2[184];
  v17 = v2[183];
  v18 = v2[182];
  OUTLINED_FUNCTION_62_2();
  v19 = v2[179];
  v20 = v2[178];
  v21 = v2[177];
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  v25 = v2[156];
  OUTLINED_FUNCTION_19_15();
  v27 = v2[150];
  v28 = v2[149];
  v29 = v2[148];
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_70_1();
  v30 = v2[141];
  v31 = v2[140];
  v32 = v2[139];
  v33 = v2[138];
  v34 = v2[137];
  v35 = v2[136];
  v36 = v2[135];
  v37 = v2[132];
  v38 = v2[131];
  v39 = v2[130];
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v22, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v15, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0C7BC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1752);
  v6 = *(v4 + 1728);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 216));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266D0C8BC()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_64_0();
  v2 = v0[111];

  sub_266C477B4(v2);
  v3 = OUTLINED_FUNCTION_23_14();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_10();
  v6(v5);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_49_6();
  v7 = v0[147];
  v18 = v0[142];
  v8 = v0[184];
  v9 = v0[183];
  v10 = v0[182];
  OUTLINED_FUNCTION_62_2();
  v11 = v0[179];
  v12 = v0[178];
  v13 = v0[177];
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  v17 = v0[156];
  OUTLINED_FUNCTION_19_15();
  v19 = v0[150];
  v20 = v0[149];
  v21 = v0[148];
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_70_1();
  v22 = v0[141];
  v23 = v0[140];
  v24 = v0[139];
  v25 = v0[138];
  v26 = v0[137];
  v27 = v0[136];
  v28 = v0[135];
  v29 = v0[132];
  v30 = v0[131];
  v31 = v0[130];
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v14, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v7, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0CC7C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1760);
  v6 = *(v4 + 1728);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266D0CD7C()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_64_0();
  v2 = v0[110];

  sub_266C477B4(v2);
  v3 = OUTLINED_FUNCTION_23_14();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_10();
  v6(v5);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_49_6();
  v7 = v0[147];
  v18 = v0[142];
  v8 = v0[184];
  v9 = v0[183];
  v10 = v0[182];
  OUTLINED_FUNCTION_62_2();
  v11 = v0[179];
  v12 = v0[178];
  v13 = v0[177];
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  v17 = v0[156];
  OUTLINED_FUNCTION_19_15();
  v19 = v0[150];
  v20 = v0[149];
  v21 = v0[148];
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_70_1();
  v22 = v0[141];
  v23 = v0[140];
  v24 = v0[139];
  v25 = v0[138];
  v26 = v0[137];
  v27 = v0[136];
  v28 = v0[135];
  v29 = v0[132];
  v30 = v0[131];
  v31 = v0[130];
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v14, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v7, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0D13C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 1768);
  v3 = *(v1 + 1728);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_266D0D23C()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v3 = v0[217];
  v4 = v0[214];
  v5 = v0[164];
  v6 = v0[163];
  v7 = v0[136];
  OUTLINED_FUNCTION_116_1();
  v8 = v0[129];
  OUTLINED_FUNCTION_122();

  v9 = *(v2 + 8);
  v10 = OUTLINED_FUNCTION_83();
  v11(v10);
  v12 = *(v1 + 8);
  v13 = OUTLINED_FUNCTION_38();
  v14(v13);
  OUTLINED_FUNCTION_41_2();
  v15 = OUTLINED_FUNCTION_58();
  sub_266C47654(v15, v16, &qword_266DB0080);
  v17 = v0[147];
  v28 = v0[142];
  v18 = v0[184];
  v19 = v0[183];
  v20 = v0[182];
  OUTLINED_FUNCTION_62_2();
  v21 = v0[179];
  v22 = v0[178];
  v23 = v0[177];
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  v27 = v0[156];
  OUTLINED_FUNCTION_19_15();
  v29 = v0[150];
  v30 = v0[149];
  v31 = v0[148];
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_70_1();
  v32 = v0[141];
  v33 = v0[140];
  v34 = v0[139];
  v35 = v0[138];
  v36 = v0[137];
  v37 = v0[136];
  v38 = v0[135];
  v39 = v0[132];
  v40 = v0[131];
  v41 = v0[130];
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v24, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v17, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0D618()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 1776);
  *v4 = *v1;
  v3[223] = v7;
  v3[224] = v0;

  if (v0)
  {
    v8 = v3[158];
    OUTLINED_FUNCTION_84_0(v3[157]);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266D0DBE8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1816);
  v6 = *(v4 + 1800);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266D0DCF0()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v3 = v2[226];
  v4 = v2[223];
  v27 = v2[157];
  v28 = v2[158];
  v5 = v2[135];
  OUTLINED_FUNCTION_115_1();
  v6 = v2[128];
  OUTLINED_FUNCTION_114_0();
  v7 = v2[109];
  v8 = v2[108];

  sub_266C477B4(v8);
  sub_266C477B4(v7);
  v9 = *(v0 + 8);
  v10 = OUTLINED_FUNCTION_83();
  v11(v10);
  v12 = *(v1 + 8);
  v13 = OUTLINED_FUNCTION_38();
  v14(v13);
  OUTLINED_FUNCTION_31_1(v27);
  OUTLINED_FUNCTION_49_6();
  v15 = v2[146];
  v25 = v2[141];
  v16 = v2[184];
  v17 = v2[183];
  v18 = v2[182];
  OUTLINED_FUNCTION_62_2();
  v19 = v2[179];
  v20 = v2[178];
  v21 = v2[177];
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  v26 = v2[130];
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v22, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v15, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0E0C0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1824);
  v6 = *(v4 + 1800);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266D0E1C0()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_68_1();
  v2 = v0[107];

  sub_266C477B4(v2);
  v3 = OUTLINED_FUNCTION_23_14();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_10();
  v6(v5);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_49_6();
  v7 = v0[146];
  v17 = v0[141];
  v8 = v0[184];
  v9 = v0[183];
  v10 = v0[182];
  OUTLINED_FUNCTION_62_2();
  v11 = v0[179];
  v12 = v0[178];
  v13 = v0[177];
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  v18 = v0[130];
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v14, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v7, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0E558()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1832);
  v6 = *(v4 + 1800);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266D0E658()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_68_1();
  v2 = v0[106];

  sub_266C477B4(v2);
  v3 = OUTLINED_FUNCTION_23_14();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_10();
  v6(v5);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_49_6();
  v7 = v0[146];
  v17 = v0[141];
  v8 = v0[184];
  v9 = v0[183];
  v10 = v0[182];
  OUTLINED_FUNCTION_62_2();
  v11 = v0[179];
  v12 = v0[178];
  v13 = v0[177];
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  v18 = v0[130];
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v14, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v7, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0E9F0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 1840);
  v3 = *(v1 + 1800);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_266D0EAF0()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v3 = v0[226];
  v4 = v0[223];
  v5 = v0[158];
  v6 = v0[157];
  v7 = v0[135];
  OUTLINED_FUNCTION_116_1();
  v8 = v0[128];
  OUTLINED_FUNCTION_122();

  v9 = *(v2 + 8);
  v10 = OUTLINED_FUNCTION_83();
  v11(v10);
  v12 = *(v1 + 8);
  v13 = OUTLINED_FUNCTION_38();
  v14(v13);
  OUTLINED_FUNCTION_41_2();
  v15 = OUTLINED_FUNCTION_58();
  sub_266C47654(v15, v16, &qword_266DB0080);
  v17 = v0[146];
  v27 = v0[141];
  v18 = v0[184];
  v19 = v0[183];
  v20 = v0[182];
  OUTLINED_FUNCTION_62_2();
  v21 = v0[179];
  v22 = v0[178];
  v23 = v0[177];
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  v28 = v0[130];
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v24, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v17, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266D0EEA4()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_2_43(*(v0 + 1496));

  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266D0F148()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = v0[195];
  v2 = v0[194];

  *(v1 + 16) = 0;

  OUTLINED_FUNCTION_2_43(v0[197]);

  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266D0F404()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_2_43(*(v0 + 1648));

  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266D0F6A8()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_2_43(*(v0 + 1720));

  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266D0F94C()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_2_43(*(v0 + 1792));

  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t objectdestroyTm_9()
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

void OUTLINED_FUNCTION_0_59()
{
  v2 = v0[128];
  *(v1 - 256) = v0[129];
  *(v1 - 248) = v2;
  v3 = v0[124];
  *(v1 - 240) = v0[125];
  *(v1 - 232) = v3;
  v4 = v0[122];
  *(v1 - 224) = v0[123];
  *(v1 - 216) = v4;
  v5 = v0[120];
  *(v1 - 208) = v0[121];
  *(v1 - 200) = v5;
  v6 = v0[118];
  *(v1 - 192) = v0[119];
  *(v1 - 184) = v6;
  v7 = v0[116];
  *(v1 - 176) = v0[117];
  *(v1 - 168) = v7;
  v8 = v0[114];
  *(v1 - 160) = v0[115];
  *(v1 - 152) = v8;
  v9 = v0[112];
  *(v1 - 144) = v0[113];
  *(v1 - 136) = v9;
  v10 = v0[110];
  *(v1 - 128) = v0[111];
  *(v1 - 120) = v10;
  v11 = v0[108];
  *(v1 - 112) = v0[109];
  *(v1 - 104) = v11;
  v12 = v0[106];
  *(v1 - 96) = v0[107];
  *(v1 - 88) = v12;
}

void OUTLINED_FUNCTION_1_40()
{
  v2 = v0[176];
  v3 = v0[175];
  v4 = v0[174];
  v5 = v0[173];
  v6 = v0[172];
  v7 = v0[171];
  v8 = v0[170];
  v9 = v0[169];
  v10 = v0[168];
  v11 = v0[167];
  v12 = v0[166];
  v13 = v0[165];
  v14 = v0[164];
  v15 = v0[163];
  v1 = v0[162];
  v16 = v0[161];
}

uint64_t OUTLINED_FUNCTION_2_43@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;
  v4 = v1[184];
  v5 = v1[183];
  v6 = v1[182];
  v7 = v1[181];
  v8 = v1[180];
  v9 = v1[179];
  v10 = v1[178];
  v11 = v1[177];
  v12 = v1[176];
  v13 = v1[175];
  v25 = v1[174];
  v26 = v1[173];
  v27 = v1[172];
  v28 = v1[171];
  v29 = v1[170];
  v30 = v1[169];
  v31 = v1[168];
  v32 = v1[167];
  v33 = v1[166];
  v34 = v1[165];
  v35 = v1[164];
  v36 = v1[163];
  v37 = v1[162];
  v38 = v1[161];
  v39 = v1[160];
  v40 = v1[159];
  v41 = v1[158];
  v42 = v1[157];
  v43 = v1[156];
  v44 = v1[155];
  v45 = v1[154];
  v46 = v1[153];
  v47 = v1[150];
  v48 = v1[149];
  v49 = v1[148];
  v50 = v1[147];
  v51 = v1[146];
  v52 = v1[145];
  v53 = v1[144];
  v54 = v1[143];
  v55 = v1[142];
  v56 = v1[141];
  v57 = v1[140];
  v58 = v1[139];
  v59 = v1[138];
  v60 = v1[137];
  v61 = v1[136];
  v62 = v1[135];
  v63 = v1[132];
  v64 = v1[131];
  v65 = v1[130];
  v66 = v1[129];
  v14 = v1[125];
  *(v2 - 256) = v1[128];
  *(v2 - 248) = v14;
  v15 = v1[123];
  *(v2 - 240) = v1[124];
  *(v2 - 232) = v15;
  v16 = v1[121];
  *(v2 - 224) = v1[122];
  *(v2 - 216) = v16;
  v17 = v1[119];
  *(v2 - 208) = v1[120];
  *(v2 - 200) = v17;
  v18 = v1[117];
  *(v2 - 192) = v1[118];
  *(v2 - 184) = v18;
  v19 = v1[115];
  *(v2 - 176) = v1[116];
  *(v2 - 168) = v19;
  v20 = v1[113];
  *(v2 - 160) = v1[114];
  *(v2 - 152) = v20;
  v21 = v1[111];
  *(v2 - 144) = v1[112];
  *(v2 - 136) = v21;
  v22 = v1[109];
  *(v2 - 128) = v1[110];
  *(v2 - 120) = v22;
  v23 = v1[107];
  *(v2 - 112) = v1[108];
  *(v2 - 104) = v23;
  *(v2 - 96) = v1[106];
}

void OUTLINED_FUNCTION_3_37()
{
  v2 = v0[160];
  v3 = v0[159];
  v1 = v0[158];
  v4 = v0[157];
}

void OUTLINED_FUNCTION_4_34()
{
  v3 = v0[160];
  v4 = v0[159];
  v1 = v0[158];
  v2 = v0[157];
}

void OUTLINED_FUNCTION_5_31()
{
  v2 = v0[156];
  v3 = v0[155];
  v4 = v0[154];
  v5 = v0[153];
  v1 = v0[150];
}

uint64_t OUTLINED_FUNCTION_6_27()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_7_26()
{
  v2 = v0[154];
  v3 = v0[153];
  v1 = v0[150];
  v4 = v0[149];
}

void OUTLINED_FUNCTION_11_20()
{
  v2 = v0[147];
  v3 = v0[146];
  v1 = v0[145];
}

uint64_t OUTLINED_FUNCTION_14_24()
{
  v1 = v0[176];
  v2 = v0[175];
  v3 = v0[138];
  v4 = v0[134];
  v5 = v0[133];
  result = v0[131];
  v7 = v0[126];
  v8 = *(v0[127] + 8);
  return result;
}

void OUTLINED_FUNCTION_19_15()
{
  v2 = v0[155];
  v3 = v0[154];
  v1 = v0[153];
}

uint64_t OUTLINED_FUNCTION_26_10()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_9(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_266DA7BCC();
}

uint64_t OUTLINED_FUNCTION_41_2()
{

  return sub_266C47654(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_48_6(uint64_t a1)
{
  v6 = *(v2 + 840);
  v4 = *(v2 + 832);

  return sub_266C4756C(a1, v1);
}

uint64_t OUTLINED_FUNCTION_49_6()
{
  v4 = *(v2 - 88);

  return sub_266C47654(v4, v0, v1);
}

uint64_t OUTLINED_FUNCTION_56_2()
{

  return sub_266DA800C();
}

uint64_t OUTLINED_FUNCTION_58_1(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 824);
  return result;
}

uint64_t OUTLINED_FUNCTION_64_0()
{
  result = v0[217];
  v3 = v0[214];
  *(v1 - 88) = v0[164];
  v4 = v0[163];
  v5 = v0[136];
  v6 = v0[134];
  v7 = v0[133];
  v8 = v0[129];
  v9 = v0[127];
  v10 = v0[126];
  return result;
}

uint64_t OUTLINED_FUNCTION_66_2()
{
  result = v0[189];
  v3 = v0[186];
  *(v1 - 88) = v0[184];
  v4 = v0[183];
  v5 = v0[140];
  v6 = v0[134];
  v7 = v0[133];
  v8 = v0[132];
  v9 = v0[127];
  v10 = v0[126];
  return result;
}

uint64_t OUTLINED_FUNCTION_67_1()
{
  result = v0[208];
  v3 = v0[205];
  *(v1 - 88) = v0[170];
  v4 = v0[169];
  v5 = v0[137];
  v6 = v0[134];
  v7 = v0[133];
  v8 = v0[130];
  v9 = v0[127];
  v10 = v0[126];
  return result;
}

uint64_t OUTLINED_FUNCTION_68_1()
{
  result = v0[226];
  v3 = v0[223];
  *(v1 - 88) = v0[158];
  v4 = v0[157];
  v5 = v0[135];
  v6 = v0[134];
  v7 = v0[133];
  v8 = v0[128];
  v9 = v0[127];
  v10 = v0[126];
  return result;
}

uint64_t OUTLINED_FUNCTION_81(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return sub_266C4756C(a14, a17);
}

uint64_t OUTLINED_FUNCTION_82_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(a1 + 88) = a12;
}

uint64_t OUTLINED_FUNCTION_83_2(uint64_t a1)
{
  *(a1 + 16) = v3;

  return sub_266C475DC(v1, a1 + v2);
}

uint64_t OUTLINED_FUNCTION_86_0()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_104_1()
{

  return sub_266C475DC(v1, v0 + v2);
}

uint64_t OUTLINED_FUNCTION_105_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_106_1()
{

  return sub_266C4756C(v1, v0);
}

void OUTLINED_FUNCTION_107_1()
{
}

id OUTLINED_FUNCTION_108_1(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_109_1(uint64_t a1)
{
  v4 = *(v2 + 840);

  return sub_266C476A8(a1, v1);
}

void OUTLINED_FUNCTION_110_1()
{

  JUMPOUT(0x26D5F1780);
}

uint64_t OUTLINED_FUNCTION_111_1(uint64_t a1)
{
  v4 = *(v2 + 840);

  return sub_266C476A8(a1, v1);
}

uint64_t OUTLINED_FUNCTION_117_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[32];
  v4 = v2[24];
  return v2[22];
}

uint64_t OUTLINED_FUNCTION_122()
{
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
}

uint64_t OUTLINED_FUNCTION_123(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return sub_266DA7C7C();
}

uint64_t sub_266D1111C()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CCA38);
  v1 = __swift_project_value_buffer(v0, qword_2800CCA38);
  if (qword_2800C90F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_2800E6178);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_266D111E4@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for FindDeviceAndPlaySoundIntentHandler();
  *a1 = v3;

  return v3;
}

uint64_t sub_266D11298(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D112AC()
{
  if (qword_2800C9360 != -1)
  {
    OUTLINED_FUNCTION_0_60();
  }

  v1 = *(v0 + 16);
  v2 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v2, qword_2800CCA38);
  v3 = v1;
  v4 = sub_266DA948C();
  v5 = sub_266DAAB0C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = OUTLINED_FUNCTION_14_0();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_266C08000, v4, v5, "Resolving devices slot for intent %@", v7, 0xCu);
    sub_266C3A088(v8, &qword_2800C9F78, &unk_266DB1430);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_33_6();
  }

  v10 = *(v0 + 16);

  v11 = sub_266D14B44(v10);
  if (v11)
  {
    v12 = v11;
    v13 = sub_266DA948C();
    v14 = sub_266DAAB0C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_14_0();
      *v15 = 134217984;
      *(v15 + 4) = sub_266C3A14C(v12, v16, v17);
      _os_log_impl(&dword_266C08000, v13, v14, "Using intent device details: %ld devices", v15, 0xCu);
      OUTLINED_FUNCTION_33_6();
    }

    v18 = *(v0 + 24);

    v19 = sub_266D11E20(v12);

LABEL_9:
    OUTLINED_FUNCTION_43_4();

    return v20(v19);
  }

  v22 = [*(v0 + 16) deviceQuery];
  *(v0 + 32) = v22;
  if (!v22)
  {
    v26 = *(v0 + 16);
    v27 = sub_266DA948C();
    v28 = sub_266DAAAFC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 16);
      v30 = OUTLINED_FUNCTION_14_0();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v29;
      *v31 = v29;
      v32 = v29;
      OUTLINED_FUNCTION_11_21();
      _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
      sub_266C3A088(v31, &qword_2800C9F78, &unk_266DB1430);
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_5_1();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    OUTLINED_FUNCTION_18_1();
    v19 = swift_allocObject();
    OUTLINED_FUNCTION_22_13(v19, xmmword_266DAE3B0);
    v38 = OUTLINED_FUNCTION_33_8();
    v19[2].n128_u64[0] = sub_266D9F49C(v38);
    goto LABEL_9;
  }

  v23 = v22;
  v24 = swift_task_alloc();
  *(v0 + 40) = v24;
  *v24 = v0;
  v24[1] = sub_266D11610;
  v25 = *(v0 + 24);

  return sub_266D11ABC(v23);
}

uint64_t sub_266D11610()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v2 = v1;
  v4 = *(v3 + 40);
  *v2 = *v0;
  *(v1 + 48) = v5;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266D116FC()
{
  OUTLINED_FUNCTION_22_0();

  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_43_4();

  return v2();
}

uint64_t sub_266D11778(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_266D1183C;

  return sub_266D11298(v6);
}

uint64_t sub_266D1183C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v2 = v1[5];
  v3 = v1[4];
  v4 = v1[3];
  v5 = v1[2];
  v6 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;

  type metadata accessor for FindDeviceAndPlaySoundDevicesResolutionResult();
  v8 = sub_266DAA91C();

  (v3)[2](v3, v8);

  _Block_release(v3);
  OUTLINED_FUNCTION_28();

  return v9();
}

uint64_t sub_266D119AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAF00, &qword_266DB32D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_266DAA9EC();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_266DB7BD8;
  v10[5] = v9;
  sub_266D14878(0, 0, v7, &unk_266DB7BE8, v10);
}

uint64_t sub_266D11ABC(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D11AD0()
{
  OUTLINED_FUNCTION_22_0();
  v2 = OUTLINED_FUNCTION_28_7((v1[7] + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_findDeviceSession));
  *(v0 + 16) = v3;
  v1[3] = v4;
  v1[4] = v2;

  v5 = swift_task_alloc();
  v1[8] = v5;
  *v5 = v1;
  v5[1] = sub_266D11B88;
  v6 = v1[6];

  return FindDeviceSessionManager.search(query:)();
}

uint64_t sub_266D11B88()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_21_1();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[9] = v0;

  if (v0)
  {
    v11 = v5[4];

    v12 = sub_266D11D14;
  }

  else
  {
    v5[10] = v3;
    v13 = v5[4];

    v12 = sub_266D11CAC;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_266D11CAC()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 56);
  sub_266D11E20(*(v0 + 80));
  OUTLINED_FUNCTION_17_1();

  v2 = OUTLINED_FUNCTION_15_5();

  return v3(v2);
}

uint64_t sub_266D11D14()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 72);
  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
  if ((swift_dynamicCast() & 1) != 0 && (v3 = *(v0 + 88), v3 < 4))
  {
    v4 = qword_266DB7C30[v3];
  }

  else
  {
    v4 = 5;
  }

  v5 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  OUTLINED_FUNCTION_18_1();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_22_13(v6, xmmword_266DAE3B0);
  v6[2].n128_u64[0] = sub_266D9F49C(v4);

  OUTLINED_FUNCTION_43_4();

  return v7(v6);
}

__n128 *sub_266D11E20(unint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_43_5();
  if ((sub_266D1E0B4() & 1) == 0)
  {
    OUTLINED_FUNCTION_43_5();
    if ((sub_266D1E0E8() & 1) == 0)
    {
      if (qword_2800C9360 != -1)
      {
        goto LABEL_57;
      }

      goto LABEL_15;
    }
  }

  v6 = sub_266C3A14C(a1, v4, v5);
  if (!v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    OUTLINED_FUNCTION_18_1();
    v12 = swift_allocObject();
    OUTLINED_FUNCTION_22_13(v12, xmmword_266DAE3B0);
    v13 = 4;
    goto LABEL_18;
  }

  v7 = v6;

  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      OUTLINED_FUNCTION_43_5();
      if (sub_266D1E0B4())
      {
        if ((sub_266D14194() & 1) != 0 || sub_266C3A14C(a1, v20, v21) < 2)
        {
          v23 = a1;
        }

        else
        {
          Array<A>.excludeThisDevice.getter();
          v23 = v22;

          if (qword_2800C9360 != -1)
          {
            OUTLINED_FUNCTION_0_60();
          }

          v24 = sub_266DA94AC();
          OUTLINED_FUNCTION_94(v24, qword_2800CCA38);
          v25 = sub_266DA948C();
          v26 = sub_266DAAB0C();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = OUTLINED_FUNCTION_14_0();
            v28 = OUTLINED_FUNCTION_13_0();
            v62 = v28;
            *v27 = 136446210;
            *(v27 + 4) = sub_266C22A3C(0xD00000000000001ALL, 0x8000000266DC3350, &v62);
            _os_log_impl(&dword_266C08000, v25, v26, "**** %{public}s ****", v27, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v28);
            OUTLINED_FUNCTION_6_1();
            OUTLINED_FUNCTION_6_1();
          }

          MEMORY[0x28223BE20](v29);
          OUTLINED_FUNCTION_0_4();
          *(v30 - 16) = v2;
          sub_266CB9F3C(sub_266C48BC0, v31, v23);
        }

        v46 = Array<A>.nearbyDevicesOrAll.getter(v23);

        v49 = sub_266C3A14C(v46, v47, v48);

        if (v49 >= 2)
        {
          v52 = sub_266D140C4(v46);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
          OUTLINED_FUNCTION_18_1();
          v12 = swift_allocObject();
          OUTLINED_FUNCTION_22_13(v12, xmmword_266DAE3B0);
          if (v52)
          {
            sub_266C6A8C8(v46);
            v44 = sub_266C6AA38(8);
          }

          else
          {
            v44 = sub_266DA3870(v46);
          }

          goto LABEL_38;
        }

        if (sub_266C3A14C(v46, v50, v51))
        {
          v53 = OUTLINED_FUNCTION_63();
          sub_266CB9F54(v53, v54, v46);
          if ((v46 & 0xC000000000000001) != 0)
          {
            v55 = MEMORY[0x26D5F1780](0, v46);
          }

          else
          {
            v55 = *(v46 + 32);
          }

          v56 = v55;
          v12 = sub_266D1393C(v55);

          return v12;
        }

        if (qword_2800C9360 != -1)
        {
          OUTLINED_FUNCTION_0_60();
        }

        v57 = sub_266DA94AC();
        OUTLINED_FUNCTION_94(v57, qword_2800CCA38);
        v58 = sub_266DA948C();
        v59 = sub_266DAAAFC();
        if (OUTLINED_FUNCTION_12_0(v59))
        {
          *OUTLINED_FUNCTION_11() = 0;
          OUTLINED_FUNCTION_42_4(&dword_266C08000, v60, v61, "The candidateDevices were filtered down to nothing.");
          OUTLINED_FUNCTION_6_1();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
        OUTLINED_FUNCTION_18_1();
        v12 = swift_allocObject();
        OUTLINED_FUNCTION_22_13(v12, xmmword_266DAE3B0);
        v43 = OUTLINED_FUNCTION_33_8();
      }

      else
      {
        if (qword_2800C9360 != -1)
        {
          OUTLINED_FUNCTION_0_60();
        }

        v38 = sub_266DA94AC();
        OUTLINED_FUNCTION_94(v38, qword_2800CCA38);
        v39 = sub_266DA948C();
        v40 = sub_266DAAAEC();
        if (OUTLINED_FUNCTION_12_0(v40))
        {
          *OUTLINED_FUNCTION_11() = 0;
          OUTLINED_FUNCTION_42_4(&dword_266C08000, v41, v42, "[Resolve Device] All candidates are devices and FindDevice is removed, returning unsupported.");
          OUTLINED_FUNCTION_6_1();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
        OUTLINED_FUNCTION_18_1();
        v12 = swift_allocObject();
        OUTLINED_FUNCTION_22_13(v12, xmmword_266DAE3B0);
        v43 = 10;
      }

      v44 = sub_266D9F49C(v43);
LABEL_38:
      v12[2].n128_u64[0] = v44;
LABEL_39:

      return v12;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D5F1780](v8, a1);
    }

    else
    {
      if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v9 = *(a1 + 8 * v8 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    v10 = v9;
    v11 = sub_266CC7C44();

    ++v8;
    if (v11)
    {
      if (qword_2800C9360 != -1)
      {
        OUTLINED_FUNCTION_0_60();
      }

      v32 = sub_266DA94AC();
      OUTLINED_FUNCTION_94(v32, qword_2800CCA38);
      v33 = sub_266DA948C();
      v34 = sub_266DAAB0C();
      if (OUTLINED_FUNCTION_16_0(v34))
      {
        v35 = OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_40_4(v35);
        _os_log_impl(&dword_266C08000, v33, v34, "Candidate devices includes at least one item; calling resolveItems logic.", v7, 2u);
        OUTLINED_FUNCTION_33_6();
      }

      v12 = sub_266D13C2C(a1, v36, v37);
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  OUTLINED_FUNCTION_0_60();
LABEL_15:
  v14 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v14, qword_2800CCA38);
  v15 = sub_266DA948C();
  v16 = sub_266DAAAEC();
  if (OUTLINED_FUNCTION_12_0(v16))
  {
    v17 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_9_0(v17);
    OUTLINED_FUNCTION_7_0(&dword_266C08000, v18, v19, "[Resolve Device] Both apps removed, returning unsupported.");
    OUTLINED_FUNCTION_5_1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  OUTLINED_FUNCTION_18_1();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_22_13(v12, xmmword_266DAE3B0);
  v13 = 10;
LABEL_18:
  v12[2].n128_u64[0] = sub_266D9F49C(v13);
  return v12;
}

uint64_t sub_266D12450()
{
  OUTLINED_FUNCTION_22_0();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_266DA7F0C();
  v1[14] = v3;
  OUTLINED_FUNCTION_11_3(v3);
  v1[15] = v4;
  v6 = *(v5 + 64) + 15;
  v1[16] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB478, &qword_266DB7540) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v8 = sub_266DA7C5C();
  v1[18] = v8;
  OUTLINED_FUNCTION_11_3(v8);
  v1[19] = v9;
  v11 = *(v10 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_266D12594()
{
  v1 = sub_266D14B44(*(v0 + 96));
  if (v1)
  {
    v4 = v1;
    if (sub_266C3A14C(v1, v2, v3))
    {
      v5 = OUTLINED_FUNCTION_63();
      sub_266CB9F54(v5, v6, v4);
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D5F1780](0, v4);
      }

      else
      {
        v7 = *(v4 + 32);
      }

      v75 = v7;
      v9 = *(v0 + 160);
      v8 = *(v0 + 168);
      v10 = *(v0 + 144);
      v11 = *(v0 + 152);
      v12 = *(v0 + 136);
      (*(v11 + 104))(v8, *MEMORY[0x277D5BB28], v10);
      v13 = sub_266CC8E48();
      sub_266DA7ADC();
      (*(v11 + 16))(v9, v8, v10);
      v14 = sub_266DA7A5C();
      __swift_storeEnumTagSinglePayload(v12, 1, 1, v14);
      OUTLINED_FUNCTION_18_1();
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0;
      v16 = v75;
      sub_266DA7ACC();
      sub_266DA7A1C();
      v17 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      sub_266DA7A2C();

      (*(v11 + 8))(v8, v10);
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      if ((sub_266CC7C44() & 1) != 0 && (OUTLINED_FUNCTION_44_4((*(v0 + 104) + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_appInstalledState)), (sub_266D1E0E8() & 1) == 0))
      {

        if (qword_2800C9360 != -1)
        {
          OUTLINED_FUNCTION_0_60();
        }

        v45 = sub_266DA94AC();
        OUTLINED_FUNCTION_94(v45, qword_2800CCA38);
        v46 = sub_266DA948C();
        v47 = sub_266DAAAEC();
        if (OUTLINED_FUNCTION_95(v47))
        {
          v48 = OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_40_4(v48);
          OUTLINED_FUNCTION_45_0(&dword_266C08000, v49, v50, "Confirm intent: resolved device is an item and the Find Items app is not installed.");
          OUTLINED_FUNCTION_33_6();
        }

        v51 = objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntentResponse());
        v44 = 106;
      }

      else if (sub_266CC7C44() & 1) != 0 || (OUTLINED_FUNCTION_44_4((*(v0 + 104) + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_appInstalledState)), (sub_266D1E0B4()))
      {
        v18 = [v75 canPlaySound];
        if (v18)
        {
          v19 = v18;
          v20 = [v18 BOOLValue];

          if (v20)
          {
            if ((sub_266CC7C44() & 1) == 0)
            {
              goto LABEL_13;
            }

            v21 = *(v0 + 104) + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_findDeviceSession;
            v22 = *(v21 + 16);
            (*(v21 + 8))(*v21);
            v23 = *(v0 + 80);
            v24 = *(v0 + 88);
            __swift_project_boxed_opaque_existential_1((v0 + 56), v23);
            LOBYTE(v22) = (*(v24 + 40))(v23, v24);
            __swift_destroy_boxed_opaque_existential_0((v0 + 56));
            if ((v22 & 1) == 0)
            {
              v25 = 0;
            }

            else
            {
LABEL_13:
              v25 = 1;
            }

            v66 = *(v0 + 120);
            v65 = *(v0 + 128);
            v67 = *(v0 + 104);
            v68 = *(v0 + 112);
            v69 = objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntentResponse());
            v70 = OUTLINED_FUNCTION_30_10();
            v71 = FindDeviceAndPlaySoundIntentResponse.init(code:userActivity:)(v70, 0);
            [v71 setDevice_];
            v72 = OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceState;
            v73 = v71;
            sub_266DA7EFC();
            LOBYTE(v71) = sub_266D54DE8(v4, (v67 + v72));
            (*(v66 + 8))(v65, v68);
            [v73 _setRequiresAuthentication_];

            if (v25)
            {
              Array<A>.needsConfirmation.getter(v4);
            }

            v16 = v75;
            sub_266D14BA4();
            v74 = sub_266DAABEC();
            [v73 setNeedsConfirmPlaySound_];

            goto LABEL_36;
          }
        }

        if (qword_2800C9360 != -1)
        {
          OUTLINED_FUNCTION_0_60();
        }

        v37 = sub_266DA94AC();
        OUTLINED_FUNCTION_94(v37, qword_2800CCA38);
        v38 = sub_266DA948C();
        v39 = sub_266DAAB0C();
        if (OUTLINED_FUNCTION_95(v39))
        {
          v40 = OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_40_4(v40);
          OUTLINED_FUNCTION_45_0(&dword_266C08000, v41, v42, "Confirm intent: resolved device cannot play sounds.");
          OUTLINED_FUNCTION_33_6();
        }

        v43 = objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntentResponse());
        v44 = 107;
      }

      else
      {

        if (qword_2800C9360 != -1)
        {
          OUTLINED_FUNCTION_0_60();
        }

        v52 = sub_266DA94AC();
        OUTLINED_FUNCTION_94(v52, qword_2800CCA38);
        v53 = sub_266DA948C();
        v54 = sub_266DAAAEC();
        if (OUTLINED_FUNCTION_95(v54))
        {
          v55 = OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_40_4(v55);
          OUTLINED_FUNCTION_45_0(&dword_266C08000, v56, v57, "Confirm intent: resolved device is a Device and the Find Device app is not installed.");
          OUTLINED_FUNCTION_33_6();
        }

        v58 = objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntentResponse());
        v44 = 105;
      }

      FindDeviceAndPlaySoundIntentResponse.init(code:userActivity:)(v44, 0);
LABEL_36:

      goto LABEL_37;
    }
  }

  if (qword_2800C9360 != -1)
  {
    OUTLINED_FUNCTION_0_60();
  }

  v26 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v26, qword_2800CCA38);
  v27 = sub_266DA948C();
  v28 = sub_266DAAAEC();
  if (OUTLINED_FUNCTION_16_0(v28))
  {
    v29 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_9_0(v29);
    OUTLINED_FUNCTION_11_21();
    _os_log_impl(v30, v31, v32, v33, v34, 2u);
    OUTLINED_FUNCTION_5_1();
  }

  v35 = objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntentResponse());
  v36 = OUTLINED_FUNCTION_33_8();
  FindDeviceAndPlaySoundIntentResponse.init(code:userActivity:)(v36, 0);
LABEL_37:
  v60 = *(v0 + 160);
  v59 = *(v0 + 168);
  v62 = *(v0 + 128);
  v61 = *(v0 + 136);

  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_266D12C20(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_266D1514C;

  return sub_266D12450();
}

uint64_t sub_266D12CE4()
{
  OUTLINED_FUNCTION_22_0();
  v1[13] = v2;
  v1[14] = v0;
  v3 = sub_266DA7F0C();
  v1[15] = v3;
  OUTLINED_FUNCTION_11_3(v3);
  v1[16] = v4;
  v6 = *(v5 + 64) + 15;
  v1[17] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266D12D90()
{
  v60 = v0;
  v1 = sub_266D14B44(*(v0 + 104));
  if (!v1)
  {
    goto LABEL_15;
  }

  v4 = v1;
  if (!sub_266C3A14C(v1, v2, v3))
  {
LABEL_14:

LABEL_15:
    if (qword_2800C9360 != -1)
    {
      OUTLINED_FUNCTION_0_60();
    }

    v27 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v27, qword_2800CCA38);
    v28 = sub_266DA948C();
    v29 = sub_266DAAAEC();
    if (OUTLINED_FUNCTION_16_0(v29))
    {
      v30 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_9_0(v30);
      OUTLINED_FUNCTION_11_21();
      _os_log_impl(v31, v32, v33, v34, v35, 2u);
      OUTLINED_FUNCTION_5_1();
    }

    v36 = objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntentResponse());
    v37 = OUTLINED_FUNCTION_33_8();
    FindDeviceAndPlaySoundIntentResponse.init(code:userActivity:)(v37, 0);
LABEL_20:
    v38 = *(v0 + 136);

    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_26_4();

    __asm { BRAA            X2, X16 }
  }

  v5 = OUTLINED_FUNCTION_63();
  sub_266CB9F54(v5, v6, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x26D5F1780](0, v4);
  }

  else
  {
    v7 = *(v4 + 32);
  }

  *(v0 + 144) = v7;
  v8 = v7;
  v9 = sub_266C22F3C(v8);
  *(v0 + 152) = v9;
  *(v0 + 160) = v10;
  if (!v10)
  {

    goto LABEL_14;
  }

  v11 = v9;
  v12 = v10;
  v14 = *(v0 + 128);
  v13 = *(v0 + 136);
  v16 = *(v0 + 112);
  v15 = *(v0 + 120);
  v17 = OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceState;
  sub_266DA7EFC();
  LOBYTE(v16) = sub_266D54DE8(v4, (v16 + v17));

  (*(v14 + 8))(v13, v15);
  if (v16)
  {

    if (qword_2800C9360 != -1)
    {
      OUTLINED_FUNCTION_0_60();
    }

    v18 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v18, qword_2800CCA38);
    v19 = sub_266DA948C();
    v20 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v20))
    {
      v21 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_9_0(v21);
      OUTLINED_FUNCTION_11_21();
      _os_log_impl(v22, v23, v24, v25, v26, 2u);
      OUTLINED_FUNCTION_5_1();
    }

    [objc_msgSend(objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntentResponse()) init)];
    goto LABEL_12;
  }

  if (sub_266CC7C44())
  {
    v41 = *(v0 + 112) + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_findDeviceSession;
    v42 = *(v41 + 16);
    (*(v41 + 8))(*v41);
    v43 = *(v0 + 40);
    v44 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v43);
    LOBYTE(v42) = (*(v44 + 40))(v43, v44);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    if ((v42 & 1) == 0)
    {

      v58 = objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntentResponse());
      [FindDeviceAndPlaySoundIntentResponse.init(code:userActivity:)(2 0)];
LABEL_12:

      goto LABEL_20;
    }
  }

  if (qword_2800C9360 != -1)
  {
    OUTLINED_FUNCTION_0_60();
  }

  v45 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v45, qword_2800CCA38);

  v46 = sub_266DA948C();
  v47 = sub_266DAAB0C();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = OUTLINED_FUNCTION_14_0();
    v49 = OUTLINED_FUNCTION_13_0();
    v59 = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_266C22A3C(v11, v12, &v59);
    _os_log_impl(&dword_266C08000, v46, v47, "Handle intent: attempting to play sound on device: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  v50 = *(v0 + 112);
  v51 = OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_findDeviceSession;
  *(v0 + 168) = OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_findDeviceSession;
  v52 = OUTLINED_FUNCTION_28_7((v50 + v51));
  v46[7].isa = v53;
  *(v0 + 64) = v54;
  *(v0 + 72) = v52;

  v55 = swift_task_alloc();
  *(v0 + 176) = v55;
  *v55 = v0;
  v55[1] = sub_266D1322C;
  OUTLINED_FUNCTION_26_4();

  return FindDeviceSessionManager.aceProxiedPlaySound(deviceId:)();
}

uint64_t sub_266D1322C()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v4 = v3;

  v5 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_266D13338, 0, 0);
}

uint64_t sub_266D13338()
{
  OUTLINED_FUNCTION_34();
  if (*(v1 + 201) == 1 && (v2 = *(v1 + 200), v2 == 4))
  {
    v11 = *(v1 + 160);
    v12 = OUTLINED_FUNCTION_28_7((*(v1 + 112) + *(v1 + 168)));
    *(v0 + 80) = v13;
    *(v1 + 88) = v14;
    *(v1 + 96) = v12;

    v15 = swift_task_alloc();
    *(v1 + 184) = v15;
    *v15 = v1;
    v15[1] = sub_266D13498;
    v16 = *(v1 + 152);

    return sub_266CF40D8();
  }

  else
  {
    v3 = *(v1 + 160);
    v4 = *(v1 + 144);

    v5 = objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntentResponse());
    v6 = OUTLINED_FUNCTION_30_10();
    FindDeviceAndPlaySoundIntentResponse.init(code:userActivity:)(v6, 0);

    v7 = *(v1 + 136);

    v8 = OUTLINED_FUNCTION_15_5();

    return v9(v8);
  }
}

uint64_t sub_266D13498()
{
  OUTLINED_FUNCTION_34();
  v1 = *v0;
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v4 = v1[23];
  v5 = v1[20];
  v6 = *v0;
  OUTLINED_FUNCTION_21_1();
  *v7 = v6;
  *(v9 + 192) = v8;

  v10 = v1[12];

  return MEMORY[0x2822009F8](sub_266D135D0, 0, 0);
}

uint64_t sub_266D135D0()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[24];
  v2 = v0[18];
  v3 = objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntentResponse());
  v4 = FindDeviceAndPlaySoundIntentResponse.init(code:userActivity:)(102, 0);
  [v2 setLocation_];
  [v4 setDevice_];

  v5 = v0[17];

  v6 = OUTLINED_FUNCTION_15_5();

  return v7(v6);
}

uint64_t sub_266D136A8(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_18_1();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_266D119AC(a6, v10);
}

uint64_t sub_266D13728(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_266D137EC;

  return sub_266D12CE4();
}

uint64_t sub_266D137EC()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  OUTLINED_FUNCTION_23_0();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v9 = v8;

  (v5)[2](v5, v2);
  _Block_release(v5);

  OUTLINED_FUNCTION_28();

  return v10();
}

uint64_t sub_266D1393C(void *a1)
{
  v2 = [a1 isThisDevice];
  if (v2 && (v3 = v2, v4 = [v2 BOOLValue], v3, v4) && (sub_266D14194() & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    OUTLINED_FUNCTION_18_1();
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_22_13(v9, xmmword_266DAE3B0);
    v12 = sub_266D9F49C(6);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266DAE3B0;
    *(inited + 32) = a1;
    v6 = a1;
    v7 = sub_266D140C4(inited);
    swift_setDeallocating();
    v8 = inited;
    sub_266C6F074();
    if (v7)
    {
      OUTLINED_FUNCTION_18_1();
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_266DAE3B0;
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_266DAE3B0;
      *(v10 + 32) = v6;
      type metadata accessor for FindDeviceAndPlaySoundDevicesResolutionResult();
      v11 = v6;
      sub_266C6A8C8(v10);
      swift_setDeallocating();
      sub_266C6F074();
      v12 = sub_266C6AA38(8);
    }

    else
    {
      if (qword_2800C9360 != -1)
      {
        OUTLINED_FUNCTION_0_60();
      }

      v13 = sub_266DA94AC();
      OUTLINED_FUNCTION_94(v13, qword_2800CCA38);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_266DAE3B0;
      *(v14 + 32) = v6;
      v15 = v6;
      v16 = sub_266DA948C();
      v17 = sub_266DAAB0C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_14_0();
        v19 = OUTLINED_FUNCTION_13_0();
        v25 = v19;
        v20 = OUTLINED_FUNCTION_31_6(4.8751e-34);
        *(v18 + 4) = sub_266C22A3C(v20, 0xE800000000000000, &v25);
        _os_log_impl(&dword_266C08000, v16, v17, "**** %{public}s ****", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_6_1();
      }

      MEMORY[0x28223BE20](v21);
      OUTLINED_FUNCTION_0_4();
      *(v22 - 16) = v8;
      sub_266CB9F3C(sub_266C48BC0, v23, v14);
      swift_setDeallocating();
      sub_266C6F074();
      OUTLINED_FUNCTION_18_1();
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_22_13(v9, xmmword_266DAE3B0);
      v12 = sub_266DA380C(v15);
    }
  }

  *(v9 + 32) = v12;
  return v9;
}

__n128 *sub_266D13C2C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_266C3A14C(a1, a2, a3);
  v6 = OUTLINED_FUNCTION_17_1();
  v9 = sub_266C3A14C(v6, v7, v8);
  v10 = v9;
  if (v3 >= 2)
  {
    v11 = 0;
    while (v10 != v11)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = OUTLINED_FUNCTION_6_24();
        v12 = MEMORY[0x26D5F1780](v15);
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v13 = v12;
      v14 = sub_266CC7C44();

      ++v11;
      if ((v14 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    OUTLINED_FUNCTION_44_4((v4 + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_appInstalledState));
    if (sub_266D1E0E8())
    {
LABEL_21:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      OUTLINED_FUNCTION_18_1();
      v30 = swift_allocObject();
      OUTLINED_FUNCTION_22_13(v30, xmmword_266DAE3B0);
      v32 = OUTLINED_FUNCTION_17_1();
      v33 = sub_266DA3870(v32);
      goto LABEL_36;
    }

    if (qword_2800C9360 != -1)
    {
      OUTLINED_FUNCTION_0_60();
    }

    v46 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v46, qword_2800CCA38);
    v47 = sub_266DA948C();
    v48 = sub_266DAAAEC();
    if (OUTLINED_FUNCTION_95(v48))
    {
      v49 = OUTLINED_FUNCTION_11();
      *v49 = 0;
      _os_log_impl(&dword_266C08000, v47, v10, "All candidates are items and the Find Items app is not installed.", v49, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    OUTLINED_FUNCTION_18_1();
    v30 = swift_allocObject();
    OUTLINED_FUNCTION_22_13(v30, xmmword_266DAE3B0);
    v50 = OUTLINED_FUNCTION_17_1();
    sub_266C6A8C8(v50);
    v33 = sub_266C6AA38(9);
    goto LABEL_36;
  }

  if (!v9)
  {
    if (qword_2800C9360 != -1)
    {
      OUTLINED_FUNCTION_0_60();
    }

    v34 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v34, qword_2800CCA38);
    v35 = sub_266DA948C();
    v36 = sub_266DAAAFC();
    if (OUTLINED_FUNCTION_12_0(v36))
    {
      v37 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_9_0(v37);
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v38, v39, "Expected candidate item to not be empty.");
      OUTLINED_FUNCTION_5_1();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    OUTLINED_FUNCTION_18_1();
    v30 = swift_allocObject();
    OUTLINED_FUNCTION_22_13(v30, xmmword_266DAE3B0);
    v40 = OUTLINED_FUNCTION_33_8();
    v33 = sub_266D9F49C(v40);
LABEL_36:
    v30[2].n128_u64[0] = v33;
    return v30;
  }

  v16 = OUTLINED_FUNCTION_63();
  sub_266CB9F54(v16, v17, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_40:
    v18 = MEMORY[0x26D5F1780](0, a1);
  }

  else
  {
    v18 = *(a1 + 32);
  }

  v19 = v18;
  if (qword_2800C9360 != -1)
  {
    OUTLINED_FUNCTION_0_60();
  }

  v20 = sub_266DA94AC();
  v21 = __swift_project_value_buffer(v20, qword_2800CCA38);
  v22 = sub_266DA948C();
  v23 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_95(v23))
  {
    v24 = OUTLINED_FUNCTION_14_0();
    v25 = OUTLINED_FUNCTION_13_0();
    v52 = v25;
    v26 = OUTLINED_FUNCTION_31_6(4.8751e-34);
    *(v24 + 4) = sub_266C22A3C(v26, 0xE800000000000000, &v52);
    _os_log_impl(&dword_266C08000, v22, v10, "**** %{public}s ****", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_4();
  *(v28 - 16) = v21;
  sub_266CB9F3C(sub_266C488B4, v29, a1);
  OUTLINED_FUNCTION_44_4((v4 + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_appInstalledState));
  if (sub_266D1E0E8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    OUTLINED_FUNCTION_18_1();
    v30 = swift_allocObject();
    OUTLINED_FUNCTION_22_13(v30, xmmword_266DAE3B0);
    v31 = sub_266DA380C(v19);
  }

  else
  {
    v41 = sub_266DA948C();
    v42 = sub_266DAAAEC();
    if (OUTLINED_FUNCTION_12_0(v42))
    {
      v43 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_9_0(v43);
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v44, v45, "Result is an item and the Find Items app is not installed.");
      OUTLINED_FUNCTION_5_1();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    OUTLINED_FUNCTION_18_1();
    v30 = swift_allocObject();
    OUTLINED_FUNCTION_22_13(v30, xmmword_266DAE3B0);
    v31 = sub_266D9F49C(9);
  }

  v30[2].n128_u64[0] = v31;

  return v30;
}

BOOL sub_266D140C4(unint64_t a1)
{
  Array<A>.hasNonNearbyDevices.getter(a1);
  if (v2)
  {
    v3 = (v1 + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceState);
    v4 = *(v1 + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceState + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceState), *(v1 + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceState + 24));
    if (sub_266DA7B8C())
    {
      return 1;
    }

    v5 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    OUTLINED_FUNCTION_30_10();
    if (sub_266C6A310())
    {
      return 1;
    }

    else
    {
      v8 = (v1 + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceLockStateProvider);
      v9 = *(v1 + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceLockStateProvider + 24);
      v10 = *(v1 + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceLockStateProvider + 32);
      __swift_project_boxed_opaque_existential_1(v8, v9);
      return !SFMDeviceLockStateProviding.isPasscodeProtected.getter(v9, v10);
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266D14194()
{
  v1 = v0;
  v2 = sub_266DA8DFC();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - v8;
  v10 = &v0[OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceState];
  v11 = *&v0[OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceState + 32];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceState], *&v0[OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceState + 24]);
  sub_266DA7B0C();
  v12 = *(v10 + 4);
  __swift_project_boxed_opaque_existential_1(v10, *(v10 + 3));
  v13 = OUTLINED_FUNCTION_30_10();
  if (sub_266C6A314(v13, v12))
  {
    LODWORD(v14) = 1;
  }

  else
  {
    v51 = v0;
    v15 = *MEMORY[0x277D61C70];
    v16 = v3[13];
    v17 = OUTLINED_FUNCTION_39_6();
    v16(v17);
    v18 = sub_266C1A134(v9, v7);
    v19 = v9;
    v20 = v3[1];
    v21 = OUTLINED_FUNCTION_6_24();
    v20(v21);
    if (v18)
    {
      goto LABEL_6;
    }

    v22 = *MEMORY[0x277D61C68];
    v23 = OUTLINED_FUNCTION_39_6();
    v16(v23);
    v24 = sub_266C1A134(v19, v7);
    v25 = OUTLINED_FUNCTION_6_24();
    v20(v25);
    if (v24 & 1) != 0 || (v26 = *MEMORY[0x277D61C90], v27 = OUTLINED_FUNCTION_39_6(), v16(v27), v28 = sub_266C1A134(v19, v7), v29 = OUTLINED_FUNCTION_6_24(), v20(v29), (v28))
    {
LABEL_6:
      LODWORD(v14) = 1;
    }

    else
    {
      v46 = *MEMORY[0x277D61CA0];
      v47 = OUTLINED_FUNCTION_39_6();
      v16(v47);
      LODWORD(v14) = sub_266C1A134(v19, v7);
      v48 = OUTLINED_FUNCTION_6_24();
      v20(v48);
    }

    v9 = v19;
    v1 = v51;
  }

  if (qword_2800C9360 != -1)
  {
    OUTLINED_FUNCTION_0_60();
  }

  v30 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v30, qword_2800CCA38);
  v31 = v1;
  v32 = sub_266DA948C();
  v33 = sub_266DAAB0C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v50 = v9;
    v35 = v34;
    v36 = OUTLINED_FUNCTION_13_0();
    v49 = v2;
    v37 = v3;
    v38 = v36;
    v52 = v36;
    *v35 = 67109634;
    *(v35 + 4) = v14 & 1;
    *(v35 + 8) = 1024;
    LODWORD(v51) = v14;
    v39 = *(v10 + 4);
    __swift_project_boxed_opaque_existential_1(v10, *(v10 + 3));
    v40 = OUTLINED_FUNCTION_30_10();
    *(v35 + 10) = sub_266C6A314(v40, v39) & 1;

    *(v35 + 14) = 2080;
    v41 = *(v10 + 4);
    __swift_project_boxed_opaque_existential_1(v10, *(v10 + 3));
    sub_266DA7B0C();
    v42 = v49;
    v43 = sub_266DAA72C();
    v14 = sub_266C22A3C(v43, v44, &v52);

    *(v35 + 16) = v14;
    LOBYTE(v14) = v51;
    _os_log_impl(&dword_266C08000, v32, v33, "isRemoteTrigger? %{BOOL}d isPersonalRequest: %{BOOL}d, inputOrigin: %s", v35, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v38);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();

    (v37[1])(v50, v42);
  }

  else
  {

    (v3[1])(v9, v2);
  }

  return v14 & 1;
}

id sub_266D145E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FindDeviceAndPlaySoundIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_266D146A8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_266C48BB4;

  return v7();
}

uint64_t sub_266D14790(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_266C4716C;

  return v8();
}

uint64_t sub_266D14878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAF00, &qword_266DB32D8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_266D14E40(a3, v25 - v11);
  v13 = sub_266DAA9EC();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_266C3A088(v12, &qword_2800CAF00, &qword_266DB32D8);
  }

  else
  {
    sub_266DAA9DC();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_266DAA99C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_266DAA75C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_266C3A088(a3, &qword_2800CAF00, &qword_266DB32D8);

      return v23;
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

  sub_266C3A088(a3, &qword_2800CAF00, &qword_266DB32D8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_266D14B44(void *a1)
{
  v1 = [a1 devices];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for DeviceDetail();
  v3 = sub_266DAA93C();

  return v3;
}

unint64_t sub_266D14BA4()
{
  result = qword_2800CCA70;
  if (!qword_2800CCA70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800CCA70);
  }

  return result;
}

uint64_t sub_266D14BE8()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_24_6(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_44(v5);

  return v8(v7);
}

uint64_t sub_266D14C7C()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_24_6(v5);
  *v6 = v7;
  v6[1] = sub_266C48BB4;

  return sub_266D146A8(v1, v2, v4);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_266D14D78(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_24_6(v7);
  *v8 = v9;
  v8[1] = sub_266C48BB4;

  return sub_266D14790(a1, v3, v4, v6);
}

uint64_t sub_266D14E40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAF00, &qword_266DB32D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266D14EB0()
{
  OUTLINED_FUNCTION_34();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_24_6(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_27(v4);

  return v7(v6);
}

uint64_t sub_266D14F48()
{
  OUTLINED_FUNCTION_34();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_24_6(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_27(v4);

  return v7(v6);
}

uint64_t sub_266D14FE0()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_24_6(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_44(v5);

  return v8(v7);
}

uint64_t objectdestroy_10Tm_0()
{
  _Block_release(*(v0 + 24));

  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_266D150B8()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_24_6(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_44(v5);

  return v8(v7);
}

uint64_t OUTLINED_FUNCTION_0_60()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_44(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_22_13(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for FindDeviceAndPlaySoundDevicesResolutionResult();
}

uint64_t OUTLINED_FUNCTION_28_7@<X0>(uint64_t *a1@<X8>)
{
  v1 = *a1;
  v3 = a1[1];
  return a1[2];
}

void OUTLINED_FUNCTION_42_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t *OUTLINED_FUNCTION_43_5()
{
  result = __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *result;
  return result;
}

uint64_t *OUTLINED_FUNCTION_44_4(void *a1)
{
  result = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = *result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for FindMyVerb(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266D1534C()
{
  result = qword_2800CCA78;
  if (!qword_2800CCA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCA78);
  }

  return result;
}

uint64_t sub_266D153A0()
{
  v0 = sub_266DAAF8C();

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

uint64_t sub_266D153F4(char a1)
{
  if (a1)
  {
    return 1735289200;
  }

  else
  {
    return 1684957542;
  }
}

uint64_t sub_266D15414(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_266C19E84();
}

uint64_t sub_266D15438@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266D153A0();
  *a2 = result;
  return result;
}

uint64_t sub_266D15468@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266D153F4(*v1);
  *a1 = result;
  a1[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_266D154A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266D15634();
  v5 = sub_266D15688();
  v6 = sub_266D156DC();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_266D15520()
{
  result = qword_2800CCA80;
  if (!qword_2800CCA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CCA88, &qword_266DB7C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCA80);
  }

  return result;
}

unint64_t sub_266D15588()
{
  result = qword_2800CCA90;
  if (!qword_2800CCA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCA90);
  }

  return result;
}

unint64_t sub_266D155E0()
{
  result = qword_2800CCA98;
  if (!qword_2800CCA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCA98);
  }

  return result;
}

unint64_t sub_266D15634()
{
  result = qword_2800CCAA0;
  if (!qword_2800CCAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCAA0);
  }

  return result;
}

unint64_t sub_266D15688()
{
  result = qword_2800CCAA8;
  if (!qword_2800CCAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCAA8);
  }

  return result;
}

unint64_t sub_266D156DC()
{
  result = qword_2800CCAB0;
  if (!qword_2800CCAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCAB0);
  }

  return result;
}

uint64_t type metadata accessor for SharedLocationVisibilityInvocationFlow()
{
  result = qword_2800CCAD0;
  if (!qword_2800CCAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266D157A4()
{
  result = type metadata accessor for FindFriendSessionManager();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_266D15820()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CCAB8);
  v1 = __swift_project_value_buffer(v0, qword_2800CCAB8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266D158E8()
{
  if (qword_2800C9368 != -1)
  {
    OUTLINED_FUNCTION_0_61();
  }

  v0 = sub_266DA94AC();
  __swift_project_value_buffer(v0, qword_2800CCAB8);
  v1 = sub_266DA948C();
  v2 = sub_266DAAB0C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_266C08000, v1, v2, "SharedLocationVisibilityInvocationFlow on", v3, 2u);
    MEMORY[0x26D5F2480](v3, -1, -1);
  }

  return 1;
}

uint64_t sub_266D159B4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_266D159D4, 0, 0);
}

uint64_t sub_266D159D4()
{
  if (qword_2800C9368 != -1)
  {
    OUTLINED_FUNCTION_0_61();
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, qword_2800CCAB8);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266C08000, v2, v3, "SharedLocationVisibilityInvocationFlow execute", v4, 2u);
    MEMORY[0x26D5F2480](v4, -1, -1);
  }

  v5 = v0[2];
  v6 = v0[3];

  v7 = *v6;
  v8 = *(type metadata accessor for SharedLocationVisibilityInvocationFlow() + 20);
  *(swift_allocObject() + 16) = v7;
  sub_266C358C4();

  sub_266DA7D7C();
  v9 = v0[1];

  return v9();
}

void sub_266D15B44(__int16 a1, uint64_t a2)
{
  if ((a1 & 0x100) != 0)
  {
    if (a1 == 2)
    {
      if (qword_2800C9368 != -1)
      {
        swift_once();
      }

      v11 = sub_266DA94AC();
      __swift_project_value_buffer(v11, qword_2800CCAB8);
      oslog = sub_266DA948C();
      v4 = sub_266DAAB0C();
      if (os_log_type_enabled(oslog, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v26 = v6;
        *v5 = 136315138;
        v12 = SharedLocationVisibility.description.getter(a2);
        v14 = sub_266C22A3C(v12, v13, &v26);

        *(v5 + 4) = v14;
        v10 = "Visibility is already set to %s";
        goto LABEL_11;
      }
    }

    else
    {
      if (qword_2800C9368 != -1)
      {
        swift_once();
      }

      v16 = sub_266DA94AC();
      __swift_project_value_buffer(v16, qword_2800CCAB8);
      oslog = sub_266DA948C();
      v17 = sub_266DAAAEC();
      if (os_log_type_enabled(oslog, v17))
      {
        v5 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v26 = v18;
        *v5 = 136315394;
        v19 = SharedLocationVisibility.description.getter(a2);
        v21 = sub_266C22A3C(v19, v20, &v26);

        *(v5 + 4) = v21;
        *(v5 + 12) = 2080;
        v22 = sub_266DAA72C();
        v24 = sub_266C22A3C(v22, v23, &v26);

        *(v5 + 14) = v24;
        _os_log_impl(&dword_266C08000, oslog, v17, "Error when attempting to set shared location visibility to %s: %s", v5, 0x16u);
        swift_arrayDestroy();
        v15 = v18;
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (qword_2800C9368 != -1)
    {
      swift_once();
    }

    v3 = sub_266DA94AC();
    __swift_project_value_buffer(v3, qword_2800CCAB8);
    oslog = sub_266DA948C();
    v4 = sub_266DAAB0C();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v26 = v6;
      *v5 = 136315138;
      v7 = SharedLocationVisibility.description.getter(a2);
      v9 = sub_266C22A3C(v7, v8, &v26);

      *(v5 + 4) = v9;
      v10 = "Visibility successfully set to %s";
LABEL_11:
      _os_log_impl(&dword_266C08000, oslog, v4, v10, v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      v15 = v6;
LABEL_16:
      MEMORY[0x26D5F2480](v15, -1, -1);
      MEMORY[0x26D5F2480](v5, -1, -1);

      return;
    }
  }
}

uint64_t sub_266D15ECC()
{
  type metadata accessor for SharedLocationVisibilityInvocationFlow();
  sub_266C6F414();

  return sub_266DA79AC();
}

uint64_t sub_266D15F48(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266C29DCC;

  return sub_266D159B4(a1);
}

uint64_t OUTLINED_FUNCTION_0_61()
{

  return swift_once();
}

uint64_t sub_266D16014(uint64_t *a1)
{
  v1 = *a1;
  sub_266DA7ABC();

  return sub_266DA7AAC();
}

void Snippets.Contact.init(_:emphasisId:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for Snippets.Contact();
  v9 = a4 + *(v8 + 24);
  sub_266DA749C();
  v10 = [a1 displayName];
  v11 = sub_266DAA70C();
  v13 = v12;

  *a4 = v11;
  a4[1] = v13;
  v14 = sub_266C39CB4(a1);
  v16 = v15;

  if (v16)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0xE000000000000000;
  if (v16)
  {
    v18 = v16;
  }

  a4[2] = v17;
  a4[3] = v18;
  v19 = (a4 + *(v8 + 28));
  *v19 = a2;
  v19[1] = a3;
}

uint64_t type metadata accessor for Snippets.Contact()
{
  result = qword_2800CCB58;
  if (!qword_2800CCB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Snippets.Contact.localizedName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Snippets.Contact.localizedName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Snippets.Contact.contactId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Snippets.Contact.contactId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Snippets.Contact.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Snippets.Contact() + 24);
  v4 = sub_266DA74AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Snippets.Contact.emphasisId.getter()
{
  v1 = (v0 + *(type metadata accessor for Snippets.Contact() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Snippets.Contact.emphasisId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Snippets.Contact() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Snippets.Contact.monogramLetters.getter()
{
  v1 = sub_266DA70DC();
  v2 = OUTLINED_FUNCTION_0_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_6();
  v9 = v8 - v7;
  v14 = *v0;
  v15 = v0[1];

  sub_266DA70BC();
  sub_266C680F8();
  v10 = sub_266DAAC3C();
  (*(v4 + 8))(v9, v1);

  v11 = swift_allocObject();
  v11[2] = sub_266D16700;
  v11[3] = 0;
  v11[4] = v10;
  v11[5] = sub_266D1668C;
  v11[6] = 0;
  v11[7] = sub_266D171A8;
  v11[8] = 0;
  v11[9] = sub_266D171B4;
  v11[10] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCAE0, &qword_266DB7E68);
  sub_266D172A0(&qword_2800CCAE8, &qword_2800CCAE0, &qword_266DB7E68, sub_266D171F0);

  v12 = sub_266DAA6DC();

  return v12;
}

uint64_t sub_266D1665C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266CB7BA4(*a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_266D1668C(uint64_t *a1)
{
  swift_getKeyPath();
  v3 = *a1;
  v4 = a1[1];

  swift_getAtKeyPath();
}

uint64_t sub_266D16700@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t Snippets.Contact.init(localizedName:contactId:emphasisId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = type metadata accessor for Snippets.Contact();
  v15 = a7 + *(v14 + 24);
  result = sub_266DA749C();
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v17 = (a7 + *(v14 + 28));
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t static Snippets.Contact.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for Snippets.Contact();
  v7 = *(v6 + 24);
  if ((sub_266DA748C() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v6 + 28);
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  if (v9 == *v11 && v10 == v11[1])
  {
    return 1;
  }

  return sub_266DAB17C();
}

uint64_t sub_266D16868(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A696C61636F6CLL && a2 == 0xED0000656D614E64;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x49746361746E6F63 && a2 == 0xE900000000000064;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 25705 && a2 == 0xE200000000000000;
      if (v7 || (sub_266DAB17C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7369736168706D65 && a2 == 0xEA00000000006449)
      {

        return 3;
      }

      else
      {
        v9 = sub_266DAB17C();

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

uint64_t sub_266D169D0(char a1)
{
  result = 0x657A696C61636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x49746361746E6F63;
      break;
    case 2:
      result = 25705;
      break;
    case 3:
      result = 0x7369736168706D65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266D16A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D16868(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266D16A8C(uint64_t a1)
{
  v2 = sub_266D17380();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D16AC8(uint64_t a1)
{
  v2 = sub_266D17380();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippets.Contact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCB18, &qword_266DB7E80);
  v6 = OUTLINED_FUNCTION_0_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v26[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D17380();
  sub_266DAB36C();
  v14 = *v3;
  v15 = v3[1];
  v26[15] = 0;
  OUTLINED_FUNCTION_4_35();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v26[14] = 1;
    OUTLINED_FUNCTION_4_35();
    v18 = type metadata accessor for Snippets.Contact();
    v19 = *(v18 + 24);
    v26[13] = 2;
    sub_266DA74AC();
    OUTLINED_FUNCTION_1_41();
    sub_266D1756C(v20, v21);
    sub_266DAB11C();
    v22 = (v3 + *(v18 + 28));
    v23 = *v22;
    v24 = v22[1];
    v26[12] = 3;
    OUTLINED_FUNCTION_4_35();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t Snippets.Contact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_266DA74AC();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v36 = v6;
  v37 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_6();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCB30, &qword_266DB7E88);
  v13 = OUTLINED_FUNCTION_0_2(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = type metadata accessor for Snippets.Contact();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_6();
  v20 = (v19 - v18);
  v38 = *(v21 + 24);
  sub_266DA749C();
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D17380();
  sub_266DAB34C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return (*(v36 + 8))(v20 + v38, v37);
  }

  else
  {
    *v20 = sub_266DAB01C();
    v20[1] = v23;
    v20[2] = sub_266DAB01C();
    v20[3] = v24;
    OUTLINED_FUNCTION_1_41();
    sub_266D1756C(v25, v26);
    sub_266DAB05C();
    (*(v36 + 40))(v20 + v38, v11, v37);
    v27 = sub_266DAB01C();
    v34 = v28;
    v29 = v27;
    v30 = OUTLINED_FUNCTION_3_38();
    v31(v30);
    v32 = (v20 + *(v16 + 28));
    *v32 = v29;
    v32[1] = v34;
    sub_266D173D4(v20, a2);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_266D17438(v20);
  }
}

uint64_t sub_266D170A0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_266D170DC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *), uint64_t a4, uint64_t a5)
{
  v9[0] = a1;
  v9[1] = a2;
  v6 = *(a5 + 48);
  (*(a5 + 40))(&v8, v9);
  a3(&v10, &v8);

  return v10;
}

uint64_t sub_266D17148@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = *(a4 + 16);
  v13[0] = *a4;
  v13[1] = v10;
  v13[2] = *(a4 + 32);
  v14 = *(a4 + 48);
  result = sub_266D170DC(v9, v8, a2, a3, v13);
  *a5 = result;
  a5[1] = v12;
  return result;
}

uint64_t sub_266D171B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266D170A0(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_266D171F0()
{
  result = qword_2800CCAF0;
  if (!qword_2800CCAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CCAF8, &qword_266DB7E70);
    sub_266D172A0(&qword_2800CCB00, &qword_2800CCB08, &qword_266DB7E78, sub_266D1731C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCAF0);
  }

  return result;
}

uint64_t sub_266D172A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266D1731C()
{
  result = qword_2800CCB10;
  if (!qword_2800CCB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CC808, &qword_266DB6BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCB10);
  }

  return result;
}

unint64_t sub_266D17380()
{
  result = qword_2800CCB20;
  if (!qword_2800CCB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCB20);
  }

  return result;
}

uint64_t sub_266D173D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippets.Contact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266D17438(uint64_t a1)
{
  v2 = type metadata accessor for Snippets.Contact();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266D1756C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266D175DC()
{
  result = sub_266DA74AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s7ContactV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266D17738()
{
  result = qword_2800CCB68;
  if (!qword_2800CCB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCB68);
  }

  return result;
}

unint64_t sub_266D17790()
{
  result = qword_2800CCB70;
  if (!qword_2800CCB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCB70);
  }

  return result;
}

unint64_t sub_266D177E8()
{
  result = qword_2800CCB78;
  if (!qword_2800CCB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCB78);
  }

  return result;
}

unint64_t sub_266D1783C()
{
  result = qword_2800CCB80;
  if (!qword_2800CCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCB80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_38()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_35()
{

  return sub_266DAB0EC();
}

uint64_t *sub_266D178D8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  return v0;
}

uint64_t sub_266D17920()
{
  sub_266D178D8();

  return MEMORY[0x2821FE8D8](v0, 258, 7);
}

uint64_t sub_266D17A5C@<X0>(void *a1@<X8>)
{
  a1[8] = &type metadata for AceDevicePinger;
  a1[9] = &protocol witness table for AceDevicePinger;
  v2 = swift_allocObject();
  a1[5] = v2;
  sub_266DA7AEC();
  a1[3] = &type metadata for AceDeviceSearcher;
  a1[4] = &off_287860B88;
  v3 = swift_allocObject();
  *a1 = v3;
  sub_266C233D0(v2 + 16, (v3 + 2));
  v9 = &type metadata for PListMappingLoader;
  v10 = &off_287867AD8;
  v4 = type metadata accessor for DeviceMappingProvider();
  v5 = swift_allocObject();
  v5[7] = &type metadata for AddHardCodedMappingsLoader;
  v5[8] = &off_287867AC8;
  v6 = swift_allocObject();
  v5[4] = v6;
  sub_266D01384(v8, v6 + 16);
  v5[2] = 0;
  v5[3] = 0;
  sub_266D013E0(v8);
  v3[10] = v4;
  v3[11] = &off_287864E70;
  v3[7] = v5;
  *(v2 + 56) = 0;
  return sub_266C233D0((a1 + 5), (a1 + 10));
}

uint64_t sub_266D17BEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_266D17C2C(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266D17CA8()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_266DA7A4C();
  v1[5] = v4;
  OUTLINED_FUNCTION_11_3(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_62();
  v8 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266D17D50()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0[4] + 40);
  type metadata accessor for SetGeoFenceIntent();

  v7 = v6;
  v8 = v5;
  sub_266DA7A3C();
  sub_266DA7A9C();
  v9 = sub_266DA7A8C();
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_266D17E44()
{
  OUTLINED_FUNCTION_22_0();
  v1[289] = v0;
  v1[283] = v2;
  v1[277] = v3;
  v4 = type metadata accessor for Snippets();
  v1[290] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  v1[291] = OUTLINED_FUNCTION_64();
  v1[292] = swift_task_alloc();
  v1[293] = swift_task_alloc();
  v1[294] = swift_task_alloc();
  v7 = sub_266DA80AC();
  v1[295] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[296] = v8;
  v10 = *(v9 + 64);
  v1[297] = OUTLINED_FUNCTION_62();
  v11 = sub_266DA7C0C();
  v1[298] = v11;
  OUTLINED_FUNCTION_11_3(v11);
  v1[299] = v12;
  v14 = *(v13 + 64);
  v1[300] = OUTLINED_FUNCTION_64();
  v1[301] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v15);
  v17 = *(v16 + 64);
  v1[302] = OUTLINED_FUNCTION_62();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v18);
  v20 = *(v19 + 64);
  v1[303] = OUTLINED_FUNCTION_62();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v21);
  v1[304] = v22;
  v1[305] = *(v23 + 64);
  v1[306] = OUTLINED_FUNCTION_64();
  v1[307] = swift_task_alloc();
  v1[308] = swift_task_alloc();
  v1[309] = swift_task_alloc();
  v1[310] = swift_task_alloc();
  v1[311] = swift_task_alloc();
  v1[312] = swift_task_alloc();
  v1[313] = swift_task_alloc();
  v24 = type metadata accessor for Snippets.Contact();
  v1[314] = v24;
  OUTLINED_FUNCTION_4_3(v24);
  v26 = *(v25 + 64);
  v1[315] = OUTLINED_FUNCTION_62();
  v27 = type metadata accessor for Snippets.SetGeoFenceResult();
  v1[316] = v27;
  OUTLINED_FUNCTION_4_3(v27);
  v29 = *(v28 + 64);
  v1[317] = OUTLINED_FUNCTION_62();
  v30 = type metadata accessor for Address();
  v1[318] = v30;
  OUTLINED_FUNCTION_4_3(v30);
  v32 = *(v31 + 64);
  v1[319] = OUTLINED_FUNCTION_64();
  v1[320] = swift_task_alloc();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  OUTLINED_FUNCTION_4_3(v33);
  v35 = *(v34 + 64);
  v1[321] = OUTLINED_FUNCTION_64();
  v1[322] = swift_task_alloc();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_11_3(v36);
  v1[323] = v37;
  v1[324] = *(v38 + 64);
  v1[325] = OUTLINED_FUNCTION_64();
  v1[326] = swift_task_alloc();
  v1[327] = swift_task_alloc();
  v39 = sub_266DA919C();
  v1[328] = v39;
  OUTLINED_FUNCTION_11_3(v39);
  v1[329] = v40;
  v1[330] = *(v41 + 64);
  v1[331] = OUTLINED_FUNCTION_64();
  v1[332] = swift_task_alloc();
  v1[333] = swift_task_alloc();
  v42 = sub_266DA750C();
  OUTLINED_FUNCTION_4_3(v42);
  v44 = *(v43 + 64);
  v1[334] = OUTLINED_FUNCTION_62();
  v45 = sub_266DA7E5C();
  v1[335] = v45;
  OUTLINED_FUNCTION_11_3(v45);
  v1[336] = v46;
  v48 = *(v47 + 64);
  v1[337] = OUTLINED_FUNCTION_62();
  v49 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v49, v50, v51);
}

uint64_t sub_266D18294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v136 = v14;
  if (qword_2800C93F8 != -1)
  {
    OUTLINED_FUNCTION_7_6();
  }

  v15 = sub_266DA94AC();
  __swift_project_value_buffer(v15, qword_2800E64C0);
  v16 = sub_266DA948C();
  v17 = sub_266DAAB0C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_266C08000, v16, v17, "Handle intent response called.", v18, 2u);
    MEMORY[0x26D5F2480](v18, -1, -1);
  }

  v19 = v14[283];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB440, &qword_266DB46E0);
  v20 = sub_266DA7FCC();
  v14[338] = v20;
  v21 = [v20 friend];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 person];
    v14[339] = v23;

    if (v23)
    {
      v24 = [v20 location];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 location];

        if (v26)
        {
          v125 = v23;
          v27 = v14[337];
          v28 = v14[334];
          v29 = v14[289];
          [v26 coordinate];
          v31 = v30;
          v33 = v32;

          v14[340] = v31;
          v14[341] = v33;
          sub_266D1A808(v20, v27);
          sub_266DA900C();
          v34 = [v20 friend];
          v35 = [v34 person];

          v36 = v29[4];
          __swift_project_boxed_opaque_existential_1(v29, v29[3]);
          sub_266DA7AFC();
          v123 = sub_266DA8FBC();
          v14[342] = v123;
          v37 = [v20 notifyMe];
          if (v37)
          {
            v38 = v37;
            v129 = [v37 BOOLValue];
          }

          else
          {
            v129 = 0;
          }

          v49 = v14[333];
          GeoFenceTrigger.description.getter([v20 trigger]);
          sub_266DAA77C();

          v50 = [v20 location];
          if (!v50 || (v51 = v50, sub_266D6CDF4(&v130), v51, v52 = v132, v132 == 255))
          {
            v61 = v14[328];
            v62 = v14[327];
            OUTLINED_FUNCTION_43();
          }

          else
          {
            v53 = v14[328];
            v54 = v14[327];
            v56 = v130;
            v55 = v131;
            v133 = v130;
            v134 = v131;
            v135 = v132;
            sub_266D91274();
            sub_266C23130(v56, v55, v52);
            OUTLINED_FUNCTION_44_5();
          }

          __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
          if ([v20 location])
          {
            v63 = v14[322];
            sub_266D7FBD8();
          }

          v64 = v14[322];
          v65 = v14[321];
          v66 = v14[318];
          OUTLINED_FUNCTION_44_5();
          __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
          sub_266D1CAC8();
          v71 = OUTLINED_FUNCTION_55();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, v72, v66);
          v74 = v14[322];
          if (EnumTagSinglePayload == 1)
          {
            sub_266C47654(v14[322], &qword_2800CC420, &unk_266DB0480);
            v75 = 0;
          }

          else
          {
            v76 = v14[321];
            v77 = v14[320];
            v78 = v14[319];
            sub_266D1DAF0();
            sub_266DA8F2C();
            sub_266D1DB48();
            v75 = sub_266D7F7B0(v78);
            sub_266D1DBA0(v77, type metadata accessor for Address);
            sub_266C47654(v74, &qword_2800CC420, &unk_266DB0480);
          }

          v14[343] = v75;
          v79 = v14[333];
          v80 = v14[332];
          v112 = v75;
          v81 = v14[330];
          v82 = v14[329];
          v83 = v14[328];
          v128 = v83;
          v113 = v14[327];
          v84 = v14[326];
          v118 = v79;
          v119 = v14[325];
          v115 = v14[324];
          v85 = v14[323];
          v122 = v14[315];
          v120 = v14[331];
          v121 = v14[314];
          v116 = v14[289];
          sub_266D1CA90(v116, (v14 + 167));
          v117 = *(v82 + 16);
          v117(v80, v79, v83);
          sub_266D1CAC8();
          v86 = *(v82 + 80);
          v87 = (v86 + 209) & ~v86;
          v88 = *(v85 + 80);
          v89 = (((v81 + v88 + v87) & ~v88) + v115 + 7) & 0xFFFFFFFFFFFFFFF8;
          v90 = swift_allocObject();
          v14[344] = v90;
          memcpy((v90 + 16), v14 + 167, 0xB8uLL);
          *(v90 + 200) = v123;
          *(v90 + 208) = v129;
          v114 = *(v82 + 32);
          v114(v90 + v87, v80, v128);
          sub_266D1CB20();
          *(v90 + v89) = v112;

          sub_266CA8EC8();
          swift_asyncLet_begin();
          sub_266D1CA90(v116, (v14 + 195));
          sub_266D1CAC8();
          v117(v120, v118, v128);
          v91 = (((v88 + 216) & ~v88) + v115 + 7) & 0xFFFFFFFFFFFFFFF8;
          v92 = swift_allocObject();
          v14[345] = v92;
          memcpy((v92 + 16), v14 + 195, 0xB8uLL);
          *(v92 + 200) = v129;
          *(v92 + 208) = v123;
          sub_266D1CB20();
          *(v92 + v91) = v112;
          v114(v92 + ((v86 + v91 + 8) & ~v86), v120, v128);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB450, &unk_266DB3A00);
          swift_asyncLet_begin();
          v93 = *(v121 + 24);
          v94 = v125;
          sub_266DA749C();
          v95 = [v94 displayName];
          v96 = sub_266DAA70C();
          v98 = v97;

          *v122 = v96;
          v122[1] = v98;
          v99 = sub_266C39CB4(v94);
          v101 = v100;

          if (v101)
          {
            v102 = v99;
          }

          else
          {
            v102 = 0;
          }

          v103 = 0xE000000000000000;
          if (v101)
          {
            v103 = v101;
          }

          v122[2] = v102;
          v122[3] = v103;
          v104 = (v122 + *(v121 + 28));
          *v104 = 1701736302;
          v104[1] = 0xE400000000000000;
          v105 = OUTLINED_FUNCTION_17_20();

          return MEMORY[0x282200930](v105, v106, v107, v14 + 162, v108, v109, v110, v111, a9, a10, a11, a12, a13, a14);
        }
      }
    }
  }

  sub_266C55488();
  swift_allocError();
  *v39 = 0;
  swift_willThrow();

  v40 = v14[337];
  v41 = v14[334];
  v42 = v14[333];
  OUTLINED_FUNCTION_30_11();
  v43 = v14[326];
  v44 = v14[325];
  v45 = v14[322];
  v46 = v14[321];
  OUTLINED_FUNCTION_4_36();
  v124 = v14[293];
  v126 = v14[292];
  v127 = v14[291];

  OUTLINED_FUNCTION_28();

  return v47();
}

uint64_t sub_266D18C4C()
{
  OUTLINED_FUNCTION_22_0();
  *(v1 + 2768) = v0;
  if (v0)
  {
    OUTLINED_FUNCTION_29_2();
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_266D18CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_22_0();
  v15 = *(v14 + 2168);
  *(v14 + 2872) = 1;

  v16 = sub_266DA91EC();
  v18 = v17;
  *(v14 + 2104) = v16;
  *(v14 + 2112) = v17;

  *(v14 + 2776) = v18;
  v19 = OUTLINED_FUNCTION_17_20();

  return MEMORY[0x282200930](v19, v20, v21, v14 + 1824, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_266D18D4C()
{
  OUTLINED_FUNCTION_22_0();
  v1[348] = v0;
  if (v0)
  {
    v2 = v1[347];
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
    v1[349] = v1[263];
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266D18DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *(v14 + 2792);
  v16 = *(v14 + 2776);
  v17 = *(v14 + 2728);
  v18 = *(v14 + 2720);
  v19 = *(v14 + 2704);
  v20 = *(v14 + 2536);
  v21 = *(v14 + 2528);
  v22 = *(v14 + 2520);
  v23 = *(v14 + 2168);
  *(v14 + 2873) = 0;

  v24 = sub_266DA91EC();
  v26 = v25;

  sub_266D1DAF0();
  *(v20 + v21[5]) = v18;
  *(v20 + v21[6]) = v17;
  v27 = (v20 + v21[7]);
  *v27 = v15;
  v27[1] = v16;
  v28 = (v20 + v21[8]);
  *v28 = v24;
  v28[1] = v26;
  v29 = [v19 friend];
  if (v29)
  {
    v29 = sub_266CA1908(v29);
  }

  *(v14 + 2800) = v29;
  v30 = *(v14 + 2536);
  v31 = *(v14 + 2504);
  v32 = *(v14 + 2496);
  v33 = *(v14 + 2320);
  *(v14 + 2808) = *(*(v14 + 2312) + 176);
  sub_266D1DB48();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v33);
  v34 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v34, v35, 1, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v36 = swift_allocObject();
  *(v14 + 2816) = v36;
  *(v36 + 16) = xmmword_266DAE3B0;

  return MEMORY[0x282200930](v14 + 16, v14 + 2120, sub_266D18FB0, v14 + 2064, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_266D18FB0()
{
  OUTLINED_FUNCTION_34();
  v1[353] = v0;
  if (v0)
  {
    v2 = v1[313];
    sub_266C47654(v1[312], &qword_2800CA050, &qword_266DB0080);
    v3 = OUTLINED_FUNCTION_32();
    sub_266C47654(v3, v4, &qword_266DB0080);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266D1961C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 2840);
  v6 = *(v4 + 2816);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 2024));
  __swift_destroy_boxed_opaque_existential_0((v2 + 1944));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D19724()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v3 = v0[354];
  v4 = v0[294];
  v5 = v0[293];

  sub_266D1DBA0(v5, type metadata accessor for Snippets);
  sub_266D1DBA0(v4, type metadata accessor for Snippets);
  v6 = OUTLINED_FUNCTION_9_17();
  v7(v6);
  v8 = OUTLINED_FUNCTION_31_7();
  v9(v8);
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_27_2();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v1, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_5_32();
  sub_266D1DBA0(v4, v10);
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_26_4();

  return MEMORY[0x282200920](v11, v12, v13, v14);
}

uint64_t sub_266D19874()
{
  v1 = *(v0 + 2744);
  v2 = *(v0 + 2736);
  v3 = *(v0 + 2712);
  v4 = *(v0 + 2696);
  v5 = *(v0 + 2688);
  v12 = *(v0 + 2680);
  v13 = *(v0 + 2752);
  v14 = *(v0 + 2672);
  v15 = *(v0 + 2760);
  v6 = *(v0 + 2664);
  v16 = *(v0 + 2656);
  v17 = *(v0 + 2648);
  v7 = *(v0 + 2632);
  v8 = *(v0 + 2624);
  v9 = *(v0 + 2616);
  v18 = *(v0 + 2608);
  v19 = *(v0 + 2600);
  v20 = *(v0 + 2576);
  v21 = *(v0 + 2568);
  v22 = *(v0 + 2560);
  v23 = *(v0 + 2552);
  v24 = *(v0 + 2536);
  v25 = *(v0 + 2520);
  v26 = *(v0 + 2504);
  v27 = *(v0 + 2496);
  v28 = *(v0 + 2488);
  v29 = *(v0 + 2480);
  v30 = *(v0 + 2472);
  v31 = *(v0 + 2464);
  v32 = *(v0 + 2456);
  v33 = *(v0 + 2448);
  v34 = *(v0 + 2424);
  v35 = *(v0 + 2416);
  v36 = *(v0 + 2408);
  v37 = *(v0 + 2400);
  v38 = *(v0 + 2376);
  v39 = *(v0 + 2352);
  v40 = *(v0 + 2344);
  v41 = *(v0 + 2336);
  v42 = *(v0 + 2328);

  sub_266C47654(v9, &qword_2800CA038, &unk_266DAFBF0);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v4, v12);

  OUTLINED_FUNCTION_15_4();

  return v10();
}

uint64_t sub_266D19B34()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 2848);
  v6 = *(v4 + 2816);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 1864));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D19C34()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v3 = *(v0 + 2832);
  v4 = *(v0 + 2336);

  OUTLINED_FUNCTION_1_42();
  sub_266D1DBA0(v4, v5);
  v6 = OUTLINED_FUNCTION_9_17();
  v7(v6);
  v8 = OUTLINED_FUNCTION_31_7();
  v9(v8);
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_27_2();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v1, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_5_32();
  sub_266D1DBA0(v4, v10);
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_26_4();

  return MEMORY[0x282200920](v11, v12, v13, v14);
}

uint64_t sub_266D19D18()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 2856);
  v6 = *(v4 + 2816);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 1784));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D19E18()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v3 = *(v0 + 2832);
  v4 = *(v0 + 2328);

  OUTLINED_FUNCTION_1_42();
  sub_266D1DBA0(v4, v5);
  v6 = OUTLINED_FUNCTION_9_17();
  v7(v6);
  v8 = OUTLINED_FUNCTION_31_7();
  v9(v8);
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_27_2();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v1, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_5_32();
  sub_266D1DBA0(v4, v10);
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_26_4();

  return MEMORY[0x282200920](v11, v12, v13, v14);
}

uint64_t sub_266D19EFC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 2864);
  v3 = *(v1 + 2816);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266D19FFC()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v4 = *(v1 + 2832);

  v5 = OUTLINED_FUNCTION_9_17();
  v6(v5);
  v7 = OUTLINED_FUNCTION_31_7();
  v8(v7);
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_27_2();
  sub_266C47654(v3, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v2, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_5_32();
  sub_266D1DBA0(v0, v9);
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_26_4();

  return MEMORY[0x282200920](v10, v11, v12, v13);
}

uint64_t sub_266D1A138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_14_25();

  sub_266C47654(v36, &qword_2800CA038, &unk_266DAFBF0);
  v37 = OUTLINED_FUNCTION_55_2();
  v38(v37);
  v39 = OUTLINED_FUNCTION_54_4();
  v40(v39);

  v58 = v35[346];
  v41 = v35[337];
  v42 = v35[334];
  v43 = v35[333];
  OUTLINED_FUNCTION_30_11();
  v44 = v35[326];
  v45 = v35[325];
  v46 = v35[322];
  v47 = v35[321];
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_23_15(v48);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_15_10();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v58, a32, a33, a34);
}

uint64_t sub_266D1A380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_14_25();

  sub_266C47654(v36, &qword_2800CA038, &unk_266DAFBF0);
  v37 = OUTLINED_FUNCTION_55_2();
  v38(v37);
  v39 = OUTLINED_FUNCTION_54_4();
  v40(v39);

  v58 = v35[348];
  v41 = v35[337];
  v42 = v35[334];
  v43 = v35[333];
  OUTLINED_FUNCTION_30_11();
  v44 = v35[326];
  v45 = v35[325];
  v46 = v35[322];
  v47 = v35[321];
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_23_15(v48);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_15_10();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v58, a32, a33, a34);
}

uint64_t sub_266D1A560()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[352];
  v2 = v0[350];
  v3 = v0[317];

  OUTLINED_FUNCTION_5_32();
  sub_266D1DBA0(v3, v4);
  *(v1 + 16) = 0;

  v5 = OUTLINED_FUNCTION_17_20();

  return MEMORY[0x282200920](v5, v6, v7, v0 + 266);
}

uint64_t sub_266D1A628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_14_25();

  sub_266C47654(v36, &qword_2800CA038, &unk_266DAFBF0);
  v37 = OUTLINED_FUNCTION_55_2();
  v38(v37);
  v39 = OUTLINED_FUNCTION_54_4();
  v40(v39);

  v58 = v35[353];
  v41 = v35[337];
  v42 = v35[334];
  v43 = v35[333];
  OUTLINED_FUNCTION_30_11();
  v44 = v35[326];
  v45 = v35[325];
  v46 = v35[322];
  v47 = v35[321];
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_23_15(v48);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_15_10();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v58, a32, a33, a34);
}

uint64_t sub_266D1A808@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v4 = sub_266DA957C();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v43 = v6;
  v44 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v42 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  v17 = *v16;
  v18 = v16[1];
  v20 = v16[2];
  v19 = v16[3];

  sub_266DA7E4C();
  sub_266DA7DCC();
  v45 = a2;
  sub_266DA7E1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7F0, &unk_266DB6F20);
  v21 = *(v11 + 72);
  v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_266DAE4A0;
  v24 = [v41 friend];
  if (v24 && (v25 = v24, v26 = [v24 person], v25, v26))
  {
    sub_266D4E120(v26, v23 + v22);
    v27 = v44;
  }

  else
  {
    OUTLINED_FUNCTION_43();
    v27 = v44;
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v44);
  }

  sub_266D1CAC8();
  sub_266D1CB20();
  OUTLINED_FUNCTION_61(v15, 1, v27);
  if (v31)
  {
    sub_266C47654(v15, &qword_2800CA8B8, &qword_266DB30F0);
  }

  else
  {
    v32 = *(v43 + 32);
    v32(v42, v15, v27);
    v33 = MEMORY[0x277D84F90];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = *(v33 + 16);
      sub_266CF9D4C();
      v33 = v38;
    }

    v35 = *(v33 + 16);
    if (v35 >= *(v33 + 24) >> 1)
    {
      sub_266CF9D4C();
      v33 = v39;
    }

    *(v33 + 16) = v35 + 1;
    v32((v33 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v35), v42, v27);
  }

  swift_setDeallocating();
  sub_266C6F53C();
  return sub_266DA7DAC();
}

uint64_t sub_266D1AB9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 96) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0) - 8) + 64) + 15;
  *(v7 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D1AC44, 0, 0);
}

uint64_t sub_266D1AC44()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(*(v0 + 24) + 48);
  v4 = sub_266DA919C();
  OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_34_5();
  v8(v7);
  OUTLINED_FUNCTION_44_5();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *v13 = v0;
  v13[1] = sub_266D1AD38;
  v15 = *(v0 + 56);
  v14 = *(v0 + 64);
  v16 = *(v0 + 48);
  v17 = *(v0 + 96);
  v18 = *(v0 + 32);

  return sub_266CB4BFC();
}

uint64_t sub_266D1AD38(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  v7 = *(v4 + 72);
  *v6 = *v2;
  *(v5 + 80) = v1;

  v8 = *(v4 + 64);
  if (!v1)
  {
    *(v5 + 88) = a1;
  }

  sub_266C47654(v8, &qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D1AE94(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 96) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0) - 8) + 64) + 15;
  *(v7 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D1AF3C, 0, 0);
}

uint64_t sub_266D1AF3C()
{
  OUTLINED_FUNCTION_34();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(*(v0 + 24) + 48);
  v4 = sub_266DA919C();
  OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_34_5();
  v8(v7);
  OUTLINED_FUNCTION_44_5();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *v13 = v0;
  v13[1] = sub_266D1B02C;
  v14 = *(v0 + 64);
  v15 = *(v0 + 40);
  v16 = *(v0 + 48);
  v17 = *(v0 + 32);
  v18 = *(v0 + 96);

  return sub_266CB51A0();
}

uint64_t sub_266D1B02C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  v7 = *(v4 + 72);
  *v6 = *v2;
  *(v5 + 80) = v1;

  v8 = *(v4 + 64);
  if (!v1)
  {
    *(v5 + 88) = a1;
  }

  sub_266C47654(v8, &qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D1B188()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 64);
  **(v0 + 16) = *(v0 + 88);

  OUTLINED_FUNCTION_15_4();

  return v2();
}

uint64_t sub_266D1B1EC()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_28();
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_266D1B248()
{
  OUTLINED_FUNCTION_22_0();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = type metadata accessor for Snippets();
  v1[25] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  v1[26] = OUTLINED_FUNCTION_64();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v7 = sub_266DA80AC();
  v1[30] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[31] = v8;
  v10 = *(v9 + 64);
  v1[32] = OUTLINED_FUNCTION_62();
  v11 = sub_266DA7C0C();
  v1[33] = v11;
  OUTLINED_FUNCTION_11_3(v11);
  v1[34] = v12;
  v14 = *(v13 + 64);
  v1[35] = OUTLINED_FUNCTION_64();
  v1[36] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v15);
  v17 = *(v16 + 64);
  v1[37] = OUTLINED_FUNCTION_62();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v18);
  v20 = *(v19 + 64);
  v1[38] = OUTLINED_FUNCTION_62();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v21);
  v1[39] = v22;
  v1[40] = *(v23 + 64);
  v1[41] = OUTLINED_FUNCTION_64();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_266D1B498()
{
  v1 = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB440, &qword_266DB46E0);
  *(v0 + 392) = sub_266DA7FCC();
  if (qword_2800C93F8 != -1)
  {
    OUTLINED_FUNCTION_7_6();
  }

  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, qword_2800E64C0);
  v3 = sub_266DA948C();
  v4 = sub_266DAAB0C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266C08000, v3, v4, "failed handle response called.", v5, 2u);
    MEMORY[0x26D5F2480](v5, -1, -1);
  }

  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  v9 = *(v0 + 192);
  v8 = *(v0 + 200);

  *(v0 + 400) = *(v9 + 176);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_44_5();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_44_5();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  *(v0 + 488) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(v0 + 408) = sub_266DA93CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v21 = swift_allocObject();
  *(v0 + 416) = v21;
  *(v21 + 16) = xmmword_266DAE3B0;
  v22 = *(v9 + 48);
  v23 = swift_task_alloc();
  *(v0 + 424) = v23;
  *v23 = v0;
  v23[1] = sub_266D1B688;

  return sub_266CB4B54();
}

uint64_t sub_266D1B688()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 424);
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[54] = v0;

  if (v0)
  {
    v11 = v5[48];
    sub_266C47654(v5[47], &qword_2800CA050, &qword_266DB0080);
    v12 = OUTLINED_FUNCTION_32();
    sub_266C47654(v12, v13, &qword_266DB0080);
  }

  else
  {
    v5[55] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266D1BD44()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *(v4 + 416);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D1BE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_73_1();
  v26 = *(v22 + 224);
  v25 = *(v22 + 232);

  sub_266D1DBA0(v26, type metadata accessor for Snippets);
  v27 = OUTLINED_FUNCTION_4_4();
  sub_266D1DBA0(v27, v28);
  v29 = OUTLINED_FUNCTION_6_28();
  v30(v29);
  v31 = OUTLINED_FUNCTION_18_3();
  v32(v31);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_37();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D1BFD4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 464);
  v6 = *(v4 + 416);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D1C0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_73_1();
  v26 = *(v23 + 216);

  OUTLINED_FUNCTION_1_42();
  sub_266D1DBA0(v26, v27);
  v28 = OUTLINED_FUNCTION_6_28();
  v29(v28);
  v30 = OUTLINED_FUNCTION_18_3();
  v31(v30);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_37();
  sub_266C47654(v24, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v25, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D1C240()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 472);
  v6 = *(v4 + 416);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D1C340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_73_1();
  v26 = *(v23 + 208);

  OUTLINED_FUNCTION_1_42();
  sub_266D1DBA0(v26, v27);
  v28 = OUTLINED_FUNCTION_6_28();
  v29(v28);
  v30 = OUTLINED_FUNCTION_18_3();
  v31(v30);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_37();
  sub_266C47654(v24, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v25, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D1C4AC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 480);
  v3 = *(v1 + 416);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266D1C5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_73_1();

  v25 = OUTLINED_FUNCTION_6_28();
  v26(v25);
  v27 = OUTLINED_FUNCTION_18_3();
  v28(v27);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_37();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D1C708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v23 = v22[51];
  v24 = v22[52];
  v25 = v22[48];
  v26 = v22[49];
  v28 = v22[46];
  v27 = v22[47];
  v30 = v22[44];
  v29 = v22[45];
  v32 = v22[42];
  v31 = v22[43];
  v43 = v22[41];
  v44 = v22[38];
  v45 = v22[37];
  v46 = v22[36];
  v47 = v22[35];
  v48 = v22[32];
  v49 = v22[29];
  v50 = v22[28];
  v51 = v22[27];
  v52 = v22[26];

  *(v24 + 16) = 0;

  OUTLINED_FUNCTION_28();
  v33 = v22[54];
  OUTLINED_FUNCTION_25_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, a20, a21, a22);
}

uint64_t sub_266D1C844()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266D17E44();
}

uint64_t sub_266D1C8EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C4716C;

  return sub_266D1B248();
}

uint64_t sub_266D1C994()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C5A320;

  return sub_266D17CA8();
}

unint64_t sub_266D1CA3C()
{
  result = qword_2800CCB88;
  if (!qword_2800CCB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCB88);
  }

  return result;
}

uint64_t sub_266D1CAC8()
{
  OUTLINED_FUNCTION_6_22();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_4_4();
  v7(v6);
  return v0;
}

uint64_t sub_266D1CB20()
{
  OUTLINED_FUNCTION_6_22();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_4_4();
  v7(v6);
  return v0;
}

uint64_t sub_266D1CB78(uint64_t a1)
{
  v3 = v2;
  v5 = sub_266DA919C();
  OUTLINED_FUNCTION_11_3(v5);
  v7 = (*(v6 + 80) + 209) & ~*(v6 + 80);
  v9 = v7 + *(v8 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_11_3(v10);
  v12 = (v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = *(v1 + 200);
  v15 = *(v1 + 208);
  v16 = *(v1 + ((*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_266C48BB4;

  return sub_266D1AB9C(a1, v1 + 16, v14, v15, v1 + v7, v1 + v12, v16);
}

uint64_t sub_266D1CD04(uint64_t a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_11_3(v5);
  v7 = (*(v6 + 80) + 216) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = sub_266DA919C();
  OUTLINED_FUNCTION_4_3(v10);
  v12 = (v9 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v1 + 200);
  v14 = *(v1 + 208);
  v15 = *(v1 + v9);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_266C4716C;

  return sub_266D1AE94(a1, v1 + 16, v13, v14, v1 + v7, v15, v1 + v12);
}

uint64_t objectdestroyTm_10()
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

uint64_t sub_266D1DAF0()
{
  OUTLINED_FUNCTION_6_22();
  v2 = v1(0);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_4_4();
  v6(v5);
  return v0;
}

uint64_t sub_266D1DB48()
{
  OUTLINED_FUNCTION_6_22();
  v2 = v1(0);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_4_4();
  v6(v5);
  return v0;
}

uint64_t sub_266D1DBA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_8_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_4_36()
{
  v3 = v0[320];
  v4 = v0[319];
  v5 = v0[317];
  v6 = v0[315];
  v7 = v0[313];
  v8 = v0[312];
  v9 = v0[311];
  v10 = v0[310];
  v11 = v0[309];
  v12 = v0[308];
  v13 = v0[307];
  v14 = v0[306];
  v15 = v0[303];
  v16 = v0[302];
  v17 = v0[301];
  v18 = v0[300];
  v1 = v0[297];
  v2 = v0[294];
}

uint64_t OUTLINED_FUNCTION_6_28()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];
  v12 = v0[46];
  v13 = v0[45];
  v14 = v0[44];
  v15 = v0[43];
  v16 = v0[42];
  v17 = v0[41];
  v4 = v0[37];
  v5 = v0[38];
  v6 = v0[36];
  v7 = v0[33];
  v8 = v0[34];
  v9 = v0[30];
  v18 = v0[35];
  v19 = v0[29];
  v20 = v0[28];
  v21 = v0[27];
  v22 = v0[26];
  v10 = *(v0[31] + 8);
  return v0[32];
}

uint64_t OUTLINED_FUNCTION_9_17()
{
  v1 = v0[350];
  v2 = v0[317];
  v3 = v0[313];
  v4 = v0[312];
  v5 = v0[303];
  v6 = v0[302];
  v7 = v0[301];
  v8 = v0[299];
  v9 = v0[298];
  result = v0[297];
  v11 = v0[295];
  v12 = *(v0[296] + 8);
  return result;
}

void OUTLINED_FUNCTION_14_25()
{
  v3 = v0[345];
  *(v1 - 88) = v0[344];
  *(v1 - 80) = v3;
  v4 = v0[343];
  v5 = v0[342];
  v6 = v0[339];
  v7 = v0[338];
  *(v1 - 96) = v0[337];
  v8 = v0[336];
  v9 = v0[335];
  v10 = v0[333];
  v11 = v0[329];
  v12 = v0[328];
  v13 = v0[327];
}

uint64_t OUTLINED_FUNCTION_23_15@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 120) = v1;
  *(v3 - 112) = a1;
  v5 = v2[292];
  *(v3 - 104) = v2[293];
  *(v3 - 96) = v5;
  *(v3 - 88) = v2[291];
}

uint64_t OUTLINED_FUNCTION_28_8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a16;
  *(result + 48) = a19;
  *(result + 56) = a12;
  *(result + 64) = 514;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_2()
{
  v2 = *(v0 + 2520);

  return sub_266D1DBA0(v2, type metadata accessor for Snippets.Contact);
}

void OUTLINED_FUNCTION_30_11()
{
  v1 = v0[332];
  v2 = v0[331];
  v3 = v0[327];
}

uint64_t OUTLINED_FUNCTION_61_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[352];
  v4 = v2[351];
  v5 = v2[297];
  return v2[277];
}

uint64_t OUTLINED_FUNCTION_62_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[52];
  v4 = v2[50];
  v5 = v2[32];
  return v2[22];
}

uint64_t OUTLINED_FUNCTION_63_0()
{

  return sub_266D1CB20();
}

uint64_t OUTLINED_FUNCTION_66_3()
{

  return sub_266D1CAC8();
}

uint64_t OUTLINED_FUNCTION_69_2()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  v1 = v0[24];
}

uint64_t OUTLINED_FUNCTION_78_1()
{

  return sub_266D1CAC8();
}

uint64_t OUTLINED_FUNCTION_79_2()
{

  return sub_266DA800C();
}

_BYTE *storeEnumTagSinglePayload for GenericSearchIntentWrapper(_BYTE *result, unsigned int a2, unsigned int a3)
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