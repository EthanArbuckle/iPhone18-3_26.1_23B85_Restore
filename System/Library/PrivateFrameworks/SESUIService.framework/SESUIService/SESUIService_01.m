uint64_t sub_2628F6540()
{
  v1 = v0[16];
  v2 = v0[17] + 16;
  v3 = *&v1[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot];
  *&v1[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot] = v0[24];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  sub_262906E24();
  v4 = sub_26294DED8();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_262906EA8;
  *(v6 + 24) = v5;
  v0[6] = sub_262906EC0;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2628F4498;
  v0[5] = &block_descriptor;
  v7 = _Block_copy(v0 + 2);
  v8 = v0[7];
  v9 = v1;

  dispatch_sync(v4, v7);

  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v11 = v0[20];

    v12 = v0[1];

    return v12();
  }

  return result;
}

uint64_t sub_2628F6704()
{
  v1 = *(v0 + 168);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  if (qword_27FF2E7C0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 184);
  v3 = sub_26294CE48();
  __swift_project_value_buffer(v3, qword_27FF314B0);
  v4 = v2;
  v5 = sub_26294CE28();
  v6 = sub_26294DEA8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 184);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2628DB000, v5, v6, "Error %@ encountered while deleting credentials", v8, 0xCu);
    sub_2628DF6F0(v9, &qword_27FF2EDF8, &qword_26294F460);
    MEMORY[0x26672DCE0](v9, -1, -1);
    MEMORY[0x26672DCE0](v8, -1, -1);
  }

  v12 = *(v0 + 128);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 200) = 0;
  v13 = v12;
  sub_26294D008();
  v14 = v13;
  v15 = sub_26294CE28();
  v16 = sub_26294DE98();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 128);
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    *(v18 + 4) = *(v0 + 201);

    _os_log_impl(&dword_2628DB000, v15, v16, "Controller loading %{BOOL}d", v18, 8u);
    MEMORY[0x26672DCE0](v18, -1, -1);
    v19 = *(v0 + 128);
  }

  else
  {

    v19 = *(v0 + 128);
    v15 = v19;
  }

  v20 = (v19 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion);
  v21 = *(&v19->isa + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion);
  v22 = *(v0 + 184);
  if (v21)
  {
    v23 = v20[1];

    v21(0);

    sub_262905484(v21);
  }

  else
  {
  }

  v24 = *v20;
  v25 = v20[1];
  *v20 = 0;
  v20[1] = 0;
  sub_262905484(v24);
  v26 = *(v0 + 160);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2628F6A28(char *a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_secureElementCredentials;
  swift_beginAccess();
  v5 = sub_26290463C(&a1[v4], a2);
  v6 = *&a1[v4];
  if (v6 >> 62)
  {
    v20 = v5;
    v7 = sub_26294E008();
    v5 = v20;
    if (v7 >= v20)
    {
LABEL_3:
      sub_2629065C0(v5, v7);
      swift_endAccess();
      sub_2628E6C54();
      swift_getKeyPath();
      swift_getKeyPath();
      v21 = 0;
      a1 = a1;
      sub_26294D008();
      if (qword_27FF2E7C0 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 >= v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_13:
  swift_once();
LABEL_4:
  v8 = sub_26294CE48();
  __swift_project_value_buffer(v8, qword_27FF314B0);
  v9 = a1;
  v10 = sub_26294CE28();
  v11 = sub_26294DE98();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    *(v12 + 4) = v21;

    _os_log_impl(&dword_2628DB000, v10, v11, "Controller loading %{BOOL}d", v12, 8u);
    MEMORY[0x26672DCE0](v12, -1, -1);
  }

  else
  {

    v10 = v9;
  }

  v13 = (v9 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion);
  v14 = *(&v9->isa + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion);
  if (v14)
  {
    v15 = v13[1];

    v14(1);
    sub_262905484(v14);
    v16 = *v13;
  }

  else
  {
    v16 = 0;
  }

  v17 = v13[1];
  *v13 = 0;
  v13[1] = 0;
  sub_262905484(v16);
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = v9;
  return sub_26294D008();
}

uint64_t sub_2628F6CF4(uint64_t *a1, uint64_t *a2)
{
  v34 = sub_26294C538();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v34);
  v33 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v32 = v25 - v8;
  v36 = sub_26294C9D8();
  v9 = *(v36 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v36);
  v31 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  swift_beginAccess();
  v12 = *a2;
  v35 = *(*a2 + 16);
  v27 = (v4 + 8);
  v28 = v9 + 16;
  v25[2] = v9 + 8;
  v26 = v9;

  v14 = 0;
  v29 = v12;
  v15 = v31;
  while (1)
  {
    v16 = v14;
    if (v35 == v14)
    {
LABEL_5:
      v24 = v35 != v16;

      return v24;
    }

    if (v14 >= *(v12 + 16))
    {
      break;
    }

    v17 = v26;
    (*(v26 + 16))(v15, v12 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v14++, v36);
    v18 = sub_26294C948();
    v19 = v32;
    sub_26294DCA8();

    v20 = v33;
    sub_26294DCA8();
    LOBYTE(v18) = sub_26294C518();
    v21 = *v27;
    v22 = v20;
    v23 = v34;
    (*v27)(v22, v34);
    v21(v19, v23);
    result = (*(v17 + 8))(v15, v36);
    v12 = v29;
    if (v18)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

size_t sub_2628F6FBC()
{
  v1 = v0;
  v2 = sub_26294CA28();
  v3 = *(v2 - 8);
  v31 = v2;
  v32 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v30 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v33 & 1) == 0)
  {
    v7 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
    swift_beginAccess();
    v29 = *(*&v0[v7] + 16);
    if (v29)
    {
      v8 = 0;
      v28[0] = v32 + 8;
      v28[1] = v32 + 16;
      while (1)
      {
        result = swift_beginAccess();
        v9 = *&v1[v7];
        if (v8 >= *(v9 + 16))
        {
          break;
        }

        v10 = v31;
        v11 = v32;
        v12 = v30;
        (*(v32 + 16))(v30, v9 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v8, v31);
        v13 = sub_26294C928();
        (*(v11 + 8))(v12, v10);
        swift_endAccess();
        v14 = *(v13 + 16);

        if (v14)
        {
          swift_beginAccess();
          v15 = 0;
          while (1)
          {
            v16 = *&v1[v7];
            result = swift_isUniquelyReferenced_nonNull_native();
            *&v1[v7] = v16;
            if ((result & 1) == 0)
            {
              result = sub_26291DB84(v16);
              v16 = result;
              *&v1[v7] = result;
            }

            if (v8 >= v16[2])
            {
              break;
            }

            v17 = sub_26294C918();
            v19 = v18;
            v20 = *v18;
            result = swift_isUniquelyReferenced_nonNull_native();
            *v19 = v20;
            if ((result & 1) == 0)
            {
              result = sub_26291DBD0(v20);
              v20 = result;
              *v19 = result;
            }

            if (v15 >= v20[2])
            {
              goto LABEL_22;
            }

            v21 = *(sub_26294C9D8() - 8);
            v22 = v20 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v15;
            sub_26294C9C8();
            v17(&v33, 0);
            if (v14 == ++v15)
            {
              swift_endAccess();
              goto LABEL_4;
            }
          }

          __break(1u);
LABEL_22:
          __break(1u);
          break;
        }

LABEL_4:
        if (++v8 == v29)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:
      v23 = &v1[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
      v24 = *&v1[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
      if (v24)
      {
        v25 = v23[1];

        v24(0);
        sub_262905484(v24);
        v26 = *v23;
      }

      else
      {
        v26 = 0;
      }

      v27 = v23[1];
      *v23 = 0;
      v23[1] = 0;
      sub_262905484(v26);
      swift_getKeyPath();
      swift_getKeyPath();
      v33 = 0;
      v34 = 1;
      v1;
      sub_26294D008();
      return sub_2628E6C54();
    }
  }

  return result;
}

uint64_t sub_2628F739C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v10 & 1) == 0)
  {
    v6 = &v2[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
    v7 = *&v2[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
    v8 = *&v2[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion + 8];
    *v6 = a1;
    v6[1] = a2;
    sub_262906C04(a1);
    sub_262905484(v7);
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v2;
    return sub_26294D008();
  }

  return result;
}

uint64_t sub_2628F74B0()
{
  v1 = (*(v0 + 64) + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_managementHandler);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 40);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_2628F75E0;

  return v8(v2, v3);
}

uint64_t sub_2628F75E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_2628F78B8;
  }

  else
  {
    *(v4 + 88) = a1;
    v7 = sub_2628F7708;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2628F7708()
{
  v1 = v0[8];
  v2 = *&v1[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot];
  *&v1[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot] = v0[11];

  sub_262906E24();
  v3 = sub_26294DED8();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2629070B0;
  *(v5 + 24) = v4;
  v0[6] = sub_262907108;
  v0[7] = v5;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2628F4498;
  v0[5] = &block_descriptor_146;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];
  v8 = v1;

  dispatch_sync(v3, v6);

  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }

  return result;
}

