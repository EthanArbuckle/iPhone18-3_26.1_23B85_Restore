uint64_t sub_20BC7ADF0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_20C1337D4();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BC7AEB0, 0, 0);
}

uint64_t sub_20BC7AEB0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    sub_20C13A8F4();
    sub_20C13CDA4();
    v0[11] = sub_20C13CD94();
    v3 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20BC7AFB4, v3, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20BC7AFB4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  sub_20BC7B058();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BC7B058()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v28[-v7];
  MEMORY[0x28223BE20](v9);
  v11 = &v28[-v10];
  MEMORY[0x28223BE20](v12);
  v14 = &v28[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v28[-v16];
  sub_20C13B444();
  sub_20C13BB64();
  v18 = *(v3 + 8);
  result = v18(v17, v2);
  if (*(v1 + 480) >> 61 != 1)
  {
    v20 = sub_20C1337C4();
    v30 = v20;
    v31 = BYTE4(v20) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CDD0);
    sub_20C133BD4();
    if (v29 <= 3u)
    {
      if (v29 >= 2u)
      {
        if (v29 == 2)
        {
          sub_20C13B444();
          v21 = sub_20C13BB74();
          v24 = sub_20C13D1F4();
          if (!os_log_type_enabled(v21, v24))
          {
            v5 = v11;
            goto LABEL_19;
          }

          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_20B517000, v21, v24, "Session heartbeat timeout reached, ending stack.", v23, 2u);
          v14 = v11;
        }

        else
        {
          sub_20C13B444();
          v21 = sub_20C13BB74();
          v26 = sub_20C13D1F4();
          if (!os_log_type_enabled(v21, v26))
          {
            v5 = v8;
            goto LABEL_19;
          }

          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_20B517000, v21, v26, "Session idle limit reached, ending stack.", v23, 2u);
          v14 = v8;
        }

        goto LABEL_17;
      }
    }

    else if (v29 > 6u)
    {
      if (v29 == 7)
      {
        sub_20C13B444();
        v21 = sub_20C13BB74();
        v25 = sub_20C13D1F4();
        if (!os_log_type_enabled(v21, v25))
        {
LABEL_19:

          v18(v5, v2);
          return sub_20BC7BFA8();
        }

        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_20B517000, v21, v25, "Stack exited, ending stack.", v23, 2u);
        v14 = v5;
        goto LABEL_17;
      }
    }

    else if (v29 - 5 >= 2)
    {
      sub_20C13B444();
      v21 = sub_20C13BB74();
      v22 = sub_20C13D1F4();
      if (!os_log_type_enabled(v21, v22))
      {
LABEL_18:
        v5 = v14;
        goto LABEL_19;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20B517000, v21, v22, "Dismissed pre-session from remote participant, ending stack.", v23, 2u);
LABEL_17:
      MEMORY[0x20F2F6A40](v23, -1, -1);
      goto LABEL_18;
    }

    return sub_20BC7BFA8();
  }

  return result;
}

uint64_t sub_20BC7B458()
{
  v0 = sub_20C136484();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13B2E4();
    sub_20BC7B564();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

unint64_t sub_20BC7B564()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  v6 = v1;
  v7 = sub_20C136464();
  v9 = v8;
  v11 = v10;
  v12 = *(v6 + 536);
  v13 = *(v6 + 544);
  v14 = *(v6 + 552);
  *(v6 + 536) = v7;
  *(v6 + 544) = v8;
  v15 = v10 & 1;
  *(v6 + 552) = v10 & 1;
  sub_20B6A6418(v7, v8, v10 & 1);
  sub_20B583F4C(v12, v13, v14);
  v16 = *(v6 + 480);
  if (v16 >> 61 != 3)
  {
    return sub_20B583F4C(v7, v9, v15);
  }

  v24 = 3;
  v21 = v7;
  v22 = v9;
  v23 = v15;
  sub_20B64BBC8();
  sub_20B64BC1C();

  if (sub_20C133C14())
  {
    sub_20BC7BF70(v16);
    sub_20B583F4C(v7, v9, v11 & 1);
  }

  else
  {
    v24 = 4;
    v21 = v7;
    v22 = v9;
    v18 = v11 & 1;
    v23 = v18;
    sub_20B6A6418(v7, v9, v18);
    v19 = sub_20C133C14();
    sub_20BC7BF70(v16);
    sub_20B583F4C(v7, v9, v18);
    result = sub_20B583F4C(v7, v9, v18);
    if ((v19 & 1) == 0)
    {
      return result;
    }
  }

  return sub_20BC819C0();
}

uint64_t sub_20BC7B7BC(uint64_t a1)
{
  v2 = type metadata accessor for QueuedSessionPresenter.RemoteDisplayState(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_20C135174();
    (*(*(v7 - 8) + 16))(v4, a1, v7);
    swift_storeEnumTagMultiPayload();
    v8 = OBJC_IVAR____TtC9SeymourUI22QueuedSessionPresenter_remoteDisplayState;
    swift_beginAccess();
    sub_20BC88870(v4, v6 + v8);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_20BC7B8E4()
{
  v0 = type metadata accessor for QueuedSessionPresenter.RemoteDisplayState(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v6[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_storeEnumTagMultiPayload();
    v5 = OBJC_IVAR____TtC9SeymourUI22QueuedSessionPresenter_remoteDisplayState;
    swift_beginAccess();
    sub_20BC88870(v2, v4 + v5);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_20BC7B9CC()
{
  sub_20BC7BAF4();
  sub_20B583E6C(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  __swift_destroy_boxed_opaque_existential_1(v0 + 168);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 232);
  __swift_destroy_boxed_opaque_existential_1(v0 + 272);
  __swift_destroy_boxed_opaque_existential_1(v0 + 312);

  __swift_destroy_boxed_opaque_existential_1(v0 + 360);
  __swift_destroy_boxed_opaque_existential_1(v0 + 400);

  sub_20BC7BF70(*(v0 + 480));

  sub_20B583F4C(*(v0 + 536), *(v0 + 544), *(v0 + 552));
  sub_20B583F4C(*(v0 + 560), *(v0 + 568), *(v0 + 576));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_20BC884C0(v0 + OBJC_IVAR____TtC9SeymourUI22QueuedSessionPresenter_remoteDisplayState, type metadata accessor for QueuedSessionPresenter.RemoteDisplayState);
  return v0;
}

uint64_t sub_20BC7BAF4()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  if (*(v1 + 592))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_20C13D3D4();
    swift_unknownObjectRelease();
  }

  *(v1 + 592) = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_20BC7BC30()
{
  sub_20BC7B9CC();

  return swift_deallocClassInstance();
}

uint64_t sub_20BC7BCB0()
{
  result = type metadata accessor for QueuedSessionPresenter.RemoteDisplayState(319);
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_9SeymourUI22QueuedSessionPresenterC5State33_9D94AE1109544D18F3C107860A961C7CLLO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

uint64_t sub_20BC7BE18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_20BC7BE74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_20BC7BED4(void *result, uint64_t a2)
{
  if (a2 < 4)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 4)) | 0x8000000000000000;
  }

  return result;
}

void sub_20BC7BF10()
{
  sub_20B9FF744();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

unint64_t sub_20BC7BF70(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 >= 2)
    {
      return result;
    }
  }

  if (v1 == 2 || v1 == 3)
  {
  }

  return result;
}

uint64_t sub_20BC7BFA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  (*(v6 + 8))(v8, v5);
  sub_20C13CDC4();
  v9 = sub_20C13CDF4();
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;

  sub_20B6383D0(0, 0, v4, &unk_20C175CD0, v10);

  sub_20BC7D9D0();
  sub_20BC7BAF4();
  v11 = [objc_opt_self() sharedApplication];
  [v11 setIdleTimerDisabled_];

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20B6A5C90();
    swift_unknownObjectRelease();
  }

  swift_getObjectType();
  sub_20BB29B60();
  return sub_20C13A764();
}

uint64_t sub_20BC7C21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v102 = a2;
  v105 = sub_20C134DC4();
  v111 = *(v105 - 8);
  v109 = *(v111 + 64);
  MEMORY[0x28223BE20](v105);
  v93 = v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v96 = *(v99 - 8);
  v95 = *(v96 + 64);
  MEMORY[0x28223BE20](v99);
  v94 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v92 = v87 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764890);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v87 - v14;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v97 = *(v107 - 8);
  v98 = (v107 - 8);
  v106 = v97;
  v100 = *(v97 + 64);
  MEMORY[0x28223BE20](v107 - 8);
  v101 = v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = v87 - v18;
  MEMORY[0x28223BE20](v19);
  v104 = v87 - v20;
  MEMORY[0x28223BE20](v21);
  v112 = v87 - v22;
  v23 = sub_20C13BB84();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  (*(v24 + 8))(v26, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88);
  v27 = swift_allocBox();
  v29 = v28;
  v30 = sub_20C1344C4();
  (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60);
  v110 = swift_allocBox();
  v32 = v31;
  v33 = sub_20C137254();
  (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
  v90 = v15;
  v89 = a1;
  sub_20BC825F8(v15);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BC882E4;
  *(v34 + 24) = v27;
  v91 = v27;
  (*(v10 + 16))(v12, v15, v9);
  v35 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v36 = (v11 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  (*(v10 + 32))(v37 + v35, v12, v9);
  v38 = (v37 + v36);
  *v38 = sub_20BC88300;
  v38[1] = v34;

  sub_20C137C94();
  (*(v10 + 8))(v90, v9);
  v103 = v3;
  __swift_project_boxed_opaque_existential_1(v103 + 21, v103[24]);
  v39 = v92;
  sub_20C1398E4();
  v40 = v111;
  v41 = *(v111 + 16);
  v87[1] = v111 + 16;
  v88 = v41;
  v42 = v93;
  v43 = a1;
  v44 = v105;
  v41(v93, v43, v105);
  v45 = v40;
  v87[0] = *(v40 + 80);
  v46 = (v87[0] + 24) & ~v87[0];
  v47 = swift_allocObject();
  *(v47 + 16) = v110;
  v48 = *(v45 + 32);
  v111 = v45 + 32;
  v90 = v48;
  (v48)(v47 + v46, v42, v44);
  v49 = swift_allocObject();
  *(v49 + 16) = sub_20BC88330;
  *(v49 + 24) = v47;
  v50 = v96;
  v51 = v94;
  v52 = v99;
  (*(v96 + 16))(v94, v39, v99);
  v53 = v50;
  v54 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v55 = (v95 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  (*(v53 + 32))(v56 + v54, v51, v52);
  v57 = (v56 + v55);
  *v57 = sub_20B58D058;
  v57[1] = v49;

  v58 = v104;
  sub_20C137C94();
  (*(v53 + 8))(v39, v52);
  v59 = v103[59];
  v99 = v103[58];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v60 = *(v97 + 72);
  v61 = v106;
  v62 = *(v106 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_20C14F320;
  v64 = v63 + ((v62 + 32) & ~v62);
  v65 = *(v61 + 16);
  v98 = v65;
  v66 = v107;
  v65(v64, v112, v107);
  v65((v64 + v60), v58, v66);
  sub_20B5E2E18();
  v67 = v59;

  v68 = sub_20C13D374();
  sub_20C13A7C4();
  sub_20C137C74();

  v69 = swift_allocObject();
  swift_weakInit();
  v70 = v105;
  v88(v42, v89, v105);
  v71 = (v87[0] + 40) & ~v87[0];
  v72 = (v109 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  v74 = v110;
  v73[2] = v91;
  v73[3] = v74;
  v73[4] = v69;
  (v90)(v73 + v71, v42, v70);
  v75 = (v73 + v72);
  *v75 = v99;
  v75[1] = v67;
  v76 = swift_allocObject();
  *(v76 + 16) = sub_20BC88384;
  *(v76 + 24) = v73;
  v77 = v101;
  v79 = v107;
  v78 = v108;
  v98(v101, v108, v107);
  v80 = (v62 + 16) & ~v62;
  v81 = (v100 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  v83 = v106;
  (*(v106 + 32))(v82 + v80, v77, v79);
  v84 = (v82 + v81);
  *v84 = sub_20B64B960;
  v84[1] = v76;
  type metadata accessor for WorkoutSessionConfiguration();

  sub_20C137C94();
  v85 = *(v83 + 8);
  v85(v78, v79);
  v85(v104, v79);
  v85(v112, v79);
}

uint64_t sub_20BC7CCF8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = sub_20BC7CE5C(a1, 1);

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + 480);
      *(Strong + 480) = v3;

      sub_20BC7BF70(v5);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v6 = swift_unknownObjectWeakLoadStrong();

      if (v6)
      {
        sub_20B6A576C(v3);
        swift_unknownObjectRelease();
      }
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v7 = swift_unknownObjectWeakLoadStrong();

      if (v7)
      {
        sub_20B6A5144();
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

char *sub_20BC7CE5C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for WorkoutSessionConfiguration();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  (*(v10 + 8))(v12, v9);
  sub_20BC880A0(a1, v8, type metadata accessor for WorkoutSessionConfiguration);

  v14 = sub_20B9C04B4(v13, v8);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = &v14[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_onSessionCreationError];
  v17 = *&v14[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_onSessionCreationError];
  *v16 = sub_20BC87FD8;
  v16[1] = v15;

  sub_20B583ECC(v17);

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = &v14[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_onWillPresentSessionSummary];
  v20 = *&v14[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_onWillPresentSessionSummary];
  *v19 = sub_20BC88008;
  v19[1] = v18;

  sub_20B583ECC(v20);

  v21 = *(v14 + 18);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = *(v21 + 64);
  *(v21 + 64) = sub_20BC88010;
  *(v21 + 72) = v22;

  sub_20B583ECC(v23);

  v24 = *(v14 + 18);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = *(v24 + 80);
  *(v24 + 80) = sub_20BC88040;
  *(v24 + 88) = v25;

  sub_20B583ECC(v26);

  v27 = *(v14 + 18);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = *(v27 + 48);
  *(v27 + 48) = sub_20BC88070;
  *(v27 + 56) = v28;

  sub_20B583ECC(v29);

  if ((a2 & 1) == 0 && *(v3 + 576) == 1 && *(v3 + 560) == 4)
  {
    v14[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_allowDistributedSessionBrokering] = 0;
  }

  return v14;
}

uint64_t sub_20BC7D224()
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v55 = *(v57 - 8);
  v1 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v60 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v56 = &v45 - v5;
  v6 = sub_20C134DC4();
  v62 = *(v6 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + 504);
    v17 = *(result + 456);
    if (v16 >= *(v17 + 16))
    {
    }

    else
    {
      if (v16 < 0)
      {
LABEL_16:
        __break(1u);
        return result;
      }

      v52 = v0;
      v18 = v62;
      v51 = *(v62 + 80);
      v19 = v17 + ((v51 + 32) & ~v51) + *(v62 + 72) * v16;
      v20 = *(v62 + 16);
      v48 = v62 + 16;
      v47 = v20;
      v20(v11, v19, v6);

      v21 = *(v18 + 32);
      v53 = v6;
      v50 = v18 + 32;
      v49 = v21;
      v21(v14, v11, v6);
      sub_20C134DB4();
      v22 = sub_20C1382E4();

      if (v22)
      {
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v46 = ~v51;
          v24 = v51;
          sub_20B51CC64(Strong + 400, v61);

          __swift_project_boxed_opaque_existential_1(v61, v61[3]);
          sub_20C139724();
          v25 = swift_allocObject();
          swift_beginAccess();
          swift_weakLoadStrong();
          swift_weakInit();

          v26 = v53;
          v47(v8, v14, v53);
          v27 = (v24 + 16) & v46;
          v28 = (v7 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
          v29 = swift_allocObject();
          v49(v29 + v27, v8, v26);
          *(v29 + v28) = v25;
          v30 = swift_allocObject();
          *(v30 + 16) = sub_20BC87F34;
          *(v30 + 24) = v29;
          v31 = v55;
          v32 = v54;
          v33 = v57;
          (*(v55 + 16))(v54, v60, v57);
          v34 = (*(v31 + 80) + 16) & ~*(v31 + 80);
          v35 = (v1 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
          v36 = swift_allocObject();
          (*(v31 + 32))(v36 + v34, v32, v33);
          v37 = (v36 + v35);
          *v37 = sub_20B875FF0;
          v37[1] = v30;
          v38 = v56;
          sub_20C137C94();
          v18 = v62;
          (*(v31 + 8))(v60, v33);
          __swift_destroy_boxed_opaque_existential_1(v61);
          v39 = v59;
          v40 = sub_20C137CB4();
          v41 = swift_allocObject();
          *(v41 + 16) = 0;
          *(v41 + 24) = 0;
          v40(sub_20B5DF6DC, v41);

          (*(v58 + 8))(v38, v39);
        }
      }

      (*(v18 + 8))(v14, v53);
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_12;
  }

  v42 = *(result + 504);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (v43)
  {
    __break(1u);
    goto LABEL_16;
  }

  *(result + 504) = v44;

LABEL_12:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BC782A8();
  }

  return result;
}

uint64_t sub_20BC7D910()
{
  *(v0 + 24) = *(*(v0 + 16) + 80);
  sub_20C138F44();
  sub_20BC88820(&qword_27C76C6B0, MEMORY[0x277D541D0]);
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BC890A8, v2, v1);
}

uint64_t sub_20BC7D9D0()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  if (*(v1 + 584))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_20C13D3D4();
    swift_unknownObjectRelease();
  }

  *(v1 + 584) = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_20BC7DB0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v31 = a6;
  v29 = a5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v30 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v28 = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CD98);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v27 - v11;
  v13 = sub_20C134B14();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v32 = a2;
  sub_20B6B6F58(a4, v17, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_20B520158(v12, &qword_27C76CD98);
  }

  (*(v14 + 32))(v16, v12, v13);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return (*(v14 + 8))(v16, v13);
  }

  sub_20B51CC64(Strong + 400, v33);

  v27[1] = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CDA0);
  v20 = *(sub_20C1351C4() - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_20C14F980;
  (*(v14 + 16))(v22 + v21, v16, v13);
  swift_storeEnumTagMultiPayload();
  v23 = v28;
  sub_20C139734();

  v24 = v34;
  v25 = sub_20C137CB4();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v25(v31, v26);

  (*(v30 + 8))(v23, v24);
  (*(v14 + 8))(v16, v13);
  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_20BC7DF14()
{
  v0 = sub_20C1344C4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C134AB4();
  v6 = v5;
  sub_20C137D84();
  v7 = sub_20C134324();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  if (v4 == v7 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20C13DFF4();
  }

  return v11 & 1;
}

uint64_t sub_20BC7E058(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  sub_20C13B444();
  sub_20C13BB64();
  v12 = *(v6 + 8);
  v12(v11, v5);
  if (sub_20C137CF4())
  {
    v13 = sub_20C137D24();
    v15 = v14;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_20C139524();
    v17 = v16;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v3 + 520);
    *(v3 + 520) = 0x8000000000000000;
    sub_20B91E678(v13, v15, isUniquelyReferenced_nonNull_native, v17);

    *(v3 + 520) = v23;
    return swift_endAccess();
  }

  else
  {
    sub_20C13B444();
    v20 = sub_20C13BB74();
    v21 = sub_20C13D1F4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_20B517000, v20, v21, "Session does not meet the minimum duration for elapsed time", v22, 2u);
      MEMORY[0x20F2F6A40](v22, -1, -1);
    }

    return (v12)(v8, v5);
  }
}

uint64_t sub_20BC7E2C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18 - v1;
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  sub_20C13B444();
  sub_20C13BB64();
  v10 = *(v4 + 8);
  v10(v9, v3);
  if (sub_20C137CF4())
  {
    v11 = sub_20C137D24();
    v13 = v12;
    sub_20C137D54();
    swift_beginAccess();
    sub_20C0C0C14(v2, v11, v13);
    return swift_endAccess();
  }

  else
  {
    sub_20C13B444();
    v15 = sub_20C13BB74();
    v16 = sub_20C13D1F4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_20B517000, v15, v16, "Session does not meet the minimum duration for total energy", v17, 2u);
      MEMORY[0x20F2F6A40](v17, -1, -1);
    }

    return (v10)(v6, v3);
  }
}

uint64_t sub_20BC7E53C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18 - v1;
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  sub_20C13B444();
  sub_20C13BB64();
  v10 = *(v4 + 8);
  v10(v9, v3);
  if (sub_20C137CF4())
  {
    v11 = sub_20C137D24();
    v13 = v12;
    sub_20C137D94();
    swift_beginAccess();
    sub_20C0C0DEC(v2, v11, v13);
    return swift_endAccess();
  }

  else
  {
    sub_20C13B444();
    v15 = sub_20C13BB74();
    v16 = sub_20C13D1F4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_20B517000, v15, v16, "Session does not meet the minimum duration for total distance", v17, 2u);
      MEMORY[0x20F2F6A40](v17, -1, -1);
    }

    return (v10)(v6, v3);
  }
}

unint64_t sub_20BC7E7B0(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_20C134734();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C1344C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C1365F4();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x28223BE20](v10);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = sub_20C13BB84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  (*(v16 + 8))(v18, v15);
  v19 = *(v2 + 480);
  if (v19 >> 61 == 1)
  {
    v33 = v19 & 0x1FFFFFFFFFFFFFFFLL;
    swift_beginAccess();
    sub_20BC88210(v19);

    v21 = sub_20B716430(v20);

    sub_20C137D84();
    sub_20C134484();
    (*(v7 + 8))(v9, v6);
    sub_20C1346B4();
    (*(v36 + 8))(v5, v37);
    v22 = sub_20B8D8518(v14, v21);

    if (v22)
    {
      v23 = *(v2 + 496);
      v25 = v38;
      v24 = v39;
    }

    else
    {
      v25 = v38;
      v24 = v39;
      v28 = v34;
      (*(v38 + 16))(v34, v14, v39);
      swift_beginAccess();
      v23 = *(v2 + 496);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 496) = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = sub_20BC05E98(0, v23[2] + 1, 1, v23);
        *(v2 + 496) = v23;
      }

      v31 = v23[2];
      v30 = v23[3];
      if (v31 >= v30 >> 1)
      {
        v23 = sub_20BC05E98(v30 > 1, v31 + 1, 1, v23);
      }

      v23[2] = v31 + 1;
      (*(v25 + 32))(v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v31, v28, v24);
      *(v2 + 496) = v23;
      swift_endAccess();
    }

    *(*(v33 + 144) + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_completedModalities) = v23;

    sub_20BB33554();
    (*(v25 + 8))(v14, v24);
    return sub_20BC7BF70(v19);
  }

  else
  {
    sub_20BC88288();
    swift_allocError();
    *v26 = 0;
    return swift_willThrow();
  }
}