uint64_t sub_2628F78B8()
{
  if (qword_27FF2E7C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_26294CE48();
  __swift_project_value_buffer(v2, qword_27FF314B0);
  v3 = v1;
  v4 = sub_26294CE28();
  v5 = sub_26294DEA8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2628DB000, v4, v5, "Error %@ encountered while offloading Muirfield", v7, 0xCu);
    sub_2628DF6F0(v8, &qword_27FF2EDF8, &qword_26294F460);
    MEMORY[0x26672DCE0](v8, -1, -1);
    MEMORY[0x26672DCE0](v7, -1, -1);
  }

  v11 = *(v0 + 64);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 96) = 0;
  v12 = v11;
  sub_26294D008();
  v13 = v12;
  v14 = sub_26294CE28();
  v15 = sub_26294DE98();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 64);
  if (v16)
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    *(v18 + 4) = *(v0 + 97);

    _os_log_impl(&dword_2628DB000, v14, v15, "Controller loading %{BOOL}d", v18, 8u);
    MEMORY[0x26672DCE0](v18, -1, -1);
  }

  else
  {
  }

  v19 = *(v0 + 64) + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion;
  v20 = *v19;
  v21 = *(v0 + 80);
  if (*v19)
  {
    v22 = *(v19 + 8);

    v20(0);

    sub_262905484(v20);
  }

  else
  {
  }

  v23 = *v19;
  v24 = *(v19 + 8);
  *v19 = 0;
  *(v19 + 8) = 0;
  sub_262905484(v23);
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2628F7BBC(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  sub_26294D008();
  sub_2628E6C54();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_26294D008();
  if (qword_27FF2E7C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26294CE48();
  __swift_project_value_buffer(v4, qword_27FF314B0);
  v5 = v3;
  v6 = sub_26294CE28();
  v7 = sub_26294DE98();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    *(v8 + 4) = v15;

    _os_log_impl(&dword_2628DB000, v6, v7, "Controller loading %{BOOL}d", v8, 8u);
    MEMORY[0x26672DCE0](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  v9 = (v5 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion);
  v10 = *(&v5->isa + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion);
  if (v10)
  {
    v11 = v9[1];

    v10(1);
    sub_262905484(v10);
    v12 = *v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = v9[1];
  *v9 = 0;
  v9[1] = 0;
  return sub_262905484(v12);
}

uint64_t sub_2628F7DF4()
{
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE60, &qword_26294F4D0);
  v1 = *(*(v94 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v94);
  v93 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v92 = &v82 - v4;
  v91 = sub_26294CBA8();
  v95 = *(v91 - 8);
  v5 = *(v95 + 64);
  MEMORY[0x28223BE20](v91);
  v90 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_26294DC58();
  v7 = *(v109 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v109);
  v89 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v88 = &v82 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v82 - v13;
  v108 = sub_26294CB98();
  v15 = *(v108 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v108);
  v107 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v82 - v19;
  v21 = sub_262905730(MEMORY[0x277D84F90]);
  v22 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_passes;
  swift_beginAccess();
  v83 = v0;
  v23 = *(v0 + v22);
  v24 = *(v23 + 16);
  v105 = v7;
  v103 = v24;
  if (v24)
  {
    v99 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v102 = v23 + v99;
    v106 = v15 + 16;
    v104 = v7 + 16;
    v87 = v7 + 32;
    v86 = *MEMORY[0x277D49140];
    v85 = *MEMORY[0x277D49240];
    v84 = (v7 + 104);
    v97 = (v15 + 8);
    v98 = (v7 + 8);
    v96 = (v15 + 32);

    v26 = 0;
    v100 = v25;
    v101 = v15;
    while (1)
    {
      if (v26 >= *(v25 + 16))
      {
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
LABEL_52:
        __break(1u);
LABEL_53:
        result = sub_26294E078();
        __break(1u);
        return result;
      }

      v27 = *(v15 + 72);
      v28 = *(v15 + 16);
      v28(v20, v102 + v27 * v26, v108);
      v29 = sub_26294CAD8();
      if (*(v29 + 16))
      {
        v30 = v88;
        v31 = v109;
        (*(v7 + 16))(v88, v29 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v109);

        (*(v7 + 32))(v14, v30, v31);
      }

      else
      {

        v32 = sub_26294DB58();
        (*(*(v32 - 8) + 104))(v14, v86, v32);
        (*v84)(v14, v85, v109);
      }

      v28(v107, v20, v108);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110 = v21;
      v35 = sub_262902240(v14);
      v36 = *(v21 + 16);
      v37 = (v34 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        goto LABEL_45;
      }

      v39 = v34;
      if (*(v21 + 24) >= v38)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v34 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          sub_262904044(MEMORY[0x277D49298], &qword_27FF2EE68, &qword_26294F4D8);
          v21 = v110;
          if ((v39 & 1) == 0)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        sub_2629029E4(v38, isUniquelyReferenced_nonNull_native);
        v21 = v110;
        v40 = sub_262902240(v14);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_53;
        }

        v35 = v40;
        if ((v39 & 1) == 0)
        {
LABEL_14:
          *(v21 + 8 * (v35 >> 6) + 64) |= 1 << v35;
          (*(v7 + 16))(*(v21 + 48) + *(v7 + 72) * v35, v14, v109);
          *(*(v21 + 56) + 8 * v35) = MEMORY[0x277D84F90];
          v42 = *(v21 + 16);
          v43 = __OFADD__(v42, 1);
          v44 = v42 + 1;
          if (v43)
          {
            goto LABEL_52;
          }

          *(v21 + 16) = v44;
        }
      }

      v45 = *(v21 + 56);
      v46 = *(v45 + 8 * v35);
      v47 = swift_isUniquelyReferenced_nonNull_native();
      *(v45 + 8 * v35) = v46;
      if ((v47 & 1) == 0)
      {
        v46 = sub_26291D74C(0, v46[2] + 1, 1, v46);
        *(v45 + 8 * v35) = v46;
      }

      v49 = v46[2];
      v48 = v46[3];
      if (v49 >= v48 >> 1)
      {
        *(v45 + 8 * v35) = sub_26291D74C(v48 > 1, v49 + 1, 1, v46);
      }

      ++v26;
      (*v98)(v14, v109);
      v50 = v108;
      (*v97)(v20, v108);
      v51 = *(v45 + 8 * v35);
      *(v51 + 16) = v49 + 1;
      (*v96)(v51 + v99 + v49 * v27, v107, v50);
      v7 = v105;
      v25 = v100;
      v15 = v101;
      if (v103 == v26)
      {

        break;
      }
    }
  }

  v52 = *(v21 + 16);
  v53 = MEMORY[0x277D84F90];
  if (v52)
  {
    v110 = MEMORY[0x277D84F90];
    sub_2628FBF74(0, v52, 0);
    v53 = v110;
    v54 = v21 + 64;
    v55 = -1 << *(v21 + 32);
    v56 = sub_26294DF18();
    v57 = 0;
    v58 = *(v21 + 36);
    v106 = v7 + 16;
    v103 = v95 + 32;
    v104 = v7 + 32;
    v98 = (v21 + 72);
    v99 = v52;
    v100 = v58;
    v101 = v21 + 64;
    v102 = v21;
    while ((v56 & 0x8000000000000000) == 0 && v56 < 1 << *(v21 + 32))
    {
      v60 = v56 >> 6;
      if ((*(v54 + 8 * (v56 >> 6)) & (1 << v56)) == 0)
      {
        goto LABEL_47;
      }

      if (v58 != *(v21 + 36))
      {
        goto LABEL_48;
      }

      v107 = v57;
      v108 = 1 << v56;
      v61 = *(v7 + 16);
      v62 = v92;
      v63 = v109;
      v61(v92, *(v21 + 48) + *(v7 + 72) * v56, v109);
      v64 = *(*(v21 + 56) + 8 * v56);
      v65 = *(v7 + 32);
      v66 = v93;
      v67 = v62;
      v68 = v90;
      v65(v93, v67, v63);
      *(v66 + *(v94 + 48)) = v64;
      v61(v89, v66, v63);
      swift_bridgeObjectRetain_n();
      sub_26294CA58();
      sub_2628DF6F0(v66, &qword_27FF2EE60, &qword_26294F4D0);
      v110 = v53;
      v70 = *(v53 + 16);
      v69 = *(v53 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_2628FBF74(v69 > 1, v70 + 1, 1);
        v53 = v110;
      }

      *(v53 + 16) = v70 + 1;
      (*(v95 + 32))(v53 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v70, v68, v91);
      v21 = v102;
      v59 = 1 << *(v102 + 32);
      if (v56 >= v59)
      {
        goto LABEL_49;
      }

      v54 = v101;
      v71 = *(v101 + 8 * v60);
      if ((v71 & v108) == 0)
      {
        goto LABEL_50;
      }

      LODWORD(v58) = v100;
      if (v100 != *(v102 + 36))
      {
        goto LABEL_51;
      }

      v72 = v71 & (-2 << (v56 & 0x3F));
      if (v72)
      {
        v59 = __clz(__rbit64(v72)) | v56 & 0x7FFFFFFFFFFFFFC0;
        v7 = v105;
      }

      else
      {
        v73 = v60 << 6;
        v74 = v60 + 1;
        v75 = &v98[v60];
        v7 = v105;
        while (v74 < (v59 + 63) >> 6)
        {
          v77 = *v75++;
          v76 = v77;
          v73 += 64;
          ++v74;
          if (v77)
          {
            sub_26290571C(v56, v100, 0);
            v59 = __clz(__rbit64(v76)) + v73;
            goto LABEL_27;
          }
        }

        sub_26290571C(v56, v100, 0);
      }

LABEL_27:
      v57 = v107 + 1;
      v56 = v59;
      if (v107 + 1 == v99)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_46;
  }

LABEL_43:
  v78 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
  v79 = v83;
  swift_beginAccess();
  v80 = *(v79 + v78);
  *(v79 + v78) = v53;
}

uint64_t sub_2628F8828()
{
  v169 = sub_26294C5F8();
  v160 = *(v169 - 8);
  v1 = *(v160 + 64);
  MEMORY[0x28223BE20](v169);
  v168 = &v147 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_26294DC28();
  v157 = *(v167 - 8);
  v3 = *(v157 + 8);
  MEMORY[0x28223BE20](v167);
  v166 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECF8, &qword_26294F260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v185 = &v147 - v7;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490);
  v187 = *(v180 - 8);
  v8 = *(v187 + 64);
  MEMORY[0x28223BE20](v180);
  v197 = &v147 - v9;
  v179 = sub_26294CA28();
  v182 = *(v179 - 8);
  v10 = *(v182 + 64);
  MEMORY[0x28223BE20](v179);
  v178 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_26294C9D8();
  v181 = *(v195 - 8);
  v12 = *(v181 + 64);
  v13 = MEMORY[0x28223BE20](v195);
  v194 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v193 = &v147 - v15;
  v199 = sub_26294C538();
  v170 = *(v199 - 8);
  v16 = *(v170 + 64);
  v17 = MEMORY[0x28223BE20](v199);
  v196 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v200 = &v147 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE18, &qword_26294F498);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v152 = &v147 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE20, &qword_26294F4A0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v183 = &v147 - v28;
  v29 = sub_26294C7F8();
  v171 = *(v29 - 8);
  v30 = *(v171 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v188 = &v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v186 = &v147 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v164 = &v147 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v175 = &v147 - v38;
  MEMORY[0x28223BE20](v37);
  v190 = (&v147 - v39);
  v198 = 0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECC0, &qword_26294F230);
  sub_26294DC78();
  v40 = LOBYTE(v201[0]);
  swift_endAccess();
  v41 = v0;
  v42 = *(v0 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot);
  if (v40 == 1)
  {
    v43 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_passes;
    swift_beginAccess();
    v44 = *(v0 + v43);
    v45 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_secureElementCredentials;
    swift_beginAccess();
    v46 = *(v41 + v45);
    v203 = sub_26294C5D8();
    v204 = MEMORY[0x277D48DE8];
    __swift_allocate_boxed_opaque_existential_1(&v202);
    v47 = v42;

    sub_26294C5C8();
  }

  else
  {
    v203 = sub_26294DBE8();
    v204 = MEMORY[0x277D49078];
    v202 = v42;
    v48 = v42;
  }

  v184 = v41;
  v49 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v50 = *(v41 + v49);
  v151 = v49;
  *(v41 + v49) = MEMORY[0x277D84F90];

  v51 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_secureElementCredentials;
  swift_beginAccess();
  v52 = *(v41 + v51);
  isUniquelyReferenced_nonNull_native = v183;
  if (v52 >> 62)
  {
    goto LABEL_128;
  }

  v54 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v55 = v24;
  v158 = v24;
  v192 = v29;
  if (v54)
  {
    v174 = v52 & 0xC000000000000001;
    v162 = v52 & 0xFFFFFFFFFFFFFF8;
    v161 = (v52 + 32);
    v189 = (v171 + 48);
    v191 = (v171 + 32);
    v172 = v171 + 16;
    v163 = (v171 + 8);
    v165 = v52;

    v153 = 0;
    v56 = 0;
    v24 = MEMORY[0x277D84F98];
    v173 = v54;
    do
    {
      if (v174)
      {
        v52 = MEMORY[0x26672D5B0](v56, v165);
        v57 = __OFADD__(v56, 1);
        v58 = (v56 + 1);
        if (v57)
        {
          goto LABEL_122;
        }
      }

      else
      {
        if (v56 >= *(v162 + 16))
        {
          goto LABEL_126;
        }

        v52 = v161[v56];
        v57 = __OFADD__(v56, 1);
        v58 = (v56 + 1);
        if (v57)
        {
          goto LABEL_122;
        }
      }

      v176 = v52;
      v52 = sub_26294DCB8();
      v59 = v52;
      if (v52 >> 62)
      {
        v52 = sub_26294E008();
        v60 = v52;
      }

      else
      {
        v60 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v177 = v58;
      v159 = v24;
      if (v60)
      {
        v24 = 0;
        v61 = MEMORY[0x277D84F90];
        while (1)
        {
          if ((v59 & 0xC000000000000001) != 0)
          {
            v52 = MEMORY[0x26672D5B0](v24, v59);
            v62 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              goto LABEL_114;
            }
          }

          else
          {
            if (v24 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_115;
            }

            v52 = *(v59 + 8 * v24 + 32);
            v62 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
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
              v146 = v52;
              v54 = sub_26294E008();
              v52 = v146;
              goto LABEL_6;
            }
          }

          sub_26294C7B8();
          if ((*v189)(isUniquelyReferenced_nonNull_native, 1, v29) == 1)
          {
            v52 = sub_2628DF6F0(isUniquelyReferenced_nonNull_native, &qword_27FF2EE20, &qword_26294F4A0);
          }

          else
          {
            v63 = *v191;
            (*v191)(v190, isUniquelyReferenced_nonNull_native, v29);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v61 = sub_26291D774(0, *(v61 + 2) + 1, 1, v61);
            }

            v65 = *(v61 + 2);
            v64 = *(v61 + 3);
            if (v65 >= v64 >> 1)
            {
              v61 = sub_26291D774(v64 > 1, v65 + 1, 1, v61);
            }

            *(v61 + 2) = v65 + 1;
            v66 = &v61[((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v65];
            v29 = v192;
            v52 = v63(v66, v190, v192);
            isUniquelyReferenced_nonNull_native = v183;
          }

          ++v24;
          if (v62 == v60)
          {
            goto LABEL_35;
          }
        }
      }

      v61 = MEMORY[0x277D84F90];
LABEL_35:

      if (*(v61 + 2))
      {
        v67 = v171;
        v68 = *(v171 + 16);
        v69 = v164;
        v68(v164, &v61[(*(v171 + 80) + 32) & ~*(v171 + 80)], v29);

        v70 = v175;
        (*(v67 + 32))(v175, v69, v29);
        sub_262905484(v153);
        v71 = v159;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v201[0] = v71;
        v73 = sub_26290216C(v70);
        v74 = *(v71 + 16);
        v75 = (v72 & 1) == 0;
        v52 = v74 + v75;
        v55 = v158;
        if (__OFADD__(v74, v75))
        {
          goto LABEL_123;
        }

        v76 = v72;
        if (*(v71 + 24) >= v52)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_262904044(MEMORY[0x277D48E80], &qword_27FF2EE38, &qword_26294F4B8);
          }
        }

        else
        {
          sub_26290319C(v52, isUniquelyReferenced_nonNull_native);
          v77 = sub_26290216C(v175);
          if ((v76 & 1) != (v78 & 1))
          {
            goto LABEL_131;
          }

          v73 = v77;
        }

        isUniquelyReferenced_nonNull_native = v183;
        v24 = v201[0];
        if ((v76 & 1) == 0)
        {
          v79 = v186;
          v68(v186, v175, v29);
          sub_262903D30(v73, v79, MEMORY[0x277D84F90], v24, MEMORY[0x277D48E80]);
        }

        v80 = (*(v24 + 56) + 8 * v73);
        v81 = v176;
        MEMORY[0x26672D3D0]();
        if (*((*v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v82 = *((*v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_26294DDD8();
        }

        sub_26294DDF8();

        v52 = (*v163)(v175, v29);
        v153 = sub_2629070CC;
      }

      else
      {

        v55 = v158;
        v24 = v159;
      }

      v56 = v177;
    }

    while (v177 != v173);
  }

  else
  {
    v153 = 0;
    v24 = MEMORY[0x277D84F98];
  }

  v83 = v24 + 64;
  v84 = 1 << *(v24 + 32);
  v85 = -1;
  if (v84 < 64)
  {
    v85 = ~(-1 << v84);
  }

  v86 = v85 & *(v24 + 64);
  v176 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_credentialConfigs;
  v148 = (v84 + 63) >> 6;
  v190 = (v171 + 16);
  v154 = (v171 + 32);
  v177 = (v181 + 16);
  v191 = (v170 + 16);
  v174 = v181 + 8;
  v173 = (v170 + 8);
  v172 = v181 + 32;
  v165 = (v157 + 8);
  v164 = "storage.sheet.cancelled.count";
  LODWORD(v163) = *MEMORY[0x277D48E08];
  v162 = v160 + 104;
  v161 = (v160 + 8);
  v175 = (v182 + 32);
  v149 = (v171 + 8);

  v157 = 0;
  v87 = 0;
  v159 = v24;
  v150 = v24 + 64;
  while (1)
  {
    if (v86)
    {
      v155 = v87;
      v88 = v87;
LABEL_64:
      v156 = (v86 - 1) & v86;
      v91 = __clz(__rbit64(v86)) | (v88 << 6);
      isUniquelyReferenced_nonNull_native = v171;
      (*(v171 + 16))(v186, *(v24 + 48) + *(v171 + 72) * v91, v192);
      v92 = *(*(v24 + 56) + 8 * v91);
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE28, &qword_26294F4A8);
      v94 = *(v93 + 48);
      v55 = v158;
      (*(isUniquelyReferenced_nonNull_native + 32))();
      *(v55 + v94) = v92;
      (*(*(v93 - 8) + 56))(v55, 0, 1, v93);
    }

    else
    {
      if (v148 <= v87 + 1)
      {
        v89 = v87 + 1;
      }

      else
      {
        v89 = v148;
      }

      v90 = v89 - 1;
      while (1)
      {
        v88 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          goto LABEL_121;
        }

        if (v88 >= v148)
        {
          break;
        }

        v86 = *(v83 + 8 * v88);
        ++v87;
        if (v86)
        {
          v155 = v88;
          goto LABEL_64;
        }
      }

      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE28, &qword_26294F4A8);
      (*(*(v120 - 8) + 56))(v55, 1, 1, v120);
      v156 = 0;
      v155 = v90;
    }

    v95 = v152;
    sub_262906F00(v55, v152, &qword_27FF2EE18, &qword_26294F498);
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE28, &qword_26294F4A8);
    if ((*(*(v96 - 8) + 48))(v95, 1, v96) == 1)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v202);
      sub_262905484(v153);
      return sub_262905484(v157);
    }

    v24 = *(v95 + *(v96 + 48));
    (*v154)(v188, v95, v192);
    v97 = v157;
    if (v24 >> 62)
    {
      v52 = sub_26294E008();
      if (!v52)
      {
        goto LABEL_93;
      }

LABEL_68:
      v98 = 0;
      v189 = (v24 & 0xC000000000000001);
      v160 = v24 & 0xFFFFFFFFFFFFFF8;
      v99 = MEMORY[0x277D84F98];
      v183 = v52;
      while (1)
      {
        if (v189)
        {
          v52 = MEMORY[0x26672D5B0](v98, v24);
        }

        else
        {
          if (v98 >= *(v160 + 16))
          {
            goto LABEL_120;
          }

          v52 = *(v24 + 8 * v98 + 32);
        }

        v100 = v52;
        v101 = (v98 + 1);
        if (__OFADD__(v98, 1))
        {
          goto LABEL_116;
        }

        isUniquelyReferenced_nonNull_native = v200;
        sub_26294DC98();
        v102 = v100;
        v103 = v193;
        sub_26294C958();
        (*v177)(v194, v103, v195);
        sub_262905484(v97);
        v104 = swift_isUniquelyReferenced_nonNull_native();
        v201[0] = v99;
        v29 = sub_262902314(isUniquelyReferenced_nonNull_native);
        v106 = v99[2];
        v107 = (v105 & 1) == 0;
        v52 = v106 + v107;
        if (__OFADD__(v106, v107))
        {
          goto LABEL_118;
        }

        isUniquelyReferenced_nonNull_native = v105;
        if (v99[3] >= v52)
        {
          if (v104)
          {
            if ((v105 & 1) == 0)
            {
              goto LABEL_81;
            }
          }

          else
          {
            sub_262904044(MEMORY[0x277CC95F0], &qword_27FF2EE40, &qword_26294F4C0);
            v99 = v201[0];
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              goto LABEL_81;
            }
          }
        }

        else
        {
          sub_262902DC0(v52, v104);
          v99 = v201[0];
          v108 = sub_262902314(v200);
          if ((isUniquelyReferenced_nonNull_native & 1) != (v109 & 1))
          {
            sub_26294E078();
            __break(1u);
            goto LABEL_130;
          }

          v29 = v108;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
LABEL_81:
            v99[(v29 >> 6) + 8] |= 1 << v29;
            v52 = (*(v170 + 16))(v99[6] + *(v170 + 72) * v29, v200, v199);
            *(v99[7] + 8 * v29) = MEMORY[0x277D84F90];
            v110 = v99[2];
            v57 = __OFADD__(v110, 1);
            v111 = v110 + 1;
            if (v57)
            {
              goto LABEL_119;
            }

            v99[2] = v111;
          }
        }

        v112 = v99[7];
        v113 = *(v112 + 8 * v29);
        v114 = swift_isUniquelyReferenced_nonNull_native();
        *(v112 + 8 * v29) = v113;
        if ((v114 & 1) == 0)
        {
          v113 = sub_26291D688(0, v113[2] + 1, 1, v113);
          *(v112 + 8 * v29) = v113;
        }

        v116 = v113[2];
        v115 = v113[3];
        isUniquelyReferenced_nonNull_native = v116 + 1;
        if (v116 >= v115 >> 1)
        {
          *(v112 + 8 * v29) = sub_26291D688(v115 > 1, v116 + 1, 1, v113);
        }

        v117 = v181;
        v118 = v195;
        (*(v181 + 8))(v193, v195);
        (*v173)(v200, v199);
        v119 = *(v112 + 8 * v29);
        *(v119 + 16) = isUniquelyReferenced_nonNull_native;
        v52 = (*(v117 + 32))(v119 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v116, v194, v118);
        ++v98;
        v97 = sub_2629070CC;
        if (v101 == v183)
        {
          goto LABEL_94;
        }
      }
    }

    v52 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
      goto LABEL_68;
    }