unint64_t sub_20BC7EC90()
{
  v2 = v0;
  v3 = sub_20C137254();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  (*(v10 + 8))(v12, v9);
  v13 = *(v2 + 480);
  if (v13 >> 61 == 1)
  {
    v32 = v1;
    v30 = v13 & 0x1FFFFFFFFFFFFFFFLL;
    swift_beginAccess();
    v14 = *(v2 + 488);
    v35 = *(v14 + 16);
    v31 = v13;
    sub_20BC88210(v13);
    v37 = v4 + 16;
    v36 = v4 + 8;

    v16 = 0;
    do
    {
      v17 = v16;
      if (v35 == v16)
      {
        break;
      }

      if (v16 >= *(v14 + 16))
      {
        __break(1u);
LABEL_13:
        __break(1u);
        return result;
      }

      (*(v4 + 16))(v8, v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16++, v3);
      v18 = sub_20C1371D4();
      v19 = sub_20B8899CC(2, v18);

      result = (*(v4 + 8))(v8, v3);
    }

    while (!v19);

    v20 = *(v2 + 488);
    v34 = *(v20 + 16);

    v21 = 0;
    v22 = v33;
    do
    {
      v23 = v21;
      if (v34 == v21)
      {
        break;
      }

      if (v21 >= *(v20 + 16))
      {
        goto LABEL_13;
      }

      (*(v4 + 16))(v22, v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21++, v3);
      v24 = sub_20C1371D4();
      v25 = sub_20B8899CC(0, v24);

      result = (*(v4 + 8))(v22, v3);
    }

    while (!v25);
    v26 = v34 != v23;
    v27 = v35 != v17;

    v28 = *(v30 + 144);
    *(v28 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_eligibleForQueueCompleteEnergyMetric) = v27;
    *(v28 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_eligibleForQueueCompleteDistanceMetric) = v26;

    sub_20BB33554();

    return sub_20BC7BF70(v31);
  }

  else
  {
    sub_20BC88288();
    swift_allocError();
    *v29 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_20BC7F0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_20C13BB84();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v4[13] = v6;
  v7 = *(v6 - 8);
  v4[14] = v7;
  v4[15] = *(v7 + 64);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();
  sub_20C13CDA4();
  v4[21] = sub_20C13CD94();
  v10 = sub_20C13CD24();
  v4[22] = v10;
  v4[23] = v9;

  return MEMORY[0x2822009F8](sub_20BC7F278, v10, v9);
}

uint64_t sub_20BC7F278()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = v0[16];
    v1 = v0[17];
    v3 = v0[14];
    v4 = v0[15];
    v5 = v0[13];
    v6 = v0[9];
    sub_20BC7FA60(v1);

    v7 = swift_allocObject();
    *(v7 + 16) = sub_20BC88A4C;
    *(v7 + 24) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_20B5D9CB0;
    *(v8 + 24) = v7;
    (*(v3 + 16))(v2, v1, v5);
    v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v10 = swift_allocObject();
    (*(v3 + 32))(v10 + v9, v2, v5);
    v11 = (v10 + ((v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v11 = sub_20B5D9CCC;
    v11[1] = v8;

    v0[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
    sub_20C137C94();
    (*(v3 + 8))(v1, v5);

    return MEMORY[0x2822009F8](sub_20BC7F4F4, 0, 0);
  }

  else
  {

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_20BC7F4F4()
{
  v1 = v0[20];
  v2 = swift_task_alloc();
  v0[25] = v2;
  *(v2 + 16) = "SeymourUI/QueuedSessionPresenter.swift";
  *(v2 + 24) = 38;
  *(v2 + 32) = 2;
  *(v2 + 40) = 265;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_20BC7F604;
  v4 = v0[24];

  return MEMORY[0x2822008A0](v0 + 28, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BC88A7C, v2, v4);
}

uint64_t sub_20BC7F604()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_20BC7F7EC;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    (*(v2[19] + 8))(v2[20], v2[18]);
    v4 = v2[22];
    v5 = v2[23];
    v3 = sub_20BC7F75C;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20BC7F75C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BC7F7EC()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[22];
  v2 = v0[23];

  return MEMORY[0x2822009F8](sub_20BC7F860, v1, v2);
}

uint64_t sub_20BC7F860()
{
  v20 = v0;
  v1 = *(v0 + 216);

  sub_20C13B444();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 216);
    v6 = *(v0 + 88);
    v18 = *(v0 + 96);
    v7 = *(v0 + 80);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_20C13E094();
    v12 = sub_20B51E694(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed to prepare next session with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    v15 = *(v0 + 80);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

void sub_20BC7FA60(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764410);
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v9 = sub_20C134DC4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C13BB84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  (*(v14 + 8))(v16, v13);
  v17 = v2[63];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v2[63] = v19;
  v20 = v2[57];
  if (v19 >= *(v20 + 16))
  {
    sub_20BC88288();
    v35 = swift_allocError();
    *v36 = 1;
    *(swift_allocObject() + 16) = v35;
    sub_20C137CA4();
    return;
  }

  if (v19 < 0)
  {
    goto LABEL_10;
  }

  v21 = v9;
  (*(v10 + 16))(v12, v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v19, v9);
  v22 = v2[60];
  if (v22 >> 61 == 1)
  {
    v23 = v10;
    v24 = v22 & 0x1FFFFFFFFFFFFFFFLL;

    sub_20BC7C21C(v12, v8);
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v24;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_20BC88B70;
    *(v27 + 24) = v26;
    v29 = v41;
    v28 = v42;
    (*(v41 + 16))(v5, v8, v42);
    v30 = *(v29 + 80);
    v40 = v21;
    v31 = (v30 + 16) & ~v30;
    v32 = (v4 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    (*(v29 + 32))(v33 + v31, v5, v28);
    v34 = (v33 + v32);
    *v34 = sub_20BC8903C;
    v34[1] = v27;
    sub_20C137C94();
    (*(v29 + 8))(v8, v28);
    (*(v23 + 8))(v12, v40);
  }

  else
  {
    sub_20BC88288();
    v37 = swift_allocError();
    *v38 = 0;
    *(swift_allocObject() + 16) = v37;
    v39 = v37;
    sub_20C137CA4();
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_20BC7FF8C()
{
  v0 = sub_20C13C4C4();
  v22 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C13C4A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for QueuedSessionPresenter.RemoteDisplayState(0);
  MEMORY[0x28223BE20](v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = OBJC_IVAR____TtC9SeymourUI22QueuedSessionPresenter_remoteDisplayState;
    v12 = Strong;
    swift_beginAccess();
    sub_20BC880A0(v12 + v11, v9, type metadata accessor for QueuedSessionPresenter.RemoteDisplayState);

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = sub_20C135174();
      (*(*(v13 - 8) + 8))(v9, v13);
      swift_beginAccess();
      v14 = swift_weakLoadStrong();
      if (v14)
      {
        v15 = v14;
        swift_beginAccess();
        v16 = swift_weakLoadStrong();
        if (v16)
        {
          sub_20B51CC64(v16 + 360, v23);

          v21[1] = v24;
          v21[2] = v25;
          v21[0] = __swift_project_boxed_opaque_existential_1(v23, v24);
          *v6 = 1;
          (*(v4 + 104))(v6, *MEMORY[0x277D85188], v3);
          sub_20B5E2E18();
          v17 = v22;
          (*(v22 + 104))(v2, *MEMORY[0x277D851B8], v0);
          v18 = sub_20C13D3A4();
          (*(v17 + 8))(v2, v0);

          v19 = sub_20C13AE04();

          (*(v4 + 8))(v6, v3);
          __swift_destroy_boxed_opaque_existential_1(v23);
        }

        else
        {
          v19 = 0;
        }

        *(v15 + 592) = v19;

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_20BC884C0(v9, type metadata accessor for QueuedSessionPresenter.RemoteDisplayState);
    }
  }

  return 0;
}

uint64_t sub_20BC80370()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BC804D4(v3);

    v5 = sub_20C137CB4();
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    v5(sub_20B5DF6DC, v6);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20BC804D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = &v34 - v6;
  v7 = type metadata accessor for QueuedSessionPresenter.RemoteDisplayState(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_20C135174();
  v10 = *(v42 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v42);
  v36 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = sub_20C13BB84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  (*(v16 + 8))(v18, v15);
  v19 = OBJC_IVAR____TtC9SeymourUI22QueuedSessionPresenter_remoteDisplayState;
  swift_beginAccess();
  sub_20BC880A0(v2 + v19, v9, type metadata accessor for QueuedSessionPresenter.RemoteDisplayState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *(v10 + 32);
    v20(v14, v9, v42);
    __swift_project_boxed_opaque_existential_1((v2 + 272), *(v2 + 296));
    v35 = v14;
    sub_20C13A114();
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = v36;
    v23 = v42;
    (*(v10 + 16))(v36, v14, v42);
    v24 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v21;
    v20((v25 + v24), v22, v23);
    v27 = v37;
    v26 = v38;
    v28 = v39;
    v29 = v40;
    (*(v38 + 16))(v37, v40, v39);
    v30 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v31 = swift_allocObject();
    (*(v26 + 32))(v31 + v30, v27, v28);
    v32 = (v31 + ((v4 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v32 = sub_20BC88A94;
    v32[1] = v25;
    sub_20C137C94();
    (*(v26 + 8))(v29, v28);
    return (*(v10 + 8))(v35, v42);
  }

  else
  {
    sub_20BC884C0(v9, type metadata accessor for QueuedSessionPresenter.RemoteDisplayState);
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }
}

uint64_t sub_20BC809C0(uint64_t a1)
{
  v2 = v1;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88);
  MEMORY[0x28223BE20](v149);
  v164 = v137 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v159 = *(v5 - 8);
  v160 = v5;
  MEMORY[0x28223BE20](v5);
  v156 = v6;
  v157 = v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v158 = v137 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764890);
  v154 = *(v9 - 8);
  v155 = v9;
  MEMORY[0x28223BE20](v9);
  v152 = v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = v10;
  MEMORY[0x28223BE20](v11);
  v153 = v137 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v162 = v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v165 = v137 - v17;
  MEMORY[0x28223BE20](v18);
  v163 = v137 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v137 - v21;
  MEMORY[0x28223BE20](v23);
  v166 = v137 - v24;
  v161 = v25;
  MEMORY[0x28223BE20](v26);
  v168 = v137 - v27;
  v28 = sub_20C134DC4();
  v169 = *(v28 - 8);
  v170 = v28;
  MEMORY[0x28223BE20](v28);
  v150 = v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v167 = v137 - v31;
  v148 = v32;
  MEMORY[0x28223BE20](v33);
  v35 = v137 - v34;
  v36 = sub_20C13BB84();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = v137 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  result = (*(v37 + 8))(v39, v36);
  v41 = v2;
  v42 = *(v2 + 504);
  v43 = v42 + 2;
  if (__OFADD__(v42, 2))
  {
    __break(1u);
    goto LABEL_22;
  }

  v146 = v22;
  v147 = v14;
  v44 = *(a1 + 144);
  v45 = v41;
  v46 = *(v41 + 456);
  v47 = *(v46 + 16);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v48 = a1;
    v49 = *(v44 + 24);
    ObjectType = swift_getObjectType();
    v51 = *(v49 + 144);
    v52 = v49;
    a1 = v48;
    v51(v43, v47, ObjectType, v52);
    result = swift_unknownObjectRelease();
  }

  if (!*(v46 + 16))
  {
    return result;
  }

  v145 = a1;
  v141 = v13;
  v53 = v169;
  v144 = *(v169 + 80);
  v54 = v46 + ((v144 + 32) & ~v144);
  v55 = v169[2];
  v56 = v170;
  v143 = v169 + 2;
  v142 = v55;
  v55(v35, v54, v170);
  v139 = sub_20C134DB4();
  v58 = v57;
  v60 = v53[1];
  v59 = v53 + 1;
  v140 = v60;
  result = (v60)(v35, v56);
  v61 = *(v46 + 16);
  if (v61 < 2)
  {
  }

  v138 = v58;
  v137[2] = v59;
  v62 = *(v45 + 504);
  v63 = __OFADD__(v62, 1);
  v64 = v62 + 1;
  if (v63)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  if (v64 < v61)
  {
    if ((v64 & 0x8000000000000000) == 0)
    {
      v65 = v45;
      v137[0] = ~v144;
      v142(v167, v54 + v169[9] * v64, v170);
      v66 = swift_allocBox();
      v68 = v67;
      v69 = sub_20C1344C4();
      (*(*(v69 - 8) + 56))(v68, 1, 1, v69);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60);
      v164 = swift_allocBox();
      v71 = v70;
      v72 = sub_20C137254();
      (*(*(v72 - 8) + 56))(v71, 1, 1, v72);
      v73 = v153;
      sub_20BC825F8(v153);
      v74 = swift_allocObject();
      *(v74 + 16) = sub_20BC89044;
      *(v74 + 24) = v66;
      v149 = v66;
      v76 = v154;
      v75 = v155;
      v77 = v152;
      (*(v154 + 16))(v152, v73, v155);
      v78 = (*(v76 + 80) + 16) & ~*(v76 + 80);
      v79 = (v151 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = swift_allocObject();
      (*(v76 + 32))(v80 + v78, v77, v75);
      v81 = (v80 + v79);
      *v81 = sub_20BC89040;
      v81[1] = v74;

      sub_20C137C94();
      (*(v76 + 8))(v73, v75);
      v137[1] = v65;
      __swift_project_boxed_opaque_existential_1((v65 + 168), *(v65 + 192));
      v82 = v158;
      sub_20C1398E4();
      v83 = v150;
      v84 = v170;
      v142(v150, v167, v170);
      v85 = (v144 + 24) & v137[0];
      v86 = swift_allocObject();
      *(v86 + 16) = v164;
      (v169[4])(v86 + v85, v83, v84);
      v87 = swift_allocObject();
      *(v87 + 16) = sub_20BC88CC8;
      *(v87 + 24) = v86;
      v89 = v159;
      v88 = v160;
      v90 = v157;
      (*(v159 + 16))(v157, v82, v160);
      v91 = (*(v89 + 80) + 16) & ~*(v89 + 80);
      v92 = (v156 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
      v93 = swift_allocObject();
      (*(v89 + 32))(v93 + v91, v90, v88);
      v94 = (v93 + v92);
      *v94 = sub_20B5DF4C4;
      v94[1] = v87;

      v95 = v166;
      sub_20C137C94();
      (*(v89 + 8))(v82, v88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
      v96 = v147;
      v97 = *(v147 + 72);
      v98 = (*(v147 + 80) + 32) & ~*(v147 + 80);
      v99 = *(v147 + 80);
      v100 = swift_allocObject();
      *(v100 + 16) = xmmword_20C14F320;
      v101 = v100 + v98;
      v102 = v96[2];
      v103 = v141;
      v102(v101, v168, v141);
      v102(v101 + v97, v95, v103);
      v160 = v102;
      v169 = v96 + 2;
      sub_20B5E2E18();
      v104 = sub_20C13D374();
      sub_20C13A7C4();
      v105 = v165;
      sub_20C137C74();

      v106 = swift_allocObject();
      v107 = v164;
      v106[2] = v149;
      v106[3] = v107;
      v108 = v139;
      v106[4] = v145;
      v106[5] = v108;
      v106[6] = v138;
      v109 = swift_allocObject();
      *(v109 + 16) = sub_20BC88D7C;
      *(v109 + 24) = v106;
      v110 = swift_allocObject();
      *(v110 + 16) = sub_20B5DF3B8;
      *(v110 + 24) = v109;
      v111 = v162;
      v102(v162, v105, v103);
      v112 = (v99 + 16) & ~v99;
      v159 = v99;
      v113 = (v161 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
      v114 = swift_allocObject();
      v161 = v96[4];
      v161(v114 + v112, v111, v103);
      v115 = (v114 + v113);
      *v115 = sub_20B5DF3D4;
      v115[1] = v110;

      v116 = v163;
      sub_20C137C94();
      v117 = v96[1];
      v118 = v165;
      v117(v165, v103);
      v119 = swift_allocObject();
      swift_weakInit();
      v120 = swift_allocObject();
      *(v120 + 16) = sub_20BC88D8C;
      *(v120 + 24) = v119;
      v160(v118, v116, v103);
      v121 = swift_allocObject();
      v161(v121 + v112, v118, v103);
      v122 = (v121 + v113);
      *v122 = sub_20B5F7764;
      v122[1] = v120;
      v123 = v146;
      sub_20C137C94();
      v117(v116, v103);
      v124 = sub_20C137CB4();
      v125 = swift_allocObject();
      *(v125 + 16) = 0;
      *(v125 + 24) = 0;
      v124(sub_20B5DF6DC, v125);

      v117(v123, v103);
      v117(v166, v103);
      v117(v168, v103);
      v140(v167, v170);
    }

    goto LABEL_23;
  }

  v126 = sub_20C1344C4();
  v127 = v164;
  (*(*(v126 - 8) + 56))(v164, 1, 1, v126);
  *(v44 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_summaryType) = 1;
  v128 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_upNextCatalogWorkout;
  swift_beginAccess();
  sub_20BC88B8C(v127, v44 + v128);
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v129 = *(v44 + 24);
    v130 = swift_getObjectType();
    (*(v129 + 8))(1, v130, v129);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v132 = v138;
  if (Strong)
  {
    v133 = *(v44 + 24);
    v134 = swift_getObjectType();
    (*(v133 + 160))(0, v134, v133);
    swift_unknownObjectRelease();
  }

  if (v132)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v135 = *(v44 + 24);
      v136 = swift_getObjectType();
      (*(v135 + 152))(v136, v135);
      swift_unknownObjectRelease();
    }
  }

  return sub_20B520158(v127, &qword_27C766E88);
}

unint64_t sub_20BC819C0()
{
  v1 = v0;
  v2 = sub_20C134864();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  v10 = *(v7 + 8);
  result = v10(v9, v6);
  v12 = *(v1 + 480);
  if ((v12 >> 61) > 2)
  {
    v14 = v3;
    if (v12 >> 61 != 3)
    {
      return result;
    }

    sub_20C13B444();
    sub_20C13BB64();
    v10(v9, v6);
    if (!*((v12 & 0x1FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_state))
    {
      __swift_project_boxed_opaque_existential_1(((v12 & 0x1FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), *((v12 & 0x1FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24));
      sub_20C13CE94();
      sub_20C134854();
      sub_20C13A464();
      sub_20C13A164();

      sub_20BC7BF70(v12);
      return (*(v14 + 8))(v5, v2);
    }
  }

  else
  {
    if ((v12 >> 61) < 2)
    {
      return result;
    }

    sub_20BC81C80(v12 & 0x1FFFFFFFFFFFFFFFLL);
  }

  return sub_20BC7BF70(v12);
}

uint64_t sub_20BC81C80(uint64_t a1)
{
  v2 = v1;
  v4 = (v1 + 536);
  v5 = sub_20C134864();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C13B444();
  sub_20C13BB64();
  (*(v10 + 8))(v12, v9);
  v13 = *(v4 + 16);
  v25 = *v4;
  v26 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76B3D0);
  result = sub_20C133BD4();
  if (v24 > 2u)
  {
    if (v24 == 3)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v21 = Strong;
        [*(Strong + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playButtonView) setHidden_];
        v22 = *(v21 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_productPlacementView);
        if (v22)
        {
          [v22 setHidden_];
        }

        swift_unknownObjectRelease();
      }

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        sub_20B6A5144();
        result = swift_unknownObjectRelease();
      }

      if (!*(a1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_state))
      {
        __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), *(a1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24));
        sub_20C13CE94();
        sub_20C134854();
        sub_20C13A464();
        sub_20C13A164();

        return (*(v6 + 8))(v8, v5);
      }
    }

    else if (v24 == 4)
    {
      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {
        v16 = v15;
        [*(v15 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playButtonView) setHidden_];
        v17 = *(v16 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_productPlacementView);
        if (v17)
        {
          [v17 setHidden_];
        }

        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_20B6A5144();
        swift_unknownObjectRelease();
      }

      return sub_20BBEF84C(0);
    }
  }

  else
  {
    if (!v24)
    {
      v18 = *(v2 + 480);
      *(v2 + 480) = a1 | 0x6000000000000000;
      sub_20BC7BF70(v18);
      v19 = swift_unknownObjectWeakLoadStrong();

      if (!v19)
      {
        return result;
      }

      goto LABEL_16;
    }

    if (v24 != 1)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
LABEL_16:
        sub_20B6A5144();
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_20BC82050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = sub_20BC7CE5C(a1, 0);

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = *(Strong + 480);
      *(Strong + 480) = v10 | 0x4000000000000000;

      sub_20BC7BF70(v12);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v13 = swift_unknownObjectWeakLoadStrong();

      if (v13)
      {
        sub_20B6A576C(v10);
        swift_unknownObjectRelease();
      }
    }

    v14 = *(a3 + 144);
    sub_20C13B444();
    sub_20C13BB64();
    (*(v6 + 8))(v8, v5);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 24);
      ObjectType = swift_getObjectType();
      (*(v15 + 168))(1, 1, ObjectType, v15);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20BC822A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RemoteDisplayConnected();
  MEMORY[0x28223BE20](v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  if (*(a1 + 8) == 1)
  {
    v12 = *a1;
    sub_20C13B444();
    v13 = v12;
    v14 = sub_20C13BB74();
    v15 = sub_20C13D1F4();
    sub_20B583FB8(v12, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24[0] = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = sub_20C13E094();
      v20 = sub_20B51E694(v18, v19, v24);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_20B517000, v14, v15, "Failed to connect to remote display with error: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x20F2F6A40](v17, -1, -1);
      MEMORY[0x20F2F6A40](v16, -1, -1);
    }

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_20BC7BAF4();
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_unknownObjectRetain();

      swift_getObjectType();
      v22 = sub_20C135174();
      (*(*(v22 - 8) + 16))(v7, a3, v22);
      sub_20BC88820(&qword_27C76B9C0, type metadata accessor for RemoteDisplayConnected);
      sub_20C13A764();
      swift_unknownObjectRelease();
      return sub_20BC884C0(v7, type metadata accessor for RemoteDisplayConnected);
    }
  }

  return result;
}

uint64_t sub_20BC825F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  (*(v11 + 8))(v13, v10);
  __swift_project_boxed_opaque_existential_1((v2 + 128), *(v2 + 152));
  sub_20C134D74();
  sub_20C13A0B4();

  v14 = swift_allocObject();
  *(v14 + 16) = sub_20BC86FB4;
  *(v14 + 24) = 0;
  (*(v4 + 16))(v6, v9, v3);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = (v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v4 + 32))(v17 + v15, v6, v3);
  v18 = (v17 + v16);
  *v18 = sub_20BC8856C;
  v18[1] = v14;
  sub_20C1344C4();
  sub_20C137C94();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_20BC828F0(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v36 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34[-v6];
  v8 = sub_20C137254();
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v38 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88);
  MEMORY[0x28223BE20](v10 - 8);
  v37 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v34[-v13];
  v15 = sub_20C1344C4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v34[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = swift_projectBox();
  v20 = swift_projectBox();
  swift_beginAccess();
  sub_20B52F9E8(v19, v14, &qword_27C766E88);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_20B520158(v14, &qword_27C766E88);
  }

  (*(v16 + 32))(v18, v14, v15);
  swift_beginAccess();
  sub_20B52F9E8(v20, v7, &unk_27C762A60);
  v22 = v40;
  if ((*(v40 + 48))(v7, 1, v8) == 1)
  {
    (*(v16 + 8))(v18, v15);
    return sub_20B520158(v7, &unk_27C762A60);
  }

  else
  {
    v23 = v38;
    (*(v22 + 32))(v38, v7, v8);
    v35 = sub_20C1371E4();
    v24 = v37;
    v25 = *(v36 + 18);
    v26 = *(v16 + 16);
    v36 = v18;
    v26(v37, v18, v15);
    (*(v16 + 56))(v24, 0, 1, v15);
    *(v25 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_summaryType) = 2;
    v27 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_upNextCatalogWorkout;
    swift_beginAccess();
    sub_20BC88B8C(v24, v25 + v27);
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v28 = *(v25 + 24);
      ObjectType = swift_getObjectType();
      (*(v28 + 8))(2, ObjectType, v28);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = *(v25 + 24);
      v31 = swift_getObjectType();
      (*(v30 + 160))(v35 & 1, v31, v30);
      swift_unknownObjectRelease();
    }

    if (v39)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v32 = *(v25 + 24);
        v33 = swift_getObjectType();
        (*(v32 + 152))(v33, v32);
        swift_unknownObjectRelease();
      }
    }

    sub_20B520158(v24, &qword_27C766E88);
    (*(v22 + 8))(v23, v8);
    return (*(v16 + 8))(v36, v15);
  }
}

uint64_t sub_20BC82E08()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BC82E68();
  }

  return result;
}

uint64_t sub_20BC82E68()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v64 = *(v2 - 8);
  v3 = *(v64 + 64);
  MEMORY[0x28223BE20](v2);
  v61 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v66 = &v53 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v65 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v53 - v6;
  v7 = sub_20C134DC4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v60 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - v11;
  v13 = sub_20C13BB84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  result = (*(v14 + 8))(v16, v13);
  v18 = v1[60];
  v19 = v18 >> 61;
  if ((v18 >> 61) <= 1)
  {
    v21 = v1[60];
    v20 = v7;
    if (!v19)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v19 != 2)
  {
    if (v19 != 3)
    {
      return result;
    }

    v20 = v7;
LABEL_6:
    v21 = v18 & 0x1FFFFFFFFFFFFFFFLL;
    goto LABEL_8;
  }

  v21 = v18 & 0x1FFFFFFFFFFFFFFFLL;
  v20 = v7;
LABEL_8:
  v22 = v1[63];
  v23 = v1[57];
  if (v22 >= *(v23 + 16))
  {
    result = sub_20BC88210(v1[60]);
  }

  else
  {
    if (v22 < 0)
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v57 = v2;
    v58 = v21;
    v59 = v8;
    v24 = *(v8 + 16);
    v25 = *(v8 + 80);
    v26 = v23 + ((v25 + 32) & ~v25) + *(v8 + 72) * v22;
    v27 = v12;
    v28 = v12;
    v29 = v20;
    v55 = v24;
    v24(v28, v26, v20);
    sub_20BC88210(v18);
    sub_20C134DB4();
    v30 = sub_20C1382E4();

    if (v30)
    {
      v54 = ~v25;
      v56 = v27;
      __swift_project_boxed_opaque_existential_1(v1 + 50, v1[53]);
      sub_20C139724();
      v31 = swift_allocObject();
      swift_weakInit();
      v32 = v60;
      v55(v60, v56, v29);
      v33 = (v25 + 16) & v54;
      v34 = (v9 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      (*(v59 + 32))(v35 + v33, v32, v29);
      *(v35 + v34) = v31;
      v36 = swift_allocObject();
      *(v36 + 16) = sub_20BC88E4C;
      *(v36 + 24) = v35;
      v37 = v64;
      v38 = v61;
      v39 = v66;
      v40 = v57;
      (*(v64 + 16))(v61, v66, v57);
      v41 = *(v37 + 80);
      v60 = v29;
      v42 = (v41 + 16) & ~v41;
      v43 = (v3 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
      v44 = swift_allocObject();
      (*(v37 + 32))(v44 + v42, v38, v40);
      v45 = (v44 + v43);
      *v45 = sub_20B87619C;
      v45[1] = v36;
      v46 = v62;
      sub_20C137C94();
      (*(v37 + 8))(v39, v40);
      v47 = v63;
      v48 = sub_20C137CB4();
      v49 = swift_allocObject();
      *(v49 + 16) = 0;
      *(v49 + 24) = 0;
      v48(sub_20B5DF6DC, v49);

      (*(v65 + 8))(v46, v47);
      result = (*(v59 + 8))(v56, v60);
    }

    else
    {
      result = (*(v59 + 8))(v27, v29);
    }

    v21 = v58;
  }

  v50 = v1[63];
  v51 = __OFADD__(v50, 1);
  v52 = v50 + 1;
  if (v51)
  {
    __break(1u);
    goto LABEL_19;
  }

  v1[63] = v52;
  sub_20BC809C0(v21);
  return sub_20BC7BF70(v18);
}

uint64_t sub_20BC834E0()
{
  v0 = sub_20C134AB4();
  v2 = v1;
  if (v0 == sub_20C134D74() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_20C13DFF4();
  }

  return v4 & 1;
}

uint64_t sub_20BC8357C()
{
  v1 = sub_20C13C4C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[60];
  if (v5 >> 61 == 1)
  {
    v6 = v0[49];
    v15 = v0[48];
    v16 = v6;
    v14 = __swift_project_boxed_opaque_existential_1(v0 + 45, v15);
    sub_20B5E2E18();
    (*(v2 + 104))(v4, *MEMORY[0x277D851C8], v1);

    v7 = v0;
    v8 = sub_20C13D3A4();
    (*(v2 + 8))(v4, v1);
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v5 & 0x1FFFFFFFFFFFFFFFLL;
    sub_20BC88210(v5);

    v11 = sub_20C13AE34();
    sub_20BC7BF70(v5);

    v7[73] = v11;
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_20BC88288();
    swift_allocError();
    *v13 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_20BC837AC(uint64_t a1, uint64_t a2)
{
  v105 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v112 = v104 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070);
  MEMORY[0x28223BE20](v4 - 8);
  v111 = v104 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v110 = v104 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  MEMORY[0x28223BE20](v8 - 8);
  v109 = v104 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0);
  MEMORY[0x28223BE20](v10 - 8);
  v108 = v104 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  MEMORY[0x28223BE20](v12 - 8);
  v107 = v104 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  MEMORY[0x28223BE20](v14 - 8);
  v106 = v104 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0);
  MEMORY[0x28223BE20](v16 - 8);
  v125 = v104 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v18 - 8);
  v124 = v104 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0);
  MEMORY[0x28223BE20](v20 - 8);
  v123 = v104 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00);
  MEMORY[0x28223BE20](v22 - 8);
  v130 = v104 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0);
  MEMORY[0x28223BE20](v24 - 8);
  v129 = v104 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  MEMORY[0x28223BE20](v26 - 8);
  v128 = v104 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0);
  MEMORY[0x28223BE20](v28 - 8);
  v127 = v104 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20);
  MEMORY[0x28223BE20](v30 - 8);
  v122 = v104 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0);
  MEMORY[0x28223BE20](v32 - 8);
  v126 = v104 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = v104 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = v104 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = v104 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = v104 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  MEMORY[0x28223BE20](v46 - 8);
  v48 = v104 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  MEMORY[0x28223BE20](v49 - 8);
  v51 = v104 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v52 - 8);
  v54 = v104 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0);
  MEMORY[0x28223BE20](v55 - 8);
  v57 = v104 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v58 - 8);
  v60 = v104 - v59;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B51CC64(result + 272, v132);

    v104[1] = v133;
    v104[2] = v134;
    v104[3] = __swift_project_boxed_opaque_existential_1(v132, v133);
    v105 = sub_20C13A464();
    v62 = sub_20C133D84();
    v63 = *(*(v62 - 8) + 56);
    v121 = v60;
    v63(v60, 1, 1, v62);
    v64 = sub_20C135854();
    v65 = *(*(v64 - 8) + 56);
    v120 = v57;
    v65(v57, 1, 1, v64);
    v66 = sub_20C136194();
    v67 = *(*(v66 - 8) + 56);
    v116 = v54;
    v67(v54, 1, 1, v66);
    v68 = sub_20C133DD4();
    v69 = *(*(v68 - 8) + 56);
    v119 = v51;
    v69(v51, 1, 1, v68);
    v70 = sub_20C135274();
    v71 = *(*(v70 - 8) + 56);
    v118 = v48;
    v71(v48, 1, 1, v70);
    v72 = sub_20C134514();
    v73 = *(*(v72 - 8) + 56);
    v117 = v45;
    v73(v45, 1, 1, v72);
    v74 = sub_20C133B04();
    v75 = *(*(v74 - 8) + 56);
    v115 = v42;
    v75(v42, 1, 1, v74);
    v76 = sub_20C134C04();
    v77 = *(*(v76 - 8) + 56);
    v114 = v39;
    v77(v39, 1, 1, v76);
    v78 = sub_20C1368F4();
    v79 = *(*(v78 - 8) + 56);
    v113 = v36;
    v79(v36, 1, 1, v78);
    v80 = sub_20C134914();
    (*(*(v80 - 8) + 56))(v126, 1, 1, v80);
    v81 = sub_20C133374();
    (*(*(v81 - 8) + 56))(v122, 1, 1, v81);
    v82 = sub_20C135B74();
    (*(*(v82 - 8) + 56))(v127, 1, 1, v82);
    v83 = sub_20C134CD4();
    (*(*(v83 - 8) + 56))(v128, 1, 1, v83);
    v84 = sub_20C136EB4();
    (*(*(v84 - 8) + 56))(v129, 1, 1, v84);
    v85 = sub_20C133494();
    (*(*(v85 - 8) + 56))(v130, 1, 1, v85);
    v86 = sub_20C134594();
    (*(*(v86 - 8) + 56))(v123, 1, 1, v86);
    v87 = sub_20C138184();
    (*(*(v87 - 8) + 56))(v124, 1, 1, v87);
    v88 = sub_20C1363D4();
    (*(*(v88 - 8) + 56))(v125, 1, 1, v88);
    v89 = sub_20C1337A4();
    v90 = v106;
    (*(*(v89 - 8) + 56))(v106, 1, 1, v89);
    sub_20C13CE94();
    v131 = 1;
    v91 = v107;
    sub_20C1337B4();
    v92 = sub_20C1337D4();
    (*(*(v92 - 8) + 56))(v91, 0, 1, v92);
    v93 = sub_20C134A94();
    v94 = v108;
    (*(*(v93 - 8) + 56))(v108, 1, 1, v93);
    v95 = sub_20C135364();
    v96 = v109;
    (*(*(v95 - 8) + 56))(v109, 1, 1, v95);
    v97 = sub_20C136484();
    v98 = v110;
    (*(*(v97 - 8) + 56))(v110, 1, 1, v97);
    v99 = sub_20C136784();
    v100 = v111;
    (*(*(v99 - 8) + 56))(v111, 1, 1, v99);
    v101 = sub_20C137FE4();
    v102 = v112;
    (*(*(v101 - 8) + 56))(v112, 1, 1, v101);
    v103 = v122;
    sub_20C13A174();

    sub_20B520158(v102, &unk_27C768AC0);
    sub_20B520158(v100, &unk_27C765070);
    sub_20B520158(v98, &unk_27C765CB0);
    sub_20B520158(v96, &unk_27C765080);
    sub_20B520158(v94, &unk_27C768AD0);
    sub_20B520158(v91, &unk_27C765090);
    sub_20B520158(v90, &unk_27C768AE0);
    sub_20B520158(v125, &unk_27C7650A0);
    sub_20B520158(v124, &unk_27C768AF0);
    sub_20B520158(v123, &unk_27C7650B0);
    sub_20B520158(v130, &unk_27C768B00);
    sub_20B520158(v129, &unk_27C7650C0);
    sub_20B520158(v128, &unk_27C768B10);
    sub_20B520158(v127, &unk_27C7650D0);
    sub_20B520158(v103, &unk_27C768B20);
    sub_20B520158(v126, &unk_27C7650E0);
    sub_20B520158(v113, &unk_27C767260);
    sub_20B520158(v114, &unk_27C7650F0);
    sub_20B520158(v115, &qword_27C768B30);
    sub_20B520158(v117, &unk_27C765050);
    sub_20B520158(v118, &unk_27C765100);
    sub_20B520158(v119, &unk_27C7687F0);
    sub_20B520158(v116, &unk_27C765110);
    sub_20B520158(v120, &unk_27C76BBF0);
    sub_20B520158(v121, &unk_27C765120);
    return __swift_destroy_boxed_opaque_existential_1(v132);
  }

  return result;
}