LABEL_93:
    v99 = MEMORY[0x277D84F98];
LABEL_94:

    isUniquelyReferenced_nonNull_native = &v147;
    MEMORY[0x28223BE20](v121);
    v24 = (&v147 - 4);
    *(&v147 - 2) = &v202;
    v122 = v99[2];
    if (v122)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE30, &qword_26294F4B0);
      v123 = *(v187 + 72);
      v124 = (*(v187 + 80) + 32) & ~*(v187 + 80);
      v125 = swift_allocObject();
      v52 = _swift_stdlib_malloc_size(v125);
      if (!v123)
      {
        goto LABEL_124;
      }

      if (v52 - v124 == 0x8000000000000000 && v123 == -1)
      {
        goto LABEL_127;
      }

      v29 = v97;
      v125[2] = v122;
      v125[3] = 2 * ((v52 - v124) / v123);
      v189 = sub_262904B78(v201, v125 + v124, v122, v99);
      v183 = v201[1];

      v52 = sub_262906CD8();
      if (v189 != v122)
      {
        goto LABEL_125;
      }
    }

    else
    {
      v125 = MEMORY[0x277D84F90];
    }

    v201[0] = v125;
    v101 = v198;
    sub_2628FD078(sub_262906CB8, (&v147 - 4));
    if (v101)
    {
      break;
    }

    v157 = v97;
    v198 = 0;
    v126 = v201[0];
    v29 = *(v201[0] + 16);
    v127 = v185;
    if (v29)
    {
      v201[0] = MEMORY[0x277D84F90];
      v52 = sub_2628FBFB8(0, v29, 0);
      v128 = 0;
      v129 = v201[0];
      v183 = &v126[(*(v187 + 80) + 32) & ~*(v187 + 80)];
      v189 = v126;
      while (v128 < *(v126 + 2))
      {
        v24 = v197;
        sub_2628DF954(&v183[*(v187 + 72) * v128], v197, &qword_27FF2EE10, &qword_26294F490);
        v130 = *(v24 + *(v180 + 48));
        v131 = (*v191)(v196, v24, v199);
        v132 = *&v176[v184];
        MEMORY[0x28223BE20](v131);
        *(&v147 - 2) = v24;

        v133 = v198;
        sub_2629180F8(sub_2629070E4, v132, v127);
        v198 = v133;

        v134 = sub_26294DCF8();
        v135 = *(v134 - 8);
        if ((*(v135 + 48))(v127, 1, v134) == 1)
        {
          sub_2628DF6F0(v127, &qword_27FF2ECF8, &qword_26294F260);
          v136 = v168;
          v137 = v169;
          (*v162)(v168, v163, v169);
          sub_26294C5E8();
          isUniquelyReferenced_nonNull_native = v138;
          (*v161)(v136, v137);
        }

        else
        {
          v139 = v127;
          v140 = v166;
          sub_26294DCE8();
          (*(v135 + 8))(v139, v134);
          sub_26294DC18();
          isUniquelyReferenced_nonNull_native = v141;
          (*v165)(v140, v167);
        }

        (*v190)(v186, v188, v192);

        v142 = v178;
        sub_26294C908();
        sub_2628DF6F0(v197, &qword_27FF2EE10, &qword_26294F490);
        v201[0] = v129;
        v144 = *(v129 + 16);
        v143 = *(v129 + 24);
        if (v144 >= v143 >> 1)
        {
          sub_2628FBFB8(v143 > 1, v144 + 1, 1);
          v129 = v201[0];
        }

        ++v128;
        *(v129 + 16) = v144 + 1;
        v52 = (*(v182 + 32))(v129 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v144, v142, v179);
        v127 = v185;
        v126 = v189;
        if (v29 == v128)
        {

          goto LABEL_53;
        }
      }

      goto LABEL_117;
    }

    v129 = MEMORY[0x277D84F90];
LABEL_53:
    swift_beginAccess();
    sub_2628E4224(v129);
    swift_endAccess();
    v52 = (*v149)(v188, v192);
    v55 = v158;
    v24 = v159;
    v83 = v150;
    v86 = v156;
    v87 = v155;
  }

LABEL_130:

  __break(1u);
LABEL_131:
  result = sub_26294E078();
  __break(1u);
  return result;
}

BOOL sub_2628FA328(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = a2;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490);
  v5 = *(*(v4 - 8) + 64);
  v6 = v4 - 8;
  v33 = v4 - 8;
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v30 - v7;
  v39 = sub_26294DC58();
  v38 = *(v39 - 8);
  v9 = v38[8];
  v10 = MEMORY[0x28223BE20](v39);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = (&v30 - v13);
  sub_2628DF954(a1, v8, &qword_27FF2EE10, &qword_26294F490);
  v15 = *&v8[*(v6 + 56)];

  v16 = sub_26294C508();
  v18 = v17;
  v19 = sub_26294C538();
  v20 = *(v19 - 8);
  v34 = *(v20 + 8);
  v35 = v20 + 8;
  v34(v8, v19);
  *v14 = v16;
  v14[1] = v18;
  v32 = *MEMORY[0x277D49238];
  v31 = v38[13];
  v31(v14);
  v21 = v36[3];
  v30 = v36[4];
  __swift_project_boxed_opaque_existential_1(v36, v21);
  v36 = sub_26294C628();
  sub_2628DF954(v37, v8, &qword_27FF2EE10, &qword_26294F490);
  v22 = *&v8[*(v33 + 56)];

  v23 = sub_26294C508();
  v25 = v24;
  v34(v8, v19);
  *v12 = v23;
  v12[1] = v25;
  v26 = v39;
  (v31)(v12, v32, v39);
  v27 = sub_26294C628();
  v28 = v38[1];
  v28(v12, v26);
  v28(v14, v26);
  return v27 < v36;
}

void *sub_2628FA61C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_2628FA67C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2628FA6AC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2628FA6D8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_2628FA7D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_262906698(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_2628FA818()
{
  v1 = sub_26294CB98();
  v29 = *(v1 - 8);
  v2 = *(v29 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = sub_26294CBA8();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v42 != 1)
  {
    return v41;
  }

  v12 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
  swift_beginAccess();
  v13 = *(v0 + v12);
  v33 = *(v13 + 16);
  if (!v33)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_21:
    v25 = *(v17 + 2);

    return v25;
  }

  v32 = v13 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v39 = v29 + 16;
  v40 = v5;
  v14 = (v29 + 8);
  v37 = (v29 + 32);
  v30 = (v34 + 8);
  v31 = v34 + 16;

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  v27 = v11;
  v28 = v8;
  v26 = v13;
  while (v16 < *(v13 + 16))
  {
    (*(v34 + 16))(v11, v32 + *(v34 + 72) * v16, v8);
    v18 = sub_26294CAB8();
    v19 = *(v18 + 16);
    if (v19)
    {
      v35 = v18;
      v36 = v16;
      v38 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v20 = v18 + v38;
      v21 = *(v29 + 72);
      v22 = *(v29 + 16);
      do
      {
        v22(v7, v20, v1);
        if (sub_26294CB78())
        {
          v22(v40, v7, v1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_26291D74C(0, *(v17 + 2) + 1, 1, v17);
          }

          v24 = *(v17 + 2);
          v23 = *(v17 + 3);
          if (v24 >= v23 >> 1)
          {
            v17 = sub_26291D74C(v23 > 1, v24 + 1, 1, v17);
          }

          (*v14)(v7, v1);
          *(v17 + 2) = v24 + 1;
          (*v37)(&v17[v38 + v24 * v21], v40, v1);
        }

        else
        {
          (*v14)(v7, v1);
        }

        v20 += v21;
        --v19;
      }

      while (v19);

      v11 = v27;
      v8 = v28;
      v13 = v26;
      v16 = v36;
    }

    else
    {
    }

    ++v16;
    result = (*v30)(v11, v8);
    if (v16 == v33)
    {

      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2628FAC30()
{
  v1 = sub_26294C9D8();
  v24 = *(v1 - 8);
  v2 = *(v24 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26294CA28();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v35 == 1)
  {
    v9 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
    swift_beginAccess();
    v10 = *(v0 + v9);
    v11 = MEMORY[0x277D84F90];
    v33 = MEMORY[0x277D84F90];
    v28 = *(v10 + 16);
    if (v28)
    {
      v27 = v10 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
      v32 = v24 + 16;
      v12 = (v24 + 8);
      v25 = (v29 + 8);
      v26 = v29 + 16;

      v13 = 0;
      v22 = v8;
      v23 = v5;
      v21 = v10;
      while (v13 < *(v10 + 16))
      {
        (*(v29 + 16))(v8, v27 + *(v29 + 72) * v13, v5);
        v14 = sub_26294C928();
        v15 = *(v14 + 16);
        if (v15)
        {
          v30 = v13;
          v31 = v14;
          v16 = v14 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
          v17 = *(v24 + 72);
          v18 = *(v24 + 16);
          v18(v4, v16, v1);
          while (1)
          {
            if (sub_26294C9B8())
            {
              sub_26294C948();
              MEMORY[0x26672D3D0]();
              if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_26294DDD8();
              }

              sub_26294DDF8();
              (*v12)(v4, v1);
              v11 = v33;
            }

            else
            {
              (*v12)(v4, v1);
            }

            v16 += v17;
            if (!--v15)
            {
              break;
            }

            v18(v4, v16, v1);
          }

          v8 = v22;
          v5 = v23;
          v10 = v21;
          v13 = v30;
        }

        else
        {
        }

        ++v13;
        (*v25)(v8, v5);
        if (v13 == v28)
        {

          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_19:
      if (!(v11 >> 62))
      {
        v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_21:

        return v19;
      }
    }

    v19 = sub_26294E008();
    goto LABEL_21;
  }

  return v34;
}

uint64_t sub_2628FAFEC()
{
  v0 = sub_26294C538();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26294DCD8();
  v5 = sub_26294C518();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

BOOL sub_2628FB0D8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = sub_26294C678();
  if (!v2)
  {
    return (v6 - 131) < 0xFFFFFFFFFFFFFFFELL;
  }

  return 0;
}

uint64_t sub_2628FB160@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  *a2 = v5;
  return result;
}

uint64_t sub_2628FB1E0(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_26294D008();
}

uint64_t sub_2628FB250@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  *a2 = v5;
  return result;
}

uint64_t sub_2628FB2D0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_26294D008();
}

uint64_t sub_2628FB340@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_2628FB3C8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  return sub_26294D008();
}

__n128 sub_2628FB448@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  result = v7;
  a2->n128_u64[0] = v5;
  a2->n128_u64[1] = v6;
  a2[1] = v7;
  a2[2].n128_u8[0] = v8;
  return result;
}

uint64_t sub_2628FB4D8(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v8 = v7;

  return sub_26294D008();
}

uint64_t sub_2628FB57C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2628FB674;

  return v7(a1);
}