uint64_t sub_20BC84A84()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v39 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AA0);
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v45);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = &v39 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = type metadata accessor for QueuedSessionPresenter.RemoteDisplayState(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C135174();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC9SeymourUI22QueuedSessionPresenter_remoteDisplayState;
  swift_beginAccess();
  sub_20BC880A0(v1 + v19, v14, type metadata accessor for QueuedSessionPresenter.RemoteDisplayState);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    (*(v16 + 32))(v18, v14, v15);
    __swift_project_boxed_opaque_existential_1((v1 + 272), *(v1 + 296));
    sub_20C13A0F4();
    (*(v16 + 8))(v18, v15);
    v20 = v40;
    v21 = sub_20C137CB4();
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    v21(sub_20B5DF6DC, v22);

    (*(v39 + 8))(v11, v20);
  }

  __swift_project_boxed_opaque_existential_1((v1 + 272), *(v1 + 296));
  v23 = v42;
  sub_20C13A0E4();
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_20BC88108;
  *(v25 + 24) = v24;
  v26 = v41;
  v27 = v45;
  (*(v4 + 16))(v41, v23, v45);
  v28 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v29 = swift_allocObject();
  (*(v4 + 32))(v29 + v28, v26, v27);
  v30 = (v29 + ((v5 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = sub_20BC88124;
  v30[1] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  v31 = v43;
  sub_20C137C94();
  (*(v4 + 8))(v23, v27);
  v32 = v46;
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v33(sub_20B52347C, v34);

  (*(v44 + 8))(v31, v32);
  v35 = v47;
  sub_20C13CDC4();
  v36 = sub_20C13CDF4();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v1;

  sub_20B6383D0(0, 0, v35, &unk_20C175CA8, v37);

  return sub_20BC7BFA8();
}

uint64_t sub_20BC85140@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v102 = a1;
  v117 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v108 = v101 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070);
  MEMORY[0x28223BE20](v4 - 8);
  v107 = v101 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v106 = v101 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  MEMORY[0x28223BE20](v8 - 8);
  v105 = v101 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0);
  MEMORY[0x28223BE20](v10 - 8);
  v104 = v101 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  MEMORY[0x28223BE20](v12 - 8);
  v103 = v101 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  MEMORY[0x28223BE20](v14 - 8);
  v121 = v101 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0);
  MEMORY[0x28223BE20](v16 - 8);
  v120 = v101 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v18 - 8);
  v119 = v101 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0);
  MEMORY[0x28223BE20](v20 - 8);
  v118 = v101 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00);
  MEMORY[0x28223BE20](v22 - 8);
  v128 = v101 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0);
  MEMORY[0x28223BE20](v24 - 8);
  v127 = v101 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  MEMORY[0x28223BE20](v26 - 8);
  v126 = v101 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0);
  MEMORY[0x28223BE20](v28 - 8);
  v125 = v101 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20);
  MEMORY[0x28223BE20](v30 - 8);
  v124 = v101 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0);
  MEMORY[0x28223BE20](v32 - 8);
  v123 = v101 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v34 - 8);
  v122 = v101 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = v101 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = v101 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = v101 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = v101 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  MEMORY[0x28223BE20](v48 - 8);
  v50 = v101 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = v101 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0);
  MEMORY[0x28223BE20](v54 - 8);
  v56 = v101 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v57 - 8);
  v59 = v101 - v58;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B51CC64(result + 272, &v129);

    v101[0] = v130;
    v101[1] = v131;
    v101[2] = __swift_project_boxed_opaque_existential_1(&v129, v130);
    v102 = sub_20C137D14();
    v61 = sub_20C133D84();
    v62 = *(*(v61 - 8) + 56);
    v116 = v59;
    v62(v59, 1, 1, v61);
    v63 = sub_20C135854();
    v64 = *(*(v63 - 8) + 56);
    v115 = v56;
    v64(v56, 1, 1, v63);
    v65 = sub_20C136194();
    v66 = *(*(v65 - 8) + 56);
    v114 = v53;
    v66(v53, 1, 1, v65);
    v67 = sub_20C133DD4();
    v68 = *(*(v67 - 8) + 56);
    v113 = v50;
    v68(v50, 1, 1, v67);
    v69 = sub_20C135274();
    v70 = *(*(v69 - 8) + 56);
    v111 = v47;
    v70(v47, 1, 1, v69);
    v71 = sub_20C134514();
    v72 = *(*(v71 - 8) + 56);
    v112 = v44;
    v72(v44, 1, 1, v71);
    v73 = sub_20C133B04();
    v74 = *(*(v73 - 8) + 56);
    v109 = v41;
    v74(v41, 1, 1, v73);
    v75 = sub_20C134C04();
    v76 = *(*(v75 - 8) + 56);
    v110 = v38;
    v76(v38, 1, 1, v75);
    v77 = sub_20C1368F4();
    (*(*(v77 - 8) + 56))(v122, 1, 1, v77);
    v78 = sub_20C134914();
    (*(*(v78 - 8) + 56))(v123, 1, 1, v78);
    v79 = sub_20C133374();
    (*(*(v79 - 8) + 56))(v124, 1, 1, v79);
    v80 = sub_20C135B74();
    (*(*(v80 - 8) + 56))(v125, 1, 1, v80);
    v81 = sub_20C134CD4();
    (*(*(v81 - 8) + 56))(v126, 1, 1, v81);
    v82 = sub_20C136EB4();
    (*(*(v82 - 8) + 56))(v127, 1, 1, v82);
    v83 = sub_20C133494();
    (*(*(v83 - 8) + 56))(v128, 1, 1, v83);
    v84 = sub_20C134594();
    (*(*(v84 - 8) + 56))(v118, 1, 1, v84);
    v85 = sub_20C138184();
    (*(*(v85 - 8) + 56))(v119, 1, 1, v85);
    v86 = sub_20C1363D4();
    (*(*(v86 - 8) + 56))(v120, 1, 1, v86);
    v87 = sub_20C1337A4();
    (*(*(v87 - 8) + 56))();
    sub_20C13CE94();
    v132 = 1;
    v88 = v103;
    sub_20C1337B4();
    v89 = sub_20C1337D4();
    (*(*(v89 - 8) + 56))(v88, 0, 1, v89);
    v90 = sub_20C134A94();
    v91 = v104;
    (*(*(v90 - 8) + 56))(v104, 1, 1, v90);
    v92 = sub_20C135364();
    v93 = v105;
    (*(*(v92 - 8) + 56))(v105, 1, 1, v92);
    v94 = sub_20C136484();
    v95 = v106;
    (*(*(v94 - 8) + 56))(v106, 1, 1, v94);
    v96 = sub_20C136784();
    v97 = v107;
    (*(*(v96 - 8) + 56))(v107, 1, 1, v96);
    v98 = sub_20C137FE4();
    v99 = v108;
    (*(*(v98 - 8) + 56))(v108, 1, 1, v98);
    v100 = v120;
    sub_20C13A174();

    sub_20B520158(v99, &unk_27C768AC0);
    sub_20B520158(v97, &unk_27C765070);
    sub_20B520158(v95, &unk_27C765CB0);
    sub_20B520158(v93, &unk_27C765080);
    sub_20B520158(v91, &unk_27C768AD0);
    sub_20B520158(v88, &unk_27C765090);
    sub_20B520158(v121, &unk_27C768AE0);
    sub_20B520158(v100, &unk_27C7650A0);
    sub_20B520158(v119, &unk_27C768AF0);
    sub_20B520158(v118, &unk_27C7650B0);
    sub_20B520158(v128, &unk_27C768B00);
    sub_20B520158(v127, &unk_27C7650C0);
    sub_20B520158(v126, &unk_27C768B10);
    sub_20B520158(v125, &unk_27C7650D0);
    sub_20B520158(v124, &unk_27C768B20);
    sub_20B520158(v123, &unk_27C7650E0);
    sub_20B520158(v122, &unk_27C767260);
    sub_20B520158(v110, &unk_27C7650F0);
    sub_20B520158(v109, &qword_27C768B30);
    sub_20B520158(v112, &unk_27C765050);
    sub_20B520158(v111, &unk_27C765100);
    sub_20B520158(v113, &unk_27C7687F0);
    sub_20B520158(v114, &unk_27C765110);
    sub_20B520158(v115, &unk_27C76BBF0);
    sub_20B520158(v116, &unk_27C765120);
    *v117 = 0;
    return __swift_destroy_boxed_opaque_existential_1(&v129);
  }

  else
  {
    *v117 = 1;
  }

  return result;
}

uint64_t sub_20BC86460()
{
  *(v0 + 24) = *(*(v0 + 16) + 80);
  sub_20C138F44();
  sub_20BC88820(&qword_27C76C6B0, MEMORY[0x277D541D0]);
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BBF8F74, v2, v1);
}

uint64_t sub_20BC86520(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;

  v6 = sub_20C0A5154(0, 0, sub_20BC88248, v5);
  v8 = v7;

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20B6A5EA4(v6, v8);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_20BC86624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BC867F0(a1, a2, v12);

    v14 = swift_allocObject();
    *(v14 + 16) = a4;
    *(v14 + 24) = a5;

    v15 = sub_20C137CB4();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_20BC88254;
    *(v16 + 24) = v14;

    v15(sub_20B5DF6DC, v16);

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_20BC867F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76CDA8);
  MEMORY[0x28223BE20](v56);
  v55 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v54 = &v34 - v8;
  v53 = sub_20C133B74();
  v9 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C132E94();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C138204();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v40 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v3[57];
  v18 = *(v17 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v34 = v13;
    v35 = v15;
    v36 = v14;
    v37 = a1;
    v38 = a2;
    v39 = v3;
    v58 = MEMORY[0x277D84F90];
    sub_20BB5E4B0(0, v18, 0);
    v19 = v58;
    v51 = *(v17 + 16);
    result = sub_20C134DC4();
    v21 = 0;
    v22 = *(result - 8);
    v45 = v17 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v46 = v22;
    v47 = result;
    v43 = v22 + 32;
    v44 = v22 + 16;
    v42 = v9 + 32;
    v49 = v17;
    v50 = v9;
    v48 = v18;
    while (v51 != v21)
    {
      if (v21 >= *(v17 + 16))
      {
        goto LABEL_11;
      }

      v23 = v56;
      v24 = *(v56 + 48);
      v25 = v46;
      v26 = v54;
      v27 = v47;
      (*(v46 + 16))(&v54[v24], v45 + *(v46 + 72) * v21, v47);
      v28 = v55;
      *v55 = v21;
      (*(v25 + 32))(v28 + *(v23 + 48), &v26[v24], v27);
      sub_20C134D74();
      v57 = v29;
      sub_20C134D84();
      sub_20C134DA4();
      v30 = v52;
      sub_20C134D94();
      sub_20C133B14();
      sub_20B520158(v28, &unk_27C76CDA8);
      v58 = v19;
      v32 = *(v19 + 16);
      v31 = *(v19 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_20BB5E4B0(v31 > 1, v32 + 1, 1);
        v19 = v58;
      }

      ++v21;
      *(v19 + 16) = v32 + 1;
      result = (*(v50 + 32))(v19 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v32, v30, v53);
      v17 = v49;
      if (v48 == v21)
      {
        v3 = v39;
        v14 = v36;
        v15 = v35;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_9:

    sub_20B717280(v19);

    sub_20C13CA04();
    sub_20C132E84();
    v33 = v40;
    sub_20C138194();
    __swift_project_boxed_opaque_existential_1(v3 + 11, v3[14]);
    sub_20C13A1A4();
    return (*(v15 + 8))(v33, v14);
  }

  return result;
}

unint64_t sub_20BC86CFC()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 480);
  if (v6 >> 61 == 1)
  {
    sub_20BC88210(*(v1 + 480));

    sub_20BC86520(sub_20BC88208, v6 & 0x1FFFFFFFFFFFFFFFLL);

    return sub_20BC7BF70(v6);
  }

  else
  {
    sub_20C13B444();

    v8 = sub_20C13BB74();
    v9 = sub_20C13D1D4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      v15 = *(v1 + 480);
      sub_20BC88210(v15);
      v12 = sub_20C13C9D4();
      v14 = sub_20B51E694(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_20B517000, v8, v9, "Wrong state to be saving a stack: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x20F2F6A40](v11, -1, -1);
      MEMORY[0x20F2F6A40](v10, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_20BC86F40(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(a2 + 144);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      (*(v3 + 152))(ObjectType, v3);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20BC86FE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = swift_projectBox();
  v6 = sub_20C1344C4();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v4, a1, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  swift_beginAccess();
  return sub_20B5DF2D4(v4, v5, &qword_27C766E88);
}

uint64_t sub_20BC87128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12[-v7];
  v9 = swift_projectBox();
  v10 = sub_20C1340B4();
  v13 = a3;
  sub_20B6B73C4(a4, v10, v8);

  swift_beginAccess();
  return sub_20B5DF2D4(v8, v9, &unk_27C762A60);
}

uint64_t sub_20BC87240@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v69 = a5;
  v68 = a4;
  v67 = a3;
  v77 = a2;
  v80 = a1;
  v81 = a6;
  v82 = type metadata accessor for WorkoutSessionConfiguration();
  v71 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v72 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v6;
  MEMORY[0x28223BE20](v7);
  v75 = &v63 - v8;
  v76 = sub_20C134A44();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v63 - v11;
  v13 = sub_20C137254();
  v79 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v66 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v78 = &v63 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v63 - v18;
  v20 = sub_20C1344C4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_projectBox();
  v25 = swift_projectBox();
  swift_beginAccess();
  sub_20B52F9E8(v24, v19, &qword_27C766E88);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_20B520158(v19, &qword_27C766E88);
LABEL_13:
    sub_20BC88288();
    v56 = swift_allocError();
    *v57 = 2;
    *(swift_allocObject() + 16) = v56;
    return sub_20C137CA4();
  }

  (*(v21 + 32))(v23, v19, v20);
  swift_beginAccess();
  sub_20B52F9E8(v25, v12, &unk_27C762A60);
  v26 = v79;
  v27 = v23;
  if ((*(v79 + 48))(v12, 1, v13) == 1)
  {
    (*(v21 + 8))(v23, v20);
    sub_20B520158(v12, &unk_27C762A60);
    goto LABEL_13;
  }

  v28 = *(v26 + 32);
  v29 = v78;
  v28(v78, v12, v13);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v26 + 8))(v29, v13);
    (*(v21 + 8))(v27, v20);
    goto LABEL_13;
  }

  v64 = v28;
  v65 = v26 + 32;

  sub_20C134DB4();
  v30 = v73;
  sub_20C134A24();
  sub_20C13CA04();
  sub_20C13A334();
  swift_allocObject();
  v31 = sub_20C13A314();
  v32 = *(v21 + 16);
  v33 = v75;
  v67 = v27;
  v80 = v20;
  v32(v75, v27, v20);
  v34 = v82;
  v35 = *(v26 + 16);
  v35(v33 + *(v82 + 20), v29, v13);
  *(v33 + v34[7]) = v31;
  sub_20C13A484();
  swift_storeEnumTagMultiPayload();
  v36 = v34[9];
  v37 = sub_20C13BA24();
  (*(*(v37 - 8) + 56))(v33 + v36, 1, 1, v37);
  v38 = v34[10];
  v39 = v74;
  v40 = v30;
  v41 = v76;
  (*(v74 + 16))(v33 + v38, v40, v76);
  (*(v39 + 56))(v33 + v38, 0, 1, v41);
  v42 = v34[12];
  v43 = sub_20C135C54();
  (*(*(v43 - 8) + 56))(v33 + v42, 1, 1, v43);
  *(v33 + v34[6]) = 0;
  *(v33 + v34[8]) = 0;
  *(v33 + v34[11]) = xmmword_20C1759D0;
  v44 = (v33 + v34[13]);
  v45 = v69;
  *v44 = v68;
  v44[1] = v45;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v47 = Strong;
    v48 = v35;
    v49 = v66;
    v50 = v78;
    v48(v66, v78, v13);
    swift_beginAccess();
    v51 = *(v47 + 488);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v47 + 488) = v51;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v51 = sub_20BC05754(0, *(v51 + 2) + 1, 1, v51);
      *(v47 + 488) = v51;
    }

    v54 = *(v51 + 2);
    v53 = *(v51 + 3);
    if (v54 >= v53 >> 1)
    {
      v51 = sub_20BC05754(v53 > 1, v54 + 1, 1, v51);
    }

    *(v51 + 2) = v54 + 1;
    v55 = v79;
    v64(&v51[((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v54], v49, v13);
    *(v47 + 488) = v51;
    swift_endAccess();
  }

  else
  {

    v50 = v78;
    v55 = v79;
  }

  v59 = v75;
  v60 = v72;
  sub_20BC880A0(v75, v72, type metadata accessor for WorkoutSessionConfiguration);
  v61 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v62 = swift_allocObject();
  sub_20B69B964(v60, v62 + v61);
  sub_20C137CA4();

  sub_20BC884C0(v59, type metadata accessor for WorkoutSessionConfiguration);
  (*(v74 + 8))(v73, v76);
  (*(v55 + 8))(v50, v13);
  return (*(v21 + 8))(v67, v80);
}

uint64_t sub_20BC87C50()
{
  v0 = sub_20C13BB84();
  MEMORY[0x28223BE20](v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BC8357C();
  }

  return result;
}

uint64_t sub_20BC87E74(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_20BC880A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BC88154(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BC86440(a1, v4, v5, v6);
}

unint64_t sub_20BC88210(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 >= 2)
    {
      return result;
    }
  }

  if (v1 == 2 || v1 == 3)
  {
  }

  return result;
}

unint64_t sub_20BC88288()
{
  result = qword_27C76CDB8;
  if (!qword_27C76CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76CDB8);
  }

  return result;
}

uint64_t sub_20BC88384@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_20C134DC4() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20BC87240(v5, v6, (v1 + v4), v8, v9, a1);
}

uint64_t sub_20BC884C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BC8859C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BC7D8F0(a1, v4, v5, v6);
}

uint64_t sub_20BC88650()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20BC790F4(v0);
}

uint64_t sub_20BC886E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AC14;

  return sub_20BC793FC(a1, v1);
}

uint64_t sub_20BC88778(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52A9D4;

  return sub_20BC7ADF0(a1, v1);
}

uint64_t sub_20BC88820(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BC88870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QueuedSessionPresenter.RemoteDisplayState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_62Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_20BC8891C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BC7F0A0(a1, v4, v5, v6);
}

uint64_t sub_20BC88A94(uint64_t a1)
{
  v3 = *(sub_20C135174() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_20BC822A0(a1, v4, v5);
}

uint64_t objectdestroy_82Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20BC88B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_91Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroy_30Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v4 | 7);
}

uint64_t sub_20BC88EA8(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v10 = *(a2(0) - 8);
  v11 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  return sub_20BC7DB0C(a1, v5 + v11, *(v5 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8)), a3, a4, a5);
}

uint64_t sub_20BC88F74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

id sub_20BC890AC()
{
  v1 = OBJC_IVAR____TtC9SeymourUI29SessionAudioActionButtonsView____lazy_storage___mediaControls;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI29SessionAudioActionButtonsView____lazy_storage___mediaControls);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI29SessionAudioActionButtonsView____lazy_storage___mediaControls);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CD5DD0]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_20BC8916C(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = a1;
  v5 = sub_20BC890AC();
  [v5 *a4];
}

id sub_20BC891F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionAudioActionButtonsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20BC8933C(uint64_t a1)
{
  sub_20B8C9204(a1, v4);
  sub_20B8C9204(v4, v5);
  v2 = *v1;
  sub_20B8C9204(v5, v6);
  return [*(v2 + OBJC_IVAR____TtC9SeymourUI29SessionAudioActionButtonsView_routeButton) setRouteLabelAxis_];
}

id sub_20BC893A0@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() configurationWithPointSize:6 weight:20.0];
  strcpy(a1, "quote.bubble");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  *(a1 + 16) = 0x73697370696C6C65;
  *(a1 + 24) = 0xE800000000000000;
  *(a1 + 32) = 0xD000000000000011;
  *(a1 + 40) = 0x800000020C1AE500;
  strcpy((a1 + 48), "airplayaudio");
  *(a1 + 61) = 0;
  *(a1 + 62) = -5120;
  *(a1 + 64) = result;
  *(a1 + 72) = 0x4053000000000000;
  return result;
}

void sub_20BC89464()
{
  v1 = OBJC_IVAR____TtC9SeymourUI29SessionAudioActionButtonsView_alignmentRouteButton;
  v2 = [objc_allocWithZone(MEMORY[0x277CD6048]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC9SeymourUI29SessionAudioActionButtonsView_moreButton;
  v4 = [objc_allocWithZone(MEMORY[0x277CD5D68]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI29SessionAudioActionButtonsView_routeButton;
  v6 = [objc_allocWithZone(MEMORY[0x277CD6048]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI29SessionAudioActionButtonsView_stackView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v7) = v8;
  v9 = (v0 + OBJC_IVAR____TtC9SeymourUI29SessionAudioActionButtonsView_styleProvider);
  sub_20BC893A0(v12);
  v10 = v12[3];
  v9[2] = v12[2];
  v9[3] = v10;
  v9[4] = v12[4];
  v11 = v12[1];
  *v9 = v12[0];
  v9[1] = v11;
  *(v0 + OBJC_IVAR____TtC9SeymourUI29SessionAudioActionButtonsView____lazy_storage___mediaControls) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BC895D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20BC89620(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_20BC89680()
{
  v0 = *MEMORY[0x277D76918];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 preferredFontDescriptorWithTextStyle:v2 compatibleWithTraitCollection:0];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];
  if (v4)
  {
    v5 = v4;

    v3 = v5;
  }

  v6 = [objc_opt_self() fontWithDescriptor:v3 size:0.0];

  qword_27C76CE10 = v6;
}

void sub_20BC89750()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D76A08];
  v2 = [v0 preferredFontForTextStyle_];

  qword_27C76CE18 = v2;
}

void sub_20BC897BC()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C76CE20 = v2;
  *algn_27C76CE28 = v4;
}

char *sub_20BC89888(void *a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18SessionCastingView_blurView;
  v4 = [objc_opt_self() effectWithStyle_];
  v5 = type metadata accessor for SessionBlurView();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC9SeymourUI15SessionBlurView_blurEffect] = v4;
  v47.receiver = v6;
  v47.super_class = v5;
  v7 = objc_msgSendSuper2(&v47, sel_initWithEffect_, 0);
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v3] = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI18SessionCastingView_exitControlItem;
  v9 = sub_20B80EF50();
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v8] = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI18SessionCastingView_airplayControlItem;
  v11 = sub_20B80EF64();
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v10] = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI18SessionCastingView_playControlItem;
  v13 = sub_20B80F0F0();
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v12] = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI18SessionCastingView_titleLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  v18 = sub_20C13C914();
  [v15 setText_];

  if (qword_27C760A78 != -1)
  {
    swift_once();
  }

  [v15 setFont_];
  [v15 setTextAlignment_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v14] = v15;
  v19 = OBJC_IVAR____TtC9SeymourUI18SessionCastingView_castingLabel;
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760A70 != -1)
  {
    swift_once();
  }

  [v20 setFont_];
  [v20 setNumberOfLines_];
  [v20 setTextAlignment_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v19] = v20;
  v21 = OBJC_IVAR____TtC9SeymourUI18SessionCastingView_castingStackView;
  v22 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v22 setAxis_];
  [v22 setSpacing_];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v21] = v22;
  *&v1[OBJC_IVAR____TtC9SeymourUI18SessionCastingView_presenter] = a1;
  v46.receiver = v1;
  v46.super_class = type metadata accessor for SessionCastingView();
  v23 = a1;
  v24 = objc_msgSendSuper2(&v46, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  *&v23[OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_display + 8] = &off_2822DAA38;
  swift_unknownObjectWeakAssign();
  v25 = OBJC_IVAR____TtC9SeymourUI18SessionCastingView_blurView;
  v26 = *&v24[OBJC_IVAR____TtC9SeymourUI18SessionCastingView_blurView];
  v27 = *&v26[OBJC_IVAR____TtC9SeymourUI15SessionBlurView_blurEffect];
  v28 = v24;
  [v26 setEffect_];
  [v28 addSubview_];
  v29 = [objc_opt_self() configurationWithPointSize_];
  v30 = sub_20C13C914();
  v31 = [objc_opt_self() systemImageNamed:v30 withConfiguration:v29];

  if (v31)
  {
    v32 = [v31 imageWithRenderingMode_];
  }

  else
  {
    v32 = 0;
  }

  v33 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 whiteColor];
  [v35 setTintColor_];

  [v35 setTranslatesAutoresizingMaskIntoConstraints_];
  v37 = OBJC_IVAR____TtC9SeymourUI18SessionCastingView_castingStackView;
  [*&v28[OBJC_IVAR____TtC9SeymourUI18SessionCastingView_castingStackView] setAlignment_];
  [*&v28[v37] addArrangedSubview_];
  v38 = OBJC_IVAR____TtC9SeymourUI18SessionCastingView_titleLabel;
  [*&v28[v37] addArrangedSubview_];
  [*&v28[v37] setCustomSpacing:*&v28[v38] afterView:6.0];
  [*&v28[v37] addArrangedSubview_];
  [v28 addSubview_];
  v39 = OBJC_IVAR____TtC9SeymourUI18SessionCastingView_exitControlItem;
  v40 = *&v28[OBJC_IVAR____TtC9SeymourUI18SessionCastingView_exitControlItem];
  v41 = v28;
  [v40 addTarget:v41 action:sel_exitButtonTapped forControlEvents:0x2000];
  [v41 addSubview_];
  v42 = OBJC_IVAR____TtC9SeymourUI18SessionCastingView_airplayControlItem;
  [*&v41[OBJC_IVAR____TtC9SeymourUI18SessionCastingView_airplayControlItem] addTarget:v41 action:sel_airplayButtonTapped forControlEvents:0x2000];
  [v41 addSubview_];
  v43 = OBJC_IVAR____TtC9SeymourUI18SessionCastingView_playControlItem;
  [*&v41[OBJC_IVAR____TtC9SeymourUI18SessionCastingView_playControlItem] setHidden_];
  v44 = *&v41[v43];
  [v44 addTarget:v41 action:sel_playButtonTapped forControlEvents:0x2000];

  [v41 addSubview_];
  sub_20BC89F9C();

  return v41;
}

void sub_20BC89F9C()
{
  v1 = v0;
  v50 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C1580B0;
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI18SessionCastingView_blurView];
  v4 = [v3 topAnchor];
  v5 = [v1 topAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  *(v2 + 32) = v6;
  v7 = [v3 leadingAnchor];
  v8 = [v1 leadingAnchor];
  v9 = [v7 &selRef:v8 alertControllerReleasedDictationButton:? + 5];

  *(v2 + 40) = v9;
  v10 = [v3 trailingAnchor];
  v11 = [v1 trailingAnchor];
  v12 = [v10 &selRef:v11 alertControllerReleasedDictationButton:? + 5];

  *(v2 + 48) = v12;
  v13 = [v3 bottomAnchor];
  v14 = [v1 bottomAnchor];
  v15 = [v13 &selRef:v14 alertControllerReleasedDictationButton:? + 5];

  *(v2 + 56) = v15;
  v16 = *&v1[OBJC_IVAR____TtC9SeymourUI18SessionCastingView_exitControlItem];
  v17 = [v16 topAnchor];
  v18 = [v1 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:27.5];

  *(v2 + 64) = v19;
  v20 = [v16 leadingAnchor];
  v21 = [v1 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:27.5];

  *(v2 + 72) = v22;
  v23 = *&v1[OBJC_IVAR____TtC9SeymourUI18SessionCastingView_airplayControlItem];
  v24 = [v23 topAnchor];
  v25 = [v1 topAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:27.5];

  *(v2 + 80) = v26;
  v27 = [v23 trailingAnchor];
  v28 = [v1 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:-27.5];

  *(v2 + 88) = v29;
  v30 = *&v1[OBJC_IVAR____TtC9SeymourUI18SessionCastingView_playControlItem];
  v31 = [v30 leadingAnchor];
  v32 = [v1 leadingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:27.5];

  *(v2 + 96) = v33;
  v34 = [v30 bottomAnchor];
  v35 = [v1 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:-27.5];

  *(v2 + 104) = v36;
  v37 = *&v1[OBJC_IVAR____TtC9SeymourUI18SessionCastingView_castingStackView];
  v38 = [v37 centerXAnchor];
  v39 = [v1 centerXAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v2 + 112) = v40;
  v41 = [v37 centerYAnchor];
  v42 = [v1 centerYAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v2 + 120) = v43;
  v44 = [v37 leadingAnchor];
  v45 = [v30 trailingAnchor];
  v46 = [v44 constraintGreaterThanOrEqualToAnchor:v45 constant:4.0];

  *(v2 + 128) = v46;
  v47 = [v37 trailingAnchor];
  v48 = [v23 leadingAnchor];
  v49 = [v47 constraintLessThanOrEqualToAnchor:v48 constant:-4.0];

  *(v2 + 136) = v49;
  sub_20B5E29D0();
  v51 = sub_20C13CC54();

  [v50 activateConstraints_];
}

void sub_20BC8A610(char *a1, uint64_t a2, void *a3)
{
  v3 = *(*&a1[OBJC_IVAR____TtC9SeymourUI18SessionCastingView_presenter] + *a3);
  if (v3)
  {
    v5 = a1;
    v4 = sub_20B584050(v3);
    v3(v4);
    sub_20B583ECC(v3);
  }
}

id sub_20BC8A720()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionCastingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BC8A824()
{
  v1 = OBJC_IVAR____TtC9SeymourUI18SessionCastingView_blurView;
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = type metadata accessor for SessionBlurView();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC9SeymourUI15SessionBlurView_blurEffect] = v2;
  v21.receiver = v4;
  v21.super_class = v3;
  v5 = objc_msgSendSuper2(&v21, sel_initWithEffect_, 0);
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v5;
  v6 = OBJC_IVAR____TtC9SeymourUI18SessionCastingView_exitControlItem;
  v7 = sub_20B80EF50();
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v6) = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI18SessionCastingView_airplayControlItem;
  v9 = sub_20B80EF64();
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v8) = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI18SessionCastingView_playControlItem;
  v11 = sub_20B80F0F0();
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v10) = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI18SessionCastingView_titleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  v16 = sub_20C13C914();
  [v13 setText_];

  if (qword_27C760A78 != -1)
  {
    swift_once();
  }

  [v13 setFont_];
  [v13 setTextAlignment_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v12) = v13;
  v17 = OBJC_IVAR____TtC9SeymourUI18SessionCastingView_castingLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760A70 != -1)
  {
    swift_once();
  }

  [v18 setFont_];
  [v18 setNumberOfLines_];
  [v18 setTextAlignment_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v17) = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI18SessionCastingView_castingStackView;
  v20 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v20 setAxis_];
  [v20 setSpacing_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v19) = v20;
  sub_20C13DE24();
  __break(1u);
}

void sub_20BC8ABEC()
{
  if (qword_27C760A90 != -1)
  {
    swift_once();
  }

  v0 = qword_27C76CE78;
  v1 = sub_20C13C914();
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  if (v2)
  {
    v3 = [v2 imageFlippedForRightToLeftLayoutDirection];
  }

  else
  {
    v3 = 0;
  }

  qword_27C76CE70 = v3;
}

void sub_20BC8ACE0()
{
  if (qword_27C760A98 != -1)
  {
    swift_once();
  }

  v0 = qword_27C76CE80;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithFont:v2 scale:1];

  qword_27C76CE78 = v3;
}

void sub_20BC8AD7C()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D76918];
  v2 = [v0 smu:v1 preferredFontForTextStyle:1024 variant:?];

  qword_27C76CE80 = v2;
}

id sub_20BC8ADEC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9SeymourUI13ValueItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI13ValueItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setAdjustsFontForContentSizeCategory_];
  v12 = *MEMORY[0x277D76918];
  v13 = objc_opt_self();
  v14 = [v13 preferredFontDescriptorWithTextStyle:v12 compatibleWithTraitCollection:0];
  v15 = [v14 fontDescriptorWithSymbolicTraits_];
  if (v15)
  {
    v16 = v15;

    v14 = v16;
  }

  v17 = OBJC_IVAR____TtC9SeymourUI13ValueItemCell_titleLabel;
  v18 = objc_opt_self();
  v19 = [v18 fontWithDescriptor:v14 size:0.0];

  [v11 setFont_];
  [v11 setLineBreakMode_];
  [v11 setNumberOfLines_];
  [v11 setAllowsDefaultTighteningForTruncation_];
  v20 = objc_opt_self();
  v21 = [v20 whiteColor];
  [v11 setTextColor_];

  LODWORD(v22) = 1148846080;
  [v11 setContentCompressionResistancePriority:0 forAxis:v22];

  *&v4[v17] = v11;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  [v23 setAdjustsFontForContentSizeCategory_];
  v24 = [v13 preferredFontDescriptorWithTextStyle:v12 compatibleWithTraitCollection:0];
  v25 = [v24 fontDescriptorWithSymbolicTraits_];
  if (v25)
  {
    v26 = v25;

    v24 = v26;
  }

  v27 = OBJC_IVAR____TtC9SeymourUI13ValueItemCell_subtitleLabel;
  v28 = [v18 fontWithDescriptor:v24 size:0.0];

  [v23 setFont_];
  [v23 setLineBreakMode_];
  [v23 setNumberOfLines_];
  [v23 setAllowsDefaultTighteningForTruncation_];
  v29 = [v20 secondaryLabelColor];
  [v23 setTextColor_];

  *&v4[v27] = v23;
  v30 = OBJC_IVAR____TtC9SeymourUI13ValueItemCell_disclosureImageView;
  if (qword_27C760A88 != -1)
  {
    swift_once();
  }

  v31 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  [v31 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v32 = [v20 tertiaryLabelColor];
  [v31 setTintColor_];

  LODWORD(v33) = 1148846080;
  [v31 setContentHuggingPriority:0 forAxis:v33];

  *&v4[v30] = v31;
  v34 = OBJC_IVAR____TtC9SeymourUI13ValueItemCell_labelLayoutGuide;
  *&v4[v34] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v35 = OBJC_IVAR____TtC9SeymourUI13ValueItemCell_labelLayoutGuideTrailingToContentViewTrailingConstraint;
  *&v4[v35] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v42.receiver = v4;
  v42.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v42, &selRef__hysteresis, a1, a2, a3, a4);
  sub_20BC8B3A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766578);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_20C14F980;
  v38 = sub_20C13C054();
  v39 = MEMORY[0x277D74DB8];
  *(v37 + 32) = v38;
  *(v37 + 40) = v39;
  sub_20C13D584();

  swift_unknownObjectRelease();

  return v36;
}

void sub_20BC8B3A0()
{
  v1 = v0;
  v2 = [v0 contentView];
  v41 = *&v1[OBJC_IVAR____TtC9SeymourUI13ValueItemCell_disclosureImageView];
  [v2 addSubview_];

  v3 = [v1 contentView];
  v4 = *&v1[OBJC_IVAR____TtC9SeymourUI13ValueItemCell_labelLayoutGuide];
  [v3 addLayoutGuide_];

  v5 = 20.0;
  v6 = sub_20C1380F4();
  if (!v6)
  {
    goto LABEL_4;
  }

  if (v6 == 1)
  {
    v5 = 45.0;
LABEL_4:
    v7 = [v4 trailingAnchor];
    v8 = [v1 contentView];
    v9 = [v8 trailingAnchor];

    v10 = [v7 constraintEqualToAnchor:v9 constant:-v5];
    v11 = OBJC_IVAR____TtC9SeymourUI13ValueItemCell_labelLayoutGuideTrailingToContentViewTrailingConstraint;
    v12 = *&v1[OBJC_IVAR____TtC9SeymourUI13ValueItemCell_labelLayoutGuideTrailingToContentViewTrailingConstraint];
    *&v1[OBJC_IVAR____TtC9SeymourUI13ValueItemCell_labelLayoutGuideTrailingToContentViewTrailingConstraint] = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_20C150050;
    v14 = [v4 leadingAnchor];
    v15 = [v1 &selRef_setMaximumFractionDigits_];
    v16 = [v15 leadingAnchor];

    v17 = [v14 constraintEqualToAnchor:v16 constant:v5];
    *(v13 + 32) = v17;
    v18 = [v4 topAnchor];
    v19 = [v1 &selRef_setMaximumFractionDigits_];
    v20 = [v19 topAnchor];

    v21 = [v18 constraintEqualToAnchor:v20 constant:10.0];
    *(v13 + 40) = v21;
    v22 = [v4 trailingAnchor];
    v23 = [v41 leadingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:-8.0];

    type metadata accessor for UILayoutPriority(0);
    sub_20B60B184();
    sub_20C13BBA4();
    LODWORD(v25) = v42;
    [v24 setPriority_];
    *(v13 + 48) = v24;
    v26 = [v4 bottomAnchor];
    v27 = [v1 contentView];
    v28 = [v27 bottomAnchor];

    v29 = [v26 constraintEqualToAnchor:v28 constant:-10.0];
    v30 = *&v1[v11];
    *(v13 + 56) = v29;
    *(v13 + 64) = v30;
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_20C14F580;
    v32 = v30;
    v33 = [v41 trailingAnchor];
    v34 = [v1 contentView];
    v35 = [v34 trailingAnchor];

    v36 = [v33 constraintEqualToAnchor:v35 constant:-v5];
    *(v31 + 32) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F320;
    *(inited + 32) = v13;
    *(inited + 40) = v31;
    v38 = objc_opt_self();
    sub_20BE54D20(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
    swift_arrayDestroy();
    sub_20B5E29D0();
    v39 = sub_20C13CC54();

    [v38 activateConstraints_];

    v40 = [v1 traitCollection];
    sub_20BC8BA28(v40);

    return;
  }

  sub_20C13DE24();
  __break(1u);
}

void sub_20BC8B940(void *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  v7 = [a2 preferredContentSizeCategory];
  LODWORD(a2) = sub_20C13D424() & 1;
  if (a2 != (sub_20C13D424() & 1))
  {
    v6 = [a1 traitCollection];
    sub_20BC8BA28(v6);

    v5 = v7;
    v7 = v6;
  }
}

id sub_20BC8BA28(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  v51 = sub_20C13D424();

  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI13ValueItemCell_titleLabel];
  [v3 removeFromSuperview];
  v4 = *&v1[OBJC_IVAR____TtC9SeymourUI13ValueItemCell_subtitleLabel];
  [v4 removeFromSuperview];
  v5 = [v1 contentView];
  [v5 addSubview_];

  v6 = [v1 contentView];
  [v6 addSubview_];

  v52 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20C151DF0;
  v8 = [v3 leadingAnchor];
  v9 = *&v1[OBJC_IVAR____TtC9SeymourUI13ValueItemCell_labelLayoutGuide];
  v10 = [v9 leadingAnchor];
  v11 = [v8 constraintEqualToAnchor_];

  *(v7 + 32) = v11;
  v12 = [v3 topAnchor];
  v13 = [v9 topAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v7 + 40) = v14;
  if (v51)
  {
    v15 = [v3 trailingAnchor];
    v16 = [v9 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    *(v7 + 48) = v17;
    v18 = [v4 leadingAnchor];
    v19 = [v9 leadingAnchor];
    v20 = [v18 constraintEqualToAnchor_];

    *(v7 + 56) = v20;
    v21 = [v4 topAnchor];
    v22 = [v3 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:4.0];

    *(v7 + 64) = v23;
    v24 = [v4 trailingAnchor];
    v25 = [v9 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v7 + 72) = v26;
    v27 = [v4 bottomAnchor];
    v28 = [v9 bottomAnchor];
    v29 = [v27 constraintEqualToAnchor_];

    *(v7 + 80) = v29;
    v30 = [*&v1[OBJC_IVAR____TtC9SeymourUI13ValueItemCell_disclosureImageView] centerYAnchor];
    v31 = [v1 contentView];
    v32 = [v31 centerYAnchor];
  }

  else
  {
    v33 = [v3 bottomAnchor];
    v34 = [v9 bottomAnchor];
    v35 = [v33 constraintLessThanOrEqualToAnchor_];

    *(v7 + 48) = v35;
    v36 = [v4 leadingAnchor];
    v37 = [v3 trailingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:20.0];

    *(v7 + 56) = v38;
    v39 = [v4 topAnchor];
    v40 = [v9 topAnchor];
    v41 = [v39 constraintEqualToAnchor_];

    *(v7 + 64) = v41;
    v42 = [v4 trailingAnchor];
    v43 = [v9 trailingAnchor];
    v44 = [v42 constraintEqualToAnchor_];

    *(v7 + 72) = v44;
    v45 = [v4 bottomAnchor];
    v46 = [v9 bottomAnchor];
    v47 = [v45 constraintLessThanOrEqualToAnchor_];

    *(v7 + 80) = v47;
    v30 = [*&v1[OBJC_IVAR____TtC9SeymourUI13ValueItemCell_disclosureImageView] centerYAnchor];
    v32 = [v4 centerYAnchor];
  }

  v48 = [v30 constraintEqualToAnchor_];

  *(v7 + 88) = v48;
  sub_20B5E29D0();
  v49 = sub_20C13CC54();

  [v52 activateConstraints_];

  return sub_20BC8C250(a1);
}

id sub_20BC8C250(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  v3 = sub_20C13D424();

  v4 = *&v1[OBJC_IVAR____TtC9SeymourUI13ValueItemCell_subtitleLabel];
  if (v3)
  {
    v5 = 4;
  }

  else
  {
    v5 = 2 * ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 0);
  }

  return [v4 setTextAlignment_];
}

uint64_t type metadata accessor for ValueItemCell()
{
  result = qword_281103970;
  if (!qword_281103970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BC8C3FC()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BC8C4AC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI13ValueItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BC8C4F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI13ValueItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BC8C550(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI13ValueItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BC8C5B4(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x40)
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v8 = *&v1[OBJC_IVAR____TtC9SeymourUI13ValueItemCell_titleLabel];
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v6;
    [v8 setAttributedText_];
    [*&v1[OBJC_IVAR____TtC9SeymourUI13ValueItemCell_subtitleLabel] setAttributedText_];
    if (v7 == 1)
    {
      sub_20C13BD04();
    }

    else
    {
      sub_20C13BCE4();
    }

    v11 = sub_20C13BD14();
    (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
    MEMORY[0x20F2F4B70](v5);
    [*&v1[OBJC_IVAR____TtC9SeymourUI13ValueItemCell_labelLayoutGuideTrailingToContentViewTrailingConstraint] setActive_];
    [*&v1[OBJC_IVAR____TtC9SeymourUI13ValueItemCell_disclosureImageView] setHidden_];
    v12 = [v1 traitCollection];
    sub_20BC8C250(v12);
  }
}

void sub_20BC8C768()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI13ValueItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI13ValueItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setAdjustsFontForContentSizeCategory_];
  v4 = *MEMORY[0x277D76918];
  v5 = objc_opt_self();
  v6 = [v5 preferredFontDescriptorWithTextStyle:v4 compatibleWithTraitCollection:0];
  v7 = [v6 fontDescriptorWithSymbolicTraits_];
  if (v7)
  {
    v8 = v7;

    v6 = v8;
  }

  v9 = OBJC_IVAR____TtC9SeymourUI13ValueItemCell_titleLabel;
  v10 = objc_opt_self();
  v11 = [v10 fontWithDescriptor:v6 size:0.0];

  [v3 setFont_];
  [v3 setLineBreakMode_];
  [v3 setNumberOfLines_];
  [v3 setAllowsDefaultTighteningForTruncation_];
  v12 = objc_opt_self();
  v13 = [v12 whiteColor];
  [v3 setTextColor_];

  LODWORD(v14) = 1148846080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v14];

  *(v0 + v9) = v3;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setAdjustsFontForContentSizeCategory_];
  v16 = [v5 preferredFontDescriptorWithTextStyle:v4 compatibleWithTraitCollection:0];
  v17 = [v16 fontDescriptorWithSymbolicTraits_];
  if (v17)
  {
    v18 = v17;

    v16 = v18;
  }

  v19 = OBJC_IVAR____TtC9SeymourUI13ValueItemCell_subtitleLabel;
  v20 = [v10 fontWithDescriptor:v16 size:0.0];

  [v15 setFont_];
  [v15 setLineBreakMode_];
  [v15 setNumberOfLines_];
  [v15 setAllowsDefaultTighteningForTruncation_];
  v21 = [v12 secondaryLabelColor];
  [v15 setTextColor_];

  *(v0 + v19) = v15;
  v22 = OBJC_IVAR____TtC9SeymourUI13ValueItemCell_disclosureImageView;
  if (qword_27C760A88 != -1)
  {
    swift_once();
  }

  v23 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  [v23 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v24 = [v12 tertiaryLabelColor];
  [v23 setTintColor_];

  LODWORD(v25) = 1148846080;
  [v23 setContentHuggingPriority:0 forAxis:v25];

  *(v0 + v22) = v23;
  v26 = OBJC_IVAR____TtC9SeymourUI13ValueItemCell_labelLayoutGuide;
  *(v0 + v26) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v27 = OBJC_IVAR____TtC9SeymourUI13ValueItemCell_labelLayoutGuideTrailingToContentViewTrailingConstraint;
  *(v0 + v27) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  sub_20C13DE24();
  __break(1u);
}

void *sub_20BC8CC58()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_tvArtworkView);
  v2 = v1;
  return v1;
}

char *sub_20BC8CC88(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_layout];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = xmmword_20C175E90;
  *(v11 + 3) = xmmword_20C175EA0;
  *(v11 + 8) = 0x406CE00000000000;
  v12 = OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_tvArtworkView;
  v13 = [objc_allocWithZone(type metadata accessor for TVArtworkView()) initWithFrame_];
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  v14 = *&qword_27C79ACA0;
  v15 = [v13 config];
  [v15 setCornerRadius_];

  v16 = [v13 config];
  [v16 setScaleSizeIncrease_];

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v12] = v13;
  v17 = OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_titleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v18 setLineBreakMode_];
  [v18 setNumberOfLines_];
  [v18 setAllowsDefaultTighteningForTruncation_];
  v19 = objc_opt_self();
  v20 = [v19 preferredFontForTextStyle_];
  [v18 setFont_];

  [v18 setLineBreakMode_];
  v21 = objc_opt_self();
  v22 = [v21 labelColor];
  [v18 setTextColor_];

  v23 = v18;
  [v23 &selRef_count + 2];
  [v23 setAdjustsFontForContentSizeCategory_];
  LODWORD(v24) = 1148846080;
  [v23 setContentCompressionResistancePriority:1 forAxis:v24];

  *&v4[v17] = v23;
  v25 = OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_subtitleLabel;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v26 setLineBreakMode_];
  [v26 setNumberOfLines_];
  [v26 setAllowsDefaultTighteningForTruncation_];
  v27 = [v19 preferredFontForTextStyle_];
  [v26 setFont_];

  v28 = [v21 secondaryLabelColor];
  [v26 setTextColor_];

  v29 = v26;
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  [v29 setAdjustsFontForContentSizeCategory_];
  LODWORD(v30) = 1148846080;
  [v29 setContentCompressionResistancePriority:1 forAxis:v30];

  *&v4[v25] = v29;
  v88.receiver = v4;
  v88.super_class = type metadata accessor for TVStandardBrickRowCell();
  v31 = objc_msgSendSuper2(&v88, sel_initWithFrame_, a1, a2, a3, a4);
  v32 = [v31 contentView];
  v33 = OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_tvArtworkView;
  v34 = *&v31[OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_tvArtworkView];
  [v32 addSubview_];

  v35 = [v31 &selRef_setMaximumFractionDigits_];
  v36 = OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_titleLabel;
  [v35 addSubview_];

  v37 = [v31 &selRef_setMaximumFractionDigits_];
  v85 = OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_subtitleLabel;
  [v37 addSubview_];

  v38 = *&v31[v33];
  v39 = &v38[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shelfArtworkIconSafeAreaInsets];
  *v39 = v14;
  v39[1] = v14;
  v39[2] = v14;
  v39[3] = v14;
  v86 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_20C1615B0;
  v41 = [v38 leadingAnchor];
  v42 = [v31 &selRef_setMaximumFractionDigits_];
  v43 = [v42 leadingAnchor];

  v44 = [v41 constraintEqualToAnchor_];
  *(v40 + 32) = v44;
  v45 = [*&v31[v33] topAnchor];
  v46 = [v31 &selRef_setMaximumFractionDigits_];
  v47 = [v46 &selRef_setLineBreakMode_];

  v48 = [v45 constraintEqualToAnchor_];
  *(v40 + 40) = v48;
  v49 = [*&v31[v33] heightAnchor];
  v50 = &v31[OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_layout];
  v51 = [v49 constraintEqualToConstant_];

  *(v40 + 48) = v51;
  v52 = [*&v31[v33] trailingAnchor];
  v53 = [v31 &selRef_setMaximumFractionDigits_];
  v54 = [v53 trailingAnchor];

  v55 = [v52 constraintEqualToAnchor_];
  *(v40 + 56) = v55;
  v56 = [*&v31[v36] leadingAnchor];
  v57 = [v31 &selRef_setMaximumFractionDigits_];
  v58 = [v57 leadingAnchor];

  v59 = [v56 constraintEqualToAnchor_];
  *(v40 + 64) = v59;
  v60 = [*&v31[v36] topAnchor];
  v61 = [*&v31[v33] bottomAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:v50[4]];

  *(v40 + 72) = v62;
  v63 = [*&v31[v36] trailingAnchor];
  v64 = [v31 contentView];
  v65 = [v64 trailingAnchor];

  v66 = [v63 constraintEqualToAnchor_];
  *(v40 + 80) = v66;
  v67 = [*&v31[v85] topAnchor];
  v68 = [*&v31[v36] bottomAnchor];
  v69 = [v67 &selRef:v68 alertControllerReleasedDictationButton:? + 5];

  *(v40 + 88) = v69;
  v70 = [*&v31[v85] leadingAnchor];
  v71 = [v31 contentView];
  v72 = [v71 leadingAnchor];

  v73 = [v70 &selRef:v72 alertControllerReleasedDictationButton:? + 5];
  *(v40 + 96) = v73;
  v74 = [*&v31[v85] trailingAnchor];
  v75 = [v31 contentView];
  v76 = [v75 trailingAnchor];

  v77 = [v74 &selRef:v76 alertControllerReleasedDictationButton:? + 5];
  *(v40 + 104) = v77;
  v78 = [*&v31[v85] bottomAnchor];
  v79 = [v31 contentView];

  v80 = [v79 bottomAnchor];
  v81 = [v78 &selRef:v80 alertControllerReleasedDictationButton:? + 5];

  type metadata accessor for UILayoutPriority(0);
  sub_20B5F7718(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BBA4();
  LODWORD(v82) = v87;
  [v81 setPriority_];
  *(v40 + 112) = v81;
  sub_20B51C88C(0, &qword_281100500);
  v83 = sub_20C13CC54();

  [v86 activateConstraints_];

  return v31;
}