uint64_t sub_2628FB674()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2628FB76C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2628FB838(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2629056C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2628FB838(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2628FB944(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_26294DFA8();
    a6 = v11;
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

uint64_t sub_2628FB944(uint64_t a1, unint64_t a2)
{
  v4 = sub_2628FB990(a1, a2);
  sub_2628FBAC0(&unk_28752E290);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2628FB990(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2628FBBAC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26294DFA8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26294DD98();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2628FBBAC(v10, 0);
        result = sub_26294DF78();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2628FBAC0(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2628FBC20(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2628FBBAC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED18, &unk_26294F270);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2628FBC20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED18, &unk_26294F270);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

void sub_2628FBD14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EC90, &qword_26294F220);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EC98, &qword_26294F228);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_2628FBE10(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_26294E008();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_26294DF98();
  *v1 = result;
  return result;
}

size_t sub_2628FBEB0(size_t a1, int64_t a2, char a3)
{
  result = sub_2628FCCB8(a1, a2, a3, *v3, &qword_27FF2ED40, &qword_26294F290, MEMORY[0x277D49038]);
  *v3 = result;
  return result;
}

void *sub_2628FBEF4(void *a1, int64_t a2, char a3)
{
  result = sub_2628FC980(a1, a2, a3, *v3, &qword_27FF2EC90, &qword_26294F220, &qword_27FF2EC98, &qword_26294F228);
  *v3 = result;
  return result;
}

void *sub_2628FBF34(void *a1, int64_t a2, char a3)
{
  result = sub_2628FC980(a1, a2, a3, *v3, &qword_27FF2ED90, &qword_26294F348, &qword_27FF2ED98, &qword_26294F350);
  *v3 = result;
  return result;
}

size_t sub_2628FBF74(size_t a1, int64_t a2, char a3)
{
  result = sub_2628FCCB8(a1, a2, a3, *v3, &qword_27FF2EE78, &qword_26294F4E0, MEMORY[0x277D48F58]);
  *v3 = result;
  return result;
}

size_t sub_2628FBFB8(size_t a1, int64_t a2, char a3)
{
  result = sub_2628FCCB8(a1, a2, a3, *v3, &qword_27FF2EE50, &qword_26294F4C8, MEMORY[0x277D48F20]);
  *v3 = result;
  return result;
}

size_t sub_2628FBFFC(size_t a1, int64_t a2, char a3)
{
  result = sub_2628FCCB8(a1, a2, a3, *v3, &qword_27FF2EE90, &qword_26294F4F0, MEMORY[0x277D48F80]);
  *v3 = result;
  return result;
}

uint64_t type metadata accessor for SEStorageManagementController()
{
  result = qword_27FF2EBE0;
  if (!qword_27FF2EBE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2628FC0A0()
{
  sub_2628FC63C(319, &qword_27FF2EBF0, MEMORY[0x277D49070]);
  if (v1 <= 0x3F)
  {
    v29 = *(v0 - 8) + 64;
    sub_2628FC690(319, &qword_27FF2EBF8, &qword_27FF2EA58, &unk_26294EC20);
    if (v3 <= 0x3F)
    {
      v30 = *(v2 - 8) + 64;
      sub_2628FC63C(319, &qword_27FF2EC00, MEMORY[0x277D49318]);
      if (v5 <= 0x3F)
      {
        v31 = *(v4 - 8) + 64;
        sub_2628FC6E4(319, &qword_27FF2EC08, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
        if (v7 <= 0x3F)
        {
          v8 = *(v6 - 8) + 64;
          sub_2628FC690(319, &qword_27FF2EC10, &qword_27FF2EB10, &qword_26294ECE8);
          if (v10 <= 0x3F)
          {
            v32 = *(v9 - 8) + 64;
            sub_2628FC6E4(319, &qword_27FF2EC18, &type metadata for SEStorageManagementController.DeletionState, MEMORY[0x277CBCED0]);
            if (v12 <= 0x3F)
            {
              v33 = *(v11 - 8) + 64;
              v13 = sub_26294C538();
              if (v14 <= 0x3F)
              {
                v34 = *(v13 - 8) + 64;
                sub_2628FC6E4(319, &qword_27FF2EC20, &type metadata for SEStorageManagementController.PrimaryCategoryPresence, MEMORY[0x277CBCED0]);
                if (v16 <= 0x3F)
                {
                  v35 = *(v15 - 8) + 64;
                  sub_2628FC690(319, &qword_27FF2EC28, &qword_27FF2EB58, &qword_26294ECF0);
                  if (v18 <= 0x3F)
                  {
                    v36 = *(v17 - 8) + 64;
                    sub_2628FC690(319, &qword_27FF2EC30, &qword_27FF2E908, &qword_26294E928);
                    if (v20 <= 0x3F)
                    {
                      v37 = *(v19 - 8) + 64;
                      sub_2628FC690(319, &qword_27FF2EC38, &qword_27FF2EBB8, &qword_26294ECF8);
                      if (v22 <= 0x3F)
                      {
                        v38 = *(v21 - 8) + 64;
                        sub_2628FC690(319, &qword_27FF2EC40, &qword_27FF2EBC8, &qword_26294ED00);
                        if (v24 <= 0x3F)
                        {
                          v39 = *(v23 - 8) + 64;
                          sub_2628FC690(319, &qword_27FF2EC48, &qword_27FF2E9A0, &qword_26294E9A8);
                          if (v26 <= 0x3F)
                          {
                            v40 = *(v25 - 8) + 64;
                            sub_2628FC6E4(319, &qword_27FF2EC50, MEMORY[0x277D839B0], MEMORY[0x277D492C8]);
                            if (v28 <= 0x3F)
                            {
                              v41 = *(v27 - 8) + 64;
                              swift_updateClassMetadata2();
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
        }
      }
    }
  }
}

void sub_2628FC63C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26294D018();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2628FC690(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26294D018();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2628FC6E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SEStorageManagementController.DeletionState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SEStorageManagementController.DeletionState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2628FC7A8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2628FC7C8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_2628FC7FC()
{
  result = qword_27FF2EC58;
  if (!qword_27FF2EC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EC58);
  }

  return result;
}

unint64_t sub_2628FC854()
{
  result = qword_27FF2EC60;
  if (!qword_27FF2EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EC60);
  }

  return result;
}

unint64_t sub_2628FC8AC()
{
  result = qword_27FF2EC68;
  if (!qword_27FF2EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EC68);
  }

  return result;
}

unint64_t sub_2628FC904()
{
  result = qword_27FF2EC70;
  if (!qword_27FF2EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EC70);
  }

  return result;
}

char *sub_2628FC960(char *a1, int64_t a2, char a3)
{
  result = sub_2628FCE94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2628FC980(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_2628FCAC8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE30, &qword_26294F4B0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_2628FCCB8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2628FCE94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED70, &qword_26294F2F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2628FCFA0(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), void (*a4)(void), double (*a5)(void))
{
  v9 = *(a2(0) - 8);
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a3(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v13[1] = v11;
  result = sub_2628FD1B0(v13, a4, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_2628FD078(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490) - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_262904B1C(v7);
  }

  v9 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10 = v7[2];
  result = sub_2628FD318(a1, a2);
  *v3 = v7;
  return result;
}

uint64_t sub_2628FD144(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_262904B30(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_2628FD46C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2628FD1B0(uint64_t *a1, void (*a2)(void), uint64_t (*a3)(void), double (*a4)(void))
{
  v8 = a1[1];
  result = sub_26294E048();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_26294DDE8();
        *(v12 + 16) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      sub_2628FE09C(v14, v15, a1, v10, a3, a4, a3, a4);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return sub_2628FD574(0, v8, 1, a1, a3, a4);
  }

  return result;
}

uint64_t sub_2628FD318(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_26294E048();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490);
        v9 = sub_26294DDE8();
        *(v9 + 16) = v8;
      }

      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_2628FEB2C(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_2628FD824(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_2628FD46C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26294E048();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EC98, &qword_26294F228);
        v5 = sub_26294DDE8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_2628FF660(v7, v8, a1, v4);
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
    return sub_2628FDAD4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2628FD574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void), double (*a6)(void))
{
  v52 = a6;
  v10 = a5(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v47 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v51 = &v37 - v15;
  result = MEMORY[0x28223BE20](v14);
  v50 = &v37 - v18;
  v39 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v48 = *(v17 + 16);
    v49 = v17 + 16;
    v20 = *(v17 + 72);
    v21 = (v17 + 8);
    v22 = v19 + v20 * (a3 - 1);
    v44 = -v20;
    v45 = (v17 + 32);
    v23 = a1 - a3;
    v46 = v19;
    v38 = v20;
    v24 = v19 + v20 * a3;
    v25 = v51;
LABEL_5:
    v42 = v22;
    v43 = a3;
    v40 = v24;
    v41 = v23;
    v26 = v23;
    while (1)
    {
      v27 = v50;
      v28 = v48;
      v48(v50, v24, v10);
      v29 = v28(v25, v22, v10);
      v30 = v52;
      v31 = (v52)(v29);
      v32 = v30();
      v33 = *v21;
      (*v21)(v25, v10);
      result = v33(v27, v10);
      if (v32 >= v31)
      {
LABEL_4:
        a3 = v43 + 1;
        v22 = v42 + v38;
        v23 = v41 - 1;
        v24 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v46)
      {
        break;
      }

      v34 = *v45;
      v35 = v47;
      (*v45)(v47, v24, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = (v34)(v22, v35, v10);
      v22 += v44;
      v24 += v44;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2628FD824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = v5;
  v50 = a4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490);
  v10 = *(*(v47 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v47);
  v46 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v49 = &v37 - v14;
  result = MEMORY[0x28223BE20](v13);
  v48 = &v37 - v17;
  v39 = a2;
  if (a3 != a2)
  {
    v18 = *v4;
    v19 = *(v16 + 72);
    v20 = *v4 + v19 * (a3 - 1);
    v44 = -v19;
    v45 = v18;
    v21 = a1 - a3;
    v38 = v19;
    v22 = v18 + v19 * a3;
    v23 = &qword_27FF2EE10;
    v24 = &qword_26294F490;
LABEL_3:
    v42 = v20;
    v43 = a3;
    v40 = v22;
    v41 = v21;
    v25 = v21;
    v26 = v20;
    while (1)
    {
      v51 = v25;
      v27 = v48;
      sub_2628DF954(v22, v48, v23, v24);
      v28 = v24;
      v29 = v23;
      v30 = v49;
      sub_2628DF954(v26, v49, v29, v28);
      v31 = v6;
      v32 = v50(v27, v30);
      v33 = v30;
      v23 = v29;
      v24 = v28;
      sub_2628DF6F0(v33, v23, v28);
      result = sub_2628DF6F0(v27, v23, v28);
      if (v31)
      {
        break;
      }

      if ((v32 & 1) == 0)
      {
        v6 = 0;
LABEL_11:
        a3 = v43 + 1;
        v20 = v42 + v38;
        v21 = v41 - 1;
        v22 = v40 + v38;
        if (v43 + 1 != v39)
        {
          goto LABEL_3;
        }

        return result;
      }

      v34 = v51;
      if (!v45)
      {
        __break(1u);
        return result;
      }

      v35 = v46;
      sub_262906F00(v22, v46, v23, v28);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_262906F00(v35, v26, v23, v28);
      v26 += v44;
      v22 += v44;
      v36 = __CFADD__(v34, 1);
      v25 = v34 + 1;
      v6 = 0;
      if (v36)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t sub_2628FDAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v59 = &v52[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v65 = &v52[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v67 = &v52[-v15];
  MEMORY[0x28223BE20](v14);
  v68 = &v52[-v16];
  v17 = sub_26294C4F8();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v57 = &v52[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v19);
  v24 = &v52[-v23];
  v53 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v70 = (v22 + 48);
    v58 = (v22 + 8);
    v66 = v25;
    v26 = v25 + 40 * a3;
    v27 = a1 - a3;
    v69 = v17;
    v63 = (v22 + 32);
    v64 = &v52[-v23];
LABEL_6:
    v56 = a3;
    v54 = v27;
    v28 = v27;
    v55 = v26;
    while (1)
    {
      v73 = v28;
      sub_262906C54(v26, &v76);
      v71 = (v26 - 40);
      v72 = v26;
      sub_262906C54(v26 - 40, v74);
      v29 = v78;
      v30 = __swift_project_boxed_opaque_existential_1(&v76, v77);
      v31 = v68;
      sub_26294C608();
      v32 = *v70;
      v33 = (*v70)(v31, 1, v17);
      v34 = v31;
      if (v33 != 1)
      {
        v62 = v30;
        v61 = v29;
        v60 = *v63;
        v60(v24, v31, v17);
        v35 = v24;
        v36 = v67;
        __swift_project_boxed_opaque_existential_1(v74, v75);
        v17 = v69;
        sub_26294C608();
        if (v32(v36, 1, v17) != 1)
        {
          v48 = v57;
          v60(v57, v67, v17);
          v24 = v35;
          v45 = sub_26294C4D8();
          v49 = *v58;
          (*v58)(v48, v17);
          v49(v35, v17);
          goto LABEL_15;
        }

        (*v58)(v35, v17);
        v34 = v67;
      }

      sub_2628DF6F0(v34, &qword_27FF2E978, &qword_26294EC40);
      v37 = v17;
      v38 = v65;
      sub_26294C608();
      v39 = v32(v38, 1, v37);
      sub_2628DF6F0(v38, &qword_27FF2E978, &qword_26294EC40);
      if (v39 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v74);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v76);
        v17 = v37;
        v24 = v64;
LABEL_5:
        a3 = v56 + 1;
        v26 = v55 + 40;
        v27 = v54 - 1;
        if (v56 + 1 == v53)
        {
          return result;
        }

        goto LABEL_6;
      }

      __swift_project_boxed_opaque_existential_1(v74, v75);
      v40 = v59;
      sub_26294C608();
      v41 = v32(v40, 1, v37);
      sub_2628DF6F0(v40, &qword_27FF2E978, &qword_26294EC40);
      if (v41 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v74);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v76);
        v17 = v69;
        v24 = v64;
        v47 = v72;
        v46 = v73;
        goto LABEL_16;
      }

      __swift_project_boxed_opaque_existential_1(&v76, v77);
      sub_26294C618();
      v43 = v42;
      __swift_project_boxed_opaque_existential_1(v74, v75);
      sub_26294C618();
      v45 = v44 < v43;
      v17 = v69;
      v24 = v64;
LABEL_15:
      v47 = v72;
      v46 = v73;
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v76);
      if ((v45 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      if (!v66)
      {
        __break(1u);
        return result;
      }

      sub_262905600(v47, &v76);
      v26 = v71;
      v50 = v71[1];
      *v47 = *v71;
      *(v47 + 16) = v50;
      *(v47 + 32) = *(v26 + 32);
      result = sub_262905600(&v76, v26);
      v51 = __CFADD__(v46, 1);
      v28 = v46 + 1;
      if (v51)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_2628FE09C(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4, uint64_t (*a5)(void), double (*a6)(void), uint64_t (*a7)(void), double (*a8)(void))
{
  v141 = a7;
  v142 = a8;
  v152 = a6;
  v9 = v8;
  v132 = a1;
  v12 = a5(0);
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v135 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v146 = &v129 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v151 = &v129 - v20;
  result = MEMORY[0x28223BE20](v19);
  v150 = &v129 - v22;
  v143 = a3;
  v23 = *(a3 + 8);
  if (v23 < 1)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_97:
    a4 = *v132;
    if (!*v132)
    {
      goto LABEL_136;
    }

    a3 = v25;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_130:
      result = sub_262901E7C(a3);
    }

    v154 = result;
    v124 = *(result + 16);
    if (v124 >= 2)
    {
      while (*v143)
      {
        a3 = v124 - 1;
        v125 = *(result + 16 * v124);
        v126 = result;
        v127 = *(result + 16 * (v124 - 1) + 40);
        sub_262900660(*v143 + v13[9] * v125, *v143 + v13[9] * *(result + 16 * (v124 - 1) + 32), *v143 + v13[9] * v127, a4, v141, v142, v141);
        if (v9)
        {
        }

        if (v127 < v125)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = sub_262901E7C(v126);
        }

        if (v124 - 2 >= *(v126 + 2))
        {
          goto LABEL_124;
        }

        v128 = &v126[16 * v124];
        *v128 = v125;
        *(v128 + 1) = v127;
        v154 = v126;
        sub_262901DF0(a3);
        result = v154;
        v124 = *(v154 + 16);
        if (v124 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v24 = 0;
  v148 = (v13 + 1);
  v149 = v13 + 2;
  v147 = (v13 + 4);
  v25 = MEMORY[0x277D84F90];
  v140 = v13;
  v153 = v12;
  v131 = a4;
  while (1)
  {
    v26 = v24;
    v136 = v25;
    if (v24 + 1 >= v23)
    {
      v41 = v24 + 1;
    }

    else
    {
      v144 = v23;
      v130 = v9;
      v27 = *v143;
      v137 = v27;
      v28 = v13[9];
      v29 = v24;
      v30 = v27 + v28 * (v24 + 1);
      v31 = v13[2];
      v32 = v150;
      v31(v150, v30, v12);
      v33 = v27 + v28 * v29;
      v34 = v151;
      v139 = v31;
      v35 = (v31)(v151, v33, v12);
      v36 = v152;
      v37 = (v152)(v35);
      v38 = v36();
      v39 = v13[1];
      v39(v34, v12);
      v138 = v39;
      result = (v39)(v32, v12);
      v129 = v29;
      v40 = v29 + 2;
      v145 = v28;
      a3 = v137 + v28 * (v29 + 2);
      while (1)
      {
        v41 = v144;
        if (v144 == v40)
        {
          break;
        }

        v42 = v150;
        v43 = v153;
        v44 = v139;
        v139(v150, a3, v153);
        v45 = v151;
        v46 = v44(v151, v30, v43);
        v47 = v152;
        v48 = (v152)(v46);
        v49 = v47();
        v50 = v138;
        (v138)(v45, v43);
        result = v50(v42, v43);
        v13 = v140;
        ++v40;
        a3 += v145;
        v30 += v145;
        if (v38 < v37 == v49 >= v48)
        {
          v41 = v40 - 1;
          break;
        }
      }

      v9 = v130;
      v51 = v136;
      v12 = v153;
      a4 = v131;
      v26 = v129;
      if (v38 < v37)
      {
        if (v41 < v129)
        {
          goto LABEL_127;
        }

        if (v129 < v41)
        {
          v52 = v145 * (v41 - 1);
          v53 = v41 * v145;
          v144 = v41;
          v54 = v41;
          v55 = v129;
          v56 = v129 * v145;
          do
          {
            if (v55 != --v54)
            {
              v58 = *v143;
              if (!*v143)
              {
                goto LABEL_133;
              }

              a3 = v58 + v56;
              v59 = *v147;
              (*v147)(v135, v58 + v56, v153, v51);
              if (v56 < v52 || a3 >= v58 + v53)
              {
                v57 = v153;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v57 = v153;
                if (v56 != v52)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v59)(v58 + v52, v135, v57);
              v51 = v136;
            }

            ++v55;
            v52 -= v145;
            v53 -= v145;
            v56 += v145;
          }

          while (v55 < v54);
          v9 = v130;
          v13 = v140;
          v12 = v153;
          a4 = v131;
          v26 = v129;
          v41 = v144;
        }
      }
    }

    v60 = v143[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v26))
      {
        goto LABEL_126;
      }

      if (v41 - v26 < a4)
      {
        if (__OFADD__(v26, a4))
        {
          goto LABEL_128;
        }

        if (v26 + a4 >= v60)
        {
          v61 = v143[1];
        }

        else
        {
          v61 = v26 + a4;
        }

        if (v61 < v26)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v24 = v41;
    if (v41 < v26)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v25 = v136;
    }

    else
    {
      result = sub_262902068(0, *(v136 + 2) + 1, 1, v136);
      v25 = result;
    }

    a3 = *(v25 + 2);
    v62 = *(v25 + 3);
    v63 = a3 + 1;
    if (a3 >= v62 >> 1)
    {
      result = sub_262902068((v62 > 1), a3 + 1, 1, v25);
      v25 = result;
    }

    *(v25 + 2) = v63;
    v64 = &v25[16 * a3];
    *(v64 + 4) = v26;
    *(v64 + 5) = v24;
    if (!*v132)
    {
      goto LABEL_135;
    }

    if (a3)
    {
      v65 = *v132;
      while (1)
      {
        v66 = v63 - 1;
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v67 = *(v25 + 4);
          v68 = *(v25 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_53:
          if (v70)
          {
            goto LABEL_114;
          }

          v83 = &v25[16 * v63];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_117;
          }

          v89 = &v25[16 * v66 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_121;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v63 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v93 = &v25[16 * v63];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_67:
        if (v88)
        {
          goto LABEL_116;
        }

        v96 = &v25[16 * v66];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_119;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_74:
        a3 = v66 - 1;
        if (v66 - 1 >= v63)
        {
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
          goto LABEL_132;
        }

        v104 = v25;
        v105 = *&v25[16 * a3 + 32];
        a4 = *&v25[16 * v66 + 40];
        sub_262900660(*v143 + v13[9] * v105, *v143 + v13[9] * *&v25[16 * v66 + 32], *v143 + v13[9] * a4, v65, v141, v142, v141);
        if (v9)
        {
        }

        if (a4 < v105)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v106 = v104;
        }

        else
        {
          v106 = sub_262901E7C(v104);
        }

        v12 = v153;
        if (a3 >= *(v106 + 2))
        {
          goto LABEL_111;
        }

        v107 = &v106[16 * a3];
        *(v107 + 4) = v105;
        *(v107 + 5) = a4;
        v154 = v106;
        result = sub_262901DF0(v66);
        v25 = v154;
        v63 = *(v154 + 16);
        if (v63 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v25[16 * v63 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_112;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_113;
      }

      v78 = &v25[16 * v63];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_115;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_118;
      }

      if (v82 >= v74)
      {
        v100 = &v25[16 * v66 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_122;
        }

        if (v69 < v103)
        {
          v66 = v63 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v23 = v143[1];
    a4 = v131;
    if (v24 >= v23)
    {
      goto LABEL_97;
    }
  }

  v130 = v9;
  v108 = *v143;
  v109 = v13[9];
  v110 = v13[2];
  a3 = *v143 + v109 * (v41 - 1);
  a4 = -v109;
  v129 = v26;
  v111 = (v26 - v41);
  v145 = v108;
  v133 = v109;
  v112 = v108 + v41 * v109;
  v134 = v61;
LABEL_87:
  v144 = v41;
  v137 = v112;
  v138 = v111;
  v139 = a3;
  while (1)
  {
    v113 = v150;
    v110(v150, v112, v12);
    v114 = v151;
    v115 = (v110)(v151, a3, v153);
    v116 = v152;
    v117 = (v152)(v115);
    v118 = v116();
    v119 = *v148;
    v120 = v114;
    v12 = v153;
    (*v148)(v120, v153);
    result = v119(v113, v12);
    if (v118 >= v117)
    {
LABEL_86:
      v41 = v144 + 1;
      a3 = v139 + v133;
      v111 = v138 - 1;
      v112 = v137 + v133;
      v24 = v134;
      if (v144 + 1 != v134)
      {
        goto LABEL_87;
      }

      v9 = v130;
      v13 = v140;
      v26 = v129;
      if (v134 < v129)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v145)
    {
      break;
    }

    v121 = v146;
    v122 = *v147;
    (*v147)(v146, v112, v12);
    swift_arrayInitWithTakeFrontToBack();
    v122(a3, v121, v12);
    a3 += a4;
    v112 += a4;
    if (__CFADD__(v111++, 1))
    {
      goto LABEL_86;
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
  return result;
}

uint64_t sub_2628FEB2C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v135 = a4;
  v136 = a5;
  v124 = a1;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490);
  v132 = *(v128 - 8);
  v10 = *(v132 + 64);
  v11 = MEMORY[0x28223BE20](v128);
  v125 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v127 = &v112 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v112 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v112 - v22;
  result = MEMORY[0x28223BE20](v21);
  v134 = a3;
  v29 = a3[1];
  if (v29 < 1)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_100:
    a6 = *v124;
    if (*v124)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v30 = v135;
      v18 = v136;
      if ((result & 1) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_102;
    }

    goto LABEL_140;
  }

  v121 = &v112 - v25;
  v122 = v23;
  v129 = v27;
  v126 = v26;
  v117 = a6;
  v30 = 0;
  v31 = MEMORY[0x277D84F90];
  v120 = v28;
  while (1)
  {
    v32 = v30;
    if (v30 + 1 >= v29)
    {
      v43 = v30 + 1;
    }

    else
    {
      v123 = v29;
      v133 = v7;
      v33 = *v134;
      v34 = *(v132 + 72);
      a6 = *v134 + v34 * (v30 + 1);
      v35 = v121;
      sub_2628DF954(a6, v121, &qword_27FF2EE10, &qword_26294F490);
      v131 = v34;
      v36 = v122;
      sub_2628DF954(v33 + v34 * v30, v122, &qword_27FF2EE10, &qword_26294F490);
      v37 = v133;
      LODWORD(v133) = v135(v35, v36);
      if (v37)
      {
        sub_2628DF6F0(v36, &qword_27FF2EE10, &qword_26294F490);
        sub_2628DF6F0(v35, &qword_27FF2EE10, &qword_26294F490);
      }

      v119 = v31;
      v116 = v18;
      sub_2628DF6F0(v36, &qword_27FF2EE10, &qword_26294F490);
      result = sub_2628DF6F0(v35, &qword_27FF2EE10, &qword_26294F490);
      v115 = v123 - 1;
      v130 = v123 - 2;
      v38 = v131;
      v39 = v33 + v131 * (v30 + 2);
      v118 = v30;
      v40 = v120;
      while (v130 != v30)
      {
        sub_2628DF954(v39, v40, &qword_27FF2EE10, &qword_26294F490);
        v41 = v129;
        sub_2628DF954(a6, v129, &qword_27FF2EE10, &qword_26294F490);
        v42 = v135(v40, v41);
        sub_2628DF6F0(v41, &qword_27FF2EE10, &qword_26294F490);
        result = sub_2628DF6F0(v40, &qword_27FF2EE10, &qword_26294F490);
        ++v30;
        v38 = v131;
        v39 += v131;
        a6 += v131;
        if ((v133 ^ v42))
        {
          v43 = v30 + 1;
          goto LABEL_11;
        }
      }

      v30 = v115;
      v43 = v123;
LABEL_11:
      v18 = v116;
      v7 = 0;
      v32 = v118;
      if (v133)
      {
        v31 = v119;
        if (v43 < v118)
        {
          goto LABEL_134;
        }

        if (v118 <= v30)
        {
          a6 = v38 * (v43 - 1);
          v44 = v43 * v38;
          v123 = v43;
          v45 = v118;
          v30 = v118 * v38;
          do
          {
            if (v45 != --v43)
            {
              v133 = v7;
              v46 = *v134;
              if (!*v134)
              {
                goto LABEL_138;
              }

              sub_262906F00(v46 + v30, v125, &qword_27FF2EE10, &qword_26294F490);
              if (v30 < a6 || v46 + v30 >= (v46 + v44))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v30 != a6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_262906F00(v125, v46 + a6, &qword_27FF2EE10, &qword_26294F490);
              v7 = v133;
              v38 = v131;
            }

            ++v45;
            a6 -= v38;
            v44 -= v38;
            v30 += v38;
          }

          while (v45 < v43);
          v18 = v116;
          v43 = v123;
        }
      }

      else
      {
        v31 = v119;
      }
    }

    v47 = v134[1];
    if (v43 >= v47)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v43, v32))
    {
      goto LABEL_130;
    }

    if (v43 - v32 >= v117)
    {
      goto LABEL_35;
    }

    if (__OFADD__(v32, v117))
    {
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

    if (v32 + v117 >= v47)
    {
      v48 = v134[1];
    }

    else
    {
      v48 = v32 + v117;
    }

    if (v48 < v32)
    {
      goto LABEL_133;
    }

    if (v43 == v48)
    {
LABEL_35:
      a6 = v43;
      if (v43 < v32)
      {
        goto LABEL_129;
      }
    }

    else
    {
      v133 = v7;
      v96 = *v134;
      v97 = *(v132 + 72);
      v98 = *v134 + v97 * (v43 - 1);
      v130 = -v97;
      v131 = v96;
      v118 = v32;
      v99 = (v32 - v43);
      v113 = v97;
      v100 = v96 + v43 * v97;
      v114 = v48;
      do
      {
        v123 = v43;
        v115 = v100;
        v101 = v100;
        v116 = v99;
        v119 = v98;
        do
        {
          sub_2628DF954(v101, v18, &qword_27FF2EE10, &qword_26294F490);
          v30 = v18;
          v102 = v126;
          sub_2628DF954(v98, v126, &qword_27FF2EE10, &qword_26294F490);
          v103 = v133;
          v104 = v135(v30, v102);
          v133 = v103;
          if (v103)
          {
            sub_2628DF6F0(v102, &qword_27FF2EE10, &qword_26294F490);
            sub_2628DF6F0(v30, &qword_27FF2EE10, &qword_26294F490);
          }

          v105 = v104;
          sub_2628DF6F0(v102, &qword_27FF2EE10, &qword_26294F490);
          result = sub_2628DF6F0(v30, &qword_27FF2EE10, &qword_26294F490);
          v18 = v30;
          if ((v105 & 1) == 0)
          {
            break;
          }

          if (!v131)
          {
            goto LABEL_136;
          }

          v106 = v127;
          sub_262906F00(v101, v127, &qword_27FF2EE10, &qword_26294F490);
          swift_arrayInitWithTakeFrontToBack();
          sub_262906F00(v106, v98, &qword_27FF2EE10, &qword_26294F490);
          v98 += v130;
          v101 += v130;
        }

        while (!__CFADD__(v99++, 1));
        v43 = v123 + 1;
        v98 = &v119[v113];
        v99 = v116 - 1;
        v100 = v115 + v113;
        a6 = v114;
      }

      while (v123 + 1 != v114);
      v7 = v133;
      v32 = v118;
      if (v114 < v118)
      {
        goto LABEL_129;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v49 = v7;
    if ((result & 1) == 0)
    {
      result = sub_262902068(0, *(v31 + 2) + 1, 1, v31);
      v31 = result;
    }

    v51 = *(v31 + 2);
    v50 = *(v31 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      result = sub_262902068((v50 > 1), v51 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v52;
    v53 = &v31[16 * v51];
    *(v53 + 4) = v32;
    *(v53 + 5) = a6;
    v30 = a6;
    a6 = *v124;
    if (!*v124)
    {
      goto LABEL_139;
    }

    if (v51)
    {
      break;
    }

    v7 = v49;
LABEL_87:
    v29 = v134[1];
    if (v30 >= v29)
    {
      goto LABEL_100;
    }
  }

  v7 = v49;
  while (1)
  {
    v54 = v52 - 1;
    if (v52 >= 4)
    {
      v59 = &v31[16 * v52 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_116;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_117;
      }

      v66 = &v31[16 * v52];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_119;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_122;
      }

      if (v70 >= v62)
      {
        v88 = &v31[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_128;
        }

        if (v57 < v91)
        {
          v54 = v52 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v52 == 3)
    {
      v55 = *(v31 + 4);
      v56 = *(v31 + 5);
      v65 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      v58 = v65;
LABEL_56:
      if (v58)
      {
        goto LABEL_118;
      }

      v71 = &v31[16 * v52];
      v73 = *v71;
      v72 = *(v71 + 1);
      v74 = __OFSUB__(v72, v73);
      v75 = v72 - v73;
      v76 = v74;
      if (v74)
      {
        goto LABEL_121;
      }

      v77 = &v31[16 * v54 + 32];
      v79 = *v77;
      v78 = *(v77 + 1);
      v65 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v65)
      {
        goto LABEL_124;
      }

      if (__OFADD__(v75, v80))
      {
        goto LABEL_125;
      }

      if (v75 + v80 >= v57)
      {
        if (v57 < v80)
        {
          v54 = v52 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v81 = &v31[16 * v52];
    v83 = *v81;
    v82 = *(v81 + 1);
    v65 = __OFSUB__(v82, v83);
    v75 = v82 - v83;
    v76 = v65;
LABEL_70:
    if (v76)
    {
      goto LABEL_120;
    }

    v84 = &v31[16 * v54];
    v86 = *(v84 + 4);
    v85 = *(v84 + 5);
    v65 = __OFSUB__(v85, v86);
    v87 = v85 - v86;
    if (v65)
    {
      goto LABEL_123;
    }

    if (v87 < v75)
    {
      goto LABEL_87;
    }

LABEL_77:
    v92 = v54 - 1;
    if (v54 - 1 >= v52)
    {
      break;
    }

    if (!*v134)
    {
      goto LABEL_135;
    }

    v93 = *&v31[16 * v92 + 32];
    v94 = *&v31[16 * v54 + 40];
    sub_262900C48(*v134 + *(v132 + 72) * v93, *v134 + *(v132 + 72) * *&v31[16 * v54 + 32], *v134 + *(v132 + 72) * v94, a6, v135, v136);
    if (v7)
    {
    }

    if (v94 < v93)
    {
      goto LABEL_114;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_262901E7C(v31);
    }

    if (v92 >= *(v31 + 2))
    {
      goto LABEL_115;
    }

    v95 = &v31[16 * v92];
    *(v95 + 4) = v93;
    *(v95 + 5) = v94;
    v137 = v31;
    result = sub_262901DF0(v54);
    v31 = v137;
    v52 = *(v137 + 2);
    if (v52 <= 1)
    {
      goto LABEL_87;
    }
  }

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
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  result = sub_262901E7C(v31);
  v31 = result;
LABEL_102:
  v137 = v31;
  v108 = *(v31 + 2);
  if (v108 < 2)
  {
  }

  while (*v134)
  {
    v109 = *&v31[16 * v108];
    v110 = *&v31[16 * v108 + 24];
    sub_262900C48(*v134 + *(v132 + 72) * v109, *v134 + *(v132 + 72) * *&v31[16 * v108 + 16], *v134 + *(v132 + 72) * v110, a6, v30, v18);
    if (v7)
    {
    }

    if (v110 < v109)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_262901E7C(v31);
    }

    if (v108 - 2 >= *(v31 + 2))
    {
      goto LABEL_127;
    }

    v111 = &v31[16 * v108];
    *v111 = v109;
    *(v111 + 1) = v110;
    v137 = v31;
    result = sub_262901DF0(v108 - 1);
    v31 = v137;
    v108 = *(v137 + 2);
    if (v108 <= 1)
    {
    }
  }

LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
  return result;
}

uint64_t sub_2628FF660(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v147 = a4;
  v144 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v165 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v168 = &v144 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v144 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v144 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v146 = &v144 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v153 = &v144 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v151 = &v144 - v22;
  MEMORY[0x28223BE20](v21);
  v156 = &v144 - v23;
  v24 = sub_26294C4F8();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v158 = (&v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x28223BE20](v26);
  v29 = MEMORY[0x28223BE20](v28);
  v145 = &v144 - v30;
  result = MEMORY[0x28223BE20](v29);
  v157 = a3;
  v35 = a3[1];
  if (v35 < 1)
  {
    v38 = MEMORY[0x277D84F90];
LABEL_114:
    a3 = *v144;
    if (!*v144)
    {
      goto LABEL_156;
    }

    v13 = v38;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v13;
      goto LABEL_117;
    }

LABEL_150:
    result = sub_262901E7C(v13);
LABEL_117:
    v181 = result;
    v13 = *(result + 16);
    if (v13 >= 2)
    {
      while (*v157)
      {
        v139 = *(result + 16 * v13);
        v140 = result;
        v141 = *(result + 16 * (v13 - 1) + 40);
        v142 = v160;
        sub_2629012B8((*v157 + 40 * v139), (*v157 + 40 * *(result + 16 * (v13 - 1) + 32)), *v157 + 40 * v141, a3);
        v160 = v142;
        if (v142)
        {
        }

        if (v141 < v139)
        {
          goto LABEL_143;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v140 = sub_262901E7C(v140);
        }

        if (v13 - 2 >= *(v140 + 2))
        {
          goto LABEL_144;
        }

        v143 = &v140[16 * v13];
        *v143 = v139;
        *(v143 + 1) = v141;
        v181 = v140;
        sub_262901DF0(v13 - 1);
        result = v181;
        v13 = *(v181 + 16);
        if (v13 <= 1)
        {
        }
      }

      goto LABEL_154;
    }
  }

  v150 = &v144 - v33;
  v161 = v34;
  v36 = 0;
  v37 = (v32 + 48);
  v163 = (v32 + 32);
  v38 = MEMORY[0x277D84F90];
  v162 = (v32 + 8);
  v170 = v13;
  v171 = v24;
  v172 = v16;
  v164 = (v32 + 48);
  while (1)
  {
    v152 = v38;
    v148 = v36;
    if (v36 + 1 >= v35)
    {
      v45 = v36 + 1;
      v60 = v147;
      goto LABEL_31;
    }

    v159 = v35;
    v39 = *v157;
    v13 = 40;
    sub_262906C54(*v157 + 40 * (v36 + 1), &v178);
    sub_262906C54(v39 + 40 * v36, &v176);
    v40 = v160;
    LODWORD(v173) = sub_2628F0E04(&v178, &v176);
    v160 = v40;
    if (v40)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v176);
      __swift_destroy_boxed_opaque_existential_1Tm(&v178);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v176);
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v178);
    v41 = (v36 + 2);
    v155 = 40 * v36;
    v42 = v39 + 40 * v36 + 80;
    while (1)
    {
      v45 = v159;
      if (v159 == v41)
      {
        break;
      }

      v175 = v41;
      sub_262906C54(v42, &v178);
      v174 = v42;
      sub_262906C54(v42 - 40, &v176);
      v46 = v180;
      v47 = __swift_project_boxed_opaque_existential_1(&v178, v179);
      v48 = v156;
      sub_26294C608();
      v49 = *v37;
      if ((*v37)(v48, 1, v24) != 1)
      {
        v169 = v47;
        v167 = v46;
        v50 = v150;
        v166 = *v163;
        v166();
        __swift_project_boxed_opaque_existential_1(&v176, v177);
        v48 = v151;
        sub_26294C608();
        if (v49(v48, 1, v24) != 1)
        {
          v58 = v145;
          (v166)(v145, v48, v24);
          v13 = sub_26294C4D8();
          v59 = *v162;
          (*v162)(v58, v24);
          v59(v50, v24);
          v16 = v172;
          v37 = v164;
          goto LABEL_8;
        }

        (*v162)(v50, v24);
        v37 = v164;
      }

      sub_2628DF6F0(v48, &qword_27FF2E978, &qword_26294EC40);
      v51 = v153;
      sub_26294C608();
      v52 = v49(v51, 1, v24);
      sub_2628DF6F0(v51, &qword_27FF2E978, &qword_26294EC40);
      if (v52 == 1)
      {
        __swift_project_boxed_opaque_existential_1(&v176, v177);
        v53 = v146;
        sub_26294C608();
        v13 = 1;
        v54 = v49(v53, 1, v24);
        sub_2628DF6F0(v53, &qword_27FF2E978, &qword_26294EC40);
        v16 = v172;
        v43 = v174;
        v44 = v175;
        if (v54 == 1)
        {
          __swift_project_boxed_opaque_existential_1(&v178, v179);
          sub_26294C618();
          v56 = v55;
          __swift_project_boxed_opaque_existential_1(&v176, v177);
          sub_26294C618();
          v13 = v57 < v56;
        }

        goto LABEL_9;
      }

      v13 = 0;
      v16 = v172;
LABEL_8:
      v43 = v174;
      v44 = v175;
LABEL_9:
      __swift_destroy_boxed_opaque_existential_1Tm(&v176);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v178);
      v41 = (v44 + 1);
      v42 = v43 + 40;
      if ((v173 ^ v13))
      {
        v45 = v41 - 1;
        break;
      }
    }

    v60 = v147;
    a3 = v155;
    if ((v173 & 1) == 0)
    {
      goto LABEL_31;
    }

    if (v45 < v148)
    {
      goto LABEL_149;
    }

    v61 = v45;
    if (v148 < v45)
    {
      v62 = 40 * v45 - 40;
      v63 = v148;
      do
      {
        if (v63 != --v61)
        {
          v68 = *v157;
          if (!*v157)
          {
            goto LABEL_153;
          }

          v64 = a3;
          v65 = (a3 + v68);
          v13 = v68 + v62;
          sub_262905600(v65, &v178);
          v66 = *(v13 + 32);
          v67 = *(v13 + 16);
          *v65 = *v13;
          v65[1] = v67;
          *(v65 + 4) = v66;
          a3 = v64;
          result = sub_262905600(&v178, v13);
          v60 = v147;
        }

        ++v63;
        v62 -= 40;
        a3 += 5;
      }

      while (v63 < v61);
      v24 = v171;
    }

LABEL_31:
    v69 = v157[1];
    if (v45 < v69)
    {
      if (__OFSUB__(v45, v148))
      {
        goto LABEL_146;
      }

      if (v45 - v148 < v60)
      {
        break;
      }
    }

    v36 = v45;
LABEL_42:
    v71 = v148;
LABEL_43:
    if (v36 < v71)
    {
      goto LABEL_145;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v38 = v152;
    }

    else
    {
      result = sub_262902068(0, *(v152 + 2) + 1, 1, v152);
      v38 = result;
    }

    v74 = *(v38 + 2);
    v73 = *(v38 + 3);
    v13 = v74 + 1;
    if (v74 >= v73 >> 1)
    {
      result = sub_262902068((v73 > 1), v74 + 1, 1, v38);
      v38 = result;
    }

    *(v38 + 2) = v13;
    v75 = &v38[16 * v74];
    *(v75 + 4) = v148;
    *(v75 + 5) = v36;
    a3 = *v144;
    if (!*v144)
    {
      goto LABEL_155;
    }

    if (v74)
    {
      while (1)
      {
        v76 = v13 - 1;
        if (v13 >= 4)
        {
          break;
        }

        if (v13 == 3)
        {
          v77 = *(v38 + 4);
          v78 = *(v38 + 5);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_63:
          if (v80)
          {
            goto LABEL_134;
          }

          v93 = &v38[16 * v13];
          v95 = *v93;
          v94 = *(v93 + 1);
          v96 = __OFSUB__(v94, v95);
          v97 = v94 - v95;
          v98 = v96;
          if (v96)
          {
            goto LABEL_137;
          }

          v99 = &v38[16 * v76 + 32];
          v101 = *v99;
          v100 = *(v99 + 1);
          v87 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v87)
          {
            goto LABEL_140;
          }

          if (__OFADD__(v97, v102))
          {
            goto LABEL_141;
          }

          if (v97 + v102 >= v79)
          {
            if (v79 < v102)
            {
              v76 = v13 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v103 = &v38[16 * v13];
        v105 = *v103;
        v104 = *(v103 + 1);
        v87 = __OFSUB__(v104, v105);
        v97 = v104 - v105;
        v98 = v87;
LABEL_77:
        if (v98)
        {
          goto LABEL_136;
        }

        v106 = &v38[16 * v76];
        v108 = *(v106 + 4);
        v107 = *(v106 + 5);
        v87 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v87)
        {
          goto LABEL_139;
        }

        if (v109 < v97)
        {
          goto LABEL_3;
        }

LABEL_84:
        v114 = v76 - 1;
        if (v76 - 1 >= v13)
        {
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
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v157)
        {
          goto LABEL_152;
        }

        v115 = v38;
        v13 = *&v38[16 * v114 + 32];
        v116 = *&v38[16 * v76 + 40];
        v117 = v160;
        sub_2629012B8((*v157 + 40 * v13), (*v157 + 40 * *&v38[16 * v76 + 32]), *v157 + 40 * v116, a3);
        v160 = v117;
        if (v117)
        {
        }

        if (v116 < v13)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_262901E7C(v115);
        }

        if (v114 >= *(v115 + 2))
        {
          goto LABEL_131;
        }

        v118 = &v115[16 * v114];
        *(v118 + 4) = v13;
        *(v118 + 5) = v116;
        v181 = v115;
        result = sub_262901DF0(v76);
        v38 = v181;
        v13 = *(v181 + 16);
        v24 = v171;
        if (v13 <= 1)
        {
          goto LABEL_3;
        }
      }

      v81 = &v38[16 * v13 + 32];
      v82 = *(v81 - 64);
      v83 = *(v81 - 56);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_132;
      }

      v86 = *(v81 - 48);
      v85 = *(v81 - 40);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_133;
      }

      v88 = &v38[16 * v13];
      v90 = *v88;
      v89 = *(v88 + 1);
      v87 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v87)
      {
        goto LABEL_135;
      }

      v87 = __OFADD__(v79, v91);
      v92 = v79 + v91;
      if (v87)
      {
        goto LABEL_138;
      }

      if (v92 >= v84)
      {
        v110 = &v38[16 * v76 + 32];
        v112 = *v110;
        v111 = *(v110 + 1);
        v87 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v87)
        {
          goto LABEL_142;
        }

        if (v79 < v113)
        {
          v76 = v13 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v35 = v157[1];
    if (v36 >= v35)
    {
      goto LABEL_114;
    }
  }

  if (__OFADD__(v148, v60))
  {
    goto LABEL_147;
  }

  if (v148 + v60 >= v69)
  {
    v70 = v157[1];
  }

  else
  {
    v70 = v148 + v60;
  }

  if (v70 < v148)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  v71 = v148;
  v72 = v45;
  if (v45 == v70)
  {
    v36 = v45;
    goto LABEL_43;
  }

  v169 = *v157;
  v119 = &v169[5 * v45];
  v120 = (v148 - v45);
  v149 = v70;
  while (2)
  {
    v159 = v72;
    v154 = v120;
    a3 = v120;
    v155 = v119;
LABEL_97:
    v175 = a3;
    sub_262906C54(v119, &v178);
    v174 = (v119 - 40);
    sub_262906C54(v119 - 40, &v176);
    v121 = v180;
    v122 = __swift_project_boxed_opaque_existential_1(&v178, v179);
    sub_26294C608();
    v123 = *v37;
    v124 = (*v37)(v16, 1, v24);
    v125 = v16;
    if (v124 == 1)
    {
LABEL_100:
      v173 = v119;
      sub_2628DF6F0(v125, &qword_27FF2E978, &qword_26294EC40);
      v128 = v24;
      v129 = v168;
      a3 = &qword_27FF2E978;
      sub_26294C608();
      v13 = (v123)(v129, 1, v128);
      sub_2628DF6F0(v129, &qword_27FF2E978, &qword_26294EC40);
      if (v13 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v176);
        __swift_destroy_boxed_opaque_existential_1Tm(&v178);
        v24 = v128;
        v16 = v172;
LABEL_95:
        v72 = v159 + 1;
        v119 = v155 + 40;
        v120 = (v154 - 1);
        v36 = v149;
        if (v159 + 1 == v149)
        {
          goto LABEL_42;
        }

        continue;
      }

      __swift_project_boxed_opaque_existential_1(&v176, v177);
      v130 = v165;
      sub_26294C608();
      v131 = v123(v130, 1, v128);
      sub_2628DF6F0(v130, &qword_27FF2E978, &qword_26294EC40);
      if (v131 == 1)
      {
        __swift_project_boxed_opaque_existential_1(&v178, v179);
        sub_26294C618();
        v133 = v132;
        __swift_project_boxed_opaque_existential_1(&v176, v177);
        v24 = v171;
        sub_26294C618();
        v13 = v134 < v133;
        v16 = v172;
        v119 = v173;
        goto LABEL_105;
      }

      v24 = v128;
      __swift_destroy_boxed_opaque_existential_1Tm(&v176);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v178);
      v16 = v172;
      v119 = v173;
    }

    else
    {
      v173 = v122;
      v167 = v121;
      v126 = v161;
      v166 = *v163;
      v166();
      __swift_project_boxed_opaque_existential_1(&v176, v177);
      v127 = v170;
      v24 = v171;
      sub_26294C608();
      if (v123(v127, 1, v24) == 1)
      {
        (*v162)(v126, v24);
        v125 = v127;
        v37 = v164;
        goto LABEL_100;
      }

      a3 = v158;
      (v166)(v158, v127, v24);
      v13 = sub_26294C4D8();
      v135 = *v162;
      (*v162)(a3, v24);
      v135(v126, v24);
      v16 = v172;
      v37 = v164;
LABEL_105:
      __swift_destroy_boxed_opaque_existential_1Tm(&v176);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v178);
      if ((v13 & 1) == 0)
      {
        goto LABEL_95;
      }
    }

    break;
  }

  v136 = v175;
  if (v169)
  {
    sub_262905600(v119, &v178);
    v13 = v174;
    v137 = v174[1];
    *v119 = *v174;
    *(v119 + 16) = v137;
    *(v119 + 32) = *(v13 + 32);
    sub_262905600(&v178, v13);
    v119 = v13;
    v138 = __CFADD__(v136, 1);
    a3 = (v136 + 1);
    if (v138)
    {
      goto LABEL_95;
    }

    goto LABEL_97;
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
  return result;
}

uint64_t sub_262900660(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(void), double (*a6)(void), uint64_t (*a7)(void))
{
  v69 = a6;
  v12 = a5(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v68 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v67 = &v55 - v18;
  v66 = *(v19 + 72);
  if (!v66)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v66 == -1)
  {
    goto LABEL_61;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v66 == -1)
  {
    goto LABEL_62;
  }

  v57 = a7;
  v21 = (a2 - a1) / v66;
  v72 = a1;
  v71 = a4;
  if (v21 >= v20 / v66)
  {
    v24 = v20 / v66 * v66;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v24;
    if (v24 >= 1)
    {
      v38 = -v66;
      v61 = a4;
      v62 = (v13 + 16);
      v59 = (v13 + 8);
      v60 = a1;
      v39 = a4 + v24;
      v63 = -v66;
      do
      {
        v56 = v37;
        v40 = a2;
        v41 = a2 + v38;
        v64 = v40;
        v65 = v41;
        while (1)
        {
          if (v40 <= a1)
          {
            v72 = v40;
            v70 = v56;
            goto LABEL_59;
          }

          v43 = a3;
          v58 = v37;
          v66 = a3 + v38;
          v44 = v39 + v38;
          v45 = *v62;
          v46 = v67;
          (*v62)(v67, v44, v12);
          v47 = v12;
          v48 = v68;
          v49 = (v45)(v68, v41, v47);
          v50 = v69;
          v51 = (v69)(v49);
          v52 = v50();
          v53 = *v59;
          v54 = v48;
          v12 = v47;
          (*v59)(v54, v47);
          v53(v46, v47);
          if (v52 < v51)
          {
            break;
          }

          v37 = v44;
          a3 = v66;
          if (v43 < v39 || v66 >= v39)
          {
            swift_arrayInitWithTakeFrontToBack();
            v41 = v65;
            a1 = v60;
          }

          else
          {
            v41 = v65;
            a1 = v60;
            if (v43 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v39 = v44;
          v42 = v44 > v61;
          v38 = v63;
          v40 = v64;
          if (!v42)
          {
            a2 = v64;
            goto LABEL_58;
          }
        }

        a3 = v66;
        if (v43 < v64 || v66 >= v64)
        {
          a2 = v65;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v60;
          v37 = v58;
          v38 = v63;
        }

        else
        {
          a2 = v65;
          a1 = v60;
          v37 = v58;
          v38 = v63;
          if (v43 != v64)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v39 > v61);
    }

LABEL_58:
    v72 = a2;
    v70 = v37;
  }

  else
  {
    v22 = v21 * v66;
    v23 = a4;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v65 = a4 + v22;
    v70 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v63 = *(v13 + 16);
      v64 = v13 + 16;
      v62 = (v13 + 8);
      do
      {
        v26 = a3;
        v27 = v67;
        v28 = v63;
        (v63)(v67, a2, v12);
        v29 = v68;
        v30 = v28(v68, v23, v12);
        v31 = v23;
        v32 = v69;
        v33 = (v69)(v30);
        v34 = v32();
        v35 = *v62;
        (*v62)(v29, v12);
        v35(v27, v12);
        if (v34 >= v33)
        {
          v36 = v66;
          v23 += v66;
          if (a1 < v31 || a1 >= v23)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v26;
          }

          else
          {
            a3 = v26;
            if (a1 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v71 = v23;
        }

        else
        {
          v36 = v66;
          if (a1 < a2 || a1 >= a2 + v66)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v36;
            a3 = v26;
          }

          else
          {
            a3 = v26;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v36;
          }
        }

        a1 += v36;
        v72 = a1;
      }

      while (v23 < v65 && a2 < a3);
    }
  }

LABEL_59:
  sub_262901E90(&v72, &v71, &v70, v57);
  return 1;
}

unint64_t sub_262900C48(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v65 = a6;
  v66 = a5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490);
  v12 = *(*(v64 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v64);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v61 = &v54 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  result = MEMORY[0x28223BE20](v18);
  v23 = &v54 - v22;
  v63 = *(v24 + 72);
  if (!v63)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  result = a2;
  if (a2 - a1 == 0x8000000000000000 && v63 == -1)
  {
    goto LABEL_67;
  }

  v25 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v63 != -1)
  {
    v62 = a3;
    v26 = (a2 - a1) / v63;
    v70 = a1;
    v69 = a4;
    if (v26 < v25 / v63)
    {
      v27 = v26 * v63;
      if (a4 < a1 || a1 + v27 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      result = a2;
LABEL_17:
      v61 = a4 + v27;
      v67 = v6;
      v68 = a4 + v27;
      if (v27 >= 1 && result < v62)
      {
        v30 = &qword_27FF2EE10;
        v60 = v20;
        while (1)
        {
          v31 = result;
          sub_2628DF954(result, v23, v30, &qword_26294F490);
          sub_2628DF954(a4, v20, v30, &qword_26294F490);
          v32 = v30;
          v33 = v67;
          v34 = v66(v23, v20);
          v67 = v33;
          if (v33)
          {
            break;
          }

          v35 = v34;
          sub_2628DF6F0(v20, v30, &qword_26294F490);
          sub_2628DF6F0(v23, v30, &qword_26294F490);
          if (v35)
          {
            v36 = v63;
            if (a1 < v31 || a1 >= v31 + v63)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = v31 + v36;
          }

          else
          {
            v36 = v63;
            v37 = a4 + v63;
            if (a1 < a4 || a1 >= v37)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v69 = v37;
            a4 += v36;
            result = v31;
          }

          a1 += v36;
          v70 = a1;
          if (a4 < v61)
          {
            v30 = v32;
            v20 = v60;
            if (result < v62)
            {
              continue;
            }
          }

          goto LABEL_65;
        }

        sub_2628DF6F0(v20, &qword_27FF2EE10, &qword_26294F490);
        sub_2628DF6F0(v23, &qword_27FF2EE10, &qword_26294F490);
      }

LABEL_65:
      sub_262901F78(&v70, &v69, &v68);
      return 1;
    }

    v28 = v25 / v63 * v63;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_41:
        v38 = a4 + v28;
        if (v28 >= 1)
        {
          v39 = v62;
          v40 = -v63;
          v41 = v38;
          v57 = v15;
          v58 = a1;
          do
          {
            v55 = v38;
            v59 = result;
            v60 = (result + v40);
            while (1)
            {
              if (result <= a1)
              {
                v67 = v7;
                v70 = result;
                v38 = v55;
                goto LABEL_62;
              }

              v63 = v39;
              v43 = v7;
              v44 = a4;
              v56 = v38;
              v67 = v41;
              v62 = v41 + v40;
              v45 = v61;
              sub_2628DF954(v41 + v40, v61, &qword_27FF2EE10, &qword_26294F490);
              sub_2628DF954(v60, v15, &qword_27FF2EE10, &qword_26294F490);
              v46 = v66(v45, v15);
              if (v43)
              {
                sub_2628DF6F0(v15, &qword_27FF2EE10, &qword_26294F490);
                sub_2628DF6F0(v45, &qword_27FF2EE10, &qword_26294F490);
                v70 = v59;
                v68 = v56;
                goto LABEL_65;
              }

              v47 = v46;
              v48 = v63;
              v49 = v63 + v40;
              sub_2628DF6F0(v15, &qword_27FF2EE10, &qword_26294F490);
              sub_2628DF6F0(v45, &qword_27FF2EE10, &qword_26294F490);
              if (v47)
              {
                break;
              }

              v50 = v62;
              v38 = v62;
              v39 = v49;
              if (v48 < v67 || v49 >= v67)
              {
                v42 = v62;
                swift_arrayInitWithTakeFrontToBack();
                v38 = v42;
                a4 = v44;
              }

              else
              {
                a4 = v44;
                if (v48 != v67)
                {
                  v51 = v62;
                  swift_arrayInitWithTakeBackToFront();
                  v38 = v51;
                }
              }

              v41 = v38;
              v7 = 0;
              v15 = v57;
              a1 = v58;
              result = v59;
              if (v50 <= a4)
              {
                goto LABEL_59;
              }
            }

            v39 = v49;
            if (v48 < v59 || v49 >= v59)
            {
              v53 = v60;
              swift_arrayInitWithTakeFrontToBack();
              result = v53;
              a4 = v44;
            }

            else
            {
              result = v60;
              a4 = v44;
              if (v48 != v59)
              {
                v52 = v60;
                swift_arrayInitWithTakeBackToFront();
                result = v52;
              }
            }

            v41 = v67;
            v7 = 0;
            v15 = v57;
            a1 = v58;
            v38 = v56;
          }

          while (v67 > a4);
        }

LABEL_59:
        v67 = v7;
        v70 = result;
LABEL_62:
        v68 = v38;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = a2;
    goto LABEL_41;
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_2629012B8(char *a1, char *a2, unint64_t a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v92 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v98 = (&v90 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v95 = &v90 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v103 = &v90 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v94 = &v90 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v100 = &v90 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v97 = &v90 - v23;
  MEMORY[0x28223BE20](v22);
  v102 = &v90 - v24;
  v108 = sub_26294C4F8();
  v25 = *(v108 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v108);
  v91 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v30 = MEMORY[0x28223BE20](v29);
  v93 = &v90 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = (a2 - a1) / 40;
  v106 = a3;
  v35 = a3 - a2;
  v36 = v35 / 40;
  if (v34 < v35 / 40)
  {
    v37 = a4;
    v103 = &v90 - v32;
    if (a4 != a1 || &a1[40 * v34] <= a4)
    {
      memmove(a4, a1, 40 * v34);
    }

    v101 = &a4[40 * v34];
    if (a2 - a1 < 40 || a2 >= v106)
    {
LABEL_51:
      v87 = a1;
      goto LABEL_53;
    }

    v38 = (v25 + 48);
    v95 = (v25 + 8);
    v96 = (v25 + 48);
    v99 = (v25 + 32);
    while (1)
    {
      v104 = a1;
      sub_262906C54(a2, v111);
      v107 = v37;
      sub_262906C54(v37, v109);
      v39 = v108;
      __swift_project_boxed_opaque_existential_1(v111, v112);
      v40 = v102;
      sub_26294C608();
      v41 = *v38;
      v42 = (*v38)(v40, 1, v39);
      v105 = a2;
      if (v42 != 1)
      {
        v98 = *v99;
        v98(v103, v102, v39);
        __swift_project_boxed_opaque_existential_1(v109, v110);
        v40 = v97;
        sub_26294C608();
        if (v41(v40, 1, v39) != 1)
        {
          v53 = v93;
          v98(v93, v40, v39);
          v54 = v103;
          v51 = sub_26294C4D8();
          v55 = *v95;
          (*v95)(v53, v39);
          v55(v54, v39);
          v47 = v104;
          a2 = v105;
          v52 = v106;
          v37 = v107;
          v38 = v96;
          goto LABEL_16;
        }

        (*v95)(v103, v39);
        v38 = v96;
      }

      sub_2628DF6F0(v40, &qword_27FF2E978, &qword_26294EC40);
      v43 = v100;
      sub_26294C608();
      v44 = v41(v43, 1, v39);
      sub_2628DF6F0(v43, &qword_27FF2E978, &qword_26294EC40);
      if (v44 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v109);
        __swift_destroy_boxed_opaque_existential_1Tm(v111);
        v52 = v106;
        v37 = v107;
        v47 = v104;
        a2 = v105;
LABEL_17:
        v56 = v37;
        v57 = v47 == v37;
        v37 += 40;
        if (v57)
        {
          goto LABEL_19;
        }

LABEL_18:
        v58 = *v56;
        v59 = *(v56 + 1);
        *(v47 + 4) = *(v56 + 4);
        *v47 = v58;
        *(v47 + 1) = v59;
        goto LABEL_19;
      }

      __swift_project_boxed_opaque_existential_1(v109, v110);
      v45 = v94;
      sub_26294C608();
      v46 = v41(v45, 1, v108);
      sub_2628DF6F0(v45, &qword_27FF2E978, &qword_26294EC40);
      v37 = v107;
      v47 = v104;
      if (v46 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v109);
        __swift_destroy_boxed_opaque_existential_1Tm(v111);
        a2 = v105;
        v52 = v106;
        goto LABEL_23;
      }

      __swift_project_boxed_opaque_existential_1(v111, v112);
      sub_26294C618();
      v49 = v48;
      __swift_project_boxed_opaque_existential_1(v109, v110);
      sub_26294C618();
      v51 = v50 < v49;
      a2 = v105;
      v52 = v106;
LABEL_16:
      __swift_destroy_boxed_opaque_existential_1Tm(v109);
      __swift_destroy_boxed_opaque_existential_1Tm(v111);
      if ((v51 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_23:
      v56 = a2;
      v57 = v47 == a2;
      a2 += 40;
      if (!v57)
      {
        goto LABEL_18;
      }

LABEL_19:
      a1 = v47 + 40;
      if (v37 >= v101 || a2 >= v52)
      {
        goto LABEL_51;
      }
    }
  }

  v100 = v33;
  if (a4 != a2 || &a2[40 * v36] <= a4)
  {
    memmove(a4, a2, 40 * v36);
  }

  v101 = &a4[40 * v36];
  v37 = a4;
  if (v35 < 40 || a2 <= a1)
  {
    v87 = a2;
    goto LABEL_53;
  }

  v104 = a1;
  v93 = (v25 + 8);
  v60 = v106;
  v61 = a2;
  v107 = a4;
  v102 = (v25 + 48);
  v94 = (v25 + 32);
  do
  {
    v105 = v61;
    v62 = (v61 - 40);
    v63 = (v101 - 40);
    v60 -= 40;
    v99 = v61 - 40;
    while (1)
    {
      sub_262906C54(v63, v111);
      sub_262906C54(v62, v109);
      v66 = v113;
      v67 = __swift_project_boxed_opaque_existential_1(v111, v112);
      v68 = v103;
      sub_26294C608();
      v69 = *v102;
      if ((*v102)(v68, 1, v108) != 1)
      {
        v97 = v67;
        v101 = v66;
        v106 = v60;
        v70 = v108;
        v96 = *v94;
        (v96)(v100, v103, v108);
        __swift_project_boxed_opaque_existential_1(v109, v110);
        v68 = v95;
        sub_26294C608();
        if (v69(v68, 1, v70) != 1)
        {
          v79 = v91;
          v80 = v108;
          (v96)(v91, v68, v108);
          v81 = v100;
          v74 = sub_26294C4D8();
          v82 = *v93;
          (*v93)(v79, v80);
          v82(v81, v80);
          v60 = v106;
          v37 = v107;
          goto LABEL_43;
        }

        (*v93)(v100, v108);
        v60 = v106;
      }

      v106 = v63;
      sub_2628DF6F0(v68, &qword_27FF2E978, &qword_26294EC40);
      v71 = v98;
      sub_26294C608();
      v101 = v69;
      v72 = v69(v71, 1, v108);
      sub_2628DF6F0(v71, &qword_27FF2E978, &qword_26294EC40);
      if (v72 == 1)
      {
        __swift_project_boxed_opaque_existential_1(v109, v110);
        v73 = v92;
        sub_26294C608();
        v74 = 1;
        v75 = (v101)(v73, 1, v108);
        sub_2628DF6F0(v73, &qword_27FF2E978, &qword_26294EC40);
        v63 = v106;
        v37 = v107;
        if (v75 == 1)
        {
          __swift_project_boxed_opaque_existential_1(v111, v112);
          sub_26294C618();
          v77 = v76;
          __swift_project_boxed_opaque_existential_1(v109, v110);
          sub_26294C618();
          v74 = v78 < v77;
        }
      }

      else
      {
        v74 = 0;
        v63 = v106;
        v37 = v107;
      }

LABEL_43:
      __swift_destroy_boxed_opaque_existential_1Tm(v109);
      __swift_destroy_boxed_opaque_existential_1Tm(v111);
      if (v74)
      {
        break;
      }

      if (v60 + 40 != v63 + 40)
      {
        v83 = *v63;
        v84 = *(v63 + 16);
        *(v60 + 32) = *(v63 + 32);
        *v60 = v83;
        *(v60 + 16) = v84;
      }

      v64 = v63 - 40;
      v60 -= 40;
      v65 = v63 > v37;
      v63 -= 40;
      v62 = v99;
      if (!v65)
      {
        v101 = (v64 + 40);
        v87 = v105;
        goto LABEL_53;
      }
    }

    v87 = v99;
    if ((v60 + 40) != v105)
    {
      v85 = *v99;
      v86 = *(v99 + 1);
      *(v60 + 32) = *(v99 + 4);
      *v60 = v85;
      *(v60 + 16) = v86;
    }

    v101 = (v63 + 40);
    if (v63 + 40 <= v37)
    {
      break;
    }

    v61 = v87;
  }

  while (v87 > v104);
  v101 = (v63 + 40);
LABEL_53:
  v88 = (v101 - v37) / 40;
  if (v87 != v37 || v87 >= &v37[40 * v88])
  {
    memmove(v87, v37, 40 * v88);
  }

  return 1;
}

uint64_t sub_262901DF0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_262901E7C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_262901E90(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_262901F78(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_262902068(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED20, &unk_262950040);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_26290216C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_26294C7F8();
  v5 = MEMORY[0x277D48E80];
  sub_262906CE0(&qword_27FF2ECF0, MEMORY[0x277D48E80]);
  v6 = sub_26294DD38();
  return sub_262903DEC(a1, v6, MEMORY[0x277D48E80], &qword_27FF2ED30, v5, MEMORY[0x277D48E90]);
}

unint64_t sub_262902240(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_26294DC58();
  v5 = MEMORY[0x277D49298];
  sub_262906CE0(&qword_27FF2EE70, MEMORY[0x277D49298]);
  v6 = sub_26294DD38();
  return sub_262903DEC(a1, v6, MEMORY[0x277D49298], &qword_27FF2EE80, v5, MEMORY[0x277D492B0]);
}

unint64_t sub_262902314(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_26294C538();
  v5 = MEMORY[0x277CC95F0];
  sub_262906CE0(&qword_27FF2EE48, MEMORY[0x277CC95F0]);
  v6 = sub_26294DD38();
  return sub_262903DEC(a1, v6, MEMORY[0x277CC95F0], &qword_27FF2EE58, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_2629023E8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_26294CCE8();
  v5 = MEMORY[0x277D49008];
  sub_262906CE0(&qword_27FF2ED50, MEMORY[0x277D49008]);
  v6 = sub_26294DD38();
  return sub_262903DEC(a1, v6, MEMORY[0x277D49008], &qword_27FF2ED58, v5, MEMORY[0x277D49018]);
}

unint64_t sub_2629024BC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_26294CC38();
  v5 = MEMORY[0x277D48FA8];
  sub_262906CE0(&qword_27FF2ED08, MEMORY[0x277D48FA8]);
  v6 = sub_26294DD38();
  return sub_262903DEC(a1, v6, MEMORY[0x277D48FA8], &qword_27FF2ED10, v5, MEMORY[0x277D48FB8]);
}

unint64_t sub_262902590(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26294E098();
  sub_26294DD88();
  v6 = sub_26294E0B8();

  return sub_262903F8C(a1, a2, v6);
}

uint64_t sub_262902608(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_26294C7F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECE8, &qword_26294F258);
  v43 = a2;
  result = sub_26294E028();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_262906CE0(&qword_27FF2ECF0, MEMORY[0x277D48E80]);
      result = sub_26294DD38();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_2629029E4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_26294DC58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE68, &qword_26294F4D8);
  v43 = a2;
  result = sub_26294E028();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_262906CE0(&qword_27FF2EE70, MEMORY[0x277D49298]);
      result = sub_26294DD38();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_262902DC0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_26294C538();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE40, &qword_26294F4C0);
  v43 = a2;
  result = sub_26294E028();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_262906CE0(&qword_27FF2EE48, MEMORY[0x277CC95F0]);
      result = sub_26294DD38();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_26290319C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_26294C7F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE38, &qword_26294F4B8);
  v43 = a2;
  result = sub_26294E028();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_262906CE0(&qword_27FF2ECF0, MEMORY[0x277D48E80]);
      result = sub_26294DD38();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_262903578(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_26294CCE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED48, &qword_26294F298);
  v43 = a2;
  result = sub_26294E028();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_262906CE0(&qword_27FF2ED50, MEMORY[0x277D49008]);
      result = sub_26294DD38();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_262903954(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_26294CC38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED00, &qword_26294F268);
  v43 = a2;
  result = sub_26294E028();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_262906CE0(&qword_27FF2ED08, MEMORY[0x277D48FA8]);
      result = sub_26294DD38();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_262903D30(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

unint64_t sub_262903DEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_262906CE0(v24, v25);
      v20 = sub_26294DD48();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_262903F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26294E058())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_262904044(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v37 = a1(0);
  v39 = *(v37 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_26294E018();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v32 = v6;
    v33 = (v9 + 64);
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, v33, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v39;
        v26 = *(v39 + 72) * v24;
        v28 = v36;
        v27 = v37;
        (*(v39 + 16))(v36, *(v9 + 48) + v26, v37);
        v29 = *(*(v9 + 56) + 8 * v24);
        v30 = v38;
        (*(v25 + 32))(*(v38 + 48) + v26, v28, v27);
        *(*(v30 + 56) + 8 * v24) = v29;

        v19 = v40;
      }

      while (v40);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32;
        v11 = v38;
        goto LABEL_21;
      }

      v23 = *(v33 + v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v40 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

uint64_t sub_2629042C0(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_26294CB98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v42 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = *a1;
  result = sub_26290489C(*a1, a2);
  if (!v2)
  {
    v19 = v16;
    v56 = 0;
    if (v18)
    {
      return *(v16 + 16);
    }

    v50 = v15;
    v45 = v13;
    v46 = v10;
    v54 = v5;
    v55 = result;
    v44 = a1;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = v19;
      v23 = v19 + 2;
      v22 = v19[2];
      if (v20 == v22)
      {
        return v55;
      }

      v48 = v6;
      v49 = (v6 + 8);
      v43 = (v6 + 40);
      v47 = a2;
      v53 = v6 + 16;
      while (v20 < v22)
      {
        v24 = v21;
        v51 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v25 = v21 + v51;
        v26 = *(v6 + 72);
        v27 = *(v6 + 16);
        v52 = v26 * v20;
        v28 = v21 + v51 + v26 * v20;
        v29 = v50;
        v30 = v54;
        v27(v50, v28, v54);
        v31 = v56;
        v32 = sub_2628F4274(v29, a2);
        v56 = v31;
        if (v31)
        {
          return (*v49)(v29, v30);
        }

        v33 = v32;
        result = (*v49)(v29, v30);
        if (v33)
        {
          a2 = v47;
          v6 = v48;
          v21 = v24;
        }

        else
        {
          v34 = v55;
          v21 = v24;
          if (v20 == v55)
          {
            a2 = v47;
            v6 = v48;
          }

          else
          {
            if ((v55 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v35 = *v23;
            if (v55 >= *v23)
            {
              goto LABEL_27;
            }

            v36 = v26 * v55;
            v37 = v54;
            result = (v27)(v45, &v25[v26 * v55], v54);
            if (v20 >= v35)
            {
              goto LABEL_28;
            }

            v38 = v52;
            v27(v46, &v25[v52], v37);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_26291DD00(v21);
            }

            a2 = v47;
            v6 = v48;
            v39 = v21 + v51;
            v40 = *v43;
            v41 = v54;
            result = (*v43)(v21 + v51 + v36, v46, v54);
            if (v20 >= v21[2])
            {
              goto LABEL_29;
            }

            result = v40(&v39[v38], v45, v41);
            *v44 = v21;
            v34 = v55;
          }

          v55 = v34 + 1;
        }

        ++v20;
        v23 = v21 + 2;
        v22 = v21[2];
        if (v20 == v22)
        {
          return v55;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26290463C(unint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  sub_26290497C(*a1, a2);
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_26294E008();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v25 = a1;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_26294E008())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x26672D5B0](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v26 = v12;
    v14 = sub_2628F6CF4(&v26, a2);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x26672D5B0](v2, v6);
    v16 = MEMORY[0x26672D5B0](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v17)
    {
      goto LABEL_46;
    }

    if (v10 >= v17)
    {
      goto LABEL_47;
    }

    v18 = *(v6 + 32 + 8 * v10);
    v15 = *(v6 + 32 + 8 * v2);
    v16 = v18;
  }

  v19 = v16;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_26291DD4C(v6);
    v20 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v20) = 0;
  }

  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v19;

  if ((v6 & 0x8000000000000000) == 0 && !v20)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_26291DD4C(v6);
  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v21 + 16))
    {
      goto LABEL_44;
    }

    v23 = v21 + 8 * v10;
    v24 = *(v23 + 32);
    *(v23 + 32) = v15;

    *v25 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
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
  return sub_26294E008();
}

uint64_t sub_26290489C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(sub_26294CB98() - 8);
  v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  while (1)
  {
    v10 = sub_2628F4274(v8, a2);
    if (v2 || (v10 & 1) != 0)
    {
      break;
    }

    ++v6;
    v8 += v9;
    if (v3 == v6)
    {
      return 0;
    }
  }

  return v6;
}

void sub_26290497C(unint64_t a1, uint64_t *a2)
{
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v6 = sub_26294E008();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26672D5B0](v7, a1);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a1 + 8 * v7 + 32);
    }

    v9 = v8;
    v12 = v8;
    v10 = sub_2628F6CF4(&v12, a2);

    if (v2 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_262904B78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490);
  v39 = *(v42 - 8);
  v8 = *(v39 + 64);
  v9 = MEMORY[0x28223BE20](v42);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = (&v36 - v12);
  v43 = a4;
  v15 = *(a4 + 64);
  v14 = a4 + 64;
  v13 = v15;
  v16 = -1 << *(v14 - 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  if (!a2)
  {
LABEL_18:
    v25 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v43;
    a1[1] = v14;
    a1[2] = ~v16;
    a1[3] = v25;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(v14 - 32);
    v37 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    v38 = a3;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v19;
      v26 = v24 | (v19 << 6);
      v27 = v43;
      v28 = *(v43 + 48);
      v29 = sub_26294C538();
      v30 = *(v29 - 8);
      v31 = v28 + *(v30 + 72) * v26;
      v32 = v41;
      (*(v30 + 16))(v41, v31, v29);
      *&v32[*(v42 + 48)] = *(*(v27 + 56) + 8 * v26);
      v33 = v32;
      a1 = v40;
      sub_262906F00(v33, v40, &qword_27FF2EE10, &qword_26294F490);
      sub_262906F00(a1, a2, &qword_27FF2EE10, &qword_26294F490);
      a3 = v38;
      if (v21 == v38)
      {

        goto LABEL_23;
      }

      a2 += *(v39 + 72);

      result = v21;
      v34 = __OFADD__(v21++, 1);
      v19 = v25;
      if (v34)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v14 + 8 * v23);
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v35 = v19 + 1;
    }

    else
    {
      v35 = v20;
    }

    v25 = v35 - 1;
    a3 = result;
LABEL_23:
    v16 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_262904E38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_262905600(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_262904ED0(char *a1, unint64_t a2, uint64_t a3, void (**a4)(char *, uint64_t))
{
  v55 = a3;
  v56 = a4;
  v54 = a2;
  v5 = sub_26294C9D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_26294C5F8();
  v51 = *(v52 - 8);
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v52);
  v50 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26294CA28();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v53 = a1;
  v18 = *&a1[v17];
  v19 = MEMORY[0x277D84F90];
  v68 = MEMORY[0x277D84F90];
  v20 = *(v18 + 16);

  v64 = v20;
  if (v20)
  {
    v22 = 0;
    v67 = v6 + 16;
    v23 = (v6 + 8);
    v60 = (v13 + 8);
    v61 = v13 + 16;
    v58 = v12;
    v59 = v6;
    v57 = v13;
    v62 = v21;
    v63 = v16;
    while (v22 < *(v21 + 16))
    {
      v24 = v21 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v25 = *(v13 + 72);
      v66 = v22;
      (*(v13 + 16))(v16, v24 + v25 * v22, v12);
      v26 = sub_26294C928();
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = *(v6 + 80);
        v65 = v26;
        v29 = v26 + ((v28 + 32) & ~v28);
        v30 = *(v6 + 72);
        v31 = *(v6 + 16);
        v31(v9, v29, v5);
        while (1)
        {
          if (sub_26294C9B8())
          {
            sub_26294C948();
            MEMORY[0x26672D3D0]();
            if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_26294DDD8();
            }

            sub_26294DDF8();
            (*v23)(v9, v5);
            v19 = v68;
          }

          else
          {
            (*v23)(v9, v5);
          }

          v29 += v30;
          if (!--v27)
          {
            break;
          }

          v31(v9, v29, v5);
        }

        v12 = v58;
        v6 = v59;
        v13 = v57;
      }

      else
      {
      }

      v22 = v66 + 1;
      v16 = v63;
      (*v60)(v63, v12);
      v21 = v62;
      if (v22 == v64)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_16:

  if (v19 >> 62)
  {
LABEL_20:
    v32 = sub_26294E008();
    goto LABEL_18;
  }

  v32 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:

  v33 = *MEMORY[0x277D48E08];
  v34 = v51;
  v35 = *(v51 + 104);
  v36 = v50;
  v37 = v52;
  v35(v50, v33, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v38 = swift_allocObject();
  v39 = MEMORY[0x277D83B88];
  *(v38 + 16) = xmmword_26294ECB0;
  v40 = MEMORY[0x277D83C10];
  *(v38 + 56) = v39;
  *(v38 + 64) = v40;
  *(v38 + 32) = v32;
  v41 = sub_26294C6B8();
  v67 = v42;

  v43 = *(v34 + 8);
  v43(v36, v37);
  v35(v36, v33, v37);
  v44 = sub_26294C5E8();
  v46 = v45;
  v43(v36, v37);
  swift_getKeyPath();
  swift_getKeyPath();
  v68 = v41;
  v69 = v67;
  v70 = v44;
  v71 = v46;
  v72 = 1;
  v47 = v53;
  sub_26294D008();
  return sub_2628F5228(v54, v55, v56);
}

uint64_t sub_262905484(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_262905600(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2629056C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26290571C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_262905730(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE88, &qword_26294F4E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE68, &qword_26294F4D8);
    v8 = sub_26294E038();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2628DF954(v10, v6, &qword_27FF2EE88, &qword_26294F4E8);
      result = sub_262902240(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_26294DC58();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_262905918(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v86 = a4;
  v85 = a3;
  v84 = a2;
  v5 = sub_26294CB98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v80 - v12;
  MEMORY[0x28223BE20](v11);
  v87 = &v80 - v14;
  v82 = sub_26294C5F8();
  v81 = *(v82 - 8);
  v15 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v80 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26294CBA8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v98 = (&v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
  swift_beginAccess();
  v83 = a1;
  v22 = *&a1[v21];
  v23 = *(v22 + 16);
  v24 = MEMORY[0x277D84F90];
  v100 = v5;
  v88 = v6;
  v95 = v23;
  if (v23)
  {
    v91 = v22 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v90 = v18 + 16;
    v102 = v6 + 16;
    v24 = (v6 + 8);
    v99 = (v6 + 32);
    v89 = (v18 + 8);

    v26 = 0;
    v103 = v10;
    v27 = MEMORY[0x277D84F90];
    v93 = v18;
    v94 = v17;
    v92 = v25;
    while (v26 < *(v25 + 16))
    {
      v28 = *(v18 + 72);
      v97 = v26;
      (*(v18 + 16))(v98, v91 + v28 * v26, v17);
      v29 = sub_26294CAB8();
      v30 = *(v29 + 16);
      v96 = v29;
      if (v30)
      {
        v101 = (*(v88 + 80) + 32) & ~*(v88 + 80);
        v31 = v29 + v101;
        v32 = *(v88 + 72);
        v33 = *(v88 + 16);
        do
        {
          v33(v13, v31, v5);
          if (sub_26294CB78())
          {
            v33(v103, v13, v5);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_26291D74C(0, *(v27 + 2) + 1, 1, v27);
            }

            v35 = *(v27 + 2);
            v34 = *(v27 + 3);
            if (v35 >= v34 >> 1)
            {
              v27 = sub_26291D74C(v34 > 1, v35 + 1, 1, v27);
            }

            v36 = v100;
            (*v24)(v13, v100);
            *(v27 + 2) = v35 + 1;
            v37 = &v27[v101 + v35 * v32];
            v5 = v36;
            (*v99)(v37, v103, v36);
          }

          else
          {
            (*v24)(v13, v5);
          }

          v31 += v32;
          --v30;
        }

        while (v30);
      }

      v26 = v97 + 1;
      v17 = v94;
      (*v89)(v98, v94);

      v25 = v92;
      v18 = v93;
      if (v26 == v95)
      {

        v24 = MEMORY[0x277D84F90];
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_18;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_17:
  v26 = *(v27 + 2);
  if (qword_27FF2E7C0 != -1)
  {
    goto LABEL_30;
  }

LABEL_18:
  v38 = sub_26294CE48();
  __swift_project_value_buffer(v38, qword_27FF314B0);

  v39 = sub_26294CE28();
  v40 = sub_26294DE98();

  v41 = os_log_type_enabled(v39, v40);
  v101 = v26;
  if (v41)
  {
    v99 = v27;
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v105[0] = v43;
    *v42 = 136315394;
    *(v42 + 4) = sub_2628FB76C(0xD00000000000002FLL, 0x800000026295E6B0, v105);
    *(v42 + 12) = 2080;
    if (v26)
    {
      v95 = v43;
      LODWORD(v96) = v40;
      v97 = v42;
      v98 = v39;
      v104 = v24;
      sub_2628FC960(0, v26, 0);
      v44 = v104;
      v45 = v88 + 16;
      v46 = *(v88 + 16);
      v47 = &v99[(*(v88 + 80) + 32) & ~*(v88 + 80)];
      v102 = *(v88 + 72);
      v103 = v46;
      v48 = (v88 + 8);
      v49 = v26;
      do
      {
        v50 = v87;
        v51 = v5;
        v52 = v5;
        v53 = v45;
        v103(v87, v47, v51);
        v54 = sub_26294CB18();
        v56 = v55;
        (*v48)(v50, v52);
        v104 = v44;
        v58 = v44[2];
        v57 = v44[3];
        if (v58 >= v57 >> 1)
        {
          sub_2628FC960((v57 > 1), v58 + 1, 1);
          v44 = v104;
        }

        v44[2] = (v58 + 1);
        v59 = &v44[2 * v58];
        v59[4] = v54;
        v59[5] = v56;
        v47 += v102;
        --v49;
        v45 = v53;
        v5 = v100;
      }

      while (v49);

      v42 = v97;
      v39 = v98;
      LOBYTE(v40) = v96;
      v43 = v95;
    }

    else
    {

      v44 = MEMORY[0x277D84F90];
    }

    v60 = MEMORY[0x26672D3F0](v44, MEMORY[0x277D837D0]);
    v62 = v61;

    v63 = sub_2628FB76C(v60, v62, v105);

    *(v42 + 14) = v63;
    _os_log_impl(&dword_2628DB000, v39, v40, "%s -- selectedPasses %s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26672DCE0](v43, -1, -1);
    MEMORY[0x26672DCE0](v42, -1, -1);
  }

  else
  {
  }

  v64 = *MEMORY[0x277D48E08];
  v65 = v81;
  v66 = *(v81 + 104);
  v67 = v80;
  v68 = v82;
  v66(v80, v64, v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v69 = swift_allocObject();
  v70 = MEMORY[0x277D83B88];
  *(v69 + 16) = xmmword_26294ECB0;
  v71 = MEMORY[0x277D83C10];
  *(v69 + 56) = v70;
  *(v69 + 64) = v71;
  *(v69 + 32) = v101;
  v72 = sub_26294C6B8();
  v103 = v73;

  v74 = *(v65 + 8);
  v74(v67, v68);
  v66(v67, v64, v68);
  v75 = sub_26294C5E8();
  v77 = v76;
  v74(v67, v68);
  swift_getKeyPath();
  swift_getKeyPath();
  v105[0] = v72;
  v105[1] = v103;
  v105[2] = v75;
  v105[3] = v77;
  v106 = 1;
  v78 = v83;
  sub_26294D008();
  return sub_2628F1ED8(v84, v85, v86);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_2629062B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_26294CB98();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_262906400(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_26291D74C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_2629062B8(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_2629064C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_26294DCC8();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_26294E008();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_26294E008();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2629065C0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_26294E008();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_26294E008();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_2628FBE10(result);

  return sub_2629064C0(v4, v2, 0);
}

uint64_t sub_262906698(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_2629066DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2629070E0;

  return sub_2628EB6B0(a1, v4, v5, v7);
}

uint64_t sub_26290679C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2629067D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2629070E0;

  return sub_2628FB57C(a1, v5);
}

uint64_t sub_26290688C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_262906944;

  return sub_2628FB57C(a1, v5);
}

uint64_t sub_262906944()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_262906AE0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_262906B30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2629070E0;

  return sub_2628EAD64(a1, v4, v5, v6, v7, v9);
}

uint64_t sub_262906C04(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_262906C54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_262906CE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_262906D28()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}