id sub_20BC8D80C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for TVStandardBrickRowCell();
  v13.receiver = v0;
  v13.super_class = v4;
  objc_msgSendSuper2(&v13, sel_prepareForReuse);
  v5 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5DF2D4(v3, &v0[v6], &qword_27C762550);
  swift_endAccess();
  v7 = *&v0[OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_titleLabel];
  v8 = sub_20C13C914();
  [v7 setText_];

  v9 = *&v0[OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_subtitleLabel];
  v10 = sub_20C13C914();
  [v9 setText_];

  return sub_20BA1DA58();
}

id sub_20BC8D9D8(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    v23 = a1;
    *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v6 = [v2 contentView];
    v7 = [v6 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v8 = sub_20C13CC74();

    v24[0] = MEMORY[0x277D84FA0];
    if (v8 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x20F2F5430](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        sub_20B6FFB30(&v27, v11);

        ++v10;
        if (v12 == i)
        {
          v13 = v24[0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v13 = MEMORY[0x277D84FA0];
LABEL_16:

    v28 = v13;
    sub_20B6FFB30(v24, *&v3[OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_tvArtworkView]);

    v14 = sub_20B8E9218(v28);

    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v14 + 32;
      do
      {
        sub_20B51CC64(v16, v24);
        v17 = *&v3[v4];
        v18 = v25;
        v19 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        (*(v19 + 16))(v17, a2 & 1, v18, v19);
        __swift_destroy_boxed_opaque_existential_1(v24);
        v16 += 40;
        --v15;
      }

      while (v15);
    }

    LOBYTE(a1) = v23;
  }

  v20 = *&v3[OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_titleLabel];
  if ((a1 & 8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = 4;
  }

  [v20 setSmu:(a1 & 8) >> 3 marqueeEnabled:?];
  return [v20 setLineBreakMode_];
}

void sub_20BC8DC6C(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  if (*&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v7 = [v3 contentView];
    v8 = [v7 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v9 = sub_20C13CC74();

    aBlock[0] = MEMORY[0x277D84FA0];
    if (v9 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x20F2F5430](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        sub_20B6FFB30(&v29, v12);

        ++v11;
        if (v13 == i)
        {
          v14 = aBlock[0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v30 = v14;
    sub_20B6FFB30(aBlock, *&v3[OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_tvArtworkView]);

    v15 = sub_20B8E9218(v30);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;
      do
      {
        sub_20B51CC64(v17, aBlock);
        v18 = *&v3[v6];
        v19 = v26;
        v20 = v27;
        __swift_project_boxed_opaque_existential_1(aBlock, v26);
        (*(v20 + 3))(v18, a2, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v17 += 40;
        --v16;
      }

      while (v16);
    }

    v5 = a1;
  }

  if (a2)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v3;
    *(v21 + 24) = v5;
    v27 = sub_20BC900E0;
    v28 = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    v26 = &block_descriptor_114;
    v22 = _Block_copy(aBlock);
    v23 = v3;

    [a2 addCoordinatedAnimations:v22 completion:0];
    _Block_release(v22);
  }
}

void sub_20BC8E020()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_delegate);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_itemInfo, &qword_27C762550);

  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_subtitleLabel);
}

id sub_20BC8E0A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVStandardBrickRowCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVStandardBrickRowCell()
{
  result = qword_27C76CE98;
  if (!qword_27C76CE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BC8E1B8()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BC8E280(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BC8E2CC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550);
}

uint64_t sub_20BC8E334(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5DF2D4(a1, v1 + v3, &qword_27C762550);
  return swift_endAccess();
}

uint64_t sub_20BC8E3D8(uint64_t a1, void *a2, int a3)
{
  v35 = a3;
  v5 = sub_20C137C24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7626D0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v12 - 8);
  v36 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v17 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
  swift_beginAccess();
  (*(v6 + 16))(v16, a1, v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v18 = *(v9 + 56);
  v34 = a2;
  sub_20B52F9E8(a2 + v17, v11, &unk_27C766680);
  sub_20B52F9E8(v16, &v11[v18], &unk_27C766680);
  v19 = *(v6 + 48);
  if (v19(v11, 1, v5) != 1)
  {
    v21 = v36;
    sub_20B52F9E8(v11, v36, &unk_27C766680);
    if (v19(&v11[v18], 1, v5) != 1)
    {
      v22 = v33;
      (*(v6 + 32))(v33, &v11[v18], v5);
      sub_20B5F7718(&qword_27C7626D8, MEMORY[0x277D53A78]);
      v23 = sub_20C13C894();
      v24 = *(v6 + 8);
      v24(v22, v5);
      sub_20B520158(v16, &unk_27C766680);
      v24(v21, v5);
      sub_20B520158(v11, &unk_27C766680);
      v20 = v23 ^ 1;
      if ((v23 ^ 1) & 1) != 0 || (v35)
      {
        return v20 & 1;
      }

      goto LABEL_10;
    }

    sub_20B520158(v16, &unk_27C766680);
    (*(v6 + 8))(v21, v5);
LABEL_7:
    sub_20B520158(v11, &qword_27C7626D0);
    v20 = 1;
    return v20 & 1;
  }

  sub_20B520158(v16, &unk_27C766680);
  if (v19(&v11[v18], 1, v5) != 1)
  {
    goto LABEL_7;
  }

  sub_20B520158(v11, &unk_27C766680);
  if (v35)
  {
    v20 = 0;
    return v20 & 1;
  }

LABEL_10:
  v25 = v34;
  [v34 bounds];
  v26 = [v25 stackImage];
  if (v26)
  {
    v27 = v26;
    [v26 size];
  }

  sub_20C13D504();
  v30 = round(fabs(v29)) > 1.0;
  v20 = round(fabs(v28)) > 1.0 || v30;
  return v20 & 1;
}

id sub_20BC8E8C4(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v227 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v185 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v213 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v211 = &v185 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v212 = &v185 - v7;
  v210 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v185 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v185 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v16 = *(v15 - 8);
  v221 = v15;
  v222 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v209 = &v185 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v216 = &v185 - v19;
  v219 = sub_20C1391C4();
  v218 = *(v219 - 1);
  MEMORY[0x28223BE20](v219);
  v21 = &v185 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_20C138A64();
  v22 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v220 = &v185 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v24 - 8);
  v217 = &v185 - v25;
  v26 = sub_20C13C554();
  v228 = *(v26 - 8);
  v229 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = (&v185 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_20C137C24();
  v232 = *(v29 - 8);
  v233 = v29;
  MEMORY[0x28223BE20](v29);
  v223 = v30;
  v224 = &v185 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v234 = &v185 - v32;
  v33 = sub_20C136CD4();
  v225 = *(v33 - 8);
  v226 = v33;
  MEMORY[0x28223BE20](v33);
  v230 = &v185 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_20C134E44();
  MEMORY[0x28223BE20](v35 - 8);
  v231 = &v185 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_20C134014();
  MEMORY[0x28223BE20](v37);
  v41 = &v185 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v42 == 33)
  {
    v129 = v235;
    v130 = *&v235[OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_titleLabel];
    v131 = sub_20C13C914();
    [v130 setText_];

    v132 = *&v129[OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_subtitleLabel];
    v133 = sub_20C13C914();
    [v132 setText_];

    return sub_20BA1DA58();
  }

  else if (v42 == 32)
  {
    v196 = v21;
    v197 = v14;
    v193 = v17;
    v195 = v22;
    v194 = v11;
    v43 = v38;
    v44 = v39;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
    v46 = swift_projectBox();
    v47 = v46 + *(v45 + 64);
    v48 = *v47;
    v49 = *(v47 + 8);
    v51 = *(v47 + 16);
    v50 = *(v47 + 24);
    v52 = *(v47 + 32);
    v53 = *(v47 + 40);
    v201 = v44;
    v54 = *(v44 + 16);
    v202 = v43;
    v54(v41, v46, v43);
    v55 = v235;
    v56 = *&v235[OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_titleLabel];
    v57 = v48;
    v58 = v49;
    v203 = v51;
    v207 = v50;

    v206 = v52;
    v59 = v57;

    v205 = v53;

    [v56 setAttributedText_];
    v60 = *&v55[OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_subtitleLabel];
    v204 = v58;
    [v60 setAttributedText_];
    v61 = sub_20C133EB4() > 0;
    v62 = *&v55[OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_tvArtworkView];
    sub_20B6262FC(v61);
    v63 = sub_20C133E54();
    sub_20B626760(v63, v64);

    if ((*&v55[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] & 8) != 0)
    {
      v65 = 2;
    }

    else
    {
      v65 = 4;
    }

    [v56 setSmu:(*&v55[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] & 8uLL) >> 3 marqueeEnabled:?];
    [v56 setLineBreakMode_];
    v66 = v231;
    v200 = v41;
    sub_20C133F04();
    v199 = sub_20C138054();
    v227 = v67;
    v68 = v230;
    sub_20C134E34();
    v69 = v234;
    sub_20C136CB4();
    v198 = sub_20C136CC4();
    v208 = v70;
    sub_20B51C88C(0, &qword_281100530);
    *v28 = sub_20C13D374();
    v72 = v228;
    v71 = v229;
    (v228[13])(v28, *MEMORY[0x277D85200], v229);
    v73 = sub_20C13C584();
    result = v72[1](v28, v71);
    if (v73)
    {
      [v62 setContentMode_];
      if (sub_20BC8E3D8(v69, v62, 0))
      {
        v75 = v62;
        v229 = v59;
        v76 = swift_allocObject();
        v192 = v76;
        swift_unknownObjectWeakInit();
        v77 = v232;
        v78 = v233;
        v79 = *(v232 + 16);
        v80 = v224;
        v189 = v232 + 16;
        v190 = v79;
        v79(v224, v69, v233);
        v81 = *(v77 + 80);
        v82 = (v81 + 24) & ~v81;
        v186 = v223 + 7;
        v83 = (v223 + 7 + v82) & 0xFFFFFFFFFFFFFFF8;
        v84 = (v83 + 23) & 0xFFFFFFFFFFFFFFF8;
        v85 = (v84 + 23) & 0xFFFFFFFFFFFFFFF8;
        v191 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
        v228 = v75;
        v188 = v81;
        v86 = swift_allocObject();
        *(v86 + 16) = v76;
        v87 = v80;
        v88 = (v77 + 32);
        v187 = *(v77 + 32);
        v187(v86 + v82, v87, v78);
        v89 = (v86 + v83);
        v90 = v208;
        *v89 = v198;
        v89[1] = v90;
        v91 = (v86 + v84);
        v93 = v227;
        v92 = v228;
        *v91 = v199;
        v91[1] = v93;
        *(v86 + v85) = 2;
        v94 = v86 + v191;
        *v94 = MEMORY[0x277D84F90];
        *(v94 + 8) = 0;
        v95 = (v86 + ((v85 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v95 = 0;
        v95[1] = 0;
        v96 = (v92 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler);
        v97 = *(v92 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler);
        *v96 = sub_20BC8FE98;
        v96[1] = v86;

        sub_20B583ECC(v97);

        [v92 bounds];
        if (v98 <= 0.0 || (v100 = v99, v99 <= 0.0))
        {

          v128 = v233;
          v69 = v234;
        }

        else
        {
          v101 = v98;
          v102 = v188;
          v192 = ~v188;
          [v92 setStackImage_];
          v103 = v92;
          v104 = v217;
          v106 = v233;
          v105 = v234;
          v107 = v190;
          v190(v217, v234, v233);
          v108 = v107;
          (*(v232 + 56))(v104, 0, 1, v106);
          v109 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
          swift_beginAccess();
          sub_20B5DF2D4(v104, v103 + v109, &unk_27C766680);
          swift_endAccess();
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v110 = sub_20C13D5A4();
          [v103 setBackgroundColor_];

          v111 = (v103 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize);
          *v111 = v101;
          v111[1] = v100;
          *(v111 + 16) = 0;
          v112 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v113 = v224;
          v108(v224, v105, v106);
          v114 = (v102 + 16) & v192;
          v115 = (v186 + v114) & 0xFFFFFFFFFFFFFFF8;
          v116 = (v115 + 15) & 0xFFFFFFFFFFFFFFF8;
          v117 = swift_allocObject();
          v118 = v117 + v114;
          v119 = v233;
          v217 = v88;
          v187(v118, v113, v233);
          *(v117 + v115) = v112;
          v120 = v113;
          v121 = (v117 + v116);
          *v121 = v101;
          v121[1] = v100;
          v228 = v117;
          v122 = (v117 + ((v116 + 23) & 0xFFFFFFFFFFFFFFF8));
          v69 = v234;
          *v122 = 0;
          v122[1] = 0;
          v123 = v119;
          v190(v113, v69, v119);
          (*(v218 + 104))(v196, *MEMORY[0x277D542A8], v219);

          v124 = v220;
          sub_20C138A54();
          v125 = v197;
          sub_20B5F1B18(v124, v197);
          v126 = v221;
          v127 = v222;
          if ((*(v222 + 48))(v125, 1, v221) == 1)
          {
            sub_20B520158(v125, &unk_27C766670);
            sub_20BA1DA58();

            (*(v195 + 8))(v124, v215);
            v128 = v123;
          }

          else
          {
            v219 = *(v127 + 32);
            v153 = v216;
            v219(v216, v125, v126);
            v154 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v190(v120, v69, v123);
            v155 = (v188 + 40) & v192;
            v156 = v155 + v223;
            v157 = (v155 + v223) & 0xFFFFFFFFFFFFFFF8;
            v158 = swift_allocObject();
            *(v158 + 2) = v154;
            v158[3] = v101;
            v158[4] = v100;
            v187(v158 + v155, v120, v123);
            *(v158 + v156) = 0;
            v159 = v158 + v157;
            *(v159 + 1) = 0;
            *(v159 + 2) = 0;
            v160 = swift_allocObject();
            *(v160 + 16) = sub_20BC9002C;
            *(v160 + 24) = v158;
            v161 = v222;
            v162 = v209;
            v163 = v153;
            v164 = v221;
            (*(v222 + 16))(v209, v163, v221);
            v165 = (*(v161 + 80) + 16) & ~*(v161 + 80);
            v166 = (v193 + v165 + 7) & 0xFFFFFFFFFFFFFFF8;
            v167 = swift_allocObject();
            v219((v167 + v165), v162, v164);
            v168 = (v167 + v166);
            *v168 = sub_20B5F67A4;
            v168[1] = v160;
            v169 = v212;
            sub_20C137C94();
            v170 = swift_allocObject();
            v171 = v228;
            *(v170 + 16) = sub_20BC8FF70;
            *(v170 + 24) = v171;
            v172 = swift_allocObject();
            *(v172 + 16) = sub_20B5F67D4;
            *(v172 + 24) = v170;
            v173 = v213;
            v174 = v211;
            v175 = v214;
            (*(v213 + 16))(v211, v169, v214);
            v176 = (*(v173 + 80) + 16) & ~*(v173 + 80);
            v177 = (v210 + v176 + 7) & 0xFFFFFFFFFFFFFFF8;
            v178 = swift_allocObject();
            (*(v173 + 32))(v178 + v176, v174, v175);
            v179 = (v178 + v177);
            *v179 = sub_20B5DF204;
            v179[1] = v172;

            v180 = v194;
            sub_20C137C94();
            v181 = *(v173 + 8);
            v181(v169, v175);
            v182 = sub_20C137CB4();
            v183 = swift_allocObject();
            *(v183 + 16) = 0;
            *(v183 + 24) = 0;
            v182(sub_20B52347C, v183);

            v184 = v175;
            v69 = v234;
            v181(v180, v184);
            (*(v222 + 8))(v216, v164);
            (*(v195 + 8))(v220, v215);
            v128 = v233;
          }
        }

        v68 = v230;
        v66 = v231;
        v150 = v225;
        v59 = v229;
      }

      else
      {

        v128 = v233;
        v150 = v225;
      }

      v151 = v204;
      v152 = v203;
      (*(v232 + 8))(v69, v128);
      (*(v150 + 8))(v68, v226);

      sub_20B62A2AC(v66);
      return (*(v201 + 8))(v200, v202);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v134 = v235;
    v135 = *&v235[OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_titleLabel];
    v136 = sub_20C13C914();
    [v135 setText_];

    v137 = *&v134[OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_subtitleLabel];
    v138 = sub_20C13C914();
    [v137 setText_];

    sub_20BA1DA58();
    sub_20C13B534();

    v139 = v134;
    v140 = sub_20C13BB74();
    v141 = sub_20C13D1D4();

    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v236[0] = v144;
      *v142 = 138543618;
      *(v142 + 4) = v139;
      *v143 = v139;
      *(v142 + 12) = 2082;
      v236[3] = a1;
      v145 = sub_20B5F66D0();
      v146 = v139;
      v147 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v145);
      v149 = sub_20B51E694(v147, v148, v236);

      *(v142 + 14) = v149;
      _os_log_impl(&dword_20B517000, v140, v141, "Attempted to configure %{public}@ with item: %{public}s", v142, 0x16u);
      sub_20B520158(v143, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v143, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v144);
      MEMORY[0x20F2F6A40](v144, -1, -1);
      MEMORY[0x20F2F6A40](v142, -1, -1);
    }

    return (*(v227 + 8))(v4, v2);
  }

  return result;
}

void sub_20BC8FE98()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA46DEC(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BC8FF70(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA63670(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BC9002C(uint64_t *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2ECC(*a1, *(v1 + 16), v1 + v4, *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

id sub_20BC900E0()
{
  v1 = (*(v0 + 24) & 8uLL) >> 3;
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_titleLabel);
  if ((*(v0 + 24) & 8) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  [v2 setSmu:v1 marqueeEnabled:?];

  return [v2 setLineBreakMode_];
}

void sub_20BC90150()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_layout;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = xmmword_20C175E90;
  *(v3 + 48) = xmmword_20C175EA0;
  *(v3 + 64) = 0x406CE00000000000;
  v4 = OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_tvArtworkView;
  v5 = [objc_allocWithZone(type metadata accessor for TVArtworkView()) initWithFrame_];
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  v6 = *&qword_27C79ACA0;
  v7 = [v5 config];
  [v7 setCornerRadius_];

  v8 = [v5 config];
  [v8 setScaleSizeIncrease_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v5;
  v9 = OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_titleLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v10 setLineBreakMode_];
  [v10 setNumberOfLines_];
  [v10 setAllowsDefaultTighteningForTruncation_];
  v11 = objc_opt_self();
  v12 = [v11 preferredFontForTextStyle_];
  [v10 setFont_];

  [v10 setLineBreakMode_];
  v13 = objc_opt_self();
  v14 = [v13 labelColor];
  [v10 setTextColor_];

  v15 = v10;
  [v15 &selRef_count + 2];
  [v15 setAdjustsFontForContentSizeCategory_];
  LODWORD(v16) = 1148846080;
  [v15 setContentCompressionResistancePriority:1 forAxis:v16];

  *(v0 + v9) = v15;
  v17 = OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_subtitleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v18 setLineBreakMode_];
  [v18 setNumberOfLines_];
  [v18 setAllowsDefaultTighteningForTruncation_];
  v19 = [v11 preferredFontForTextStyle_];
  [v18 setFont_];

  v20 = [v13 secondaryLabelColor];
  [v18 setTextColor_];

  v21 = v18;
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setAdjustsFontForContentSizeCategory_];
  LODWORD(v22) = 1148846080;
  [v21 setContentCompressionResistancePriority:1 forAxis:v22];

  *(v0 + v17) = v21;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20BC905C4(double a1, double a2, double a3, double a4)
{
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v9 setAdjustsFontForContentSizeCategory_];
  v10 = v9;
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setClipsToBounds_];
  v11 = objc_opt_self();
  v12 = [v11 whiteColor];
  [v10 setTextColor_];

  v13 = *MEMORY[0x277D74368];
  v14 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
  v15 = [v14 fontDescriptorWithDesign_];
  if (v15)
  {
    v16 = v15;

    v14 = v16;
  }

  v17 = OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_primaryLabel;
  v18 = objc_opt_self();
  v19 = [v18 fontWithDescriptor:v14 size:0.0];

  [v10 setFont_];
  LODWORD(v20) = 1148846080;
  [v10 setContentCompressionResistancePriority:0 forAxis:v20];
  LODWORD(v21) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v21];

  *&v4[v17] = v10;
  v22 = OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v23 setAdjustsFontForContentSizeCategory_];
  v24 = v23;
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = [v11 whiteColor];
  [v24 setTextColor_];

  v26 = [v18 preferredFontForTextStyle_];
  [v24 setFont_];

  LODWORD(v27) = 1148846080;
  [v24 setContentCompressionResistancePriority:0 forAxis:v27];
  LODWORD(v28) = 1148846080;
  [v24 setContentCompressionResistancePriority:1 forAxis:v28];
  LODWORD(v29) = 1144750080;
  [v24 setContentHuggingPriority:1 forAxis:v29];

  *&v4[v22] = v24;
  v30 = OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_stackView;
  v31 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v31 setAxis_];
  [v31 setAlignment_];
  v32 = v31;
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v33) = 1148846080;
  [v32 setContentCompressionResistancePriority:0 forAxis:v33];
  LODWORD(v34) = 1148846080;
  [v32 setContentCompressionResistancePriority:1 forAxis:v34];

  *&v4[v30] = v32;
  v42.receiver = v4;
  v42.super_class = type metadata accessor for SessionStackedLabelView();
  v35 = objc_msgSendSuper2(&v42, sel_initWithFrame_, a1, a2, a3, a4);
  v36 = OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_stackView;
  v37 = *&v35[OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_stackView];
  v38 = v35;
  [v38 addSubview_];
  [*&v35[v36] addArrangedSubview_];
  v39 = *&v35[v36];
  v40 = OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel;
  [v39 addArrangedSubview_];
  [*&v38[v40] setHidden_];
  sub_20BC90A40();

  return v38;
}

void sub_20BC90A40()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_stackView];
  v3 = *MEMORY[0x277D768C8];
  v2 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  v6 = [v1 leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:v2];

  LODWORD(v9) = 1148846080;
  [v8 setPriority_];
  v10 = v8;
  v11 = [v1 trailingAnchor];
  v12 = [v0 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-v5];

  LODWORD(v14) = 1148846080;
  [v13 setPriority_];
  v15 = v13;
  v16 = [v1 topAnchor];
  v17 = [v0 topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:v3];

  LODWORD(v19) = 1148846080;
  [v18 setPriority_];
  v20 = [v1 bottomAnchor];
  v21 = [v0 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-v4];

  LODWORD(v23) = 1148846080;
  [v22 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20C14FE90;
  *(v24 + 32) = v10;
  *(v24 + 40) = v15;
  *(v24 + 48) = v18;
  *(v24 + 56) = v22;

  v25 = objc_opt_self();
  sub_20B5E29D0();
  v26 = sub_20C13CC54();

  [v25 activateConstraints_];
}

id sub_20BC90DD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionStackedLabelView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BC90F74(uint64_t a1)
{
  switch(a1)
  {
    case 4:
      goto LABEL_4;
    case 2:
LABEL_5:
      [*(v1 + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_stackView) setAlignment_];
      return v1;
    case 0:
LABEL_4:
      [*(v1 + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_stackView) setAlignment_];
      if (a1 == 2)
      {
        goto LABEL_5;
      }

      break;
  }

  return v1;
}

void sub_20BC90FEC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v1 setAdjustsFontForContentSizeCategory_];
  v2 = v1;
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setClipsToBounds_];
  v3 = objc_opt_self();
  v4 = [v3 whiteColor];
  [v2 setTextColor_];

  v5 = *MEMORY[0x277D74368];
  v6 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
  v7 = [v6 fontDescriptorWithDesign_];
  if (v7)
  {
    v8 = v7;

    v6 = v8;
  }

  v9 = OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_primaryLabel;
  v10 = objc_opt_self();
  v11 = [v10 fontWithDescriptor:v6 size:0.0];

  [v2 setFont_];
  LODWORD(v12) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v12];
  LODWORD(v13) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v13];

  *(v0 + v9) = v2;
  v14 = OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v15 setAdjustsFontForContentSizeCategory_];
  v16 = v15;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [v3 whiteColor];
  [v16 setTextColor_];

  v18 = [v10 preferredFontForTextStyle_];
  [v16 setFont_];

  LODWORD(v19) = 1148846080;
  [v16 setContentCompressionResistancePriority:0 forAxis:v19];
  LODWORD(v20) = 1148846080;
  [v16 setContentCompressionResistancePriority:1 forAxis:v20];
  LODWORD(v21) = 1144750080;
  [v16 setContentHuggingPriority:1 forAxis:v21];

  *(v0 + v14) = v16;
  v22 = OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_stackView;
  v23 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v23 setAxis_];
  [v23 setAlignment_];
  v24 = v23;
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v25) = 1148846080;
  [v24 setContentCompressionResistancePriority:0 forAxis:v25];
  LODWORD(v26) = 1148846080;
  [v24 setContentCompressionResistancePriority:1 forAxis:v26];

  *(v0 + v22) = v24;
  sub_20C13DE24();
  __break(1u);
}

unint64_t sub_20BC91394()
{
  result = qword_27C76CEC0;
  if (!qword_27C76CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76CEC0);
  }

  return result;
}

id sub_20BC91410()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for ScrollableStackViewContainer();
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_stackViewCenterYConstraint;
  [*&v0[OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_stackViewCenterYConstraint] setActive_];
  [*&v0[OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_stackView] systemLayoutSizeFittingSize_];
  v3 = v2 * 0.5;
  [v0 bounds];
  v5 = v4 * 0.5;
  v6 = *&v0[OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_scrollView];
  [v6 adjustedContentInset];
  v8 = v5 - v7;
  [v6 adjustedContentInset];
  v10 = v3 < v5 - v9 && v3 < v8;
  [*&v0[v1] setActive_];
  return [v0 updateConstraints];
}

void sub_20BC9156C(void *a1)
{
  v25.receiver = v1;
  v25.super_class = type metadata accessor for ScrollableStackViewContainer();
  objc_msgSendSuper2(&v25, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    v3 = a1;
    v4 = [v3 layoutDirection];
    v5 = [v1 traitCollection];
    v6 = [v5 layoutDirection];

    v7 = v3;
    if (v4 != v6)
    {
      v7 = [v1 traitCollection];
      v8 = *&v1[OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_scrollView];
      v9 = *&v1[OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_scrollViewInsets];
      v10 = *&v1[OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_scrollViewInsets + 8];
      v11 = *&v1[OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_scrollViewInsets + 16];
      v12 = *&v1[OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_scrollViewInsets + 24];
      v13 = [v7 layoutDirection];
      if (v13 == 1)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      if (v13 == 1)
      {
        v15 = v10;
      }

      else
      {
        v15 = v12;
      }

      [v8 setContentInset_];
    }

    v16 = v3;
    v17 = [v16 preferredContentSizeCategory];
    v18 = [v1 traitCollection];
    v19 = [v18 preferredContentSizeCategory];

    v20 = sub_20C13C954();
    v22 = v21;
    if (v20 == sub_20C13C954() && v22 == v23)
    {
    }

    else
    {
      v24 = sub_20C13DFF4();

      if ((v24 & 1) == 0)
      {

        [v1 setNeedsLayout];
      }
    }
  }
}

id sub_20BC91840()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrollableStackViewContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BC91914(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_visualEffectView];
  if (v2)
  {
    v17 = v2;
    [v1 bounds];
    Height = CGRectGetHeight(v19);
    [v1 bounds];
    Width = CGRectGetWidth(v20);
    v6 = 0.0;
    if (Width < Height)
    {
      [v1 safeAreaInsets];
      v8 = -v7;
      [a1 contentOffset];
      v10 = v8 - v9;
      [a1 adjustedContentInset];
      v12 = v11;
      [v1 safeAreaInsets];
      v14 = v10 / (v12 - v13);
      if (v14 > 0.0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0.0;
      }

      v16 = 1.0 - v15;
      if (v14 >= 1.0)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = v16;
      }
    }

    [v17 setAlpha_];
  }
}

unint64_t sub_20BC91AC0()
{
  result = qword_27C76CF18;
  if (!qword_27C76CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76CF18);
  }

  return result;
}

void sub_20BC91B14(void *a1, char a2, char a3, double a4, double a5, double a6, double a7)
{
  v15 = OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_contentView;
  v16 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v7[v15] = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_scrollView;
  v18 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v7[v17] = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_stackViewCenterYConstraint;
  *&v7[v19] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *&v7[OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_visualEffectView] = 0;
  v20 = a1;
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v7[OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_stackView] = v20;
  v7[OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_platform] = a2;
  v21 = &v7[OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_scrollViewInsets];
  *v21 = a4;
  v21[1] = a5;
  v21[2] = a6;
  v21[3] = a7;
  v7[OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_displayStyle] = a3 & 1;
  v128.receiver = v7;
  v128.super_class = type metadata accessor for ScrollableStackViewContainer();
  v22 = v20;
  v23 = objc_msgSendSuper2(&v128, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v24 = OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_scrollView;
  v25 = *&v23[OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_scrollView];
  v26 = v23;
  [v25 setContentInsetAdjustmentBehavior_];
  [*&v23[v24] setIndicatorStyle_];
  [*&v23[v24] setDelegate_];
  [v26 addSubview_];
  v27 = OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_contentView;
  [*&v23[v24] addSubview_];
  v118 = v27;
  [*&v26[v27] addSubview_];
  v28 = *&v23[v24];
  v29 = [v26 traitCollection];
  v30 = [v29 layoutDirection];

  if (v30 == 1)
  {
    v31 = a7;
  }

  else
  {
    v31 = a5;
  }

  if (v30 == 1)
  {
    v32 = a5;
  }

  else
  {
    v32 = a7;
  }

  [v28 setContentInset_];

  if ((a3 & 1) == 0)
  {
    v33 = sub_20C138104();
    if (v33 == sub_20C138104())
    {
      v34 = [objc_opt_self() effectWithStyle_];
      v35 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
      [v35 setTranslatesAutoresizingMaskIntoConstraints_];
      [v35 setAlpha_];

      [v26 addSubview_];
      v36 = *&v26[OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_visualEffectView];
      *&v26[OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_visualEffectView] = v35;
    }
  }

  v37 = [v22 centerYAnchor];

  v38 = [v26 centerYAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  type metadata accessor for UILayoutPriority(0);
  v126 = 1065353216;
  v127 = 1148846080;
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v40) = v119;
  [v39 setPriority_];
  v41 = *&v26[OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_stackViewCenterYConstraint];
  *&v26[OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_stackViewCenterYConstraint] = v39;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_20C1530F0;
  v43 = [*&v23[v24] leadingAnchor];
  v44 = [v26 leadingAnchor];
  v45 = [v43 &selRef:v44 alertControllerReleasedDictationButton:? + 5];

  *(v42 + 32) = v45;
  v46 = [*&v23[v24] trailingAnchor];
  v47 = [v26 trailingAnchor];
  v48 = [v46 &selRef:v47 alertControllerReleasedDictationButton:? + 5];

  *(v42 + 40) = v48;
  v49 = [*&v23[v24] topAnchor];
  v50 = [v26 &selRef_setLineBreakMode_];
  v51 = [v49 &selRef:v50 alertControllerReleasedDictationButton:? + 5];

  *(v42 + 48) = v51;
  v52 = [*&v23[v24] bottomAnchor];
  v53 = [v26 &selRef_secondaryLabel + 5];
  v54 = [v52 &selRef:v53 alertControllerReleasedDictationButton:? + 5];

  *(v42 + 56) = v54;
  v55 = [*&v26[v118] leadingAnchor];
  v56 = [v26 leadingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:a5];

  *(v42 + 64) = v57;
  v58 = [*&v26[v118] leadingAnchor];
  v59 = [*&v23[v24] leadingAnchor];
  v60 = [v58 constraintGreaterThanOrEqualToAnchor_];

  *(v42 + 72) = v60;
  v61 = [*&v26[v118] trailingAnchor];
  v62 = [v26 trailingAnchor];

  v63 = [v61 constraintEqualToAnchor:v62 constant:-a7];
  *(v42 + 80) = v63;
  v64 = [*&v26[v118] trailingAnchor];
  v65 = [*&v23[v24] trailingAnchor];
  v66 = [v64 constraintLessThanOrEqualToAnchor_];

  *(v42 + 88) = v66;
  v67 = [*&v26[v118] centerXAnchor];
  v68 = [*&v23[v24] &selRef_handleMenuButtonTapped + 2];
  v69 = [v67 constraintEqualToAnchor_];

  v126 = 1065353216;
  v127 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v70) = v119;
  [v69 setPriority_];
  *(v42 + 96) = v69;
  v71 = [*&v26[v118] topAnchor];
  v72 = [*&v23[v24] topAnchor];
  v73 = [v71 constraintEqualToAnchor_];

  *(v42 + 104) = v73;
  v74 = [*&v26[v118] bottomAnchor];
  v75 = [*&v23[v24] bottomAnchor];
  v76 = [v74 &selRef:v75 alertControllerReleasedDictationButton:? + 5];

  *(v42 + 112) = v76;
  v77 = [v22 centerXAnchor];

  v78 = [*&v26[v118] centerXAnchor];
  v79 = [v77 &selRef:v78 alertControllerReleasedDictationButton:? + 5];

  *(v42 + 120) = v79;
  v80 = [v22 leadingAnchor];

  v81 = [*&v26[v118] leadingAnchor];
  v82 = [v80 constraintGreaterThanOrEqualToAnchor_];

  *(v42 + 128) = v82;
  v83 = [v22 trailingAnchor];

  v84 = [*&v26[v118] trailingAnchor];
  v85 = [v83 constraintLessThanOrEqualToAnchor_];

  *(v42 + 136) = v85;
  v86 = [v22 topAnchor];

  v87 = [*&v26[v118] topAnchor];
  v88 = [v86 constraintGreaterThanOrEqualToAnchor_];

  *(v42 + 144) = v88;
  v89 = [v22 bottomAnchor];

  v90 = [*&v26[v118] bottomAnchor];
  v91 = [v89 constraintLessThanOrEqualToAnchor_];

  *(v42 + 152) = v91;
  v92 = OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_visualEffectView;
  v93 = *&v26[OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_visualEffectView];
  if (v93)
  {
    v94 = [v93 leadingAnchor];
    v95 = [v26 leadingAnchor];
    v96 = [v94 constraintEqualToAnchor_];

    v97 = *&v26[v92];
    v122 = v96;
    if (v97)
    {
      v98 = [v97 trailingAnchor];
      v99 = [v26 trailingAnchor];
      v100 = [v98 constraintEqualToAnchor_];

      v101 = *&v26[v92];
      v123 = v100;
      if (v101)
      {
        v102 = [v101 topAnchor];
        v103 = [v26 topAnchor];
        v104 = [v102 constraintEqualToAnchor_];

        v105 = *&v26[v92];
        v124 = v104;
        if (v105)
        {
          v106 = [v105 &selRef_secondaryLabel + 5];
          v107 = [v26 safeAreaLayoutGuide];
          v108 = [v107 topAnchor];

          v109 = [v106 constraintEqualToAnchor_];
        }

        else
        {
          v109 = 0;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v123 = 0;
    }
  }

  else
  {
    v122 = 0;
    v123 = 0;
  }

  v109 = 0;
  v124 = 0;
LABEL_18:
  v110 = 0;
  v125 = v109;
  v111 = MEMORY[0x277D84F90];
  v120 = MEMORY[0x277D84F90];
LABEL_19:
  if (v110 <= 4)
  {
    v112 = 4;
  }

  else
  {
    v112 = v110;
  }

  while (1)
  {
    if (v110 == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765390);
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20C14F320;
      *(inited + 32) = v42;
      *(inited + 40) = v111;
      v116 = objc_opt_self();
      sub_20BE54D20(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
      swift_arrayDestroy();
      sub_20B5E29D0();
      v117 = sub_20C13CC54();

      [v116 activateConstraints_];

      return;
    }

    if (v112 == v110)
    {
      break;
    }

    v113 = v121[v110++ + 4];
    if (v113)
    {
      v114 = v113;
      MEMORY[0x20F2F43B0]();
      if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      v111 = v120;
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_20BC92904()
{
  v1 = OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_contentView;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_scrollView;
  v4 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_stackViewCenterYConstraint;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *(v0 + OBJC_IVAR____TtC9SeymourUI28ScrollableStackViewContainer_visualEffectView) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI37TVUpNextQueueGalleryShelfDisplayStateO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_20BC92A1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_20BC92A6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_20BC92AC4(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    result[1] = result[1] & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3);
    result[1] = 0xC000000000000000;
    result[2] = 0;
    result[3] = 0;
  }

  return result;
}

id sub_20BC92B10(uint64_t a1, char a2)
{
  if (*(a1 + 32) > 1u)
  {
    if (*(a1 + 32) == 2 || *(a1 + 16) | *(a1 + 24) | *a1 | *(a1 + 8))
    {
      if (a2)
      {
        return [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      }

      return 0;
    }
  }

  else if (!*(a1 + 32))
  {
    if (a2)
    {
      v2 = [objc_opt_self() systemRedColor];
      return v2;
    }

    return 0;
  }

  if (a2)
  {
    v2 = [objc_opt_self() systemGray4Color];
    return v2;
  }

  return 0;
}

id sub_20BC92BE0(uint64_t a1, char a2)
{
  if (*(a1 + 32) <= 1u)
  {
    if (!*(a1 + 32))
    {
      v3 = objc_opt_self();
      if (a2)
      {
        v4 = [v3 labelColor];
      }

      else
      {
        v4 = [v3 systemRedColor];
      }

      return v4;
    }

LABEL_9:
    v5 = objc_opt_self();
    if (a2)
    {
      v4 = [v5 tertiaryLabelColor];
    }

    else
    {
      v4 = [v5 systemGray4Color];
    }

    return v4;
  }

  if (*(a1 + 32) != 2 && !(*(a1 + 16) | *(a1 + 24) | *a1 | *(a1 + 8)))
  {
    goto LABEL_9;
  }

  if ((a2 & 1) == 0)
  {
    return [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  }

  v4 = [objc_opt_self() blackColor];
  return v4;
}

id sub_20BC92CEC@<X0>(char a1@<W0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = *MEMORY[0x277D76988];
  }

  else
  {
    v3 = *MEMORY[0x277D76918];
  }

  result = v3;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = result;
  a2[3] = 0x90100000000;
  a2[4] = 0;
  a2[5] = 1;
  a2[6] = MEMORY[0x277D84FA0];
  return result;
}

uint64_t sub_20BC92D94()
{
  sub_20B583E6C(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  __swift_destroy_boxed_opaque_existential_1(v0 + 168);
  __swift_destroy_boxed_opaque_existential_1(v0 + 208);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 280);
  __swift_destroy_boxed_opaque_existential_1(v0 + 320);
  __swift_destroy_boxed_opaque_existential_1(v0 + 360);

  __swift_destroy_boxed_opaque_existential_1(v0 + 408);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_configuration, &qword_27C761800);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_programDetail, &qword_27C763090);

  sub_20B583ECC(*(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_activationCompletionHandler));
  return v0;
}

uint64_t sub_20BC92EF8()
{
  sub_20BC92D94();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CatalogProgramPageDataProvider()
{
  result = qword_27C76CF50;
  if (!qword_27C76CF50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BC92FA4()
{
  sub_20BC9313C(319, &qword_281103BF0, MEMORY[0x277D50560]);
  if (v0 <= 0x3F)
  {
    sub_20BC9313C(319, &qword_27C76B540, MEMORY[0x277D51D90]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20BC9313C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20BC93190@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v35 - v5;
  v6 = sub_20C134314();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C135974();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763090);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v35 - v18;
  v40 = *(*(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v20 = *MEMORY[0x277D51850];
  v21 = sub_20C1352F4();
  v22 = *(v21 - 8);
  v23 = v20;
  v24 = v1;
  (*(v22 + 104))(v19, v23, v21);
  (*(v22 + 56))(v19, 0, 1, v21);
  v25 = OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_programDetail;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v25, v13, &qword_27C763090);
  if ((*(v9 + 48))(v13, 1, v8))
  {

    sub_20B520158(v13, &qword_27C763090);
    v26 = 1;
  }

  else
  {
    v27 = v36;
    (*(v9 + 16))(v36, v13, v8);

    sub_20B520158(v13, &qword_27C763090);
    v28 = v37;
    sub_20C135954();
    (*(v9 + 8))(v27, v8);
    sub_20C1342A4();
    (*(v38 + 8))(v28, v39);
    v26 = 0;
  }

  v29 = sub_20C132C14();
  (*(*(v29 - 8) + 56))(v16, v26, 1, v29);
  __swift_project_boxed_opaque_existential_1((*(v24 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_headerShelf) + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_mediaTagStringBuilder), *(*(v24 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_headerShelf) + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_mediaTagStringBuilder + 24));

  v30 = sub_20C138544();

  v31 = [v30 string];

  sub_20C13C954();
  v32 = sub_20C135ED4();
  (*(*(v32 - 8) + 56))(v41, 1, 1, v32);
  v33 = sub_20C136914();
  (*(*(v33 - 8) + 56))(v42, 1, 1, v33);
  return sub_20C133384();
}

uint64_t sub_20BC93798()
{
  if ((*(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_activationState) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_activationState) = 1;
    sub_20BC93914();
    swift_getObjectType();
    sub_20C13AEC4();
    swift_allocObject();
    swift_weakInit();

    sub_20C13A7A4();

    __swift_destroy_boxed_opaque_existential_1(v2);

    sub_20C137384();
    swift_allocObject();
    swift_weakInit();
    sub_20C13A784();

    return __swift_destroy_boxed_opaque_existential_1(v2);
  }

  return result;
}

uint64_t sub_20BC93914()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764208);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v9 = *(v8 - 8);
  v23 = v8;
  v24 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  __swift_project_boxed_opaque_existential_1((v0 + 168), *(v0 + 192));
  sub_20C139EE4();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_20BC96220;
  *(v13 + 24) = v12;
  (*(v2 + 16))(v4, v7, v1);
  v14 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v15 = (v3 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v2 + 32))(v16 + v14, v4, v1);
  v17 = (v16 + v15);
  *v17 = sub_20BB86BA0;
  v17[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  sub_20C137C94();
  (*(v2 + 8))(v7, v1);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = v23;
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_20BC962F8;
  *(v21 + 24) = v18;

  v20(sub_20B52347C, v21);

  return (*(v24 + 8))(v11, v19);
}

uint64_t sub_20BC93C90()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1F4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20B517000, v4, v5, "[CatalogProgramPageDataProvider] archived sessions updated, refreshing page", v6, 2u);
    MEMORY[0x20F2F6A40](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BC93914();
  }

  return result;
}

uint64_t sub_20BC93E04()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BC93914();
  }

  return result;
}

uint64_t sub_20BC93E5C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v5 = result;
  if (result)
  {
    sub_20BC93EE0(a1);
  }

  *a2 = v5 == 0;
  return result;
}

void sub_20BC93EE0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C1333A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17[-v9];
  v11 = sub_20C135974();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_programDetail;
  swift_beginAccess();
  sub_20BC96300(v10, v2 + v13);
  swift_endAccess();
  v14 = *(v2 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_page);
  v18 = v2;
  v19 = a1;
  v15 = v14;
  sub_20C0C19E0(1, sub_20BC96370, v17);

  v16 = OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_shouldPublishPageEventWhenAvailable;
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_shouldPublishPageEventWhenAvailable) == 1)
  {
    v20 = v2;
    sub_20BC93190(v7);
    type metadata accessor for CatalogProgramPageDataProvider();
    sub_20BC96378(&qword_27C76CF60, type metadata accessor for CatalogProgramPageDataProvider);
    sub_20C138C54();
    (*(v5 + 8))(v7, v4);
    *(v2 + v16) = 0;
  }
}

uint64_t sub_20BC9415C(uint64_t result)
{
  if (*(result + 8) == 1)
  {
    v1 = *result;
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_20BC941CC(v1);
    }
  }

  return result;
}

uint64_t sub_20BC941CC(void *a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C554();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v11 = sub_20C13D374();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_20C13C584();
  v14 = *(v9 + 8);
  v13 = v9 + 8;
  v14(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    sub_20BB5D394((v15 > 1), v8, 1);
    v38 = v87[0];
    goto LABEL_6;
  }

  sub_20C13B534();
  v16 = a1;
  v17 = sub_20C13BB74();
  v18 = sub_20C13D1D4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v77 = v4;
    v21 = v20;
    v90[0] = v20;
    *v19 = 136446210;
    swift_getErrorValue();
    v22 = MEMORY[0x20F2F5850](v78, v79);
    v24 = sub_20B51E694(v22, v23, v90);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_20B517000, v17, v18, "CatalogProgramPageDataProvider failed to fetch remote content with %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x20F2F6A40](v21, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v5 + 8))(v7, v77);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  type metadata accessor for LoadingErrorShelf();
  swift_allocObject();

  v11 = sub_20BEFE8F4(v25, 0, 0);

  v26 = v2[5];
  v76 = v2[4];
  v77 = OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_page;
  v27 = *(v2 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_page);
  v28 = *(v27 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  sub_20B51CC64(v27 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker, v90);
  v75 = v26;

  v73 = v28;
  v72 = sub_20C1380F4();
  v13 = type metadata accessor for MetricLocationStore();
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F98];
  *(v29 + 16) = MEMORY[0x277D84F90];
  *(v29 + 24) = v31;
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v90, v91);
  v74 = v71;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = (v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35, v33);
  v37 = *v35;
  v4 = type metadata accessor for CatalogPageImpressionTracker();
  v89[3] = v4;
  v7 = sub_20BC96378(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v89[4] = v7;
  v89[0] = v37;
  v88[3] = v13;
  v88[4] = &off_2822B6968;
  v88[0] = v29;
  v87[0] = v30;
  sub_20BB5D394(0, 1, 0);
  v38 = v87[0];
  v5 = *(v87[0] + 16);
  v15 = *(v87[0] + 24);
  v8 = v5 + 1;
  if (v5 >= v15 >> 1)
  {
    goto LABEL_11;
  }

LABEL_6:
  *(v38 + 16) = v8;
  v39 = v38 + 24 * v5;
  *(v39 + 32) = v11;
  *(v39 + 40) = &off_2822F4EF0;
  *(v39 + 48) = 0;
  sub_20B51CC64(v89, v87);
  sub_20B51CC64(v88, v86);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v87, v87[3]);
  v71[0] = v71;
  v41 = MEMORY[0x28223BE20](v40);
  v71[1] = v11;
  v43 = (v71 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43, v41);
  v45 = __swift_mutable_project_boxed_opaque_existential_1(v86, v86[3]);
  v46 = MEMORY[0x28223BE20](v45);
  v48 = (v71 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48, v46);
  v50 = *v43;
  v51 = *v48;
  v84 = v4;
  v85 = v7;
  v83[0] = v50;
  v81 = v13;
  v82 = &off_2822B6968;
  v80[0] = v51;
  v52 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
  v54 = MEMORY[0x28223BE20](v53);
  v56 = (v71 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56, v54);
  v58 = __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
  v59 = MEMORY[0x28223BE20](v58);
  v61 = (v71 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61, v59);
  v63 = sub_20BE3AA74(v76, v75, v38, v72, v73, *v56, *v61, 2, v52);
  __swift_destroy_boxed_opaque_existential_1(v88);
  __swift_destroy_boxed_opaque_existential_1(v89);
  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_destroy_boxed_opaque_existential_1(v83);
  __swift_destroy_boxed_opaque_existential_1(v86);
  __swift_destroy_boxed_opaque_existential_1(v87);
  __swift_destroy_boxed_opaque_existential_1(v90);
  v64 = v77;
  v65 = *(v2 + v77);
  *(v2 + v77) = v63;

  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v66 = v2[3];
  ObjectType = swift_getObjectType();
  v91 = type metadata accessor for CatalogProgramPageDataProvider();
  v92 = &off_2822DB208;
  v90[0] = v2;
  v68 = *(v2 + v64);

  v69 = v68;
  sub_20B76FFF8(v90, v69, ObjectType, v66);

  swift_unknownObjectRelease();

  return __swift_destroy_boxed_opaque_existential_1(v90);
}

uint64_t sub_20BC94AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C134314();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BAD9AB8(a2);
  sub_20B633B4C();
  sub_20BFB7170(a2, 1);
  sub_20B8C3AF8();
  v8 = *(a1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_addAllShelf);
  sub_20C135954();
  v9 = sub_20C1342C4();
  (*(v5 + 8))(v7, v4);
  v10 = sub_20B527580(v9);

  *(v8 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_programWorkoutIdentifiers) = v10;

  result = sub_20B9E2394();
  v12 = *(a1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_activationCompletionHandler);
  if (v12)
  {

    v12(v13);
    return sub_20B583ECC(v12);
  }

  return result;
}

uint64_t sub_20BC94D80@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_configuration;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C761800);
}

uint64_t sub_20BC94DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v8 - 8);
  v153 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v142 - v11;
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v13 = MEMORY[0x277D84FA0];
  v3[56] = MEMORY[0x277D84FA0];
  v3[57] = v13;
  v3[58] = v13;
  v3[59] = v13;
  v3[60] = MEMORY[0x277D84F90];
  v14 = OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_configuration;
  v15 = sub_20C134104();
  (*(*(v15 - 8) + 56))(v4 + v14, 1, 1, v15);
  *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_activationState) = 0;
  v16 = OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_programDetail;
  v17 = sub_20C135974();
  (*(*(v17 - 8) + 56))(v4 + v16, 1, 1, v17);
  *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_shouldPublishPageEventWhenAvailable) = 0;
  v18 = (v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_activationCompletionHandler);
  *v18 = 0;
  v18[1] = 0;
  v155 = a1;
  v156 = a2;
  v4[4] = a1;
  v4[5] = a2;
  v4[31] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40);
  sub_20C133AA4();
  sub_20B51C710(v175, (v4 + 6));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590);
  sub_20C133AA4();
  sub_20B51C710(v175, (v4 + 11));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(v175, (v4 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(v175, (v4 + 21));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  sub_20B51C710(v175, (v4 + 26));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v4 + 16) = v175[0];
  sub_20C133AA4();
  *(v4 + 272) = v175[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769190);
  sub_20C133AA4();
  sub_20B51C710(v175, (v4 + 35));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(v175, (v4 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v175, (v4 + 45));
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  v4[50] = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  sub_20C133AA4();
  sub_20B51C710(v175, (v4 + 51));
  type metadata accessor for CatalogProgramAddAllShelf();
  swift_allocObject();

  v19 = sub_20B9E38B8();

  *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_addAllShelf) = v19;
  type metadata accessor for CatalogProgramDetailHeaderShelf();
  swift_allocObject();

  v20 = sub_20BADAC70();

  *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_headerShelf) = v20;
  v21 = sub_20C134EC4();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  type metadata accessor for ExpandingTextShelf();
  swift_allocObject();

  v23 = sub_20BFBE714(v22, v12);

  *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_summaryShelf) = v23;
  type metadata accessor for CatalogProgramTagsShelf();
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  swift_unknownObjectWeakInit();

  sub_20C132ED4();
  v25 = v24 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row;
  sub_20B5D8060(v175);
  v26 = v175[9];
  *(v25 + 128) = v175[8];
  *(v25 + 144) = v26;
  *(v25 + 160) = v176;
  v27 = v175[5];
  *(v25 + 64) = v175[4];
  *(v25 + 80) = v27;
  v28 = v175[7];
  *(v25 + 96) = v175[6];
  *(v25 + 112) = v28;
  v29 = v175[1];
  *v25 = v175[0];
  *(v25 + 16) = v29;
  v30 = v175[3];
  *(v25 + 32) = v175[2];
  *(v25 + 48) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();

  *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_tagsShelf) = v24;
  type metadata accessor for CatalogProgramWorkoutListShelf();
  swift_allocObject();

  v31 = sub_20B8C6514();

  *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_workoutListShelf) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v174, v174[3]);
  v154 = sub_20C138D04();
  if (!*(v4 + 272))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
    v32 = swift_allocObject();
    v32[4] = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_headerShelf);
    v33 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_tagsShelf);
    v32[5] = &off_2822CA450;
    v32[6] = v33;
    v34 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_summaryShelf);
    v32[7] = &off_2822992A0;
    v32[8] = v34;
    v35 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_workoutListShelf);
    v36 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_addAllShelf);
    v32[9] = &off_2822FC7E0;
    v32[10] = v35;
    v32[11] = &off_2822B24E8;
    v32[12] = v36;
    v32[13] = &off_2822BC948;

    v143 = v33;

    v144 = v34;

    v145 = v35;

    v148 = v36;

    v152 = sub_20C1380F4();
    v37 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
    v151 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v37 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    sub_20C13C734();
    v38 = sub_20C13C724();
    v39 = type metadata accessor for CatalogPageImpressionTracker();
    v40 = swift_allocObject();
    sub_20C13C714();

    sub_20C13C6B4();
    v41 = MEMORY[0x277D221C0];
    v40[2] = sub_20C13C6D4();
    v40[3] = v38;
    v40[4] = v41;
    v172 = v39;
    v42 = sub_20BC96378(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
    v173 = v42;
    v171[0] = v40;
    v43 = type metadata accessor for MetricLocationStore();
    v44 = swift_allocObject();
    v45 = MEMORY[0x277D84F98];
    v46 = MEMORY[0x277D84F90];
    *(v44 + 16) = MEMORY[0x277D84F90];
    *(v44 + 24) = v45;
    v47 = __swift_mutable_project_boxed_opaque_existential_1(v171, v39);
    v153 = &v142;
    v48 = MEMORY[0x28223BE20](v47);
    v50 = (&v142 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v51 + 16))(v50, v48);
    v52 = *v50;
    v147 = v42;
    v169 = v39;
    v170 = v42;
    v149 = v39;
    v168[0] = v52;
    v166 = v43;
    v167 = &off_2822B6968;
    v146 = v43;
    v165[0] = v44;
    v164[0] = v46;
    sub_20BB5D394(0, 5, 0);
    v53 = v164[0];
    v150 = (v32 + 4);
    v54 = *(v164[0] + 16);
    v55 = *(v164[0] + 24);
    v56 = v54 + 1;
    v142 = *(v32 + 2);
    swift_unknownObjectRetain();
    if (v54 >= v55 >> 1)
    {
      sub_20BB5D394((v55 > 1), v54 + 1, 1);
      v53 = v164[0];
    }

    *(v53 + 16) = v56;
    v57 = v53 + 24 * v54;
    *(v57 + 32) = v142;
    *(v57 + 48) = 0;
    v58 = *(v53 + 24);
    v59 = v54 + 2;
    v60 = swift_unknownObjectRetain();
    if ((v54 + 2) > (v58 >> 1))
    {
      sub_20BB5D394((v58 > 1), v54 + 2, 1);
      v53 = v164[0];
    }

    *(v53 + 16) = v59;
    v61 = v53 + 24 * v56;
    *(v61 + 32) = v60;
    *(v61 + 40) = &off_2822992A0;
    *(v61 + 48) = 0;
    v62 = *(v53 + 24);
    v63 = v54 + 3;
    v64 = v144;
    swift_unknownObjectRetain();
    v65 = v148;
    if ((v54 + 3) > (v62 >> 1))
    {
      sub_20BB5D394((v62 > 1), v54 + 3, 1);
    }

    v66 = v164[0];
    *(v164[0] + 16) = v63;
    v67 = v66 + 24 * v59;
    *(v67 + 32) = v64;
    *(v67 + 40) = &off_2822FC7E0;
    *(v67 + 48) = 0;
    v68 = *(v66 + 24);
    v69 = v54 + 4;
    v70 = v145;
    swift_unknownObjectRetain();
    if ((v54 + 4) > (v68 >> 1))
    {
      sub_20BB5D394((v68 > 1), v54 + 4, 1);
      v66 = v164[0];
    }

    *(v66 + 16) = v69;
    v71 = v66 + 24 * v63;
    *(v71 + 32) = v70;
    *(v71 + 40) = &off_2822B24E8;
    *(v71 + 48) = 0;
    v72 = *(v66 + 24);
    v73 = v54 + 5;
    swift_unknownObjectRetain();
    if (v73 > (v72 >> 1))
    {
      sub_20BB5D394((v72 > 1), v73, 1);
      v66 = v164[0];
    }

    *(v66 + 16) = v73;
    v74 = v66 + 24 * v69;
    *(v74 + 32) = v65;
    v75 = &off_2822BC948;
LABEL_25:
    *(v74 + 40) = v75;
    *(v74 + 48) = 0;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7675B0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_20B51CC64(v168, v164);
    sub_20B51CC64(v165, v163);
    v117 = __swift_mutable_project_boxed_opaque_existential_1(v164, v164[3]);
    v150 = &v142;
    v118 = MEMORY[0x28223BE20](v117);
    v120 = (&v142 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v121 + 16))(v120, v118);
    v122 = __swift_mutable_project_boxed_opaque_existential_1(v163, v163[3]);
    v123 = MEMORY[0x28223BE20](v122);
    v125 = (&v142 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v126 + 16))(v125, v123);
    v127 = *v120;
    v128 = *v125;
    v161 = v149;
    v162 = v147;
    v160[0] = v127;
    v158 = v146;
    v159 = &off_2822B6968;
    v157[0] = v128;
    v129 = objc_allocWithZone(type metadata accessor for CatalogPage());
    v130 = __swift_mutable_project_boxed_opaque_existential_1(v160, v161);
    v131 = MEMORY[0x28223BE20](v130);
    v133 = (&v142 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v134 + 16))(v133, v131);
    v135 = __swift_mutable_project_boxed_opaque_existential_1(v157, v158);
    v136 = MEMORY[0x28223BE20](v135);
    v138 = (&v142 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v139 + 16))(v138, v136);
    v140 = sub_20BE3AA74(v155, v156, v66, v152, v151, *v133, *v138, v154 & 1, v129);
    __swift_destroy_boxed_opaque_existential_1(v165);
    __swift_destroy_boxed_opaque_existential_1(v168);
    __swift_destroy_boxed_opaque_existential_1(v157);
    __swift_destroy_boxed_opaque_existential_1(v160);
    __swift_destroy_boxed_opaque_existential_1(v163);
    __swift_destroy_boxed_opaque_existential_1(v164);
    __swift_destroy_boxed_opaque_existential_1(v171);
    *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_page) = v140;
    sub_20BE120A4();
    __swift_destroy_boxed_opaque_existential_1(v174);
    return v4;
  }

  if (*(v4 + 272) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
    v76 = swift_allocObject();
    v76[4] = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_headerShelf);
    v77 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_tagsShelf);
    v76[5] = &off_2822CA450;
    v76[6] = v77;
    v78 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_summaryShelf);
    v76[7] = &off_2822992A0;
    v76[8] = v78;
    v79 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_addAllShelf);
    v80 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_workoutListShelf);
    v76[9] = &off_2822FC7E0;
    v76[10] = v79;
    v76[11] = &off_2822BC948;
    v76[12] = v80;
    v76[13] = &off_2822B24E8;

    v143 = v77;

    v144 = v78;

    v145 = v79;

    v148 = v80;

    v152 = sub_20C1380F4();
    v81 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
    v151 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v81 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    sub_20C13C734();
    v82 = sub_20C13C724();
    v83 = type metadata accessor for CatalogPageImpressionTracker();
    v84 = swift_allocObject();
    sub_20C13C714();

    sub_20C13C6B4();
    v85 = MEMORY[0x277D221C0];
    v84[2] = sub_20C13C6D4();
    v84[3] = v82;
    v84[4] = v85;
    v172 = v83;
    v86 = sub_20BC96378(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
    v173 = v86;
    v171[0] = v84;
    v87 = type metadata accessor for MetricLocationStore();
    v88 = swift_allocObject();
    v89 = MEMORY[0x277D84F98];
    v90 = MEMORY[0x277D84F90];
    *(v88 + 16) = MEMORY[0x277D84F90];
    *(v88 + 24) = v89;
    v91 = __swift_mutable_project_boxed_opaque_existential_1(v171, v83);
    v153 = &v142;
    v92 = MEMORY[0x28223BE20](v91);
    v94 = (&v142 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v95 + 16))(v94, v92);
    v96 = *v94;
    v147 = v86;
    v169 = v83;
    v170 = v86;
    v149 = v83;
    v168[0] = v96;
    v166 = v87;
    v167 = &off_2822B6968;
    v146 = v87;
    v165[0] = v88;
    v164[0] = v90;
    sub_20BB5D394(0, 5, 0);
    v97 = v164[0];
    v150 = (v76 + 4);
    v98 = *(v164[0] + 16);
    v99 = *(v164[0] + 24);
    v100 = v98 + 1;
    v142 = *(v76 + 2);
    swift_unknownObjectRetain();
    if (v98 >= v99 >> 1)
    {
      sub_20BB5D394((v99 > 1), v98 + 1, 1);
      v97 = v164[0];
    }

    *(v97 + 16) = v100;
    v101 = v97 + 24 * v98;
    *(v101 + 32) = v142;
    *(v101 + 48) = 0;
    v102 = *(v97 + 24);
    v103 = v98 + 2;
    v104 = swift_unknownObjectRetain();
    if ((v98 + 2) > (v102 >> 1))
    {
      sub_20BB5D394((v102 > 1), v98 + 2, 1);
      v97 = v164[0];
    }

    *(v97 + 16) = v103;
    v105 = v97 + 24 * v100;
    *(v105 + 32) = v104;
    *(v105 + 40) = &off_2822992A0;
    *(v105 + 48) = 0;
    v106 = *(v97 + 24);
    v107 = v98 + 3;
    v108 = v144;
    swift_unknownObjectRetain();
    v109 = v148;
    if ((v98 + 3) > (v106 >> 1))
    {
      sub_20BB5D394((v106 > 1), v98 + 3, 1);
    }

    v66 = v164[0];
    *(v164[0] + 16) = v107;
    v110 = v66 + 24 * v103;
    *(v110 + 32) = v108;
    *(v110 + 40) = &off_2822FC7E0;
    *(v110 + 48) = 0;
    v111 = *(v66 + 24);
    v112 = v98 + 4;
    v113 = v145;
    swift_unknownObjectRetain();
    if ((v98 + 4) > (v111 >> 1))
    {
      sub_20BB5D394((v111 > 1), v98 + 4, 1);
      v66 = v164[0];
    }

    *(v66 + 16) = v112;
    v114 = v66 + 24 * v107;
    *(v114 + 32) = v113;
    *(v114 + 40) = &off_2822BC948;
    *(v114 + 48) = 0;
    v115 = *(v66 + 24);
    v116 = v98 + 5;
    swift_unknownObjectRetain();
    if (v116 > (v115 >> 1))
    {
      sub_20BB5D394((v115 > 1), v116, 1);
      v66 = v164[0];
    }

    *(v66 + 16) = v116;
    v74 = v66 + 24 * v112;
    *(v74 + 32) = v109;
    v75 = &off_2822B24E8;
    goto LABEL_25;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20BC9623C(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764208) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B6E152C(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_20BC96300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763090);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BC96378(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20BC963D8()
{
  result = qword_27C76CF68;
  if (!qword_27C76CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76CF68);
  }

  return result;
}

uint64_t sub_20BC96444(uint64_t a1, double *a2)
{
  sub_20C1380F4();
  v3 = sub_20C138104();
  result = sub_20C138104();
  v5 = 10.0;
  if (v3 == result)
  {
    v5 = 20.0;
  }

  *a2 = v5;
  return result;
}

id sub_20BC96528(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, int a8)
{
  v37 = a8;
  v36 = *&a5;
  v15 = OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_buttonActions;
  swift_beginAccess();
  v16 = *(v8 + v15);

  v17 = sub_20BB808A4(a1, v16);

  if (v17)
  {
    if (!*(a1 + 16))
    {
      result = *(v8 + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_rootStackView);
      if (result)
      {
        return [result removeFromSuperview];
      }
    }
  }

  else
  {
    v19 = OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_rootStackView;
    v20 = *(v8 + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_rootStackView);
    if (v20)
    {
      [v20 removeFromSuperview];
    }

    *(v8 + v15) = MEMORY[0x277D84F90];

    v40[3] = &type metadata for ActionButtonTemplate;
    v40[4] = &off_2822E8C98;
    v21 = swift_allocObject();
    v40[0] = v21;
    *(v21 + 16) = 0;
    *(v21 + 24) = 1;
    *(v21 + 32) = a2;
    *(v21 + 40) = a3;
    *(v21 + 48) = a4 & 1;
    v22 = *(v8 + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateParser);
    v23 = __swift_project_boxed_opaque_existential_1(v40, &type metadata for ActionButtonTemplate);
    v24 = *(v23 + 1);
    v41[0] = *v23;
    v41[1] = v24;
    v42 = *(v23 + 32);
    v25 = sub_20BC98B8C(a1, v41, v22);
    if (v25)
    {
      v26 = v25;
      sub_20B51CC64(v25 + 16, v38);
      v27 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
      MEMORY[0x28223BE20](v27);
      v29 = &v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v30 + 16))(v29);
      v31 = sub_20BC98D80(v29);
      __swift_destroy_boxed_opaque_existential_1(v38);
      [v31 setTranslatesAutoresizingMaskIntoConstraints_];
      v32 = *(v8 + v19);
      *(v8 + v19) = v31;
      v33 = v31;

      if (a6)
      {
        v34 = *(v8 + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interItemSpacing);
      }

      else
      {
        v34 = v36;
      }

      *(v8 + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interGroupSpacing) = v34;
      if ((v37 & 1) == 0)
      {
        v34 = *&a7;
      }

      *(v8 + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interItemSpacing) = v34;
      sub_20BC967F0(v26, v33);
    }

    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  return result;
}

uint64_t sub_20BC967F0(void *a1, id a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interItemSpacing;
  [a2 setSpacing_];
  [v2 addSubview_];
  v31 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20C150050;
  v8 = [a2 leadingAnchor];
  v9 = [v3 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v7 + 32) = v10;
  v11 = [a2 trailingAnchor];
  v12 = [v3 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v7 + 40) = v13;
  v14 = [a2 topAnchor];
  v15 = [v3 topAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v7 + 48) = v16;
  v17 = [a2 bottomAnchor];
  v18 = [v3 bottomAnchor];
  v19 = [v17 constraintLessThanOrEqualToAnchor_];

  *(v7 + 56) = v19;
  v20 = [a2 bottomAnchor];
  v21 = [v3 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  type metadata accessor for UILayoutPriority(0);
  sub_20BC99018(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BBA4();
  LODWORD(v23) = v32;
  [v22 setPriority_];
  *(v7 + 64) = v22;
  sub_20B5E29D0();
  v24 = sub_20C13CC54();

  [v31 activateConstraints_];

  v26 = a1[5];
  v25 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v26);
  v27 = (*(*(v25 + 8) + 8))(v26);
  if (v28)
  {
    v29 = *&v3[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interGroupSpacing];
  }

  else
  {
    v29 = *&v27;
  }

  return sub_20BC96B8C(a1, a2, v29, *&v3[v6]);
}

uint64_t sub_20BC96B8C(uint64_t a1, void *a2, double a3, double a4)
{
  v5 = v4;
  v83 = type metadata accessor for ButtonAction(0);
  v82 = *(v83 - 8);
  v10 = MEMORY[0x28223BE20](v83);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v74 - v13;
  swift_beginAccess();
  result = *(a1 + 80);
  v16 = *(result + 16);
  if (v16)
  {
    v86 = OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_buttonActions;
    v17 = result + 32;
    v74 = result;

    v81 = a2;
    v85 = v4;
    v80 = v12;
    v75 = v14;
    while (1)
    {
      sub_20B51CC64(v17, v91);
      sub_20B51CC64(v91, v88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BF28);
      type metadata accessor for ItemNode();
      if (!swift_dynamicCast())
      {
        sub_20B51CC64(v91, v88);
        type metadata accessor for GroupNode();
        if (swift_dynamicCast())
        {
          v18 = v87[0];
          sub_20B51CC64(v87[0] + 16, v88);
          v19 = v89;
          v20 = v90;
          __swift_project_boxed_opaque_existential_1(v88, v89);
          v21 = COERCE_DOUBLE((*(*(v20 + 8) + 8))(v19));
          if (v22)
          {
            v23 = a3;
          }

          else
          {
            v23 = v21;
          }

          v24 = __swift_project_boxed_opaque_existential_1(v88, v89);
          v25 = (v24 + *(type metadata accessor for ActionButtonTemplateGroup() + 32));
          if (*(v25 + 8))
          {
            v26 = a4;
          }

          else
          {
            v26 = *v25;
          }

          sub_20B51CC64(v88, v87);
          v27 = __swift_mutable_project_boxed_opaque_existential_1(v87, v87[3]);
          MEMORY[0x28223BE20](v27);
          v29 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v30 + 16))(v29);
          v31 = sub_20BC98D80(v29);
          __swift_destroy_boxed_opaque_existential_1(v87);
          [v31 setTranslatesAutoresizingMaskIntoConstraints_];
          [v31 setSpacing_];
          [a2 addArrangedSubview_];
          sub_20BC96B8C(v18, v31, v23, v26);

          __swift_destroy_boxed_opaque_existential_1(v91);
          v32 = v88;
        }

        else
        {
          v32 = v91;
        }

        __swift_destroy_boxed_opaque_existential_1(v32);
        goto LABEL_11;
      }

      v84 = v87[0];
      sub_20BC99060(v87[0] + OBJC_IVAR____TtC9SeymourUI8ItemNode_action, v14, type metadata accessor for ButtonAction);
      sub_20BC99060(v14, v12, type metadata accessor for ButtonAction);
      v33 = v86;
      swift_beginAccess();
      v34 = *(v5 + v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + v33) = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_20BC05920(0, v34[2] + 1, 1, v34);
        *(v5 + v86) = v34;
      }

      v37 = v34[2];
      v36 = v34[3];
      if (v37 >= v36 >> 1)
      {
        v34 = sub_20BC05920(v36 > 1, v37 + 1, 1, v34);
      }

      v34[2] = v37 + 1;
      sub_20BC98FB0(v12, v34 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v37, type metadata accessor for ButtonAction);
      *(v5 + v86) = v34;
      swift_endAccess();
      v38 = sub_20C1380F4();
      sub_20B64E984(v38, &v92);
      v39 = v14;
      v41 = v92;
      v40 = v93;
      v42 = v97;
      if ((v97 & 0x4000000000000000) != 0)
      {
        v45 = sub_20BFBF9B0(v92, v93);
        v61 = v81;
        v62 = v80;
        v14 = v39;
      }

      else
      {
        v43 = v95;
        v77 = v94;
        v76 = v96;
        v78 = v98;
        v79 = v99;
        v44 = *(v39 + 5);
        type metadata accessor for ChevronButton();
        v45 = [swift_getObjCClassFromMetadata() buttonWithType_];
        if (v44)
        {
          v44 = sub_20C13C914();
        }

        [v45 setTitle:v44 forState:0];

        v46 = &v45[OBJC_IVAR____TtC9SeymourUI13ChevronButton_fontDescriptorOverride];
        v47 = *&v45[OBJC_IVAR____TtC9SeymourUI13ChevronButton_fontDescriptorOverride];
        v48 = *&v45[OBJC_IVAR____TtC9SeymourUI13ChevronButton_fontDescriptorOverride + 8];
        v49 = *&v45[OBJC_IVAR____TtC9SeymourUI13ChevronButton_fontDescriptorOverride + 16];
        v50 = *&v45[OBJC_IVAR____TtC9SeymourUI13ChevronButton_fontDescriptorOverride + 24];
        v51 = *&v45[OBJC_IVAR____TtC9SeymourUI13ChevronButton_fontDescriptorOverride + 32];
        v52 = *&v45[OBJC_IVAR____TtC9SeymourUI13ChevronButton_fontDescriptorOverride + 40];
        *v46 = v41;
        *(v46 + 1) = v40;
        v53 = v77;
        *(v46 + 2) = v77;
        *(v46 + 3) = v43;
        v54 = v76;
        *(v46 + 4) = v76;
        *(v46 + 5) = v42;
        *(v46 + 6) = v78;
        sub_20B81F800(v47, v48, v49, v50, v51, v52);
        v55 = &v45[OBJC_IVAR____TtC9SeymourUI13ChevronButton_symbolScaleOverride];
        *v55 = 0;
        v55[8] = 1;
        sub_20B81F7A8(v41, v40, v53, v43, v54, v42);
        v56 = [v45 traitCollection];
        sub_20B8236EC(v56);

        v57 = v79;
        [v45 setTintColor_];
        v58 = [v45 imageView];
        if (v58)
        {
          v59 = v58;
          v60 = [v58 image];

          v61 = v81;
          v62 = v80;
          v14 = v75;
          if (v60)
          {
            v63 = [v60 imageWithTintColor_];
          }

          else
          {
            v63 = 0;
          }
        }

        else
        {
          v63 = 0;
          v61 = v81;
          v62 = v80;
          v14 = v75;
        }

        [v45 setImage:v63 forState:0];
      }

      sub_20BC98F5C(&v92);
      v64 = v45;
      [v64 setTranslatesAutoresizingMaskIntoConstraints_];
      [v64 setTag_];
      strcpy(v88, "actionButton-");
      HIWORD(v88[1]) = -4864;
      if (*(v14 + 5))
      {
        v65 = *(v14 + 4);
        v66 = *(v14 + 5);
      }

      else
      {
        v87[0] = [v64 tag];
        v65 = sub_20C13DFA4();
        v66 = v67;
      }

      MEMORY[0x20F2F4230](v65, v66);

      v68 = sub_20C13C914();

      [v64 setAccessibilityIdentifier_];

      [v64 addTarget:v85 action:sel_actionButtonTapped_ forControlEvents:64];
      [v61 addArrangedSubview_];
      if ((*(v84 + OBJC_IVAR____TtC9SeymourUI8ItemNode_spacing) & 1) == 0)
      {
        break;
      }

      v69 = v61;
      v70 = *(v84 + OBJC_IVAR____TtC9SeymourUI8ItemNode_item + 24);
      v71 = *(v84 + OBJC_IVAR____TtC9SeymourUI8ItemNode_item + 32);
      __swift_project_boxed_opaque_existential_1((v84 + OBJC_IVAR____TtC9SeymourUI8ItemNode_item), v70);
      v72 = COERCE_DOUBLE((*(v71 + 8))(v70, v71));
      if ((v73 & 1) == 0)
      {
        [v61 setCustomSpacing:v64 afterView:v72];
        goto LABEL_37;
      }

LABEL_38:
      sub_20BC99130(v14, type metadata accessor for ButtonAction);
      __swift_destroy_boxed_opaque_existential_1(v91);
      a2 = v69;
      v12 = v62;
      v5 = v85;
LABEL_11:
      v17 += 40;
      if (!--v16)
      {
      }
    }

    v69 = v61;
    [v61 setCustomSpacing:v64 afterView:a3];
LABEL_37:

    goto LABEL_38;
  }

  return result;
}

uint64_t sub_20BC97530(void *a1)
{
  v3 = type metadata accessor for ButtonAction(0);
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 tag];
  v9 = OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_buttonActions;
  result = swift_beginAccess();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = *(v1 + v9);
  if (v8 >= *(v11 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_20BC99060(v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v8, v7, type metadata accessor for ButtonAction);
  v12 = v1 + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(v7, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  return sub_20BC99130(v7, type metadata accessor for ButtonAction);
}

id sub_20BC97758()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionButtonContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BC9783C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v138 = a5;
  v140 = a3;
  v141 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CFC8);
  MEMORY[0x28223BE20](v7 - 8);
  v135 = &v124 - v8;
  v9 = type metadata accessor for ActionButtonTemplateGroup();
  v134 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v136 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ButtonAction(0);
  v132 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v133 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C132EE4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v124 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CFC0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v124 - v22;
  v156 = v9;
  v157 = &off_282308AD0;
  v24 = __swift_allocate_boxed_opaque_existential_1(&v155);
  sub_20BC99060(a2, v24, type metadata accessor for ActionButtonTemplateGroup);
  v25 = *(v21 + 16);
  v142 = v23;
  v25(v23, a4, v20);
  v26 = __swift_project_boxed_opaque_existential_1(&v155, v156);
  v143 = v9;
  v27 = *(v14 + 16);
  v27(v19, &v26[*(v9 + 28)], v13);
  v144 = v20;
  sub_20C1375E4();
  (*(v14 + 8))(v19, v13);
  v139 = v21;
  v137 = v14 + 16;
  if (v152)
  {
    v28 = v152;
    v29 = a4;
  }

  else
  {
    v131 = v27;
    v30 = *(sub_20C1375A4() + 16);

    v129 = v30 == 0;
    sub_20B51CC64(&v155, &v152);
    v31 = __swift_mutable_project_boxed_opaque_existential_1(&v152, v153);
    v128 = &v124;
    MEMORY[0x28223BE20](v31);
    v33 = &v124 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v33);
    v35 = v143;
    v150 = v143;
    v151 = &off_282308AD0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v149);
    v126 = type metadata accessor for ActionButtonTemplateGroup;
    sub_20BC98FB0(v33, boxed_opaque_existential_1, type metadata accessor for ActionButtonTemplateGroup);
    type metadata accessor for GroupNode();
    v125 = swift_allocObject();
    v37 = v13;
    v38 = v35;
    v130 = a4;
    v39 = __swift_mutable_project_boxed_opaque_existential_1(&v149, v150);
    v127 = &v124;
    MEMORY[0x28223BE20](v39);
    v41 = &v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    a4 = v142;
    v9 = v17;
    v43 = v38;
    v13 = v37;
    v28 = v125;
    (*(v42 + 16))(v41);
    v147 = v43;
    v148 = &off_282308AD0;
    v44 = __swift_allocate_boxed_opaque_existential_1(&v146);
    sub_20BC98FB0(v41, v44, v126);
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    v45 = MEMORY[0x277D84F90];
    *(v28 + 72) = 0;
    *(v28 + 80) = v45;
    *(v28 + 88) = 1;
    sub_20B51C710(&v146, v28 + 16);
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    swift_beginAccess();
    *(v28 + 80) = v45;
    v29 = v130;
    *(v28 + 72) = v129;
    __swift_destroy_boxed_opaque_existential_1(&v149);
    __swift_destroy_boxed_opaque_existential_1(&v152);
    v46 = __swift_project_boxed_opaque_existential_1(&v155, v156);
    v131(v9, &v46[v43[7]], v13);
    v152 = v28;
    swift_retain_n();
    v17 = v9;
    v27 = v131;
    sub_20C1375F4();
  }

  v47 = *(v28 + 64);

  v48 = __swift_project_boxed_opaque_existential_1(&v155, v156);
  if (v47 < *(v48 + v143[10]) || (a4 = v29, v47 = *(sub_20C1375A4() + 16), , v47 <= 1))
  {
    v131 = v13;
    v55 = *(v141 + 16);
    v56 = v140;
    if (v55 <= v140)
    {
      sub_20C1375C4();
      v53 = v152;
      if (!v152)
      {
        goto LABEL_64;
      }

      (*(v139 + 8))(v142, v144);

      goto LABEL_49;
    }

    if (v140 > 0 && *(v28 + 72) == 1)
    {
      swift_beginAccess();
      v57 = *(v28 + 80);
      v58 = *(v57 + 16);
      if (v58)
      {
        sub_20B51CC64(v57 + 40 * v58 - 8, &v152);
        v59 = v56;
        v60 = v17;
        v61 = v59;
        v62 = v29;
        v47 = v153;
        v63 = v154;
        a4 = __swift_project_boxed_opaque_existential_1(&v152, v153);
        v64 = *(v63 + 16);
        v65 = v63;
        v29 = v62;
        v66 = v61;
        v17 = v60;
        v56 = v66;
        v64(0, v47, v65);
        __swift_destroy_boxed_opaque_existential_1(&v152);
      }
    }

    v67 = __swift_project_boxed_opaque_existential_1(&v155, v156);
    v68 = *(v28 + 56);
    if ((v68 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v69 = *(v67 + v143[9]);
      if (v68 < *(v69 + 16))
      {
        a4 = v29;
        sub_20B51CC64(v69 + 40 * v68 + 32, &v152);
        sub_20B51CC64(&v152, &v149);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76CFD0);
        v9 = &type metadata for ActionButtonTemplateItem;
        if (!swift_dynamicCast())
        {
          sub_20B51CC64(&v152, &v149);
          v86 = v135;
          v87 = swift_dynamicCast();
          v88 = v134[7];
          v55 = v141;
          if ((v87 & 1) == 0)
          {
            v88(v86, 1, 1, v143);
            sub_20BC990C8(v86);
            goto LABEL_64;
          }

          v89 = v143;
          v88(v86, 0, 1, v143);
          v90 = v86;
          v91 = v136;
          sub_20BC98FB0(v90, v136, type metadata accessor for ActionButtonTemplateGroup);
          v9 = v89[7];
          sub_20C1375E4();
          v47 = v145;
          if (!v145)
          {
            v135 = v9;
            v92 = v143;
            v150 = v143;
            v151 = &off_282308AD0;
            v93 = __swift_allocate_boxed_opaque_existential_1(&v149);
            sub_20BC99060(v91, v93, type metadata accessor for ActionButtonTemplateGroup);
            type metadata accessor for GroupNode();
            v47 = swift_allocObject();
            v94 = __swift_mutable_project_boxed_opaque_existential_1(&v149, v150);
            v134 = &v124;
            MEMORY[0x28223BE20](v94);
            v96 = v17;
            v97 = &v124 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v98 + 16))(v97);
            v147 = v92;
            v148 = &off_282308AD0;
            v9 = v135;
            v99 = __swift_allocate_boxed_opaque_existential_1(&v146);
            v100 = v97;
            v17 = v96;
            sub_20BC98FB0(v100, v99, type metadata accessor for ActionButtonTemplateGroup);
            *(v47 + 56) = 0;
            *(v47 + 64) = 0;
            *(v47 + 72) = 0;
            v101 = MEMORY[0x277D84F90];
            *(v47 + 80) = MEMORY[0x277D84F90];
            *(v47 + 88) = 1;
            sub_20B51C710(&v146, v47 + 16);
            *(v47 + 56) = 0;
            *(v47 + 64) = 0;
            swift_beginAccess();
            *(v47 + 80) = v101;
            *(v47 + 72) = 0;
            __swift_destroy_boxed_opaque_existential_1(&v149);
          }

          swift_beginAccess();
          a4 = *(v28 + 80);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v28 + 80) = a4;
          v29 = v17;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_30;
          }

          goto LABEL_55;
        }

        v136 = v17;
        if (v55 > v56)
        {
          v70 = v146;
          v71 = BYTE8(v146);
          v72 = v141 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v56;
          v73 = v133;
          sub_20BC99060(v72, v133, type metadata accessor for ButtonAction);
          v150 = &type metadata for ActionButtonTemplateItem;
          v151 = &off_28229DB08;
          *&v149 = v70;
          BYTE8(v149) = v71;
          v74 = type metadata accessor for ItemNode();
          v75 = swift_allocObject();
          *(v75 + OBJC_IVAR____TtC9SeymourUI8ItemNode_spacing) = 1;
          sub_20BC98FB0(v73, v75 + OBJC_IVAR____TtC9SeymourUI8ItemNode_action, type metadata accessor for ButtonAction);
          sub_20B51C710(&v149, v75 + OBJC_IVAR____TtC9SeymourUI8ItemNode_item);
          swift_beginAccess();
          v47 = *(v28 + 80);

          v76 = swift_isUniquelyReferenced_nonNull_native();
          *(v28 + 80) = v47;
          if (v76)
          {
LABEL_18:
            v78 = *(v47 + 16);
            v77 = *(v47 + 24);
            if (v78 >= v77 >> 1)
            {
              v47 = sub_20BC05B80((v77 > 1), v78 + 1, 1, v47);
            }

            v150 = v74;
            v151 = &off_2822DD288;
            *&v149 = v75;
            *(v47 + 16) = v78 + 1;
            sub_20B51C710(&v149, v47 + 40 * v78 + 32);
            *(v28 + 80) = v47;
            swift_endAccess();
            v79 = v140 + 1;
            if (v55 <= v140 + 1)
            {
              v82 = v141;
              v83 = v139;
              v109 = v131;
              if ((*(v28 + 72) & 1) == 0)
              {
                v110 = __swift_project_boxed_opaque_existential_1(&v155, v156);
                v27(v136, &v110[v143[7]], v109);
                *&v149 = 0;
                sub_20C1375F4();
              }

              sub_20C1375B4();
              v111 = v149;
              if (!v149)
              {
                goto LABEL_64;
              }

              goto LABEL_38;
            }

            v80 = *(v28 + 56);
            v81 = v80 + 1;
            v82 = v141;
            v83 = v139;
            v84 = v131;
            if (!__OFADD__(v80, 1))
            {
              v85 = __swift_project_boxed_opaque_existential_1(&v155, v156);
              if (*(*(v85 + v143[9]) + 16) > v81)
              {
                *(v28 + 56) = v81;
LABEL_46:
                sub_20B51CC64(&v155, &v149);
                goto LABEL_47;
              }

              v116 = *(v28 + 64);
              v117 = v116 + 1;
              if (!__OFADD__(v116, 1))
              {
                v118 = __swift_project_boxed_opaque_existential_1(&v155, v156);
                if (v117 < *(v118 + v143[10]) || *(v28 + 72) == 1)
                {
                  *(v28 + 56) = 0;
                  *(v28 + 64) = v117;
                  goto LABEL_46;
                }

                v123 = __swift_project_boxed_opaque_existential_1(&v155, v156);
                v27(v136, &v123[v143[7]], v84);
                *&v149 = 0;
                sub_20C1375F4();
                sub_20C1375B4();
                v111 = v149;
                if (!v149)
                {
                  goto LABEL_64;
                }

LABEL_38:
                sub_20B51CC64(v111 + 16, &v146);

                sub_20B51C710(&v146, &v149);
LABEL_47:
                v119 = __swift_project_boxed_opaque_existential_1(&v149, v150);
                v120 = v79;
                v121 = v142;
                v53 = sub_20BC9783C(v82, v119, v120, v142, v138);

                __swift_destroy_boxed_opaque_existential_1(&v152);
                (*(v83 + 8))(v121, v144);
                v54 = &v149;
                goto LABEL_48;
              }

LABEL_60:
              __break(1u);
              goto LABEL_64;
            }

            __break(1u);
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

LABEL_57:
          v47 = sub_20BC05B80(0, *(v47 + 16) + 1, 1, v47);
          *(v28 + 80) = v47;
          goto LABEL_18;
        }

LABEL_54:
        __break(1u);
LABEL_55:
        a4 = sub_20BC05B80(0, a4[2] + 1, 1, a4);
        *(v28 + 80) = a4;
LABEL_30:
        v104 = a4[2];
        v103 = a4[3];
        v75 = v104 + 1;
        if (v104 >= v103 >> 1)
        {
          a4 = sub_20BC05B80((v103 > 1), v104 + 1, 1, a4);
        }

        v150 = type metadata accessor for GroupNode();
        v151 = &off_2822F2918;
        *&v149 = v47;
        a4[2] = v75;
        sub_20B51C710(&v149, &a4[5 * v104 + 4]);
        *(v28 + 80) = a4;
        swift_endAccess();
        v105 = v136;
        v27(v29, &v136[v9], v131);
        *&v149 = v47;

        sub_20C1375F4();
        v106 = *(v28 + 56);
        v74 = (v106 + 1);
        if (__OFADD__(v106, 1))
        {
          __break(1u);
          goto LABEL_57;
        }

        v107 = __swift_project_boxed_opaque_existential_1(&v155, v156);
        v108 = v139;
        if (*(*(v107 + v143[9]) + 16) <= v74)
        {
          *(v28 + 56) = 0;
          v112 = *(v28 + 64);
          v113 = __OFADD__(v112, 1);
          v114 = v112 + 1;
          if (v113)
          {
            goto LABEL_59;
          }

          *(v28 + 64) = v114;
        }

        else
        {
          *(v28 + 56) = v74;
        }

        v115 = v142;
        v53 = sub_20BC9783C(v55, v105, v140, v142, v138);

        sub_20BC99130(v105, type metadata accessor for ActionButtonTemplateGroup);
        __swift_destroy_boxed_opaque_existential_1(&v152);
        (*(v108 + 8))(v115, v144);
LABEL_49:
        __swift_destroy_boxed_opaque_existential_1(&v155);
        return v53;
      }
    }

    __break(1u);
    goto LABEL_54;
  }

  v49 = __swift_project_boxed_opaque_existential_1(&v155, v156);
  v27(v17, &v49[v143[7]], v13);
  v152 = 0;
  sub_20C1375F4();
  sub_20C1375B4();
  v50 = v140;
  if (v146)
  {
    sub_20B51CC64(v146 + 16, &v149);

    sub_20B51C710(&v149, &v152);
    v51 = __swift_project_boxed_opaque_existential_1(&v152, v153);
    v52 = v142;
    v53 = sub_20BC9783C(v141, v51, v50, v142, v138);

    (*(v139 + 8))(v52, v144);
    v54 = &v152;
LABEL_48:
    __swift_destroy_boxed_opaque_existential_1(v54);
    goto LABEL_49;
  }

LABEL_64:
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20BC98B8C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CFC0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v17 - v8);
  v18[3] = &type metadata for ActionButtonTemplate;
  v18[4] = &off_2822E8C98;
  v10 = swift_allocObject();
  v18[0] = v10;
  v11 = *(a2 + 16);
  *(v10 + 16) = *a2;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(a2 + 32);
  if (*(a1 + 16))
  {
    v12 = __swift_project_boxed_opaque_existential_1(v18, &type metadata for ActionButtonTemplate);
    v13 = *(v12 + 1);
    v19 = *v12;
    v20 = v13;
    v21 = *(v12 + 32);
    sub_20BDF94F0(v17);
    sub_20C132EE4();
    type metadata accessor for GroupNode();
    sub_20BC99018(&qword_27C7675A0, MEMORY[0x277CC95F0]);
    sub_20C1375D4();
    v14 = __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v15 = sub_20BC9783C(a1, v14, 0, v9, a3);
    (*(v7 + 8))(v9, v6);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v15 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v15;
}

uint64_t sub_20BC98D80(uint64_t a1)
{
  v10 = type metadata accessor for ActionButtonTemplateGroup();
  v11 = &off_282308AD0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  sub_20BC98FB0(a1, boxed_opaque_existential_1, type metadata accessor for ActionButtonTemplateGroup);
  v3 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  v4 = __swift_project_boxed_opaque_existential_1(v9, v10)[1];
  v5 = v3;
  [v5 setAxis_];
  v6 = [v5 axis];

  if (!v6)
  {
    v7 = 1;
LABEL_5:
    [v5 setAlignment_];
    [v5 setDistribution_];
    __swift_destroy_boxed_opaque_existential_1(v9);
    return v5;
  }

  if (v6 == 1)
  {
    v7 = 3;
    goto LABEL_5;
  }

  sub_20C13DC94();
  MEMORY[0x20F2F4230](0xD00000000000002FLL, 0x800000020C1AEA80);
  [v5 axis];
  type metadata accessor for Axis(0);
  sub_20C13DDF4();
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20BC98FB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BC99018(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BC99060(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BC990C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CFC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BC99130(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BC99190()
{
  if (*(v0 + 200))
  {
    sub_20B51CC64(v0 + 112, v2);
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    swift_unknownObjectRetain();
    sub_20C13AE44();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  sub_20B583E6C(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1(v0 + 152);
  swift_unknownObjectRelease();
  return swift_deallocClassInstance();
}

uint64_t sub_20BC99278()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    __swift_project_boxed_opaque_existential_1((v0 + 152), *(v0 + 176));
    sub_20C138D34();
    v3 = *(v2 + OBJC_IVAR____TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController_titleLabel);
    v4 = sub_20C13C914();

    [v3 setText_];
    swift_unknownObjectRelease();
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    __swift_project_boxed_opaque_existential_1((v0 + 152), *(v0 + 176));
    sub_20C138D34();
    v7 = *(v6 + OBJC_IVAR____TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController_descriptionLabel);
    v8 = sub_20C13C914();

    [v7 setText_];
    swift_unknownObjectRelease();
  }

  return sub_20BC993D8();
}

uint64_t sub_20BC993D8()
{
  v1 = v0;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v2 = *(v48 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v48);
  v46 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v6);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v42 - v9;
  MEMORY[0x28223BE20](v10);
  v51 = &v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v42 - v13;
  v15 = sub_20C135174();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v0 + 9, v0[12]);
  sub_20C13B184();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_20BB6C780(v14);
  }

  v44 = v15;
  v45 = v16;
  v20 = *(v16 + 32);
  v43 = v18;
  v20(v18, v14, v15);
  __swift_project_boxed_opaque_existential_1(v0 + 4, v0[7]);
  v21 = v47;
  sub_20C139A34();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_20BC9A2EC;
  *(v22 + 24) = v0;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_20B7DB918;
  *(v23 + 24) = v22;
  v24 = v46;
  v25 = v48;
  (*(v2 + 16))(v46, v21, v48);
  v26 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v27 = swift_allocObject();
  (*(v2 + 32))(v27 + v26, v24, v25);
  v28 = (v27 + ((v3 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_20B5D9E70;
  v28[1] = v23;

  v29 = v50;
  sub_20C137C94();
  (*(v2 + 8))(v21, v25);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_20BC9A318;
  *(v30 + 24) = v1;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_20B5F67D4;
  *(v31 + 24) = v30;
  v33 = v52;
  v32 = v53;
  v34 = v49;
  (*(v52 + 16))(v49, v29, v53);
  v35 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v36 = swift_allocObject();
  (*(v33 + 32))(v36 + v35, v34, v32);
  v37 = (v36 + ((v7 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v37 = sub_20B5DF204;
  v37[1] = v31;

  v38 = v51;
  sub_20C137C94();
  v39 = *(v33 + 8);
  v39(v29, v32);
  v40 = sub_20C137CB4();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  v40(sub_20B52347C, v41);

  v39(v38, v32);
  return (*(v45 + 8))(v43, v44);
}

uint64_t sub_20BC99A0C(void *a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  LOBYTE(v26) = 4;
  sub_20B75B4F8();
  if (sub_20C135D14())
  {
    sub_20C13B534();
    v11 = sub_20C13BB74();
    v12 = sub_20C13D1F4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20B517000, v11, v12, "No subscription", v13, 2u);
      MEMORY[0x20F2F6A40](v13, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
  }

  else
  {
    sub_20C13B534();
    v14 = a1;
    v15 = sub_20C13BB74();
    v16 = sub_20C13D1D4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136446210;
      swift_getErrorValue();
      v19 = MEMORY[0x20F2F5850](v25[2], v25[3]);
      v21 = sub_20B51E694(v19, v20, &v26);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_20B517000, v15, v16, "Unable to fetch subsription status: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x20F2F6A40](v18, -1, -1);
      MEMORY[0x20F2F6A40](v17, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  if (v2[25])
  {
    __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
    swift_unknownObjectRetain();
    sub_20C13AE44();
    swift_unknownObjectRelease();
    v2[25] = 0;
    swift_unknownObjectRelease();
  }

  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_20B5E2E18();
  v22 = sub_20C13D374();
  swift_allocObject();
  swift_weakInit();

  v23 = sub_20C13AE34();

  v2[25] = v23;
  return swift_unknownObjectRelease();
}

uint64_t sub_20BC99D9C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BC993D8();
  }

  return result;
}

void *sub_20BC99DF4(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13B0C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  __swift_project_boxed_opaque_existential_1((v1 + 72), *(v1 + 96));
  sub_20C13B184();
  v14 = sub_20C135174();
  v15 = (*(*(v14 - 8) + 48))(v13, 1, v14);
  sub_20BB6C780(v13);
  if (v15 == 1)
  {
    sub_20C13B534();
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1D4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20B517000, v16, v17, "We do not have an eligible active identity to update service subscription status", v18, 2u);
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v2 + 72), *(v2 + 96));
    v20 = sub_20C135734();
    (*(*(v20 - 8) + 16))(v10, v26, v20);
    v21 = *MEMORY[0x277D4F640];
    v22 = sub_20C13B254();
    (*(*(v22 - 8) + 104))(v10, v21, v22);
    (*(v8 + 104))(v10, *MEMORY[0x277D4F528], v7);
    sub_20C13B2A4();
    (*(v8 + 8))(v10, v7);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v23 = [result navigationController];
      if (v23)
      {
        v24 = v23;
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20BC9A1C0(double a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 200) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767920);
  sub_20C133AA4();
  sub_20B51C710(v4, v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CFE0);
  sub_20C133AA4();
  sub_20B51C710(v4, v1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(v4, v1 + 112);
  *(v1 + 192) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v4, v1 + 152);
  return v1;
}

uint64_t sub_20BC9A31C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

char *sub_20BC9A3F4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI20ProgramMediaTagsCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI20ProgramMediaTagsCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC9SeymourUI20ProgramMediaTagsCell_tagsTextLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setAdjustsFontForContentSizeCategory_];
  v14 = *MEMORY[0x277D74418];
  v15 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v17 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v18 = swift_initStackObject();
  v19 = MEMORY[0x277D74430];
  *(v18 + 16) = xmmword_20C14F980;
  v20 = *v19;
  *(v18 + 32) = *v19;
  *(v18 + 40) = v14;
  v21 = v17;
  v22 = v20;
  v23 = sub_20B6B134C(v18);
  swift_setDeallocating();
  sub_20B520158(v18 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v23;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B7AA590(&qword_27C7618A0, type metadata accessor for AttributeName);
  v24 = sub_20C13C744();

  v25 = [v15 fontDescriptorByAddingAttributes_];

  v26 = [objc_opt_self() fontWithDescriptor:v25 size:0.0];
  [v13 setFont_];

  [v13 setLineBreakMode_];
  [v13 setNumberOfLines_];
  v27 = [objc_opt_self() whiteColor];
  [v13 setTextColor_];

  type metadata accessor for UILayoutPriority(0);
  v55 = 1144750080;
  v54 = 1065353216;
  sub_20B7AA590(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BB94();
  LODWORD(v28) = v56;
  [v13 setContentHuggingPriority:1 forAxis:v28];

  *&v5[v12] = v13;
  *&v5[OBJC_IVAR____TtC9SeymourUI20ProgramMediaTagsCell_accessibilityMediaTags] = 0;
  v53.receiver = v5;
  v53.super_class = type metadata accessor for ProgramMediaTagsCell();
  v29 = objc_msgSendSuper2(&v53, sel_initWithFrame_, a1, a2, a3, a4);
  v30 = [v29 contentView];
  v31 = OBJC_IVAR____TtC9SeymourUI20ProgramMediaTagsCell_tagsTextLabel;
  [v30 addSubview_];

  v52 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_20C14FE90;
  v33 = [*&v29[v31] leadingAnchor];
  v34 = [v29 contentView];
  v35 = [v34 leadingAnchor];

  v36 = [v33 constraintEqualToAnchor_];
  *(v32 + 32) = v36;
  v37 = [*&v29[v31] trailingAnchor];
  v38 = [v29 contentView];
  v39 = [v38 trailingAnchor];

  v40 = [v37 constraintEqualToAnchor_];
  *(v32 + 40) = v40;
  v41 = [*&v29[v31] topAnchor];
  v42 = [v29 contentView];
  v43 = [v42 topAnchor];

  v44 = [v41 constraintEqualToAnchor_];
  *(v32 + 48) = v44;
  v45 = [*&v29[v31] bottomAnchor];
  v46 = [v29 contentView];

  v47 = [v46 bottomAnchor];
  v48 = [v45 constraintEqualToAnchor_];

  v54 = 1065353216;
  v55 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v49) = v56;
  [v48 setPriority_];
  *(v32 + 56) = v48;
  sub_20B5E29D0();
  v50 = sub_20C13CC54();

  [v52 activateConstraints_];

  return v29;
}

id sub_20BC9ADF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgramMediaTagsCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ProgramMediaTagsCell()
{
  result = qword_281102C28;
  if (!qword_281102C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BC9AEF8()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BC9AFAC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI20ProgramMediaTagsCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BC9AFF8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20ProgramMediaTagsCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BC9B050(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20ProgramMediaTagsCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BC9B0B4(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x31)
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = [v1 tagsTextLabel];
    [v9 setAttributedText_];

    v23 = sub_20C13CC54();
    [v1 setAccessibilityMediaTags_];
    v10 = v23;
  }

  else
  {
    sub_20C13B534();

    v11 = v1;
    v12 = sub_20C13BB74();
    v13 = sub_20C13D1D4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = a1;
      v25 = v23;
      *v14 = 138543618;
      *(v14 + 4) = v11;
      *v15 = v11;
      *(v14 + 12) = 2082;
      v16 = sub_20B5F66D0();
      v17 = v11;
      v18 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v16);
      v20 = sub_20B51E694(v18, v19, &v25);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_20B517000, v12, v13, "Attempted to configure %{public}@ with item: %{public}s", v14, 0x16u);
      sub_20B520158(v15, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v15, -1, -1);
      v21 = v23;
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x20F2F6A40](v21, -1, -1);
      MEMORY[0x20F2F6A40](v14, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

void sub_20BC9B384()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI20ProgramMediaTagsCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI20ProgramMediaTagsCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC9SeymourUI20ProgramMediaTagsCell_tagsTextLabel;
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setAdjustsFontForContentSizeCategory_];
  v6 = *MEMORY[0x277D74418];
  v7 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v9 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_20C14F980;
  v11 = *MEMORY[0x277D74430];
  *(v10 + 32) = *MEMORY[0x277D74430];
  *(v10 + 40) = v6;
  v12 = v9;
  v13 = v11;
  v14 = sub_20B6B134C(v10);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v14;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B7AA590(&qword_27C7618A0, type metadata accessor for AttributeName);
  v15 = sub_20C13C744();

  v16 = [v7 fontDescriptorByAddingAttributes_];

  v17 = [objc_opt_self() fontWithDescriptor:v16 size:0.0];
  [v5 setFont_];

  [v5 setLineBreakMode_];
  [v5 setNumberOfLines_];
  v18 = [objc_opt_self() whiteColor];
  [v5 setTextColor_];

  type metadata accessor for UILayoutPriority(0);
  sub_20B7AA590(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BB94();
  LODWORD(v19) = v20;
  [v5 setContentHuggingPriority:1 forAxis:v19];

  *(v1 + v4) = v5;
  *(v1 + OBJC_IVAR____TtC9SeymourUI20ProgramMediaTagsCell_accessibilityMediaTags) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BC9B78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  sub_20B52F9E8(a1, v20 - v9, &unk_27C762220);
  v11 = sub_20C13CDF4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_20B520158(v10, &unk_27C762220);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_20C13CD24();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_20C13CDE4();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_20BC9B9A4()
{
  v1[5] = v0;
  v2 = sub_20C134104();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BC9BAB4, 0, 0);
}

uint64_t sub_20BC9BAB4()
{
  (*(v0[7] + 56))(v0[10], 1, 1, v0[6]);

  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_20BC9BB80;
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[5];

  return sub_20BC9CA60(v2, v3, v4, v4);
}

uint64_t sub_20BC9BB80()
{
  v1 = *(*v0 + 80);

  sub_20B520158(v1, &qword_27C761800);

  return MEMORY[0x2822009F8](sub_20BC9BCA8, 0, 0);
}

uint64_t sub_20BC9BCA8()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  v6 = OBJC_IVAR____TtC9SeymourUI27FilterPropertyStringBuilder_configuration;
  swift_beginAccess();
  sub_20BBAED30(v1, v5 + v6);
  swift_endAccess();
  sub_20B52F9E8(v5 + v6, v2, &qword_27C761800);
  v7 = (*(v4 + 48))(v2, 1, v3);
  v8 = v0[9];
  if (v7)
  {
    sub_20B520158(v0[9], &qword_27C761800);
    v9 = MEMORY[0x277D84FA0];
  }

  else
  {
    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[6];
    (*(v11 + 16))(v10, v0[9], v12);
    sub_20B520158(v8, &qword_27C761800);
    v9 = sub_20C134084();
    (*(v11 + 8))(v10, v12);
  }

  *(v0[5] + OBJC_IVAR____TtC9SeymourUI27FilterPropertyStringBuilder_durations) = v9;

  v13 = v0[1];

  return v13();
}