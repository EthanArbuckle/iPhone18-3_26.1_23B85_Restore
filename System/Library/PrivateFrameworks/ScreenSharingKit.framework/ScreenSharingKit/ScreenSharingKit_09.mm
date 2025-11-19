uint64_t sub_264AA7DA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649E0EE4;

  return sub_264AA6F40(a1);
}

uint64_t sub_264AA7E38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649E0EE4;

  return sub_264AA4A28(a1);
}

uint64_t sub_264AA7ED0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264AA1C00();
}

uint64_t sub_264AA7F5C(uint64_t a1)
{
  result = sub_264AABCD0(&qword_27FF8B4D0, type metadata accessor for MediaTransportClientSession);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_264AA7FB4(uint64_t a1)
{
  result = sub_264AABCD0(&qword_27FF8B4D8, type metadata accessor for MediaTransportClientSession);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_264AA802C()
{
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  v0[5] = __swift_project_value_buffer(v1, qword_27FFA71D0);
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Removing and invalidating AV streams", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = v0[4];

  v6 = sub_2649F9A38(0);
  v0[6] = v6;
  if (v6)
  {
    v8 = v7;
    v9 = v6;
    ObjectType = swift_getObjectType();
    v0[3] = v9;
    v11 = *(v8 + 8);
    v23 = (*(v11 + 24) + **(v11 + 24));
    v12 = *(*(v11 + 24) + 4);
    v13 = swift_task_alloc();
    v0[7] = v13;
    *v13 = v0;
    v14 = sub_264AA833C;
LABEL_9:
    v13[1] = v14;

    return v23(ObjectType, v11);
  }

  v15 = v0[4];
  v16 = sub_2649F9A38(1);
  v0[8] = v16;
  if (v16)
  {
    v18 = v17;
    v19 = v16;
    ObjectType = swift_getObjectType();
    v0[2] = v19;
    v11 = *(v18 + 8);
    v23 = (*(v11 + 24) + **(v11 + 24));
    v20 = *(*(v11 + 24) + 4);
    v13 = swift_task_alloc();
    v0[9] = v13;
    *v13 = v0;
    v14 = sub_264AA8648;
    goto LABEL_9;
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_264AA833C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264AA844C, v2, 0);
}

uint64_t sub_264AA844C()
{
  v1 = v0[5];
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Invalidated audio stream", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = v0[6];

  swift_unknownObjectRelease();
  v6 = v0[4];
  v7 = sub_2649F9A38(1);
  v0[8] = v7;
  if (v7)
  {
    v9 = v8;
    v10 = v7;
    ObjectType = swift_getObjectType();
    v0[2] = v10;
    v12 = *(v9 + 8);
    v17 = (*(v12 + 24) + **(v12 + 24));
    v13 = *(*(v12 + 24) + 4);
    v14 = swift_task_alloc();
    v0[9] = v14;
    *v14 = v0;
    v14[1] = sub_264AA8648;

    return v17(ObjectType, v12);
  }

  else
  {
    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_264AA8648()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264AA8758, v2, 0);
}

uint64_t sub_264AA8758()
{
  v1 = v0[5];
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Invalidated video stream", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = v0[8];

  swift_unknownObjectRelease();
  v6 = v0[1];

  return v6();
}

void sub_264AA8834()
{
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v0 = sub_264B40964();
  __swift_project_value_buffer(v0, qword_27FFA71D0);
  oslog = sub_264B40944();
  v1 = sub_264B41474();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2649C6000, oslog, v1, "remoteDisplaySession invalidationHandler", v2, 2u);
    MEMORY[0x266749940](v2, -1, -1);
  }
}

uint64_t sub_264AA891C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_264B41274();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_264A10C20(0, 0, v3, &unk_264B50B90, v6);
}

uint64_t sub_264AA8A60()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v3 = sub_264B40964();
    __swift_project_value_buffer(v3, qword_27FFA71D0);
    v4 = sub_264B40944();
    v5 = sub_264B414B4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2649C6000, v4, v5, "remoteDisplaySession interruptionHandler", v6, 2u);
      MEMORY[0x266749940](v6, -1, -1);
    }

    sub_264AAB93C();
    v7 = swift_allocError();
    v0[7] = v7;
    *v8 = 1;
    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = sub_2649F6A6C;

    return sub_264AA676C(v7);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_264AA8C3C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_264B41274();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  v8[5] = a1;
  v9 = a1;
  sub_264A10C20(0, 0, v5, &unk_264B50B80, v8);
}

uint64_t sub_264AA8D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  return MEMORY[0x2822009F8](sub_264AA8D90, 0, 0);
}

uint64_t sub_264AA8D90()
{
  v28 = v0;
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[10];
    if (v4)
    {
      v5 = v4;
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v6 = sub_264B40964();
      __swift_project_value_buffer(v6, qword_27FFA71D0);
      v7 = v4;
      v8 = sub_264B40944();
      v9 = sub_264B41494();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v27 = v11;
        *v10 = 136446210;
        swift_getErrorValue();
        v13 = v0[5];
        v12 = v0[6];
        v14 = v0[7];
        v15 = sub_264B41B24();
        v17 = sub_2649CC004(v15, v16, &v27);

        *(v10 + 4) = v17;
        _os_log_impl(&dword_2649C6000, v8, v9, "remoteDisplaySession %{public}s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x266749940](v11, -1, -1);
        MEMORY[0x266749940](v10, -1, -1);
      }

      return MEMORY[0x2822009F8](sub_264AA9108, v3, 0);
    }

    else
    {
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v19 = sub_264B40964();
      __swift_project_value_buffer(v19, qword_27FFA71D0);
      v20 = sub_264B40944();
      v21 = sub_264B41494();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2649C6000, v20, v21, "remoteDisplaySession error handler called with no error", v22, 2u);
        MEMORY[0x266749940](v22, -1, -1);
      }

      sub_264AAB93C();
      v23 = swift_allocError();
      v0[13] = v23;
      *v24 = 6;
      v25 = swift_task_alloc();
      v0[14] = v25;
      *v25 = v0;
      v25[1] = sub_264AA937C;

      return sub_264AA676C(v23);
    }
  }

  else
  {
    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_264AA9138()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 88);

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 80);
    v5 = swift_task_alloc();
    *(v0 + 96) = v5;
    *v5 = v0;
    v5[1] = sub_264AA9218;
    v6 = *(v0 + 88);

    return sub_264AA676C(v4);
  }
}

uint64_t sub_264AA9218()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264AA9314, 0, 0);
}

uint64_t sub_264AA9314()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264AA937C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2649F97E4, 0, 0);
}

uint64_t sub_264AA9494(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5, int a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v35 = sub_264B40EB4();
  v38 = *(v35 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_264B40EE4();
  v36 = *(v12 - 8);
  v37 = v12;
  v13 = *(v36 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  v34 = *(a2 + 184);
  v21 = swift_allocObject();
  swift_weakInit();
  (*(v17 + 16))(v20, a1, v16);
  v22 = (*(v17 + 80) + 42) & ~*(v17 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = a3;
  v24 = v31;
  *(v23 + 32) = v31;
  v25 = v33;
  *(v23 + 40) = v32;
  *(v23 + 41) = v25 & 1;
  (*(v17 + 32))(v23 + v22, v20, v16);
  aBlock[4] = sub_264AAB88C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649D68F4;
  aBlock[3] = &block_descriptor_12;
  v26 = _Block_copy(aBlock);

  v27 = a3;
  v28 = v24;
  sub_264B40EC4();
  v39 = MEMORY[0x277D84F90];
  sub_264AABCD0(&qword_27FF892C0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
  sub_2649CB4C8(&qword_27FF892D0, &qword_27FF88A78, &qword_264B473A0);
  v29 = v35;
  sub_264B41684();
  MEMORY[0x266748860](0, v15, v11, v26);
  _Block_release(v26);
  (*(v38 + 8))(v11, v29);
  (*(v36 + 8))(v15, v37);
}

uint64_t sub_264AA9898(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  [a2 setDispatchQueue_];
  [a2 setMessenger_];
  [a2 setTrafficFlags_];
  v10 = 0x277CCA000uLL;
  v11 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  v12 = [v11 processIdentifier];

  if ((v12 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v40 = a4;
  v13 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  a4 = sub_2649D2500();
  v39 = v14;

  v10 = sub_2649C90C4();
  if (qword_27FF883E8 != -1)
  {
LABEL_19:
    swift_once();
  }

  v15 = sub_264B40964();
  __swift_project_value_buffer(v15, qword_27FFA71D0);
  v16 = sub_264B40944();
  v17 = sub_264B414B4();
  v41 = a5;
  if (os_log_type_enabled(v16, v17))
  {
    v37 = v10;
    v18 = v12;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v44 = v20;
    *v19 = 134349570;
    *(v19 + 4) = v18;
    *(v19 + 12) = 2082;
    v42 = a4;
    v43 = v39 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B500, &qword_264B50B10);
    v21 = sub_264B41064();
    v23 = sub_2649CC004(v21, v22, &v44);

    *(v19 + 14) = v23;
    v10 = v37;
    *(v19 + 22) = 2050;
    *(v19 + 24) = v37;
    _os_log_impl(&dword_2649C6000, v16, v17, "currentProcessID: %{public}llu, currentProcessUPID: %{public}s, AVCDaemonUPID: %{public}llu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x266749940](v20, -1, -1);
    MEMORY[0x266749940](v19, -1, -1);
  }

  v24 = v40;
  if (v40)
  {
    v25 = a4;
  }

  else
  {
    v25 = v10;
  }

  if (v40 & 1) != 0 && (v39)
  {
    v26 = sub_264B40944();
    v27 = sub_264B41494();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v38 = v10;
      v29 = swift_slowAlloc();
      v42 = v29;
      *v28 = 136446210;
      LOBYTE(v44) = v41 & 1;
      v30 = sub_264B41064();
      v32 = sub_2649CC004(v30, v31, &v42);

      *(v28 + 4) = v32;
      v24 = v40;
      _os_log_impl(&dword_2649C6000, v26, v27, "Unable to fetch current process's UPID, falling back to out-of-process for stream: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x266749940](v29, -1, -1);
      MEMORY[0x266749940](v28, -1, -1);

      v25 = v38;
    }

    else
    {

      v25 = v10;
    }
  }

  v33 = sub_264B40944();
  v34 = sub_264B414B4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 67240448;
    *(v35 + 4) = v24 & 1;
    *(v35 + 8) = 2050;
    *(v35 + 10) = v25;
    _os_log_impl(&dword_2649C6000, v33, v34, "runInProcess = %{BOOL,public}d, delegateProcessUPID = %{public}llu", v35, 0x12u);
    MEMORY[0x266749940](v35, -1, -1);
  }

  [a2 setDelegatedProcessUPID_];
  [a2 setStreamType_];
  [a2 setStreamFlags_];
  v36 = sub_264B41014();
  [a2 setStreamID_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
}

uint64_t sub_264AA9D78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  (*(v5 + 16))(&v15 - v7, a1, v4);
  v9 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_tearDownContinuations;
  v10 = *(a2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_tearDownContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v9) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_2649D8028(0, v10[2] + 1, 1, v10);
    *(a2 + v9) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_2649D8028(v12 > 1, v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  result = (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v8, v4);
  *(a2 + v9) = v10;
  return result;
}

unint64_t sub_264AA9F00@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_264B41B84();
  MEMORY[0x266748E90](a1 & 1);
  result = sub_264B41BB4();
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != (a1 & 1))
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    v14 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_264A14E38();
      v13 = v14;
    }

    *a2 = *(*(v13 + 48) + v9);
    result = sub_264AAA3F4(v9);
    *v2 = v14;
  }

  else
  {
LABEL_5:
    *a2 = 2;
  }

  return result;
}

uint64_t sub_264AAA010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_264B40104();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_264AABCD0(&qword_27FF89470, MEMORY[0x277CC95F0]);
  v35 = a1;
  v13 = sub_264B40F84();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_264AABCD0(&unk_27FF89390, MEMORY[0x277CC95F0]);
      v22 = sub_264B40F94();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_264A14F7C();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_264AAA59C(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_264AAA2B8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_264B41B84();
  sub_264B41084();
  v7 = sub_264B41BB4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_264B41AA4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_264A151B4();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_264AAA8A4(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_264AAA3F4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_264B416A4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + v6);
        sub_264B41B84();
        MEMORY[0x266748E90](v12);
        v13 = sub_264B41BB4() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + v2);
          v16 = (v14 + v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_264AAA59C(int64_t a1)
{
  v3 = sub_264B40104();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x28223BE20](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_264B416A4();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_264AABCD0(&qword_27FF89470, MEMORY[0x277CC95F0]);
        v27 = sub_264B40F84();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_264AAA8A4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_264B416A4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_264B41B84();

        sub_264B41084();
        v15 = sub_264B41BB4();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_264AAAA68(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_264AAACA4();
  result = MEMORY[0x266748730](v2, &type metadata for ControlMessageReliability, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_264A12A80(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_264AAAB44(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x266748730](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_264A130D8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_264AAABDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_264A54FD4();
  result = MEMORY[0x266748730](v2, &type metadata for SceneInteractorBlockedReasons, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_264A13228(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_264AAAC50()
{
  result = qword_27FF8B4E0;
  if (!qword_27FF8B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B4E0);
  }

  return result;
}

unint64_t sub_264AAACA4()
{
  result = qword_27FF8B4E8;
  if (!qword_27FF8B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B4E8);
  }

  return result;
}

id sub_264AAACF8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, unint64_t *a6, void (*a7)(uint64_t))
{
  v41 = a3;
  v42 = a2;
  v40 = a1;
  v11 = sub_264B3FFD4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_264AABCD0(a6, a7);
  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState] = 0;
  v16 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_stateContinuation;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  (*(*(v17 - 8) + 56))(&a5[v16], 1, 1, v17);
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_interruptionError] = 0;
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_negotiator] = 0;
  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_clientActivated] = 0;
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream____lazy_storage___screenCapture] = 0;
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_remoteVideoClient] = 0;
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentVideoLayer] = 0;
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStream] = 0;
  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_isVideoStreamRunning] = 0;
  v18 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStreamDelegateContinuation;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B4F8, &unk_264B50AF0);
  (*(*(v19 - 8) + 56))(&a5[v18], 1, 1, v19);
  v20 = &a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentSession];
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentSession + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_streamDidStopContinuation;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v22 - 8) + 56))(&a5[v21], 1, 1, v22);
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_tearDownContinuations] = MEMORY[0x277D84F90];
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v23 = sub_264B40964();
  __swift_project_value_buffer(v23, qword_27FFA71D0);
  v24 = sub_264B41484();
  sub_264B3FF94();
  v25 = sub_264B3FFA4();
  v27 = v26;
  (*(v12 + 8))(v15, v11);

  v28 = sub_264B40944();

  if (os_log_type_enabled(v28, v24))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v43 = v30;
    *v29 = 136446722;
    v31 = sub_2649CC004(v25, v27, &v43);

    *(v29 + 4) = v31;
    *(v29 + 12) = 2050;
    *(v29 + 14) = 88;
    *(v29 + 22) = 2082;
    *(v29 + 24) = sub_2649CC004(0xD000000000000032, 0x8000000264B5F190, &v43);
    _os_log_impl(&dword_2649C6000, v28, v24, "%{public}s:%{public}ld %{public}s", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v30, -1, -1);
    MEMORY[0x266749940](v29, -1, -1);
  }

  else
  {
  }

  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_role] = v40 & 1;
  v32 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_sessionID;
  v33 = sub_264B40104();
  v34 = *(v33 - 8);
  (*(v34 + 16))(&a5[v32], a4, v33);
  *(v20 + 1) = v39;
  swift_unknownObjectWeakAssign();
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_rapportStream] = v42;
  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_isNegotiationComplete] = 0;
  v35 = type metadata accessor for MediaTransportVideoStream();
  v44.receiver = a5;
  v44.super_class = v35;
  v36 = objc_msgSendSuper2(&v44, sel_init);
  (*(v34 + 8))(a4, v33);
  return v36;
}

id sub_264AAB22C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, unint64_t *a6, void (*a7)(uint64_t))
{
  v42 = a3;
  v43 = a2;
  v41 = a1;
  v11 = sub_264B3FFD4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_264AABCD0(a6, a7);
  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_streamType] = 0;
  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState] = 0;
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_interruptionError] = 0;
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_audioStream] = 0;
  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_isAudioStreamRunning] = 0;
  v16 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_audioStreamDelegateContinuation;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF897C8, &unk_264B50B00);
  (*(*(v17 - 8) + 56))(&a5[v16], 1, 1, v17);
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_negotiator] = 0;
  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_clientActivated] = 0;
  v18 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_stateContinuation;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  (*(*(v19 - 8) + 56))(&a5[v18], 1, 1, v19);
  v20 = &a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentSession];
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentSession + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_streamDidStopContinuation;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v22 - 8) + 56))(&a5[v21], 1, 1, v22);
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_tearDownContinuations] = MEMORY[0x277D84F90];
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v23 = sub_264B40964();
  __swift_project_value_buffer(v23, qword_27FFA71D0);
  v24 = sub_264B41484();
  sub_264B3FF94();
  v25 = sub_264B3FFA4();
  v27 = v26;
  (*(v12 + 8))(v15, v11);

  v28 = sub_264B40944();

  if (os_log_type_enabled(v28, v24))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v44 = v30;
    *v29 = 136446722;
    v31 = sub_2649CC004(v25, v27, &v44);

    *(v29 + 4) = v31;
    *(v29 + 12) = 2050;
    *(v29 + 14) = 143;
    *(v29 + 22) = 2082;
    *(v29 + 24) = sub_2649CC004(0xD000000000000032, 0x8000000264B5F190, &v44);
    _os_log_impl(&dword_2649C6000, v28, v24, "%{public}s:%{public}ld %{public}s", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v30, -1, -1);
    MEMORY[0x266749940](v29, -1, -1);
  }

  else
  {
  }

  v32 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_role;
  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_role] = v41 & 1;
  v33 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_sessionID;
  v34 = sub_264B40104();
  v35 = *(v34 - 8);
  (*(v35 + 16))(&a5[v33], a4, v34);
  *(v20 + 1) = v40;
  swift_unknownObjectWeakAssign();
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_rapportStream] = v43;
  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_isNegotiationComplete] = 0;
  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_isRunInProcess] = a5[v32];
  v36 = type metadata accessor for MediaTransportAudioStream();
  v45.receiver = a5;
  v45.super_class = v36;
  v37 = objc_msgSendSuper2(&v45, sel_init);
  (*(v35 + 8))(a4, v34);
  return v37;
}

uint64_t sub_264AAB774()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264AAB7AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 42) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264AAB88C()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);

  return sub_264AA9898(v2, v3, v4, v5, v6);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_264AAB93C()
{
  result = qword_27FF8B510;
  if (!qword_27FF8B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B510);
  }

  return result;
}

uint64_t sub_264AAB990()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_264AAB9D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264AA57DC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_264AABAD4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264AABB1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2649CD850;

  return sub_264AA8D70(a1, v4, v5, v7, v6);
}

uint64_t sub_264AABBDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264AABC1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264AA8A40(a1, v4, v5, v6);
}

uint64_t sub_264AABCD0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_264AABD2C()
{
  result = qword_27FF8B528;
  if (!qword_27FF8B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B528);
  }

  return result;
}

void sub_264AABDB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264B40104();
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = *(v73 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v72 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v67 - v8;
  v9 = sub_264B3FFD4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF88410 != -1)
  {
    swift_once();
  }

  v14 = sub_264B40964();
  v15 = __swift_project_value_buffer(v14, qword_27FF8AE88);
  v16 = sub_264B41484();
  sub_264B3FF94();
  v17 = sub_264B3FFA4();
  v19 = v18;
  (*(v10 + 8))(v13, v9);

  v20 = sub_264B40944();

  if (os_log_type_enabled(v20, v16))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v69 = v15;
    v23 = a1;
    v24 = v2;
    v25 = v22;
    v76[0] = v22;
    *v21 = 136446722;
    v26 = sub_2649CC004(v17, v19, v76);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2050;
    *(v21 + 14) = 62;
    *(v21 + 22) = 2082;
    *(v21 + 24) = sub_2649CC004(0xD00000000000002BLL, 0x8000000264B5F460, v76);
    _os_log_impl(&dword_2649C6000, v20, v16, "%{public}s:%{public}ld %{public}s", v21, 0x20u);
    swift_arrayDestroy();
    v27 = v25;
    v2 = v24;
    a1 = v23;
    MEMORY[0x266749940](v27, -1, -1);
    MEMORY[0x266749940](v21, -1, -1);
  }

  else
  {
  }

  if (*(v2 + 144))
  {
    v28 = *(a1 + *(type metadata accessor for HIDUpdateInputDevicesMessage() + 20));
    v29 = *(v28 + 16);
    v30 = MEMORY[0x277D84F90];
    v70 = v2;
    if (v29)
    {
      v31 = a1;
      v76[0] = MEMORY[0x277D84F90];
      sub_264AAFD30(0, v29, 0);
      v30 = v76[0];
      v32 = (v28 + 40);
      do
      {
        v34 = *(v32 - 1);
        v33 = *v32;
        v76[0] = v30;
        v36 = *(v30 + 16);
        v35 = *(v30 + 24);
        v37 = v33;
        if (v36 >= v35 >> 1)
        {
          v39 = v37;
          sub_264AAFD30((v35 > 1), v36 + 1, 1);
          v37 = v39;
          v30 = v76[0];
        }

        *(v30 + 16) = v36 + 1;
        v38 = v30 + 16 * v36;
        *(v38 + 32) = v34;
        *(v38 + 40) = v37;
        v32 += 2;
        --v29;
      }

      while (v29);
      a1 = v31;
      v2 = v70;
    }

    v43 = sub_264AAD8D4(v30);

    v44 = sub_264B40944();
    v45 = sub_264B41484();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = v47;
      v76[0] = v47;
      *v46 = 136315138;
      v49 = v43[2];
      v50 = MEMORY[0x277D84F90];
      if (v49)
      {
        v68 = v47;
        v69 = a1;
        v75 = MEMORY[0x277D84F90];
        sub_264AAFD50(0, v49, 0);
        v50 = v75;
        v51 = (v43 + 5);
        do
        {
          v52 = *(v51 - 1);
          v53 = *v51;
          v54 = sub_264B40364();

          v75 = v50;
          v56 = *(v50 + 16);
          v55 = *(v50 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_264AAFD50((v55 > 1), v56 + 1, 1);
            v50 = v75;
          }

          *(v50 + 16) = v56 + 1;
          *(v50 + 8 * v56 + 32) = v54;
          v51 += 2;
          --v49;
        }

        while (v49);
        v48 = v68;
        a1 = v69;
      }

      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B5B0, &qword_264B50DB0);
      v58 = MEMORY[0x266748460](v50, v57);
      v60 = v59;

      v61 = sub_2649CC004(v58, v60, v76);

      *(v46 + 4) = v61;
      _os_log_impl(&dword_2649C6000, v44, v45, "Update input devices to: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x266749940](v48, -1, -1);
      MEMORY[0x266749940](v46, -1, -1);

      v2 = v70;
    }

    else
    {
    }

    v63 = v72;
    v62 = v73;
    v64 = v74;
    (*(v73 + 16))(v72, a1, v74);
    swift_beginAccess();
    v65 = v71;
    sub_264A12BC4(v71, v63);
    (*(v62 + 8))(v65, v64);
    swift_endAccess();
    v66 = *(v2 + 128);
    sub_264B40284();
  }

  else
  {
    v40 = sub_264B40944();
    v41 = sub_264B41494();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2649C6000, v40, v41, "Unexpected HIDUpdateInputDevicesMessage message for FaceTime session, dropping the message", v42, 2u);
      MEMORY[0x266749940](v42, -1, -1);
    }
  }
}

void sub_264AAC478(uint64_t a1)
{
  v142 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89520, &unk_264B47C00);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v139 = &v135 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v135 - v8;
  v144 = sub_264B40264();
  v141 = *(v144 - 8);
  v10 = *(v141 + 64);
  v11 = MEMORY[0x28223BE20](v144);
  v135 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v135 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v136 = &v135 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v143 = &v135 - v19;
  MEMORY[0x28223BE20](v18);
  v138 = &v135 - v20;
  v21 = sub_264B3FFD4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF88410 != -1)
  {
    swift_once();
  }

  v26 = sub_264B40964();
  v27 = __swift_project_value_buffer(v26, qword_27FF8AE88);
  v28 = sub_264B41484();
  sub_264B3FF94();
  v29 = sub_264B3FFA4();
  v31 = v30;
  (*(v22 + 8))(v25, v21);

  v140 = v27;
  v32 = sub_264B40944();

  v33 = os_log_type_enabled(v32, v28);
  v137 = v15;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v148[0] = v35;
    *v34 = 136446722;
    v36 = sub_2649CC004(v29, v31, v148);

    *(v34 + 4) = v36;
    *(v34 + 12) = 2050;
    *(v34 + 14) = 82;
    *(v34 + 22) = 2082;
    *(v34 + 24) = sub_2649CC004(0xD000000000000022, 0x8000000264B5F430, v148);
    _os_log_impl(&dword_2649C6000, v32, v28, "%{public}s:%{public}ld %{public}s", v34, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v35, -1, -1);
    MEMORY[0x266749940](v34, -1, -1);
  }

  else
  {
  }

  v38 = v142;
  v37 = v143;
  v40 = v144;
  v39 = v145;
  if ((*(v142 + 8) & 1) == 0)
  {
    v41 = *(v145 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_telemetry);
    if (v41)
    {
      v42 = *(v41 + OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer);
      if (v42)
      {
        v43 = *v142;
        if (*v142)
        {
          v44 = __swift_project_boxed_opaque_existential_1((v42 + 24), *(v42 + 48));
          LOBYTE(v148[0]) = 3;
          v45 = *v44;

          sub_264A560D4(v148, v43, 0, 0, 0);
          v37 = v143;
        }
      }
    }
  }

  v46 = *(v39 + 144);
  v47 = type metadata accessor for HIDReportMessage();
  v48 = (v141 + 48);
  v49 = v38 + *(v47 + 20);
  if ((v46 & 1) == 0)
  {
    sub_264A18824(v49, v9);
    v54 = *v48;
    if ((*v48)(v9, 1, v40) == 1)
    {
      sub_2649D04D4(v9, &qword_27FF89520, &unk_264B47C00);
    }

    else
    {
      v69 = v138;
      sub_264AB07D0(v9, v138, MEMORY[0x277D77AA8]);
      sub_264AB068C(v69, v37, MEMORY[0x277D77AA8]);
      v70 = v37;
      v71 = sub_264B40944();
      v72 = sub_264B41494();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v143 = v73;
        v74 = swift_slowAlloc();
        v148[0] = v74;
        *v73 = 136315138;
        v75 = sub_264B40244();
        v77 = v76;
        v78 = v70;
        v79 = MEMORY[0x277D77AA8];
        sub_264AB0BBC(v78, MEMORY[0x277D77AA8]);
        v80 = sub_2649CC004(v75, v77, v148);
        v40 = v144;

        v81 = v143;
        *(v143 + 4) = v80;
        v82 = v72;
        v83 = v81;
        _os_log_impl(&dword_2649C6000, v71, v82, "Unexpected sender set to %s for FTRC", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v74);
        MEMORY[0x266749940](v74, -1, -1);
        MEMORY[0x266749940](v83, -1, -1);

        v84 = v138;
        v85 = v79;
      }

      else
      {

        v89 = MEMORY[0x277D77AA8];
        sub_264AB0BBC(v37, MEMORY[0x277D77AA8]);
        v84 = v69;
        v85 = v89;
      }

      sub_264AB0BBC(v84, v85);
      v39 = v145;
    }

    v90 = OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_facetimeSenderID;
    swift_beginAccess();
    v91 = v39 + v90;
    v92 = v139;
    sub_264A18824(v91, v139);
    if (v54(v92, 1, v40) == 1)
    {
      sub_2649D04D4(v92, &qword_27FF89520, &unk_264B47C00);
      v50 = sub_264B40944();
      v51 = sub_264B41494();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        v53 = "Dropping report data, facetimeSenderID isn't configured";
        goto LABEL_31;
      }

LABEL_32:

      return;
    }

    v55 = v136;
    sub_264AB07D0(v92, v136, MEMORY[0x277D77AA8]);
    v93 = v38 + *(v47 + 24);
    v95 = *v93;
    v94 = *(v93 + 8);
    v96 = v94 >> 62;
    if ((v94 >> 62) > 1)
    {
      if (v96 != 2)
      {
        goto LABEL_41;
      }

      v97 = *(v95 + 16);
      v98 = *(v95 + 24);
    }

    else
    {
      if (!v96)
      {
        if ((v94 & 0xFF000000000000) != 0)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      v97 = v95;
      v98 = v95 >> 32;
    }

    sub_2649DEF18(*v93, *(v93 + 8));
    if (v97 != v98)
    {
LABEL_42:
      v99 = sub_264B40004();
LABEL_43:
      if (v99 == sub_264B40454())
      {
        v100 = *(v39 + 128);
        sub_264B40274();
LABEL_76:
        v87 = v95;
        v88 = v94;
        goto LABEL_77;
      }

      sub_2649DEF18(v95, v94);
      v101 = sub_264B40944();
      v102 = sub_264B41494();
      sub_2649DEF6C(v95, v94);
      if (!os_log_type_enabled(v101, v102))
      {
        v105 = v95;
        v106 = v94;
LABEL_51:
        sub_2649DEF6C(v105, v106);

LABEL_78:
        v124 = MEMORY[0x277D77AA8];
        v123 = v55;
        goto LABEL_79;
      }

      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v147 = v104;
      *v103 = 136315138;
      if (v96 > 1)
      {
        if (v96 != 2)
        {
          goto LABEL_73;
        }

        v109 = *(v95 + 16);
        v110 = *(v95 + 24);
      }

      else
      {
        if (!v96)
        {
          if ((v94 & 0xFF000000000000) != 0)
          {
            goto LABEL_74;
          }

          goto LABEL_73;
        }

        v109 = v95;
        v110 = v95 >> 32;
      }

      if (v109 != v110)
      {
LABEL_74:
        v125 = sub_264B40004();
        goto LABEL_75;
      }

LABEL_73:
      v125 = 0;
LABEL_75:
      v146 = v125;
      v126 = sub_264B41064();
      v128 = sub_2649CC004(v126, v127, &v147);

      *(v103 + 4) = v128;
      _os_log_impl(&dword_2649C6000, v101, v102, "Unexpected report with reportID: %s received during FTRC session", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v104);
      MEMORY[0x266749940](v104, -1, -1);
      MEMORY[0x266749940](v103, -1, -1);

      goto LABEL_76;
    }

LABEL_41:
    v99 = 0;
    goto LABEL_43;
  }

  sub_264A18824(v49, v5);
  if ((*v48)(v5, 1, v40) == 1)
  {
    sub_2649D04D4(v5, &qword_27FF89520, &unk_264B47C00);
    v50 = sub_264B40944();
    v51 = sub_264B41494();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = "Received HIDReportMessage without sender, dropping the message";
LABEL_31:
      _os_log_impl(&dword_2649C6000, v50, v51, v53, v52, 2u);
      MEMORY[0x266749940](v52, -1, -1);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  v55 = v137;
  sub_264AB07D0(v5, v137, MEMORY[0x277D77AA8]);
  v56 = *(v55 + *(v40 + 20));
  v57 = *(v39 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_hidDebugInfo);
  sub_264A206BC(v56);
  v58 = (v38 + *(v47 + 24));
  v60 = *v58;
  v59 = v58[1];
  v61 = OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_proxyServiceIDsMap;
  swift_beginAccess();
  v62 = *(v39 + v61);
  if (!*(v62 + 16) || (v63 = sub_264A20A88(v56), (v64 & 1) == 0))
  {
    v86 = *(v39 + 128);
    sub_2649DEF18(v60, v59);
    sub_264B40274();
    v87 = v60;
    v88 = v59;
LABEL_77:
    sub_2649DEF6C(v87, v88);
    goto LABEL_78;
  }

  v65 = (*(v62 + 56) + 16 * v63);
  v67 = *v65;
  v66 = v65[1];
  v68 = v59 >> 62;
  if ((v59 >> 62) > 1)
  {
    if (v68 != 2)
    {
      goto LABEL_58;
    }

    v107 = *(v60 + 16);
    v108 = *(v60 + 24);
  }

  else
  {
    if (!v68)
    {
      if ((v59 & 0xFF000000000000) != 0)
      {
        goto LABEL_59;
      }

LABEL_58:
      v111 = 0;
      goto LABEL_60;
    }

    v107 = v60;
    v108 = v60 >> 32;
  }

  sub_2649DEF18(v60, v59);
  if (v107 == v108)
  {
    goto LABEL_58;
  }

LABEL_59:
  v111 = sub_264B40004();
LABEL_60:
  if (sub_264B40444() != v111)
  {
    if (sub_264B40434() == v111 || sub_264B40424() == v111 || sub_264B40414() == v111)
    {
      v117 = sub_264B40944();
      v118 = sub_264B41484();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        *v119 = 134217984;
        *(v119 + 4) = v66;
        _os_log_impl(&dword_2649C6000, v117, v118, "Dispatching report to proxy mice service with id: %llu", v119, 0xCu);
        MEMORY[0x266749940](v119, -1, -1);
      }

      v120 = sub_264B40104();
      v116 = v135;
      (*(*(v120 - 8) + 16))(v135, v55, v120);
      *(v116 + *(v144 + 20)) = v66;
      goto LABEL_70;
    }

    v101 = sub_264B40944();
    v129 = sub_264B41494();
    if (os_log_type_enabled(v101, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v147 = v131;
      *v130 = 136315138;
      v146 = v111;
      v132 = sub_264B41064();
      v134 = sub_2649CC004(v132, v133, &v147);

      *(v130 + 4) = v134;
      _os_log_impl(&dword_2649C6000, v101, v129, "Received unsupported report of type %s while dispatching to proxy services", v130, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v131);
      MEMORY[0x266749940](v131, -1, -1);
      MEMORY[0x266749940](v130, -1, -1);
    }

    v105 = v60;
    v106 = v59;
    goto LABEL_51;
  }

  v112 = sub_264B40944();
  v113 = sub_264B41484();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    *v114 = 134217984;
    *(v114 + 4) = v67;
    _os_log_impl(&dword_2649C6000, v112, v113, "Dispatching report to proxy keyboard service with id: %llu", v114, 0xCu);
    MEMORY[0x266749940](v114, -1, -1);
  }

  v115 = sub_264B40104();
  v116 = v135;
  (*(*(v115 - 8) + 16))(v135, v55, v115);
  *(v116 + *(v144 + 20)) = v67;
LABEL_70:
  v121 = *(v145 + 128);
  sub_264B40274();
  sub_2649DEF6C(v60, v59);
  v122 = MEMORY[0x277D77AA8];
  sub_264AB0BBC(v116, MEMORY[0x277D77AA8]);
  v123 = v55;
  v124 = v122;
LABEL_79:
  sub_264AB0BBC(v123, v124);
}

void sub_264AAD2D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89520, &unk_264B47C00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v39 - v3;
  v5 = sub_264B40104();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = sub_264B403C4();
  v43 = v0;
  v45[4] = v16;
  v46 = v17;
  sub_264B40324();
  sub_264B403D4();
  sub_264B40304();
  sub_264B40354();
  sub_264B40334();
  sub_264B40384();
  if (qword_27FF88410 != -1)
  {
    swift_once();
  }

  v44 = v5;
  v18 = sub_264B40964();
  __swift_project_value_buffer(v18, qword_27FF8AE88);
  v19 = v46;
  v20 = sub_264B40944();
  v21 = sub_264B41484();
  v22 = os_log_type_enabled(v20, v21);
  v42 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v45[0] = v40;
    *v23 = 136315138;
    sub_264B40364();
    v41 = v6;
    v24 = sub_264B40F74();
    v26 = v25;
    v6 = v41;

    v27 = sub_2649CC004(v24, v26, v45);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_2649C6000, v20, v21, "Digitizer properties: %s", v23, 0xCu);
    v28 = v40;
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x266749940](v28, -1, -1);
    MEMORY[0x266749940](v23, -1, -1);
  }

  sub_264B400F4();
  v29 = v6;
  v30 = *(v6 + 16);
  v31 = v44;
  v30(v10, v15, v44);
  v32 = v43;
  swift_beginAccess();
  sub_264A12BC4(v13, v10);
  v33 = *(v29 + 8);
  v33(v13, v31);
  swift_endAccess();
  v30(v4, v15, v31);
  v34 = sub_264B40264();
  *&v4[*(v34 + 20)] = 1;
  (*(*(v34 - 8) + 56))(v4, 0, 1, v34);
  v35 = OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_facetimeSenderID;
  swift_beginAccess();
  sub_264AB0B4C(v4, v32 + v35);
  swift_endAccess();
  v36 = *(v32 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AA8, &qword_264B44E78);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_264B44150;
  v38 = v42;
  *(v37 + 32) = 1;
  *(v37 + 40) = v38;
  sub_264B40284();

  v33(v15, v31);
}

uint64_t *sub_264AAD8D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264B3FFD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF88410 != -1)
  {
LABEL_71:
    swift_once();
  }

  v9 = sub_264B40964();
  v10 = __swift_project_value_buffer(v9, qword_27FF8AE88);
  v11 = sub_264B41484();
  sub_264B3FF94();
  v12 = sub_264B3FFA4();
  v14 = v13;
  (*(v5 + 8))(v8, v4);

  v122 = v10;
  v15 = sub_264B40944();

  if (os_log_type_enabled(v15, v11))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v125 = v17;
    *v16 = 136446722;
    v18 = sub_2649CC004(v12, v14, &v125);

    *(v16 + 4) = v18;
    *(v16 + 12) = 2050;
    *(v16 + 14) = 190;
    *(v16 + 22) = 2082;
    *(v16 + 24) = sub_2649CC004(0xD000000000000023, 0x8000000264B5F400, &v125);
    _os_log_impl(&dword_2649C6000, v15, v11, "%{public}s:%{public}ld %{public}s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v17, -1, -1);
    MEMORY[0x266749940](v16, -1, -1);
  }

  else
  {
  }

  v119 = *(a1 + 16);
  if (v119)
  {
    v20 = 0;
    v114 = 0;
    v5 = 131073;
    v116 = OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_proxyServiceID;
    v117 = a1 + 32;
    v21 = MEMORY[0x277D84F90];
    v111 = OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_proxyServiceIDsMap;
    *&v19 = 136315138;
    v112 = v19;
    *&v19 = 134218496;
    v108 = v19;
    *&v19 = 136315394;
    v109 = v19;
    v115 = v2;
    while (1)
    {
      v23 = *(v117 + 16 * v20 + 8);
      v127 = *(v117 + 16 * v20);
      v128 = v23;
      swift_beginAccess();
      v24 = v23;
      sub_264B40354();
      sub_264B40334();
      sub_264B40394();
      sub_264B40314();
      sub_264B403A4();
      swift_endAccess();
      v25 = *(v2 + 120);
      if (!v25)
      {
        break;
      }

      v26 = *(v2 + 112);
      v27 = *(v2 + 120);
      swift_bridgeObjectRetain_n();
      v28 = sub_264B40944();
      v29 = sub_264B414B4();

      v30 = os_log_type_enabled(v28, v29);
      v120 = v24;
      v121 = v21;
      v118 = v26;
      if (v30)
      {
        v31 = v26;
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v125 = v33;
        *v32 = v112;
        *(v32 + 4) = sub_2649CC004(v31, v25, &v125);
        _os_log_impl(&dword_2649C6000, v28, v29, "Found recipientDisplayIdentifier: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x266749940](v33, -1, -1);
        MEMORY[0x266749940](v32, -1, -1);
      }

      swift_beginAccess();
      v35 = v127;
      v34 = v128;
      v36 = sub_264B402E4();
      swift_endAccess();
      v37 = *(v36 + 16);
      v38 = 32;
      do
      {
        a1 = v37;
        if (!v37)
        {
          break;
        }

        v39 = *(v36 + v38);
        v40 = sub_264B40404();
        v38 += 4;
        v37 = a1 - 1;
      }

      while ((v40 & 1) == 0);

      v41 = sub_264B402E4();
      v42 = *(v41 + 16);
      v43 = 32;
      do
      {
        if (!v42)
        {

          if (a1)
          {
            v64 = sub_264B40944();
            v65 = sub_264B414B4();
            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              *v66 = 0;
              _os_log_impl(&dword_2649C6000, v64, v65, "hasMouseLikeUsage, setting displayIdentifier", v66, 2u);
              MEMORY[0x266749940](v66, -1, -1);
            }

            swift_beginAccess();
            sub_264B402F4();
LABEL_47:
            swift_endAccess();
            v59 = v127;
            v60 = v128;
            v21 = v121;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v74 = v120;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v21 = sub_2649D84B8(0, v21[2] + 1, 1, v21);
            }

            v62 = v21[2];
            v75 = v21[3];
            v63 = v62 + 1;
            if (v62 >= v75 >> 1)
            {
              v21 = sub_2649D84B8((v75 > 1), v62 + 1, 1, v21);
            }

LABEL_8:
            v21[2] = v63;
            v22 = &v21[2 * v62];
            v22[4] = v59;
          }

          else
          {

            v67 = sub_264B40944();
            v68 = sub_264B414B4();
            if (os_log_type_enabled(v67, v68))
            {
              v69 = swift_slowAlloc();
              *v69 = 0;
              _os_log_impl(&dword_2649C6000, v67, v68, "Neither hasMouseLikeUsage nor hasKeyboardLikeUsage", v69, 2u);
              MEMORY[0x266749940](v69, -1, -1);
            }

            v60 = v34;
            v21 = v121;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_2649D84B8(0, v21[2] + 1, 1, v21);
            }

            v71 = v21[2];
            v70 = v21[3];
            if (v71 >= v70 >> 1)
            {
              v21 = sub_2649D84B8((v70 > 1), v71 + 1, 1, v21);
            }

            v21[2] = v71 + 1;
            v22 = &v21[2 * v71];
            v22[4] = v35;
          }

          v22[5] = v60;

          goto LABEL_10;
        }

        v44 = *(v41 + v43);
        v43 += 4;
        --v42;
      }

      while ((sub_264B40404() & 1) == 0);

      v45 = sub_264B40944();
      v8 = sub_264B414B4();
      v46 = os_log_type_enabled(v45, v8);
      if (!a1)
      {
        if (v46)
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&dword_2649C6000, v45, v8, "hasKeyboardLikeUsage, setting exclusivityIdentifier", v72, 2u);
          MEMORY[0x266749940](v72, -1, -1);
        }

        swift_beginAccess();
        sub_264B40344();
        goto LABEL_47;
      }

      if (v46)
      {
        a1 = swift_slowAlloc();
        *a1 = 0;
        _os_log_impl(&dword_2649C6000, v45, v8, "hasMouseLikeUsage and hasKeyboardLikeUsage, setting up separate services with new ids", a1, 2u);
        MEMORY[0x266749940](a1, -1, -1);
      }

      v47 = *(v2 + v116);
      v4 = v47 - 1;
      if (!v47)
      {
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v2 = v47 - 2;
      if (v47 == 1)
      {
        goto LABEL_70;
      }

      v48 = v115;
      *(v115 + v116) = v2;
      v49 = v111;
      swift_beginAccess();
      v50 = *(v48 + v49);
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v123 = *(v48 + v49);
      *(v48 + v49) = 0x8000000000000000;
      sub_264A23094(v4, v4 - 1, v35, v51);
      *(v48 + v49) = v123;
      swift_endAccess();
      v52 = v34;
      sub_264B40364();

      v53 = v114;
      v54 = sub_264B403E4();
      v113 = v52;
      if (v53)
      {

        v114 = 0;
        v21 = v121;
        v85 = v53;
        v86 = sub_264B40944();
        v87 = sub_264B41494();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v125 = v121;
          *v88 = v109;
          v90 = v113;
          v91 = v21;
          v92 = sub_264B402D4();
          v94 = v93;

          v95 = sub_2649CC004(v92, v94, &v125);

          *(v88 + 4) = v95;
          v21 = v91;
          *(v88 + 12) = 2112;
          v96 = v53;
          v97 = _swift_stdlib_bridgeErrorToNSError();
          *(v88 + 14) = v97;
          *v89 = v97;
          _os_log_impl(&dword_2649C6000, v86, v87, "Setting up %s failed with error: %@", v88, 0x16u);
          sub_2649D04D4(v89, &unk_27FF89880, &unk_264B46B20);
          MEMORY[0x266749940](v89, -1, -1);
          v98 = v121;
          __swift_destroy_boxed_opaque_existential_0(v121);
          MEMORY[0x266749940](v98, -1, -1);
          MEMORY[0x266749940](v88, -1, -1);

          v5 = 131073;
        }

        else
        {
        }

        v2 = v115;
      }

      else
      {
        v125 = v54;
        v126 = v55;

        sub_264B40344();
        v114 = v125;
        v110 = v126;
        v76 = v121;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_2649D84B8(0, *(v76 + 2) + 1, 1, v76);
        }

        v78 = *(v76 + 2);
        v77 = *(v76 + 3);
        v121 = v76;
        if (v78 >= v77 >> 1)
        {
          v121 = sub_2649D84B8((v77 > 1), v78 + 1, 1, v121);
        }

        v79 = v121;
        v121[2] = v78 + 1;
        v80 = &v79[2 * v78];
        v81 = v79;
        v82 = v110;
        v80[4] = v114;
        v80[5] = v82;
        v83 = sub_264B403E4();
        v114 = 0;
        v123 = v83;
        v124 = v84;
        sub_264B402F4();
        v99 = v123;
        v101 = v81[2];
        v100 = v81[3];
        v102 = v124;
        if (v101 >= v100 >> 1)
        {
          v21 = sub_2649D84B8((v100 > 1), v101 + 1, 1, v121);
        }

        else
        {
          v21 = v121;
        }

        v21[2] = v101 + 1;
        v103 = &v21[2 * v101];
        v103[4] = v99;
        v103[5] = v102;
        v104 = sub_264B40944();
        v105 = sub_264B414B4();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          *v106 = v108;
          *(v106 + 4) = v35;
          *(v106 + 12) = 2048;
          *(v106 + 14) = v4;
          *(v106 + 22) = 2048;
          *(v106 + 24) = v2;
          _os_log_impl(&dword_2649C6000, v104, v105, "Added proxy services for service with ID: %llu\nkeyboard service id: %llu\nmouse service id: %llu", v106, 0x20u);
          MEMORY[0x266749940](v106, -1, -1);
        }

        v2 = v115;
      }

LABEL_10:
      if (++v20 == v119)
      {
        return v21;
      }
    }

    v56 = sub_264B40944();
    v57 = sub_264B41494();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_2649C6000, v56, v57, "did not find recipientDisplayIdentifier, passing through unchanged", v58, 2u);
      MEMORY[0x266749940](v58, -1, -1);
    }

    v59 = v127;
    v60 = v128;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_2649D84B8(0, v21[2] + 1, 1, v21);
    }

    v62 = v21[2];
    v61 = v21[3];
    v63 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      v21 = sub_2649D84B8((v61 > 1), v62 + 1, 1, v21);
    }

    goto LABEL_8;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_264AAE638()
{
  v1 = v0;
  v2 = sub_264B40104();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_deviceIDs;
  swift_beginAccess();
  v19[0] = v7;
  v8 = *(v0 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 56);
  v12 = (v9 + 63) >> 6;
  v19[1] = v3 + 8;
  v19[2] = v3 + 16;

  for (i = 0; v11; result = (*(v3 + 8))(v6, v2))
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    (*(v3 + 16))(v6, *(v8 + 48) + *(v3 + 72) * (v16 | (v15 << 6)), v2);
    v17 = *(v1 + 128);
    sub_264B40284();
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      v18 = *(v1 + v19[0]);
      *(v1 + v19[0]) = MEMORY[0x277D84FA0];
    }

    v11 = *(v8 + 56 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_264AAE828()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  sub_2649D04D4(v0 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_facetimeSenderID, &qword_27FF89520, &unk_264B47C00);
  v3 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_deviceIDs);

  v4 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_interruptionHandler + 8);
  sub_2649CB67C(*(v0 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_interruptionHandler));

  v5 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_hidDebugInfo);

  v6 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_proxyServiceIDsMap);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_264AAE8CC()
{
  sub_264AAE828();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for UHIDKitBackedControlEventConsumer()
{
  result = qword_27FF8B570;
  if (!qword_27FF8B570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264AAE94C()
{
  sub_264AAEA40();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_264AAEA40()
{
  if (!qword_27FF8B580)
  {
    sub_264B40264();
    v0 = sub_264B41614();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF8B580);
    }
  }
}

uint64_t sub_264AAEA98(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_264AAEABC, v2, 0);
}

uint64_t sub_264AAEABC()
{
  v21 = v0;
  if (qword_27FF88410 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE88);

  v3 = sub_264B40944();
  v4 = sub_264B41474();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    type metadata accessor for UHIDKitBackedControlEventConsumer();

    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, &v20);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v3, v4, "%s did activate", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v11 = v0[4];
  v12 = v0[5];
  v13 = (v12 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_interruptionHandler);
  v14 = *(v12 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_interruptionHandler);
  v15 = *(v12 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_interruptionHandler + 8);
  *v13 = v0[3];
  v13[1] = v11;

  sub_2649CB67C(v14);
  v16 = *(v12 + 128);
  swift_allocObject();
  swift_weakInit();

  sub_264B402A4();

  if ((*(v12 + 144) & 1) == 0)
  {
    v17 = *(v0[5] + 136);
    sub_264AAD2D0();
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_264AAED04(uint64_t a1)
{
  v2 = sub_264B40264();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_264B41274();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    sub_264AB068C(a1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D77AA8]);
    v12 = (*(v3 + 80) + 40) & ~*(v3 + 80);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v10;
    sub_264AB07D0(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, MEMORY[0x277D77AA8]);
    sub_264A10C20(0, 0, v8, &unk_264B50DA8, v13);
  }

  return result;
}

uint64_t sub_264AAEF18()
{
  v1 = *(v0 + 16);
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_isInterrupted) = 1;
  sub_264AAE638();
  v2 = v1 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_interruptionHandler;
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_interruptionHandler);
  if (v3)
  {
    v4 = *(v0 + 16);
    v5 = *(v2 + 8);
    v6 = sub_264AB0930(&qword_27FF8B5A8);
    sub_264AAFD90();
    v7 = swift_allocError();
    *v8 = 0;

    v3(v4, v6, v7);

    sub_2649CB67C(v3);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_264AAF050()
{
  v15 = v0;
  if (qword_27FF88410 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE88);

  v3 = sub_264B40944();
  v4 = sub_264B41474();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    type metadata accessor for UHIDKitBackedControlEventConsumer();

    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v3, v4, "%s did invalidate", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v11 = v0[3];
  sub_264AAE638();
  v12 = v0[1];

  return v12();
}

uint64_t sub_264AAF20C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = *(*(type metadata accessor for HIDReportMessage() - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for HIDUpdateInputDevicesMessage();
  v2[15] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = *(*(type metadata accessor for ControlMessage() - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B590, &qword_264B50D78) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v8 = type metadata accessor for HIDMessage();
  v2[19] = v8;
  v9 = *(v8 - 8);
  v2[20] = v9;
  v10 = *(v9 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AAF398, v1, 0);
}

uint64_t sub_264AAF398()
{
  v73 = v0;
  v2 = v0[17];
  v1 = v0[18];
  if (*(v0[13] + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_isInterrupted))
  {
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[16];
    v6 = v0[14];
    sub_264AAFD90();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();

    v8 = v0[1];
    v9 = 0;
  }

  else
  {
    v10 = v0[19];
    v11 = v0[20];
    v12 = v0[12];
    v13 = v12[3];
    v14 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v14 + 8))(v13, v14);
    sub_264ADAB50(v2, v1);
    v15 = (*(v11 + 48))(v1, 1, v10);
    if (v15 == 1)
    {
      sub_2649D04D4(v0[18], &qword_27FF8B590, &qword_264B50D78);
      if (qword_27FF88410 != -1)
      {
        swift_once();
      }

      v22 = v0[12];
      v23 = v0[13];
      v24 = sub_264B40964();
      __swift_project_value_buffer(v24, qword_27FF8AE88);
      sub_2649CB5C0(v22, (v0 + 2));

      v25 = sub_264B40944();
      v26 = sub_264B41494();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = v0[13];
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v72[0] = v29;
        *v28 = 136446466;
        v0[11] = v27;
        type metadata accessor for UHIDKitBackedControlEventConsumer();

        v30 = sub_264B41064();
        v32 = sub_2649CC004(v30, v31, v72);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2082;
        v33 = v0[5];
        v34 = __swift_project_boxed_opaque_existential_1(v0 + 2, v33);
        v0[10] = v33;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
        (*(*(v33 - 8) + 16))(boxed_opaque_existential_1, v34, v33);
        __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
        swift_getDynamicType();
        __swift_destroy_boxed_opaque_existential_0(v0 + 7);
        v36 = sub_264B41C44();
        v38 = v37;
        __swift_destroy_boxed_opaque_existential_0(v0 + 2);
        v39 = sub_2649CC004(v36, v38, v72);

        *(v28 + 14) = v39;
        _os_log_impl(&dword_2649C6000, v25, v26, "%{public}s unexpected message type: %{public}s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266749940](v29, -1, -1);
        MEMORY[0x266749940](v28, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      }
    }

    else
    {
      v17 = v0[21];
      v16 = v0[22];
      v18 = v0[19];
      sub_264AB07D0(v0[18], v16, type metadata accessor for HIDMessage);
      sub_264AB068C(v16, v17, type metadata accessor for HIDMessage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v20 = v0[22];
          v21 = v0[14];
          sub_264AB07D0(v0[21], v21, type metadata accessor for HIDReportMessage);
          sub_264AAC478(v21);
          sub_264AB0BBC(v21, type metadata accessor for HIDReportMessage);
        }

        else
        {
          if (qword_27FF88410 != -1)
          {
            swift_once();
          }

          v58 = sub_264B40964();
          __swift_project_value_buffer(v58, qword_27FF8AE88);
          v59 = sub_264B40944();
          v60 = sub_264B414B4();
          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            *v61 = 0;
            _os_log_impl(&dword_2649C6000, v59, v60, "Performing reset gesture state", v61, 2u);
            MEMORY[0x266749940](v61, -1, -1);
          }

          v20 = v0[22];
          v62 = v0[13];

          v63 = *(v62 + 128);
          sub_264B40294();
        }

        v56 = type metadata accessor for HIDMessage;
        v57 = v20;
      }

      else
      {
        v41 = v0[15];
        v40 = v0[16];
        v42 = v0[13];
        sub_264AB07D0(v0[21], v40, type metadata accessor for HIDUpdateInputDevicesMessage);
        v43 = *(v42 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_hidDebugInfo);
        v44 = *(v40 + *(v41 + 20));
        v45 = *(v44 + 16);
        v46 = MEMORY[0x277D84F90];
        if (v45)
        {
          v72[0] = MEMORY[0x277D84F90];
          sub_264AAFD70(0, v45, 0);
          v46 = v72[0];
          v47 = (v44 + 32);
          v48 = *(v72[0] + 16);
          do
          {
            v50 = *v47;
            v47 += 2;
            v49 = v50;
            v72[0] = v46;
            v51 = *(v46 + 24);
            if (v48 >= v51 >> 1)
            {
              sub_264AAFD70((v51 > 1), v48 + 1, 1);
              v46 = v72[0];
            }

            *(v46 + 16) = v48 + 1;
            *(v46 + 8 * v48++ + 32) = v49;
            --v45;
          }

          while (v45);
        }

        v52 = v0[22];
        v53 = v0[16];
        v54 = v0[13];
        v55 = *(v43 + 24);
        *(v43 + 24) = v46;

        sub_264AABDB4(v53);
        sub_264AB0BBC(v52, type metadata accessor for HIDMessage);
        v56 = type metadata accessor for HIDUpdateInputDevicesMessage;
        v57 = v53;
      }

      sub_264AB0BBC(v57, v56);
    }

    v64 = v15 != 1;
    v66 = v0[21];
    v65 = v0[22];
    v68 = v0[17];
    v67 = v0[18];
    v69 = v0[16];
    v70 = v0[14];

    v8 = v0[1];
    v9 = v64;
  }

  return v8(v9);
}

uint64_t sub_264AAFA40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649E0EE4;

  return sub_264AAEA98(a1, a2);
}

uint64_t sub_264AAFAE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264AAF030();
}

uint64_t sub_264AAFB70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649CBEFC;

  return sub_264AAF20C(a1);
}

uint64_t sub_264AAFC04(uint64_t a1)
{
  result = sub_264AB0930(&qword_27FF8B588);
  *(a1 + 8) = result;
  return result;
}

size_t sub_264AAFC48(size_t a1, int64_t a2, char a3)
{
  result = sub_264AAFDE4(a1, a2, a3, *v3, &qword_27FF8B5C8, &qword_264B50DC8, type metadata accessor for ContinuityDevice);
  *v3 = result;
  return result;
}

size_t sub_264AAFC8C(size_t a1, int64_t a2, char a3)
{
  result = sub_264AAFDE4(a1, a2, a3, *v3, &qword_27FF8B5D0, &qword_264B50DD0, MEMORY[0x277D4B7C0]);
  *v3 = result;
  return result;
}

void *sub_264AAFCD0(void *a1, int64_t a2, char a3)
{
  result = sub_264AAFFC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_264AAFCF0(char *a1, int64_t a2, char a3)
{
  result = sub_264AB0108(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_264AAFD10(char *a1, int64_t a2, char a3)
{
  result = sub_264AB0214(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_264AAFD30(char *a1, int64_t a2, char a3)
{
  result = sub_264AB0308(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_264AAFD50(void *a1, int64_t a2, char a3)
{
  result = sub_264AB0414(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_264AAFD70(char *a1, int64_t a2, char a3)
{
  result = sub_264AB0548(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_264AAFD90()
{
  result = qword_27FF8B598;
  if (!qword_27FF8B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B598);
  }

  return result;
}

size_t sub_264AAFDE4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_264AAFFC0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AE8, &unk_264B50DE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA30, &qword_264B44EE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_264AB0108(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B5D8, &qword_264B50DD8);
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

char *sub_264AB0214(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B5C0, &qword_264B50DC0);
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

char *sub_264AB0308(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AA8, &qword_264B44E78);
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

void *sub_264AB0414(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B5B8, &qword_264B50DB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B5B0, &qword_264B50DB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_264AB0548(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B5A0, &qword_264B50D80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_264AB064C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264AB068C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264AB06F4()
{
  v1 = *(sub_264B40264() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = sub_264B40104();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264AB07D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264AB0838(uint64_t a1)
{
  v4 = *(sub_264B40264() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264AAEEF8(a1, v6, v7, v8);
}

uint64_t sub_264AB0930(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UHIDKitBackedControlEventConsumer();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_264AB0974(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  swift_defaultActor_initialize();
  v12 = OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_facetimeSenderID;
  v13 = sub_264B40264();
  (*(*(v13 - 8) + 56))(v6 + v12, 1, 1, v13);
  *(v6 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_deviceIDs) = MEMORY[0x277D84FA0];
  *(v6 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_isInterrupted) = 0;
  v14 = (v6 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_interruptionHandler);
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_hidDebugInfo;
  type metadata accessor for HIDDebugInfo();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D84F90];
  v16[2] = 0;
  v16[3] = v17;
  v16[4] = sub_264A23F08(v17);
  *(v6 + v15) = v16;
  v18 = OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_proxyServiceIDsMap;
  *(v6 + v18) = sub_264A23FE8(v17);
  *(v6 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_proxyServiceID) = -1;
  *(v6 + 112) = a3;
  *(v6 + 120) = a4;
  *(v6 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_telemetry) = a5;
  v19 = sub_264B402C4();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = a5;

  v23 = sub_264B402B4();
  if (v23)
  {
    *(v6 + 128) = v23;
    *(v6 + 136) = a1;
    *(v6 + 144) = a2 & 1;
    return v6;
  }

  else
  {
    result = sub_264B41874();
    __break(1u);
  }

  return result;
}

uint64_t sub_264AB0B4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89520, &unk_264B47C00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_264AB0BBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_264AB0C30()
{
  result = qword_27FF8B5E0;
  if (!qword_27FF8B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B5E0);
  }

  return result;
}

id sub_264AB0D08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConcreteAXUIClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_264AB0DC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = (v2 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler);
  v6 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler + 8);
  *v4 = a1;
  v4[1] = a2;

  sub_2649CB67C(v6);
  sub_264B41754();

  v7 = [objc_opt_self() processInfo];
  [v7 processIdentifier];

  v8 = sub_264B41A64();
  MEMORY[0x266748390](v8);

  v9 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_serviceName);
  v10 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_serviceName + 8);
  v11 = objc_allocWithZone(MEMORY[0x277CE7740]);
  v12 = sub_264B41014();

  v13 = sub_264B41014();
  v14 = [v11 initWithIdentifier:v12 serviceBundleName:v13];

  v15 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_screenSharingClient);
  *(v3 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_screenSharingClient) = v14;
  v16 = v14;

  if (v16)
  {
    [v16 setDelegate_];
  }

  else
  {
    sub_2649E24BC();
    swift_allocError();
    *v17 = 8;
    swift_willThrow();
  }
}

uint64_t sub_264AB0FD0()
{
  v1 = v0[18];
  v2 = OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_screenSharingClient;
  v0[19] = OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_screenSharingClient;
  v3 = *(v1 + v2);
  if (v3)
  {
    [v3 setDelegate_];
    v4 = *(v1 + v2);
    v0[20] = v4;
    if (v4)
    {
      v0[2] = v0;
      v0[3] = sub_264AB1168;
      v5 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B678, &qword_264B50F00);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_264AB12D8;
      v0[13] = &block_descriptor_13;
      v0[14] = v5;
      [v4 invalidate_];

      return MEMORY[0x282200938](v0 + 2);
    }

    v1 = v0[18];
    v2 = v0[19];
  }

  *(v1 + v2) = 0;
  v6 = (v1 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler);
  v7 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler);
  v8 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler + 8);
  *v6 = 0;
  v6[1] = 0;
  sub_2649CB67C(v7);
  v9 = v0[1];

  return v9();
}

uint64_t sub_264AB1168()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264AB1248, 0, 0);
}

uint64_t sub_264AB1248()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  v3 = *(v2 + v1);
  v4 = *(v0 + 144);
  *(v4 + *(v0 + 152)) = 0;

  v5 = (v4 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler);
  v6 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler);
  v7 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler + 8);
  *v5 = 0;
  v5[1] = 0;
  sub_2649CB67C(v6);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_264AB12D8(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_264AB130C(_BYTE *a1, uint64_t a2)
{
  *(v3 + 152) = a2;
  *(v3 + 160) = v2;
  *(v3 + 184) = *a1;
  return MEMORY[0x2822009F8](sub_264AB1334, 0, 0);
}

uint64_t sub_264AB1334()
{
  if (*(v0 + 152))
  {
    v1 = sub_264B40F54();
  }

  else
  {
    v1 = 0;
  }

  *(v0 + 168) = v1;
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_264AB149C;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B680, &unk_264B50F10);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_264AB18E8;
  *(v0 + 104) = &block_descriptor_11;
  *(v0 + 112) = v4;
  [v3 sendAsynchronousMessage:v1 withIdentifier:v2 + 1 targetAccessQueue:0 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_264AB149C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_264AB1618;
  }

  else
  {
    v3 = sub_264AB15AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264AB15AC()
{
  v1 = v0[21];
  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_264AB1618()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  sub_264AB19F0();
  swift_allocError();
  *v3 = v2;
  swift_willThrow();
  v4 = v0[1];

  return v4();
}

void sub_264AB16FC(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_screenSharingClient);
  if (a1)
  {
    if (v3 != a1)
    {
      return;
    }
  }

  else if (v3)
  {
    return;
  }

  if (qword_27FF883F0 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AE28);
  v5 = sub_264B40944();
  v6 = sub_264B41494();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2649C6000, v5, v6, "Connection to Annotation UI Service was interrupted", v7, 2u);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v8 = v2 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler;
  v9 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler);
  if (v9)
  {
    v10 = *(v8 + 8);
    sub_2649E24BC();
    v11 = swift_allocError();
    *v12 = 7;

    v9(v11);
    sub_2649CB67C(v9);
  }
}

uint64_t sub_264AB18E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = sub_264B40F64();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  return sub_2649C964C(a2 + 32, a1 + 32);
}

{
  return sub_2649C964C(a2 + 32, a1 + 32);
}

unint64_t sub_264AB19F0()
{
  result = qword_27FF8B688;
  if (!qword_27FF8B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B688);
  }

  return result;
}

uint64_t static MediaTransportStreamState.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      if (v3 == 4)
      {
        return 1;
      }
    }

    else if (v2 == 5 && v3 == 5)
    {
      return 1;
    }
  }

  else if (*a1)
  {
    if (v2 == 1 && v3 == 1)
    {
      return 1;
    }
  }

  else if (!*a2)
  {
    return 1;
  }

  return 0;
}

uint64_t MediaTransportStreamState.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

BOOL sub_264AB1B28(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 3)
  {
    if (v2 != 4)
    {
      return v2 == 5 && v3 == 5;
    }

    if (v3 == 4)
    {
      return 1;
    }
  }

  else
  {
    if (*a1)
    {
      return v2 == 1 && v3 == 1;
    }

    if (!*a2)
    {
      return 1;
    }
  }

  return 0;
}

BOOL static MediaTransportStreamState.< infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 == 5)
    {
      return 1;
    }
  }

  else
  {
    if (v2 == 1)
    {
      return (v3 & 0xFE) == 4;
    }

    if (*a1)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3 >= 6;
    }

    if (!v4)
    {
      return (0x32u >> v3) & 1;
    }
  }

  return 0;
}

unint64_t sub_264AB1BE8()
{
  result = qword_27FF8B690;
  if (!qword_27FF8B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B690);
  }

  return result;
}

BOOL sub_264AB1C3C(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 == 5)
    {
      return 1;
    }
  }

  else
  {
    if (v2 == 1)
    {
      return (v3 & 0xFE) == 4;
    }

    if (*a1)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3 >= 6;
    }

    if (!v4)
    {
      return (0x32u >> v3) & 1;
    }
  }

  return 0;
}

BOOL sub_264AB1CA0(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v3 == 4)
  {
    if (v2 == 5)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == 1)
    {
      return (v2 & 0xFE) != 4;
    }

    if (*a2)
    {
      v4 = 1;
    }

    else
    {
      v4 = v2 >= 6;
    }

    if (!v4)
    {
      return (0xDu >> v2) & 1;
    }
  }

  return 1;
}

BOOL sub_264AB1D04(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 == 5)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == 1)
    {
      return (v3 & 0xFE) != 4;
    }

    if (*a1)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3 >= 6;
    }

    if (!v4)
    {
      return (0xDu >> v3) & 1;
    }
  }

  return 1;
}

BOOL sub_264AB1D68(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v3 == 4)
  {
    if (v2 == 5)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == 1)
    {
      return (v2 & 0xFE) == 4;
    }

    if (*a2)
    {
      v4 = 1;
    }

    else
    {
      v4 = v2 >= 6;
    }

    if (!v4)
    {
      return (0x32u >> v2) & 1;
    }
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for MediaTransportStreamState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaTransportStreamState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

ScreenSharingKit::AnnotationUIServicesMessageID_optional __swiftcall AnnotationUIServicesMessageID.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x302010004uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_264AB1F58()
{
  result = qword_27FF8B698;
  if (!qword_27FF8B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B698);
  }

  return result;
}

uint64_t sub_264AB1FAC()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1 + 1);
  return sub_264B41BB4();
}

uint64_t sub_264AB2024()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1 + 1);
  return sub_264B41BB4();
}

double sub_264AB20EC@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_264AB20F8()
{
  result = sub_264B403C4();
  if (!v1)
  {
    v8 = v3;
    v4 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit29UHIDBackedSystemEventConsumer_sessionID);
    sub_264B40384();
    v5 = *(v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AA8, &qword_264B44E78);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_264B44150;
    *(v6 + 32) = 2;
    *(v6 + 40) = v8;
    v7 = v8;
    sub_264B40284();
  }

  return result;
}

void sub_264AB21CC()
{
  v0 = sub_264B3FFD4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF88410 != -1)
  {
    swift_once();
  }

  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FF8AE88);
  v6 = sub_264B41484();
  sub_264B3FF94();
  v7 = sub_264B3FFA4();
  v9 = v8;
  (*(v1 + 8))(v4, v0);

  v10 = sub_264B40944();

  if (os_log_type_enabled(v10, v6))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446722;
    v13 = sub_2649CC004(v7, v9, &v22);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2050;
    *(v11 + 14) = 53;
    *(v11 + 22) = 2082;
    *(v11 + 24) = sub_2649CC004(0x2928656D6F486F67, 0xE800000000000000, &v22);
    _os_log_impl(&dword_2649C6000, v10, v6, "%{public}s:%{public}ld %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
  }

  else
  {
  }

  v14 = sub_264B40944();
  v15 = sub_264B414B4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    *(v16 + 4) = 12;
    *(v16 + 12) = 2048;
    *(v16 + 14) = 64;
    _os_log_impl(&dword_2649C6000, v14, v15, "Dispatching event with page: %ld and usage %ld", v16, 0x16u);
    MEMORY[0x266749940](v16, -1, -1);
  }

  mach_absolute_time();
  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  v18 = sub_264B41464();

  sub_264AB2548(v18);
  mach_absolute_time();
  v19 = IOHIDEventCreateKeyboardEvent();
  v20 = sub_264B41464();

  sub_264AB2548(v20);
}

uint64_t sub_264AB2548(uint64_t a1)
{
  v2 = v1;
  *&v52 = a1;
  v56[5] = *MEMORY[0x277D85DE8];
  v51 = sub_264B40264();
  v3 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264B3FFD4();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF88410 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v10 = sub_264B40964();
    v11 = __swift_project_value_buffer(v10, qword_27FF8AE88);
    v12 = sub_264B41484();
    sub_264B3FF94();
    v13 = sub_264B3FFA4();
    v15 = v14;
    (*(v6 + 8))(v9, v5);

    v54 = v11;
    v16 = sub_264B40944();

    if (os_log_type_enabled(v16, v12))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v56[0] = v18;
      *v17 = 136446722;
      v19 = sub_2649CC004(v13, v15, v56);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2050;
      *(v17 + 14) = 66;
      *(v17 + 22) = 2082;
      *(v17 + 24) = sub_2649CC004(0xD000000000000019, 0x8000000264B5F6A0, v56);
      _os_log_impl(&dword_2649C6000, v16, v12, "%{public}s:%{public}ld %{public}s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v18, -1, -1);
      MEMORY[0x266749940](v17, -1, -1);
    }

    else
    {
    }

    v20 = v53;
    v21 = v51;
    v22 = v52;
    v23 = OBJC_IVAR____TtC16ScreenSharingKit29UHIDBackedSystemEventConsumer_deviceID;
    v24 = sub_264B40104();
    (*(*(v24 - 8) + 16))(v20, v2 + v23, v24);
    *(v20 + *(v21 + 20)) = 2;
    v25 = v2[15];
    v55[3] = MEMORY[0x277D77A78];
    v55[4] = MEMORY[0x277D77A70];
    v55[0] = v22;
    v26 = v22;
    sub_264B40204();
    v28 = v27;
    sub_264AB3950(v56);
    __swift_destroy_boxed_opaque_existential_0(v55);
    v50 = v28;
    v30 = *(v28 + 16);
    if (!v30)
    {
      break;
    }

    v31 = v2[14];
    v2 = (v50 + 40);
    *&v29 = 136315138;
    v52 = v29;
    v51 = v31;
    while (1)
    {
      v32 = *(v2 - 1);
      v33 = *v2;
      sub_2649DEF18(v32, *v2);
      v9 = v54;
      v34 = sub_264B40944();
      v35 = sub_264B414B4();
      if (os_log_type_enabled(v34, v35))
      {
        break;
      }

LABEL_8:
      v2 += 2;
      sub_264B40274();
      sub_2649DEF6C(v32, v33);
      if (!--v30)
      {
        goto LABEL_33;
      }
    }

    v36 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v56[0] = v5;
    *v36 = v52;
    v37 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v37 != 2)
      {
        goto LABEL_19;
      }

      v6 = *(v32 + 16);
      v39 = *(v32 + 24);
    }

    else
    {
      if (!v37)
      {
        if ((v33 & 0xFF000000000000) != 0)
        {
          v38 = v32;
        }

        else
        {
          v38 = 0;
        }

        goto LABEL_32;
      }

      v6 = v32;
      v39 = v32 >> 32;
    }

    if (v6 == v39)
    {
LABEL_19:
      v38 = 0;
      goto LABEL_32;
    }

    if (v37 != 2)
    {
      if (v6 < v32 || v6 >= v32 >> 32)
      {
        goto LABEL_35;
      }

      v49 = sub_264B3FEA4();
      if (!v49)
      {
        __break(1u);
LABEL_41:
        __break(1u);
      }

      v9 = (v33 & 0x3FFFFFFFFFFFFFFFLL);
      v42 = sub_264B3FEC4();
      v41 = v6 - v42;
      if (__OFSUB__(v6, v42))
      {
        goto LABEL_37;
      }

LABEL_31:
      v38 = *(v49 + v41);
LABEL_32:
      LOBYTE(v55[0]) = v38;
      v43 = sub_264B41064();
      v45 = sub_2649CC004(v43, v44, v56);

      *(v36 + 4) = v45;
      _os_log_impl(&dword_2649C6000, v34, v35, "dispatching report with ID: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x266749940](v5, -1, -1);
      MEMORY[0x266749940](v36, -1, -1);

      v20 = v53;
      goto LABEL_8;
    }

    if (v6 >= *(v32 + 16))
    {
      if (v6 >= *(v32 + 24))
      {
        goto LABEL_36;
      }

      v49 = sub_264B3FEA4();
      if (!v49)
      {
        goto LABEL_41;
      }

      v9 = (v33 & 0x3FFFFFFFFFFFFFFFLL);
      v40 = sub_264B3FEC4();
      v41 = v6 - v40;
      if (__OFSUB__(v6, v40))
      {
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

LABEL_33:

  result = sub_264AB39B8(v20, MEMORY[0x277D77AA8]);
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_264AB2B2C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = OBJC_IVAR____TtC16ScreenSharingKit29UHIDBackedSystemEventConsumer_deviceID;
  v4 = sub_264B40104();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for UHIDBackedSystemEventConsumer()
{
  result = qword_27FF8B6B0;
  if (!qword_27FF8B6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264AB2C08()
{
  result = sub_264B40104();
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

uint64_t sub_264AB2CE0()
{
  v15 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);

  v3 = sub_264B40944();
  v4 = sub_264B41484();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    type metadata accessor for UHIDBackedSystemEventConsumer();

    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v3, v4, "%{public}s did invalidate", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v11 = *(v0[3] + 112);
  sub_264B40284();
  v12 = v0[1];

  return v12();
}

uint64_t sub_264AB2EB4(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for ControlMessage();
  v2[20] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AB2F48, v1, 0);
}

uint64_t sub_264AB2F48()
{
  v58 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[19];
  v3 = sub_264B40964();
  __swift_project_value_buffer(v3, qword_27FFA71B8);
  sub_2649CB5C0(v1, (v0 + 2));

  v4 = sub_264B40944();
  v5 = sub_264B41484();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v57 = v8;
    *v7 = 136446466;
    v0[17] = v6;
    type metadata accessor for UHIDBackedSystemEventConsumer();

    v9 = sub_264B41064();
    v11 = sub_2649CC004(v9, v10, &v57);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = v0[5];
    v13 = __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
    v0[14] = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 11);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
    __swift_project_boxed_opaque_existential_1(v0 + 11, v0[14]);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0(v0 + 11);
    v15 = sub_264B41C44();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v18 = sub_2649CC004(v15, v17, &v57);

    *(v7 + 14) = v18;
    _os_log_impl(&dword_2649C6000, v4, v5, "%{public}s did receive message: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v20 = v0[20];
  v19 = v0[21];
  v21 = v0[18];
  v22 = v21[3];
  v23 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v23 + 8))(v22, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = v0[21];
  if (EnumCaseMultiPayload != 1)
  {
    v42 = v0[19];
    sub_264AB39B8(v25, type metadata accessor for ControlMessage);

    v43 = sub_264B40944();
    v44 = sub_264B41494();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = v0[19];
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v57 = v47;
      *v46 = 136446210;
      v0[15] = v45;
      type metadata accessor for UHIDBackedSystemEventConsumer();

      v48 = sub_264B41064();
      v50 = sub_2649CC004(v48, v49, &v57);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_2649C6000, v43, v44, "%{public}s error decoding system event", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x266749940](v47, -1, -1);
      MEMORY[0x266749940](v46, -1, -1);
    }

    goto LABEL_14;
  }

  v26 = v25[1];
  v27 = v0[19];
  if (v26)
  {
    v28 = *v25;
    v30 = v25[2];
    v29 = v25[3];
    v31 = v0[19];

    sub_264A18774(v28, v26, v30, v29);
    v32 = sub_264B40944();
    v33 = sub_264B41494();

    sub_264A187D4(v28, v26, v30, v29);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v0[19];
      v35 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = v56;
      *v35 = 136446466;
      v0[16] = v34;
      type metadata accessor for UHIDBackedSystemEventConsumer();

      v36 = sub_264B41064();
      v38 = sub_2649CC004(v36, v37, &v57);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2082;
      v0[7] = v28;
      v0[8] = v26;
      v0[9] = v30;
      v0[10] = v29;
      sub_264A18774(v28, v26, v30, v29);
      v39 = sub_264B41064();
      v41 = sub_2649CC004(v39, v40, &v57);

      *(v35 + 14) = v41;
      _os_log_impl(&dword_2649C6000, v32, v33, "%{public}s unsupported event type: %{public}s received", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v56, -1, -1);
      MEMORY[0x266749940](v35, -1, -1);
    }

    sub_264A187D4(v28, v26, v30, v29);
LABEL_14:
    v51 = 0;
    goto LABEL_15;
  }

  v55 = v0[19];
  sub_264AB21CC();
  v51 = 1;
LABEL_15:
  v52 = v0[21];

  v53 = v0[1];

  return v53(v51);
}

uint64_t sub_264AB3524()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649E0EE4;

  return sub_264AB3764();
}

uint64_t sub_264AB35C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264AB2CC0();
}

uint64_t sub_264AB3650(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649CBEFC;

  return sub_264AB2EB4(a1);
}

unint64_t sub_264AB36E4(uint64_t a1)
{
  result = sub_264AB370C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_264AB370C()
{
  result = qword_27FF8B6C0;
  if (!qword_27FF8B6C0)
  {
    type metadata accessor for UHIDBackedSystemEventConsumer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B6C0);
  }

  return result;
}

uint64_t sub_264AB3784()
{
  v15 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);

  v3 = sub_264B40944();
  v4 = sub_264B41484();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    type metadata accessor for UHIDBackedSystemEventConsumer();

    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v3, v4, "%{public}s did activate", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v11 = v0[3];
  sub_264AB20F8();
  v12 = v0[1];

  return v12();
}

uint64_t sub_264AB3950(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B6C8, &unk_264B51240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264AB39B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264AB3A24()
{
  v1 = *v0;
  sub_264B41B84();
  sub_264B41084();

  return sub_264B41BB4();
}

uint64_t sub_264AB3B20()
{
  *v0;
  *v0;
  *v0;
  sub_264B41084();
}

uint64_t sub_264AB3C08()
{
  v1 = *v0;
  sub_264B41B84();
  sub_264B41084();

  return sub_264B41BB4();
}

uint64_t sub_264AB3D00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_264AB3F78();
  *a2 = result;
  return result;
}

void sub_264AB3D30(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64657472617473;
  v5 = 0x8000000264B58C30;
  v6 = 0xD000000000000019;
  v7 = 0xD000000000000011;
  v8 = 0x8000000264B58C50;
  if (v2 != 3)
  {
    v7 = 0x746169746F67656ELL;
    v8 = 0xEF617461446E6F69;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x646570706F7473;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_264AB3EBC()
{
  result = qword_27FF8B6D0;
  if (!qword_27FF8B6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8B6D8, qword_264B512B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B6D0);
  }

  return result;
}

unint64_t sub_264AB3F24()
{
  result = qword_27FF8B6E0;
  if (!qword_27FF8B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B6E0);
  }

  return result;
}

uint64_t sub_264AB3F78()
{
  v0 = sub_264B418D4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_264AB3FC4()
{
  result = qword_27FF8B6E8;
  if (!qword_27FF8B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B6E8);
  }

  return result;
}

uint64_t MediaStreamType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6F65646976;
  }

  else
  {
    return 0x6F69647561;
  }
}

ScreenSharingKit::MediaStreamType_optional __swiftcall MediaStreamType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264B418D4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_264AB40B4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6F65646976;
  }

  else
  {
    v2 = 0x6F69647561;
  }

  if (*a2)
  {
    v3 = 0x6F65646976;
  }

  else
  {
    v3 = 0x6F69647561;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_264B41AA4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_264AB4138()
{
  result = qword_27FF8B6F0;
  if (!qword_27FF8B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B6F0);
  }

  return result;
}

uint64_t sub_264AB418C()
{
  v1 = *v0;
  sub_264B41B84();
  sub_264B41084();

  return sub_264B41BB4();
}

uint64_t sub_264AB41FC()
{
  *v0;
  sub_264B41084();
}

uint64_t sub_264AB4250()
{
  v1 = *v0;
  sub_264B41B84();
  sub_264B41084();

  return sub_264B41BB4();
}

uint64_t sub_264AB42BC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_264B418D4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_264AB431C(uint64_t *a1@<X8>)
{
  v2 = 0x6F69647561;
  if (*v1)
  {
    v2 = 0x6F65646976;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

unint64_t sub_264AB4350()
{
  result = qword_27FF8B6F8;
  if (!qword_27FF8B6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8B700, &qword_264B51440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B6F8);
  }

  return result;
}

uint64_t dispatch thunk of MediaTransportStream.activate()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2649CD850;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MediaTransportStream.invalidate()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649CD850;

  return v9(a1, a2);
}

unint64_t sub_264AB46DC()
{
  result = qword_27FF8B708;
  if (!qword_27FF8B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B708);
  }

  return result;
}

uint64_t sub_264AB4744(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896F8, &unk_264B51890);
    v2 = sub_264B418B4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2649C964C(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_264A23FD8(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_264A23FD8(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_264A23FD8(v32, v33);
    v17 = *(v2 + 40);
    result = sub_264B416D4();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_264A23FD8(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_264AB4A0C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896D8, &qword_264B483D8);
    v2 = sub_264B418B4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_264A23FD8(&v27, v29);
        sub_264A23FD8(v29, v30);
        sub_264A23FD8(v30, &v28);
        result = sub_264A20ACC(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_264A23FD8(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_264A23FD8(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_264AB4C64(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896F8, &unk_264B51890);
    v2 = sub_264B418B4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;

    sub_2649DEF18(v17, v18);
    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_264A23FD8(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_264A23FD8(v34, v35);
    v19 = *(v2 + 40);
    result = sub_264B416D4();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_264A23FD8(v35, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_264AB4F2C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896F8, &unk_264B51890);
    v2 = sub_264B418B4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_264A23FD8(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_264A23FD8(v34, v35);
    v19 = *(v2 + 40);
    result = sub_264B416D4();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_264A23FD8(v35, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_264AB51F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896F8, &unk_264B51890);
    v2 = sub_264B418B4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_264A5EC94();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_264A23FD8(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_264A23FD8(v32, v33);
    v17 = *(v2 + 40);
    result = sub_264B416D4();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_264A23FD8(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_264AB54B4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_264A12A64(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_264AB5590(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v12[2] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(a1 + 48) + ((v9 << 10) | (16 * v10));
    sub_264A13528(v12, *v11, *(v11 + 8));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_264AB5690(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E8, &qword_264B449C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B7A0, &qword_264B51590);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v42 = &v38 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B870, &qword_264B518A0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v38 - v18;
  LOBYTE(v18) = *(a1 + 16);
  v21 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState);
  v20 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8);
  v22 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 16);
  v50 = *a1;
  v51 = v18;
  v44 = v1;
  v45 = v21;
  v46 = v20;
  v47 = v22;
  sub_264ACB170(v21, v20, v22);
  if (_s16ScreenSharingKit0aB7SessionC0abD5StateO2eeoiySbAE_AEtFZ_0(&v50, &v45))
  {

LABEL_4:
    sub_264AB62DC(v21, v20, v22);
    return;
  }

  v40 = v11;
  v23 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_sessionStateContinuation;
  v24 = v44;
  swift_beginAccess();
  v39 = v23;
  sub_2649D046C(v24 + v23, v15, &qword_27FF8B7A0, &qword_264B51590);
  v25 = *(v4 + 48);
  v26 = v25(v15, 1, v3);
  v41 = v4;
  if (v26)
  {
    sub_2649D04D4(v15, &qword_27FF8B7A0, &qword_264B51590);
    v27 = 1;
  }

  else
  {
    v28 = v25;
    v29 = v43;
    (*(v4 + 16))(v43, v15, v3);
    sub_2649D04D4(v15, &qword_27FF8B7A0, &qword_264B51590);
    v45 = v21;
    v46 = v20;
    v47 = v22;
    sub_264ACB170(v21, v20, v22);
    sub_264B412A4();
    v30 = v29;
    v25 = v28;
    (*(v4 + 8))(v30, v3);
    v27 = 0;
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B878, &qword_264B518A8);
  (*(*(v31 - 8) + 56))(v19, v27, 1, v31);
  sub_2649D04D4(v19, &qword_27FF8B870, &qword_264B518A0);
  v45 = v21;
  v46 = v20;
  v47 = v22;
  v48 = xmmword_264B47370;
  v49 = 9;
  if ((_s16ScreenSharingKit0aB7SessionC0abD5StateO2eeoiySbAE_AEtFZ_0(&v45, &v48) & 1) == 0)
  {
    goto LABEL_4;
  }

  v32 = v39;
  v33 = v42;
  sub_2649D046C(v44 + v39, v42, &qword_27FF8B7A0, &qword_264B51590);
  if (v25(v33, 1, v3))
  {
    sub_264AB62DC(v21, v20, v22);
    sub_2649D04D4(v33, &qword_27FF8B7A0, &qword_264B51590);
    v34 = v41;
  }

  else
  {
    v34 = v41;
    v35 = v43;
    (*(v41 + 16))(v43, v33, v3);
    sub_2649D04D4(v33, &qword_27FF8B7A0, &qword_264B51590);
    sub_264B412B4();
    sub_264AB62DC(v21, v20, v22);
    (*(v34 + 8))(v35, v3);
  }

  v36 = v40;
  (*(v34 + 56))(v40, 1, 1, v3);
  v37 = v44;
  swift_beginAccess();
  sub_2649FECCC(v36, v37 + v32, &qword_27FF8B7A0, &qword_264B51590);
  swift_endAccess();
}

uint64_t sub_264AB5BC8()
{
  v2 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_orientationStatusSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889F0, &unk_264B449D0);
  sub_2649CB4C8(&qword_27FF8A8A0, &qword_27FF889F0, &unk_264B449D0);
  return sub_264B40AB4();
}

uint64_t sub_264AB5C5C()
{
  v2 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_accessbilityDataSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8B470, qword_264B4BB60);
  sub_2649CB4C8(&qword_27FF8A5F0, &unk_27FF8B470, qword_264B4BB60);
  return sub_264B40AB4();
}

uint64_t sub_264AB5CF0()
{
  v2 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_deviceSensorsInUseSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889F8, &unk_264B51570);
  sub_2649CB4C8(&qword_27FF8B728, &qword_27FF889F8, &unk_264B51570);
  return sub_264B40AB4();
}

uint64_t sub_264AB5D84()
{
  v2 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_dragAndDropEventSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A00, &unk_264B449E0);
  sub_2649CB4C8(&qword_27FF8B738, &qword_27FF88A00, &unk_264B449E0);
  return sub_264B40AB4();
}

uint64_t sub_264AB5E18(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B740, &unk_264B51580);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_2649D046C(a1, &v11 - v6, &qword_27FF8B740, &unk_264B51580);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_rtiMessages;
  swift_beginAccess();
  sub_2649FECCC(v7, v8 + v9, &qword_27FF8B740, &unk_264B51580);
  return swift_endAccess();
}

uint64_t sub_264AB5EF8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_rtiMessages;
  swift_beginAccess();
  return sub_2649D046C(v1 + v3, a1, &qword_27FF8B740, &unk_264B51580);
}

uint64_t ScreenSharingSession.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E8, &qword_264B449C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  v7 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_sessionStateContinuation;
  swift_beginAccess();
  if (!(*(v3 + 48))(v1 + v7, 1, v2))
  {
    (*(v3 + 16))(v6, v1 + v7, v2);
    sub_264B412B4();
    (*(v3 + 8))(v6, v2);
  }

  sub_264ACB258(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_config, type metadata accessor for ScreenSharingSession.Config);
  __swift_destroy_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSessionVendor));
  __swift_destroy_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_localDevicePrimitives));
  __swift_destroy_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_hidServicePrimitives));

  __swift_destroy_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_rtiStateCoordinator));
  sub_2649D04D4(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_launchRequest, &qword_27FF889E0, &qword_264B449C0);
  __swift_destroy_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_featureFlagPrimitives));
  sub_264AB62DC(*(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState), *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8), *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 16));
  sub_2649D04D4(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentContinuityDevice, &unk_27FF89E30, &qword_264B44270);
  sub_2649D04D4(v1 + v7, &qword_27FF8B7A0, &qword_264B51590);
  v8 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession);
  swift_unknownObjectRelease();
  v9 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageStream);
  swift_unknownObjectRelease();
  v10 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageSession);

  sub_2649D04D4(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_videoStream, &qword_27FF8B7C8, &unk_264B51598);
  sub_2649D04D4(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_audioStream, &qword_27FF8B7C8, &unk_264B51598);
  v11 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_orientationStatusSubject);

  v12 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_deviceSensorsInUseSubject);

  v13 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_dragAndDropEventSubject);

  v14 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_accessbilityDataSubject);

  v15 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 32);
  v16 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 40);
  v17 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 48);
  v18 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 56);
  sub_264AB635C(*(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion), *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 8), *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 16), *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 24));
  v19 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverEventCancellationHandle);

  v20 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_dragAndDropEventCancellationHandle);

  v21 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_accessibilityEventCancellationHandle);

  sub_2649D04D4(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_rtiMessages, &qword_27FF8B740, &unk_264B51580);
  swift_defaultActor_destroy();
  return v1;
}

void sub_264AB62DC(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (a3 > 2u && a3 != 3)
    {
      return;
    }

LABEL_8:

    return;
  }

  if (a3 <= 5u)
  {
    if (a3 != 4 && a3 != 5)
    {
      return;
    }

    goto LABEL_8;
  }

  if (a3 == 6)
  {
    goto LABEL_8;
  }

  if (a3 == 7 || a3 == 8)
  {
  }
}

uint64_t sub_264AB635C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t ScreenSharingSession.__deallocating_deinit()
{
  ScreenSharingSession.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_264AB63CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v51 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v57 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E30, &qword_264B44270);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v53 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B7A0, &qword_264B51590);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B7F8, &qword_264B515A8);
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E8, &qword_264B449C8);
  v55 = *(v15 - 8);
  v56 = v15;
  v16 = *(v55 + 64);
  MEMORY[0x28223BE20](v15);
  v52 = &v48 - v17;
  v18 = sub_264B3FFD4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v23 = sub_264B40964();
  __swift_project_value_buffer(v23, qword_27FFA71B8);
  v24 = sub_264B41484();
  sub_264B3FF94();
  v25 = sub_264B3FFA4();
  v27 = v26;
  (*(v19 + 8))(v22, v18);

  v28 = sub_264B40944();

  if (os_log_type_enabled(v28, v24))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v58[0] = v30;
    *v29 = 136446722;
    v31 = sub_2649CC004(v25, v27, v58);

    *(v29 + 4) = v31;
    *(v29 + 12) = 2050;
    *(v29 + 14) = 145;
    *(v29 + 22) = 2082;
    *(v29 + 24) = sub_2649CC004(0x6574617669746361, 0xEE00293A726F6628, v58);
    _os_log_impl(&dword_2649C6000, v28, v24, "%{public}s:%{public}ld %{public}s", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v30, -1, -1);
    MEMORY[0x266749940](v29, -1, -1);
  }

  else
  {
  }

  v32 = v59;
  if (*(v59 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 16) == 9 && *(v59 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState) == 0)
  {
    v35 = v49;
    (*(v49 + 104))(v14, *MEMORY[0x277D85778], v11);
    v36 = v52;
    sub_264B41284();
    (*(v35 + 8))(v14, v11);
    v38 = v55;
    v37 = v56;
    v39 = v50;
    (*(v55 + 16))(v50, v36, v56);
    (*(v38 + 56))(v39, 0, 1, v37);
    v40 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_sessionStateContinuation;
    swift_beginAccess();
    sub_2649FECCC(v39, v32 + v40, &qword_27FF8B7A0, &qword_264B51590);
    swift_endAccess();
    v41 = v53;
    sub_264ACB1F0(v54, v53, type metadata accessor for ContinuityDevice);
    v42 = type metadata accessor for ContinuityDevice(0);
    (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
    v43 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentContinuityDevice;
    swift_beginAccess();
    sub_2649FECCC(v41, v32 + v43, &unk_27FF89E30, &qword_264B44270);
    swift_endAccess();
    v44 = sub_264B41274();
    v45 = v57;
    (*(*(v44 - 8) + 56))(v57, 1, 1, v44);
    v46 = sub_264AB6BD4();
    v47 = swift_allocObject();
    v47[2] = v32;
    v47[3] = v46;
    v47[4] = v32;
    swift_retain_n();
    sub_264A10C20(0, 0, v45, &unk_264B515B8, v47);

    return (*(v38 + 8))(v36, v37);
  }

  else
  {
    sub_264AB6AF0();
    swift_allocError();
    *v33 = 0;
    return swift_willThrow();
  }
}

unint64_t sub_264AB6AF0()
{
  result = qword_27FF8B800;
  if (!qword_27FF8B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B800);
  }

  return result;
}

uint64_t sub_264AB6B44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264AB6D04();
}

unint64_t sub_264AB6BD4()
{
  result = qword_27FF8B808;
  if (!qword_27FF8B808)
  {
    type metadata accessor for ScreenSharingSession(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B808);
  }

  return result;
}

uint64_t sub_264AB6C50()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2649E0EE4;

  return sub_264AB6B44();
}

uint64_t sub_264AB6D04()
{
  v1[5] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E30, &qword_264B44270) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = type metadata accessor for ContinuityDevice(0);
  v1[8] = v4;
  v5 = *(v4 - 8);
  v1[9] = v5;
  v1[10] = *(v5 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AB6E48, v0, 0);
}

uint64_t sub_264AB6E48()
{
  v37 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentContinuityDevice;
  swift_beginAccess();
  sub_2649D046C(v4 + v5, v3, &unk_27FF89E30, &qword_264B44270);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2649D04D4(v0[7], &unk_27FF89E30, &qword_264B44270);
    sub_2649FEF6C();
    v6 = swift_allocError();
    v0[13] = v6;
    *v7 = 2;
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_264AB71D4;
    v9 = v0[5];

    return sub_264ABA794(v6);
  }

  else
  {
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[9];
    v35 = v0[10];
    v14 = v0[6];
    v15 = v0[5];
    sub_2649D0390(v0[7], v11);
    v16 = *(v15 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSessionVendor + 24);
    v17 = *(v15 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSessionVendor + 32);
    __swift_project_boxed_opaque_existential_1((v15 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSessionVendor), v16);
    v18 = v15 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_config;
    v19 = type metadata accessor for ScreenSharingSession.Config(0);
    v20 = v19[6];
    v36 = *(v18 + v19[5]);
    v21 = (*(v17 + 8))(v11, &v36, *(v18 + v19[7]), *(v15 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_telemetry), v16, v17, *(v18 + v20));
    v23 = v22;
    v24 = (v15 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession);
    v25 = *(v15 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession);
    *v24 = v21;
    v24[1] = v22;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v26 = sub_264B41274();
    (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
    sub_264ACB1F0(v11, v12, type metadata accessor for ContinuityDevice);
    v27 = sub_264AB6BD4();
    v28 = (*(v13 + 80) + 56) & ~*(v13 + 80);
    v29 = swift_allocObject();
    v29[2] = v15;
    v29[3] = v27;
    v29[4] = v21;
    v29[5] = v23;
    v29[6] = v15;
    sub_2649D0390(v12, v29 + v28);
    swift_retain_n();
    swift_unknownObjectRetain();
    sub_264A10C20(0, 0, v14, &unk_264B518C0, v29);

    swift_unknownObjectRelease();
    sub_264ACB258(v11, type metadata accessor for ContinuityDevice);
    v31 = v0[11];
    v30 = v0[12];
    v33 = v0[6];
    v32 = v0[7];

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_264AB71D4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v10 = *v0;

  v4 = v1[12];
  v5 = v1[11];
  v6 = v1[7];
  v7 = v1[6];

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_264AB735C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v15 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession + 8);
    v10 = sub_264B41274();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_264B41244();
    swift_unknownObjectRetain_n();
    v11 = a1;
    v12 = sub_264B41234();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v8;
    v13[5] = v9;
    v13[6] = v11;
    sub_264A10C20(0, 0, v7, &unk_264B515C8, v13);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_264AB74B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_264B41244();
  v6[3] = sub_264B41234();
  ObjectType = swift_getObjectType();
  v10 = *(a5 + 40);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v6[4] = v12;
  *v12 = v6;
  v12[1] = sub_264AB7608;

  return v14(a6, ObjectType, a5);
}

uint64_t sub_264AB7608()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_264B411C4();
  if (v2)
  {
    v8 = sub_264AB77C4;
  }

  else
  {
    v8 = sub_264AB7764;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_264AB7764()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264AB77C4()
{
  v1 = v0[3];

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = sub_264B40964();
  __swift_project_value_buffer(v3, qword_27FFA71B8);
  v4 = v2;
  v5 = sub_264B40944();
  v6 = sub_264B41494();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[5];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2649C6000, v5, v6, "Failed to set screen sharing video layer: %{public}@", v9, 0xCu);
    sub_2649D04D4(v10, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v10, -1, -1);
    MEMORY[0x266749940](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_264AB7970(_BYTE *a1)
{
  *(v2 + 224) = v1;
  *(v2 + 240) = *a1;
  return MEMORY[0x2822009F8](sub_264AB7998, v1, 0);
}

uint64_t sub_264AB7998()
{
  v29 = v0;
  v1 = *(v0 + 224) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
  v2 = *(v1 + 16);
  if ((v2 - 7) < 2)
  {
    goto LABEL_2;
  }

  if (v2 == 9)
  {
    v10 = *v1;
    v9 = *(v1 + 8);
    if ((*v1 - 3) <= 1)
    {
LABEL_2:
      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v3 = sub_264B40964();
      __swift_project_value_buffer(v3, qword_27FFA71B8);
      v4 = sub_264B40944();
      v5 = sub_264B41484();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_2649C6000, v4, v5, "Session is already in a terminal state. Ignoring", v6, 2u);
        MEMORY[0x266749940](v6, -1, -1);
      }

      v7 = *(v0 + 8);

      return v7();
    }
  }

  else
  {
    v10 = *v1;
    v9 = *(v1 + 8);
  }

  *v1 = xmmword_264B47370;
  *(v1 + 16) = 9;
  sub_264ACB170(v10, v9, v2);
  sub_264AB62DC(v10, v9, v2);
  *&v27 = v10;
  *(&v27 + 1) = v9;
  v28 = v2;
  sub_264AB5690(&v27);
  sub_264AB62DC(v10, v9, v2);
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v11 = sub_264B40964();
  __swift_project_value_buffer(v11, qword_27FF8AE40);
  v12 = sub_264B40944();
  v13 = sub_264B414B4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 240);
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = v14;
    _os_log_impl(&dword_2649C6000, v12, v13, "Invalidation Reason: %ld", v15, 0xCu);
    MEMORY[0x266749940](v15, -1, -1);
  }

  v16 = *(v0 + 240);
  v17 = *(v0 + 224);

  v18 = *(v17 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_telemetry);
  LOBYTE(v27) = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6F436E6F73616552;
  v20 = inited + 32;
  *(inited + 16) = xmmword_264B44150;
  *(inited + 40) = 0xEA00000000006564;
  *(inited + 72) = &type metadata for TelemetrySessionEndedReason;
  *(inited + 48) = v16;
  v21 = sub_264A24308(inited);
  swift_setDeallocating();
  sub_2649D04D4(v20, &qword_27FF89220, &qword_264B48430);
  sub_264A9113C(&v27, v21);

  if (v16 == 12)
  {
    LOBYTE(v27) = 1;
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_264B46A70;
    *(v22 + 32) = 0x6E6F73616552;
    *(v22 + 40) = 0xE600000000000000;
    *(v22 + 48) = 0xD000000000000015;
    v23 = MEMORY[0x277D837D0];
    *(v22 + 56) = 0x8000000264B58990;
    *(v22 + 72) = v23;
    *(v22 + 80) = 0x6F436E6F73616552;
    *(v22 + 120) = MEMORY[0x277D83B88];
    *(v22 + 88) = 0xEA00000000006564;
    *(v22 + 96) = 12;
    v24 = sub_264A24308(v22);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89220, &qword_264B48430);
    swift_arrayDestroy();
    sub_264A9113C(&v27, v24);
  }

  v25 = swift_task_alloc();
  *(v0 + 232) = v25;
  *v25 = v0;
  v25[1] = sub_264AB7E2C;
  v26 = *(v0 + 224);

  return sub_264AB7F20();
}

uint64_t sub_264AB7E2C()
{
  v1 = *(*v0 + 232);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_264AB7F20()
{
  v1[27] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B7A0, &qword_264B51590) - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E30, &qword_264B44270) - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  v4 = sub_264B3FFD4();
  v1[30] = v4;
  v5 = *(v4 - 8);
  v1[31] = v5;
  v6 = *(v5 + 64) + 15;
  v1[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AB8050, v0, 0);
}

uint64_t sub_264AB8050()
{
  v56 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = sub_264B40964();
  *(v0 + 264) = __swift_project_value_buffer(v4, qword_27FFA71B8);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v55 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v55);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 701;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD000000000000010, 0x8000000264B5F9C0, &v55);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 216);
  v14 = *(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 16);
  if ((v14 - 7) >= 2 && (v14 != 9 || __PAIR128__((*(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState) >= 3uLL) + *(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8) - 1, *(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState) - 3) >= 2))
  {
    return sub_264B41874();
  }

  if (*(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverEventCancellationHandle))
  {
    v15 = *(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverEventCancellationHandle);

    sub_264B41304();

    v13 = *(v0 + 216);
  }

  if (*(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_dragAndDropEventCancellationHandle))
  {
    v16 = *(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_dragAndDropEventCancellationHandle);

    sub_264B41304();

    v13 = *(v0 + 216);
  }

  if (*(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_accessibilityEventCancellationHandle))
  {
    v17 = *(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_accessibilityEventCancellationHandle);

    sub_264B41304();

    v13 = *(v0 + 216);
  }

  v18 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageSession;
  *(v0 + 272) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageSession;
  v19 = *(v13 + v18);
  *(v0 + 280) = v19;
  if (v19)
  {

    return MEMORY[0x2822009F8](sub_264AB8810, v19, 0);
  }

  else
  {
    v20 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageStream;
    *(v0 + 296) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageStream;
    v21 = (v13 + v20);
    if (*v21)
    {
      v22 = v21[1];
      v23 = *v21;
      ObjectType = swift_getObjectType();
      v25 = *(v22 + 8);
      v26 = *(v25 + 24);
      swift_unknownObjectRetain();
      v26(ObjectType, v25);
      swift_unknownObjectRelease();
      v13 = *(v0 + 216);
    }

    v27 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession;
    *(v0 + 304) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession;
    v28 = (v13 + v27);
    v29 = *(v13 + v27);
    *(v0 + 312) = v29;
    if (v29)
    {
      v30 = v28[1];
      v31 = swift_getObjectType();
      v32 = *(v30 + 8);
      v33 = *(v32 + 24);
      swift_unknownObjectRetain();
      v53 = (v33 + *v33);
      v34 = v33[1];
      v35 = swift_task_alloc();
      *(v0 + 320) = v35;
      *v35 = v0;
      v35[1] = sub_264AB8CD0;

      return v53(v31, v32);
    }

    else
    {
      v36 = *(v0 + 272);
      v37 = *(v0 + 256);
      v38 = *(v0 + 224);
      v39 = *(v0 + 232);
      v40 = (v13 + *(v0 + 296));
      v41 = *(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_telemetry);
      v54 = 10;
      sub_264A9113C(&v54, 0);
      v42 = type metadata accessor for ContinuityDevice(0);
      (*(*(v42 - 8) + 56))(v39, 1, 1, v42);
      v43 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentContinuityDevice;
      swift_beginAccess();
      sub_2649FECCC(v39, v13 + v43, &unk_27FF89E30, &qword_264B44270);
      swift_endAccess();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E8, &qword_264B449C8);
      (*(*(v44 - 8) + 56))(v38, 1, 1, v44);
      v45 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_sessionStateContinuation;
      swift_beginAccess();
      sub_2649FECCC(v38, v13 + v45, &qword_27FF8B7A0, &qword_264B51590);
      swift_endAccess();
      v46 = *v28;
      *v28 = 0;
      v28[1] = 0;
      swift_unknownObjectRelease();
      v47 = *v40;
      *v40 = 0;
      v40[1] = 0;
      swift_unknownObjectRelease();
      v48 = *(v13 + v36);
      *(v13 + v36) = 0;

      *(v0 + 48) = 0;
      *(v0 + 32) = 0u;
      *(v0 + 16) = 0u;
      v49 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_videoStream;
      swift_beginAccess();
      sub_2649FECCC(v0 + 16, v13 + v49, &qword_27FF8B7C8, &unk_264B51598);
      swift_endAccess();
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
      v50 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_audioStream;
      swift_beginAccess();
      sub_2649FECCC(v0 + 56, v13 + v50, &qword_27FF8B7C8, &unk_264B51598);
      swift_endAccess();

      v51 = *(v0 + 8);

      return v51();
    }
  }
}

uint64_t sub_264AB8810()
{
  v1 = v0[35];
  sub_264A750BC();
  v0[36] = 0;
  v2 = v0[35];
  v3 = v0[27];

  return MEMORY[0x2822009F8](sub_264AB88A8, v3, 0);
}

uint64_t sub_264AB88A8()
{
  v37 = v0;
  v1 = *(v0 + 216);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageStream;
  *(v0 + 296) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageStream;
  v3 = (v1 + v2);
  if (*v3)
  {
    v4 = v3[1];
    v5 = *v3;
    ObjectType = swift_getObjectType();
    v7 = *(v4 + 8);
    v8 = *(v7 + 24);
    swift_unknownObjectRetain();
    v8(ObjectType, v7);
    swift_unknownObjectRelease();
    v1 = *(v0 + 216);
  }

  v9 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession;
  *(v0 + 304) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession;
  v10 = (v1 + v9);
  v11 = *(v1 + v9);
  *(v0 + 312) = v11;
  if (v11)
  {
    v12 = v10[1];
    v13 = swift_getObjectType();
    v14 = *(v12 + 8);
    v15 = *(v14 + 24);
    swift_unknownObjectRetain();
    v35 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    *(v0 + 320) = v17;
    *v17 = v0;
    v17[1] = sub_264AB8CD0;

    return v35(v13, v14);
  }

  else
  {
    v19 = *(v0 + 272);
    v20 = *(v0 + 256);
    v21 = *(v0 + 224);
    v22 = *(v0 + 232);
    v23 = (v1 + *(v0 + 296));
    v24 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_telemetry);
    v36 = 10;
    sub_264A9113C(&v36, 0);
    v25 = type metadata accessor for ContinuityDevice(0);
    (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
    v26 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentContinuityDevice;
    swift_beginAccess();
    sub_2649FECCC(v22, v1 + v26, &unk_27FF89E30, &qword_264B44270);
    swift_endAccess();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E8, &qword_264B449C8);
    (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
    v28 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_sessionStateContinuation;
    swift_beginAccess();
    sub_2649FECCC(v21, v1 + v28, &qword_27FF8B7A0, &qword_264B51590);
    swift_endAccess();
    v29 = *v10;
    *v10 = 0;
    v10[1] = 0;
    swift_unknownObjectRelease();
    v30 = *v23;
    *v23 = 0;
    v23[1] = 0;
    swift_unknownObjectRelease();
    v31 = *(v1 + v19);
    *(v1 + v19) = 0;

    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    v32 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_videoStream;
    swift_beginAccess();
    sub_2649FECCC(v0 + 16, v1 + v32, &qword_27FF8B7C8, &unk_264B51598);
    swift_endAccess();
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    v33 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_audioStream;
    swift_beginAccess();
    sub_2649FECCC(v0 + 56, v1 + v33, &qword_27FF8B7C8, &unk_264B51598);
    swift_endAccess();

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_264AB8CD0()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v9 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = *(v2 + 216);
    v5 = sub_264AB95E8;
  }

  else
  {
    v6 = *(v2 + 312);
    v7 = *(v2 + 216);
    swift_unknownObjectRelease();
    v5 = sub_264AB8DF8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264AB8DF8()
{
  v21 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 216);
  v6 = (v5 + *(v0 + 304));
  v7 = (v5 + *(v0 + 296));
  v8 = *(v5 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_telemetry);
  v20 = 10;
  sub_264A9113C(&v20, 0);
  v9 = type metadata accessor for ContinuityDevice(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentContinuityDevice;
  swift_beginAccess();
  sub_2649FECCC(v4, v5 + v10, &unk_27FF89E30, &qword_264B44270);
  swift_endAccess();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E8, &qword_264B449C8);
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v12 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_sessionStateContinuation;
  swift_beginAccess();
  sub_2649FECCC(v3, v5 + v12, &qword_27FF8B7A0, &qword_264B51590);
  swift_endAccess();
  v13 = *v6;
  *v6 = 0;
  v6[1] = 0;
  swift_unknownObjectRelease();
  v14 = *v7;
  *v7 = 0;
  v7[1] = 0;
  swift_unknownObjectRelease();
  v15 = *(v5 + v1);
  *(v5 + v1) = 0;

  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v16 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_videoStream;
  swift_beginAccess();
  sub_2649FECCC(v0 + 16, v5 + v16, &qword_27FF8B7C8, &unk_264B51598);
  swift_endAccess();
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  v17 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_audioStream;
  swift_beginAccess();
  sub_2649FECCC(v0 + 56, v5 + v17, &qword_27FF8B7C8, &unk_264B51598);
  swift_endAccess();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_264AB909C()
{
  v51 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 288);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v50 = v8;
    *v7 = 136446210;
    *(v0 + 208) = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v10 = sub_264B41064();
    v12 = sub_2649CC004(v10, v11, &v50);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to invalidate ControlMessageSession: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  else
  {
    v13 = *(v0 + 288);
  }

  v14 = *(v0 + 216);
  v15 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageStream;
  *(v0 + 296) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageStream;
  v16 = (v14 + v15);
  if (*v16)
  {
    v17 = v16[1];
    v18 = *v16;
    ObjectType = swift_getObjectType();
    v20 = *(v17 + 8);
    v21 = *(v20 + 24);
    swift_unknownObjectRetain();
    v21(ObjectType, v20);
    swift_unknownObjectRelease();
    v14 = *(v0 + 216);
  }

  v22 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession;
  *(v0 + 304) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession;
  v23 = (v14 + v22);
  v24 = *(v14 + v22);
  *(v0 + 312) = v24;
  if (v24)
  {
    v25 = v23[1];
    v26 = swift_getObjectType();
    v27 = *(v25 + 8);
    v28 = *(v27 + 24);
    swift_unknownObjectRetain();
    v48 = (v28 + *v28);
    v29 = v28[1];
    v30 = swift_task_alloc();
    *(v0 + 320) = v30;
    *v30 = v0;
    v30[1] = sub_264AB8CD0;

    return v48(v26, v27);
  }

  else
  {
    v32 = *(v0 + 272);
    v33 = *(v0 + 256);
    v34 = *(v0 + 224);
    v35 = *(v0 + 232);
    v36 = (v14 + *(v0 + 296));
    v37 = *(v14 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_telemetry);
    v49 = 10;
    sub_264A9113C(&v49, 0);
    v38 = type metadata accessor for ContinuityDevice(0);
    (*(*(v38 - 8) + 56))(v35, 1, 1, v38);
    v39 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentContinuityDevice;
    swift_beginAccess();
    sub_2649FECCC(v35, v14 + v39, &unk_27FF89E30, &qword_264B44270);
    swift_endAccess();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E8, &qword_264B449C8);
    (*(*(v40 - 8) + 56))(v34, 1, 1, v40);
    v41 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_sessionStateContinuation;
    swift_beginAccess();
    sub_2649FECCC(v34, v14 + v41, &qword_27FF8B7A0, &qword_264B51590);
    swift_endAccess();
    v42 = *v23;
    *v23 = 0;
    v23[1] = 0;
    swift_unknownObjectRelease();
    v43 = *v36;
    *v36 = 0;
    v36[1] = 0;
    swift_unknownObjectRelease();
    v44 = *(v14 + v32);
    *(v14 + v32) = 0;

    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    v45 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_videoStream;
    swift_beginAccess();
    sub_2649FECCC(v0 + 16, v14 + v45, &qword_27FF8B7C8, &unk_264B51598);
    swift_endAccess();
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    v46 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_audioStream;
    swift_beginAccess();
    sub_2649FECCC(v0 + 56, v14 + v46, &qword_27FF8B7C8, &unk_264B51598);
    swift_endAccess();

    v47 = *(v0 + 8);

    return v47();
  }
}

uint64_t sub_264AB95E8()
{
  v44 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 312);
  swift_unknownObjectRelease();
  *(v0 + 192) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 328);
  v6 = *(v0 + 264);
  if (v4)
  {
    v7 = *(v0 + 336) == 9;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {

    v19 = sub_264B40944();
    v20 = sub_264B41484();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2649C6000, v19, v20, "MediaTransportSession already terminal, ignoring error", v21, 2u);
      MEMORY[0x266749940](v21, -1, -1);
    }

    v22 = *(v0 + 192);
  }

  else
  {

    v8 = v5;
    v9 = sub_264B40944();
    v10 = sub_264B41494();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 328);
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v43 = v14;
      *v13 = 136446210;
      *(v0 + 200) = v12;
      v15 = v12;
      v16 = sub_264B41064();
      v18 = sub_2649CC004(v16, v17, &v43);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_2649C6000, v9, v10, "Failed to invalidate MediaTransportClientSession: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x266749940](v14, -1, -1);
      MEMORY[0x266749940](v13, -1, -1);

      goto LABEL_12;
    }

    v22 = v12;
  }

LABEL_12:
  v23 = *(v0 + 272);
  v24 = *(v0 + 256);
  v25 = *(v0 + 224);
  v26 = *(v0 + 232);
  v27 = *(v0 + 216);
  v28 = (v27 + *(v0 + 304));
  v29 = (v27 + *(v0 + 296));
  v30 = *(v27 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_telemetry);
  v42 = 10;
  sub_264A9113C(&v42, 0);
  v31 = type metadata accessor for ContinuityDevice(0);
  (*(*(v31 - 8) + 56))(v26, 1, 1, v31);
  v32 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentContinuityDevice;
  swift_beginAccess();
  sub_2649FECCC(v26, v27 + v32, &unk_27FF89E30, &qword_264B44270);
  swift_endAccess();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E8, &qword_264B449C8);
  (*(*(v33 - 8) + 56))(v25, 1, 1, v33);
  v34 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_sessionStateContinuation;
  swift_beginAccess();
  sub_2649FECCC(v25, v27 + v34, &qword_27FF8B7A0, &qword_264B51590);
  swift_endAccess();
  v35 = *v28;
  *v28 = 0;
  v28[1] = 0;
  swift_unknownObjectRelease();
  v36 = *v29;
  *v29 = 0;
  v29[1] = 0;
  swift_unknownObjectRelease();
  v37 = *(v27 + v23);
  *(v27 + v23) = 0;

  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v38 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_videoStream;
  swift_beginAccess();
  sub_2649FECCC(v0 + 16, v27 + v38, &qword_27FF8B7C8, &unk_264B51598);
  swift_endAccess();
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  v39 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_audioStream;
  swift_beginAccess();
  sub_2649FECCC(v0 + 56, v27 + v39, &qword_27FF8B7C8, &unk_264B51598);
  swift_endAccess();

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_264AB9A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 80) = a4;
  *(v6 + 88) = v5;
  *(v6 + 168) = a5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 56) = a1;
  v7 = type metadata accessor for HIDMessage();
  *(v6 + 96) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  v9 = type metadata accessor for HIDReportMessage();
  *(v6 + 112) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AB9B60, v5, 0);
}

uint64_t sub_264AB9B60()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 168);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 64);
  v9 = *(v3 + 20);
  sub_264ACB1F0(*(v0 + 56), v1 + v9, MEMORY[0x277D77AA8]);
  v10 = sub_264B40264();
  (*(*(v10 - 8) + 56))(v1 + v9, 0, 1, v10);
  *v1 = v7;
  *(v1 + 8) = v5 & 1;
  v11 = (v1 + *(v3 + 24));
  *v11 = v8;
  v11[1] = v6;
  sub_264ACB1F0(v1, v2, type metadata accessor for HIDReportMessage);
  swift_storeEnumTagMultiPayload();
  *(v0 + 40) = v4;
  *(v0 + 48) = &off_28765E6C8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_264ACB1F0(v2, boxed_opaque_existential_1, type metadata accessor for HIDMessage);
  sub_2649DEF18(v8, v6);
  v13 = swift_task_alloc();
  *(v0 + 144) = v13;
  *v13 = v0;
  v13[1] = sub_264AB9D18;
  v14 = *(v0 + 88);

  return sub_264ABA344(v0 + 16);
}

uint64_t sub_264AB9D18()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v8 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = sub_264AB9F04;
  }

  else
  {
    v6 = *(v2 + 88);
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v5 = sub_264AB9E40;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264AB9E40()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  sub_264ACB258(v0[13], type metadata accessor for HIDMessage);
  sub_264ACB258(v2, type metadata accessor for HIDReportMessage);

  v4 = v0[1];

  return v4();
}

uint64_t sub_264AB9F04()
{
  v21 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[17];
  v3 = sub_264B40964();
  __swift_project_value_buffer(v3, qword_27FFA71B8);
  sub_264ACB1F0(v2, v1, type metadata accessor for HIDReportMessage);
  v4 = sub_264B40944();
  v5 = sub_264B41494();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  if (v6)
  {
    v9 = v0[14];
    v8 = v0[15];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446210;
    sub_264ACB1F0(v7, v8, type metadata accessor for HIDReportMessage);
    v12 = sub_264B41064();
    v14 = v13;
    sub_264ACB258(v7, type metadata accessor for HIDReportMessage);
    v15 = sub_2649CC004(v12, v14, &v20);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to send HID report: %{public}s, tearing down.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {

    sub_264ACB258(v7, type metadata accessor for HIDReportMessage);
  }

  v16 = swift_task_alloc();
  v0[20] = v16;
  *v16 = v0;
  v16[1] = sub_264ABA168;
  v17 = v0[19];
  v18 = v0[11];

  return sub_264ABA794(v17);
}

uint64_t sub_264ABA168()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264ABA278, v2, 0);
}

uint64_t sub_264ABA278()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  sub_264ACB258(*(v0 + 104), type metadata accessor for HIDMessage);
  sub_264ACB258(v2, type metadata accessor for HIDReportMessage);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_264ABA344(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_264ABA364, v1, 0);
}

uint64_t sub_264ABA364()
{
  v13 = v0;
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageSession);
  *(v0 + 32) = v1;
  if (v1)
  {
    *(v0 + 56) = 0;

    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_264ABA5B4;
    v3 = *(v0 + 16);

    return sub_264A75684(v3, (v0 + 56));
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v5 = sub_264B40964();
    __swift_project_value_buffer(v5, qword_27FFA71B8);
    v6 = sub_264B40944();
    v7 = sub_264B41494();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_2649CC004(0x7373654D646E6573, 0xEF293A5F28656761, &v12);
      _os_log_impl(&dword_2649C6000, v6, v7, "%s called before we have a control message session", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x266749940](v9, -1, -1);
      MEMORY[0x266749940](v8, -1, -1);
    }

    sub_264AB6AF0();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_264ABA5B4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_264ABA730;
  }

  else
  {
    v5 = sub_264ABA6CC;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264ABA6CC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264ABA730()
{
  v1 = v0[4];

  v2 = v0[6];
  v3 = v0[1];

  return v3();
}

uint64_t sub_264ABA794(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_264ABA7B4, v1, 0);
}

uint64_t sub_264ABA7B4()
{
  v31 = v0;
  v1 = v0[4];
  v2 = v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 16);
  if ((v3 - 7) < 2 || v3 == 9 && (v8 = (*v2 >= 3uLL) + *(v2 + 8) - 1, (*v2 - 3) <= 1))
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FFA71B8);
    v5 = sub_264B40944();
    v6 = sub_264B41484();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_14;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2649C6000, v5, v6, "Session is already in a terminal state. Ignoring", v7, 2u);
    goto LABEL_13;
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportIsTearingDown))
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v9 = v0[3];
    v10 = sub_264B40964();
    __swift_project_value_buffer(v10, qword_27FFA71B8);
    v11 = v9;
    v5 = sub_264B40944();
    v12 = sub_264B414B4();

    if (!os_log_type_enabled(v5, v12))
    {
      goto LABEL_14;
    }

    v13 = v0[3];
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v29 = v14;
    *v7 = 136446210;
    v0[2] = v13;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v16 = sub_264B41064();
    v18 = sub_2649CC004(v16, v17, &v29);

    *(v7 + 4) = v18;
    _os_log_impl(&dword_2649C6000, v5, v12, "MediaTransport is already tearing down. Ignoring interruption for %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x266749940](v14, -1, -1);
LABEL_13:
    MEMORY[0x266749940](v7, -1, -1);
LABEL_14:

    v19 = v0[1];

    return v19();
  }

  v21 = v0[3];
  v22 = *v2;
  v23 = *(v2 + 8);
  *v2 = v21;
  *(v2 + 8) = 0;
  *(v2 + 16) = 7;
  v24 = v21;
  sub_264ACB170(v22, v23, v3);
  sub_264AB62DC(v22, v23, v3);
  *&v29 = v22;
  *(&v29 + 1) = v23;
  v30 = v3;
  sub_264AB5690(&v29);
  sub_264AB62DC(v22, v23, v3);
  v25 = telemetryPayload(_:_:)(0x7075727265746E69, 0xEB00000000646574, v21);
  v26 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_telemetry);
  LOBYTE(v29) = 10;
  sub_264A9113C(&v29, v25);

  v27 = swift_task_alloc();
  v0[5] = v27;
  *v27 = v0;
  v27[1] = sub_264A1B27C;
  v28 = v0[4];

  return sub_264AB7F20();
}

uint64_t sub_264ABAB88(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for HIDMessage();
  v3[10] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for HIDUpdateInputDevicesMessage();
  v3[12] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264ABAC50, v2, 0);
}

uint64_t sub_264ABAC50()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
  v7 = sub_264B40104();
  (*(*(v7 - 8) + 16))(v1, v6, v7);
  *(v1 + *(v2 + 20)) = v5;
  sub_264ACB1F0(v1, v3, type metadata accessor for HIDUpdateInputDevicesMessage);
  swift_storeEnumTagMultiPayload();
  v0[5] = v4;
  v0[6] = &off_28765E6C8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_264ACB1F0(v3, boxed_opaque_existential_1, type metadata accessor for HIDMessage);

  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_264ABADB8;
  v10 = v0[9];

  return sub_264ABA344((v0 + 2));
}

uint64_t sub_264ABADB8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = sub_264ABAF88;
  }

  else
  {
    v6 = *(v2 + 72);
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v5 = sub_264ABAEE0;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264ABAEE0()
{
  v1 = v0[13];
  sub_264ACB258(v0[11], type metadata accessor for HIDMessage);
  sub_264ACB258(v1, type metadata accessor for HIDUpdateInputDevicesMessage);

  v2 = v0[1];

  return v2();
}

uint64_t sub_264ABAF88()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to send HID input devices message: %{public}@, tearing down", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_264ABB15C;
  v12 = v0[15];
  v13 = v0[9];

  return sub_264ABA794(v12);
}

uint64_t sub_264ABB15C()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264ABB26C, v2, 0);
}

uint64_t sub_264ABB26C()
{
  v1 = *(v0 + 104);
  sub_264ACB258(*(v0 + 88), type metadata accessor for HIDMessage);
  sub_264ACB258(v1, type metadata accessor for HIDUpdateInputDevicesMessage);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264ABB31C()
{
  v1[7] = v0;
  v2 = type metadata accessor for HIDMessage();
  v1[8] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264ABB3B0, v0, 0);
}

uint64_t sub_264ABB3B0()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_storeEnumTagMultiPayload();
  v0[5] = v1;
  v0[6] = &off_28765E6C8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_264ACB1F0(v2, boxed_opaque_existential_1, type metadata accessor for HIDMessage);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_264ABB490;
  v5 = v0[7];

  return sub_264ABA344((v0 + 2));
}

uint64_t sub_264ABB490()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_264ABB638;
  }

  else
  {
    v6 = *(v2 + 56);
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v5 = sub_264ABB5B8;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264ABB5B8()
{
  sub_264ACB258(*(v0 + 72), type metadata accessor for HIDMessage);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264ABB638()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to send HID reset gesture message: %{public}@, tearing down", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_264ABB80C;
  v12 = v0[11];
  v13 = v0[7];

  return sub_264ABA794(v12);
}

uint64_t sub_264ABB80C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264ABB91C, v2, 0);
}

uint64_t sub_264ABB91C()
{
  sub_264ACB258(*(v0 + 72), type metadata accessor for HIDMessage);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264ABB9A4(_OWORD *a1)
{
  *(v2 + 96) = v1;
  v3 = a1[1];
  *(v2 + 104) = *a1;
  *(v2 + 120) = v3;
  return MEMORY[0x2822009F8](sub_264ABB9D0, v1, 0);
}

uint64_t sub_264ABB9D0()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v0[5] = &type metadata for SystemGestureEvent;
  v0[6] = &off_28765C718;
  v5 = swift_allocObject();
  v0[2] = v5;
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v1;
  v5[5] = v2;
  sub_264A18774(v4, v3, v1, v2);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_264ABBAC8;
  v7 = v0[12];

  return sub_264ABA344((v0 + 2));
}

uint64_t sub_264ABBAC8()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {
    v4 = v3[12];

    return MEMORY[0x2822009F8](sub_264ABBC04, v4, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_264ABBC04()
{
  v29 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27FF88410 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = sub_264B40964();
  __swift_project_value_buffer(v6, qword_27FF8AE88);
  sub_264A18774(v5, v4, v3, v2);
  v7 = v1;
  v8 = sub_264B40944();
  v9 = sub_264B41494();
  sub_264A187D4(v5, v4, v3, v2);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[18];
    v12 = v0[15];
    v11 = v0[16];
    v14 = v0[13];
    v13 = v0[14];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136446466;
    v0[7] = v14;
    v0[8] = v13;
    v0[9] = v12;
    v0[10] = v11;
    sub_264A18774(v14, v13, v12, v11);
    v17 = sub_264B41064();
    v19 = sub_2649CC004(v17, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v0[11] = v10;
    v20 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v21 = sub_264B41064();
    v23 = sub_2649CC004(v21, v22, &v28);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_2649C6000, v8, v9, "Failed to send %{public}s due to: %{public}s, tearing down.", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v16, -1, -1);
    MEMORY[0x266749940](v15, -1, -1);
  }

  v24 = swift_task_alloc();
  v0[19] = v24;
  *v24 = v0;
  v24[1] = sub_264ABBEA4;
  v25 = v0[18];
  v26 = v0[12];

  return sub_264ABA794(v25);
}

uint64_t sub_264ABBEA4()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264ABBFB4, v2, 0);
}

uint64_t sub_264ABBFB4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264ABC014(_BYTE *a1)
{
  *(v2 + 56) = v1;
  *(v2 + 80) = *a1;
  return MEMORY[0x2822009F8](sub_264ABC03C, v1, 0);
}

uint64_t sub_264ABC03C()
{
  v1 = *(v0 + 80);
  *(v0 + 40) = &type metadata for StatusEvent;
  *(v0 + 48) = &off_28765B558;
  v2 = swift_allocObject();
  *(v0 + 16) = v2;
  v2[2] = v1;
  v2[3] = 0;
  v2[9] = 0x6000000000000000;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_264ABC110;
  v4 = *(v0 + 56);

  return sub_264ABA344(v0 + 16);
}

uint64_t sub_264ABC110()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {
    v4 = v3[7];

    return MEMORY[0x2822009F8](sub_264ABC24C, v4, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_264ABC24C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_264ABC2B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v6 = sub_264B40964();
  __swift_project_value_buffer(v6, qword_27FFA71B8);
  v7 = sub_264B40944();
  v8 = sub_264B41484();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2649C6000, v7, v8, "ScreenSharingSession: notification interaction", v9, 2u);
    MEMORY[0x266749940](v9, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891E0, &unk_264B47030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B44150;
  *(inited + 32) = 0x795468636E75614CLL;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v11 = sub_264A24438(inited);
  swift_setDeallocating();
  sub_2649D04D4(inited + 32, &qword_27FF891E8, qword_264B51630);
  v12 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_telemetry);
  v15 = 16;
  v13 = sub_264AB4A0C(v11);

  sub_264A9113C(&v15, v13);
}

uint64_t sub_264ABC468(_OWORD *a1)
{
  *(v2 + 56) = v1;
  *(v2 + 64) = *a1;
  return MEMORY[0x2822009F8](sub_264ABC490, v1, 0);
}

uint64_t sub_264ABC490()
{
  v10 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v3 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_accessibilityTrafficSeen;
  if ((*(v2 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_accessibilityTrafficSeen) & 1) == 0 && (v1 & 0x2000000000000000) == 0)
  {
    v4 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_telemetry);
    v9 = 17;
    sub_264A9113C(&v9, 0);
    *(v2 + v3) = 1;
    v1 = v0[9];
  }

  v5 = v0[8];
  v0[5] = &type metadata for AccessibilityMessage;
  v0[6] = &off_28765A468;
  v0[2] = v5;
  v0[3] = v1;
  sub_264A5448C(v5, v1);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_264ABC59C;
  v7 = v0[7];

  return sub_264ABA344((v0 + 2));
}

uint64_t sub_264ABC59C()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[7];

    return MEMORY[0x2822009F8](sub_264ABC6D8, v4, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_264ABC6D8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v2 = v0[11];

  return v1();
}

uint64_t sub_264ABC73C(uint64_t a1)
{
  *(v2 + 56) = v1;
  *(v2 + 64) = *a1;
  v3 = *(a1 + 24);
  *(v2 + 80) = *(a1 + 16);
  *(v2 + 88) = v3;
  *(v2 + 112) = *(a1 + 32);
  *(v2 + 113) = *(a1 + 33);
  return MEMORY[0x2822009F8](sub_264ABC77C, v1, 0);
}

uint64_t sub_264ABC77C()
{
  v15 = v0;
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_dragNDropUsed;
  if ((*(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_dragNDropUsed) & 1) == 0)
  {
    v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_telemetry);
    v14 = 18;
    sub_264A9113C(&v14, 0);
    *(v1 + v2) = 1;
  }

  v4 = *(v0 + 113);
  v5 = *(v0 + 112);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  *(v0 + 40) = &type metadata for DragAndDropEvent;
  *(v0 + 48) = &off_28765F610;
  v10 = swift_allocObject();
  *(v0 + 16) = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  *(v10 + 32) = v7;
  *(v10 + 40) = v6;
  *(v10 + 48) = v5;
  *(v10 + 49) = v4;
  sub_2649DEF18(v9, v8);

  v11 = swift_task_alloc();
  *(v0 + 96) = v11;
  *v11 = v0;
  v11[1] = sub_264ABC8CC;
  v12 = *(v0 + 56);

  return sub_264ABA344(v0 + 16);
}

uint64_t sub_264ABC8CC()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {
    v4 = v3[7];

    return MEMORY[0x2822009F8](sub_264ABCA08, v4, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_264ABCA08()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v2 = v0[13];

  return v1();
}

BOOL sub_264ABCA6C(uint64_t *a1)
{
  v2 = *a1;
  v3 = (v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion);
  *&v16[9] = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 41);
  v4 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 16);
  v15[0] = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion);
  v15[1] = v4;
  *v16 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 32);
  v5 = *&v16[16];
  v6 = v16[24];
  if (*(&v4 + 1))
  {
    v9 = *v3;
    v10 = *(v3 + 2);
    v11 = *(&v4 + 1);
    v12 = v3[2];
    v13 = *&v16[16];
    v14 = v16[24];
    sub_2649D046C(v15, v8, &qword_27FF8B820, &unk_264B51648);
    sub_2649D04D4(&v9, &qword_27FF8B820, &unk_264B51648);
    if ((v6 & 1) == 0)
    {
      return (v2 & ~v5) == 0;
    }
  }

  else
  {
    v9 = *v3;
    v10 = *(v3 + 2);
    v11 = 0;
    v12 = v3[2];
    v13 = *&v16[16];
    v14 = v16[24];
    sub_2649D046C(v15, v8, &qword_27FF8B820, &unk_264B51648);
    sub_2649D04D4(&v9, &qword_27FF8B820, &unk_264B51648);
  }

  return 0;
}

uint64_t sub_264ABCB94(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_264ABCBB4, v1, 0);
}

uint64_t sub_264ABCBB4()
{
  v1 = v0[7];
  v0[5] = type metadata accessor for RTIMessage();
  v0[6] = &off_28765CD50;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_264ACB1F0(v1, boxed_opaque_existential_1, type metadata accessor for RTIMessage);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_264ABCC8C;
  v4 = v0[8];

  return sub_264ABA344((v0 + 2));
}

uint64_t sub_264ABCC8C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[8];

    return MEMORY[0x2822009F8](sub_264ABCDC8, v4, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_264ABCDC8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AEB8);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to send RTI message with error: %@, tearing down", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_264ABCF9C;
  v12 = v0[10];
  v13 = v0[8];

  return sub_264ABA794(v12);
}

uint64_t sub_264ABCF9C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264ABD0AC, v2, 0);
}

uint64_t sub_264ABD0AC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264ABD118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  ObjectType = swift_getObjectType();
  v10 = *(a5 + 8);
  v14 = (*(v10 + 16) + **(v10 + 16));
  v11 = *(*(v10 + 16) + 4);
  v12 = swift_task_alloc();
  v7[16] = v12;
  *v12 = v7;
  v12[1] = sub_264ABD258;

  return v14(v7 + 2, ObjectType, v10);
}

uint64_t sub_264ABD258()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_264ABE2C4;
  }

  else
  {
    v4 = sub_264ABD380;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264ABD380()
{
  v28 = v0;
  v1 = v0[15];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = v0[14] + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
  v5 = *v4;
  v6 = *(v4 + 8);
  *v4 = v3;
  *(v4 + 8) = v2;
  v7 = *(v4 + 16);
  *(v4 + 16) = 0;

  sub_264ACB170(v5, v6, v7);
  sub_264AB62DC(v5, v6, v7);
  *&v26 = v5;
  *(&v26 + 1) = v6;
  v27 = v7;
  sub_264AB5690(&v26);
  sub_264AB62DC(v5, v6, v7);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v8 = sub_264B40964();
  v0[18] = __swift_project_value_buffer(v8, qword_27FFA71B8);
  v9 = sub_264B40944();
  v10 = sub_264B41484();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2649C6000, v9, v10, "Setting up monitoring for MediaTransportClientSession state", v11, 2u);
    MEMORY[0x266749940](v11, -1, -1);
  }

  v12 = v0[5];
  v13 = __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
  v14 = *(v12 - 8);
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  (*(v14 + 16))(v16, v13, v12);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_264B41334();

  v17 = sub_264AB6BD4();
  v18 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportIsTearingDown;
  v0[19] = v17;
  v0[20] = v18;
  v19 = v0[14];
  v20 = v0[10];
  v21 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v20);
  v22 = *(MEMORY[0x277D856D8] + 4);
  v24 = swift_task_alloc();
  v0[21] = v24;
  *v24 = v0;
  v24[1] = sub_264ABD674;

  return MEMORY[0x282200310](v0 + 12, v19, v17, v23, v20, v21);
}

uint64_t sub_264ABD674()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v6 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 112);

    return MEMORY[0x2822009F8](sub_264ABD784, v5, 0);
  }

  return result;
}

uint64_t sub_264ABD784()
{
  v45 = v0;
  v1 = *(v0 + 96);
  *(v0 + 176) = v1;
  if (v1 == 4)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  v4 = *(v0 + 144);
  sub_2649DDB20(v1);
  v5 = sub_264B40944();
  v6 = sub_264B41484();
  sub_264A545B0(v1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v44 = v8;
    *v7 = 136446210;
    *(v0 + 104) = v1;
    sub_2649DDB20(v1);
    v9 = sub_264B41064();
    v11 = sub_2649CC004(v9, v10, &v44);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2649C6000, v5, v6, "MediaTransportClientSession state transitioned to: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  if (v1 <= 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v12 = *(v0 + 160);
        v13 = *(v0 + 144);
        v14 = *(v0 + 112);
        sub_2649FE684(1);
        sub_2649FE684(2);
        *(v14 + v12) = 0;
        v15 = sub_264B40944();
        v16 = sub_264B41474();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_2649C6000, v15, v16, "Starting up controlMessageTransport", v17, 2u);
          MEMORY[0x266749940](v17, -1, -1);
        }

        v18 = swift_task_alloc();
        *(v0 + 200) = v18;
        *v18 = v0;
        v18[1] = sub_264ABE0D4;
        v19 = *(v0 + 112);

        return sub_264ABE4CC();
      }

      goto LABEL_20;
    }

    v29 = *(v0 + 160);
    v30 = *(v0 + 112);
    sub_2649FE684(0);
    sub_2649FE684(2);
    *(v30 + v29) = 0;
    goto LABEL_27;
  }

  if (v1 == 2)
  {
    v31 = *(v0 + 160);
    v32 = *(v0 + 144);
    v33 = *(v0 + 112);
    sub_2649FE684(2);
    sub_2649FE684(2);
    *(v33 + v31) = 1;
    v34 = sub_264B40944();
    v35 = sub_264B414B4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2649C6000, v34, v35, "MediaTransportClientSession is tearing down", v36, 2u);
      MEMORY[0x266749940](v36, -1, -1);

      sub_264A545B0(2);
    }

    else
    {
    }

LABEL_27:
    v37 = *(v0 + 152);
    v38 = *(v0 + 112);
    v39 = *(v0 + 80);
    v40 = *(v0 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v39);
    v41 = *(MEMORY[0x277D856D8] + 4);
    v43 = swift_task_alloc();
    *(v0 + 168) = v43;
    *v43 = v0;
    v43[1] = sub_264ABD674;

    return MEMORY[0x282200310](v0 + 96, v38, v37, v42, v39, v40);
  }

  if (v1 != 3)
  {
LABEL_20:
    v24 = *(v0 + 160);
    v25 = *(v0 + 112);
    v26 = v1;
    sub_2649FE684(v1);
    sub_2649FE684(2);
    *(v25 + v24) = 0;
    sub_2649DDB20(v1);
    v27 = swift_task_alloc();
    *(v0 + 184) = v27;
    *v27 = v0;
    v27[1] = sub_264ABDCF0;
    v28 = *(v0 + 112);

    return sub_264ABA794(v1);
  }

  v20 = *(v0 + 160);
  v21 = *(v0 + 112);
  sub_2649FE684(3);
  sub_2649FE684(2);
  *(v21 + v20) = 0;
  *(v0 + 216) = 0;
  v22 = swift_task_alloc();
  *(v0 + 192) = v22;
  *v22 = v0;
  v22[1] = sub_264ABDEEC;
  v23 = *(v0 + 112);

  return sub_264AB7970((v0 + 216));
}

uint64_t sub_264ABDCF0()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264ABDE00, v2, 0);
}

uint64_t sub_264ABDE00()
{
  v1 = v0[22];
  sub_264A545B0(v1);
  sub_264A545B0(v1);
  v2 = v0[19];
  v3 = v0[14];
  v4 = v0[10];
  v5 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v4);
  v6 = *(MEMORY[0x277D856D8] + 4);
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_264ABD674;

  return MEMORY[0x282200310](v0 + 12, v3, v2, v7, v4, v5);
}

uint64_t sub_264ABDEEC()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264ABDFFC, v2, 0);
}

uint64_t sub_264ABDFFC()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v3);
  v5 = *(MEMORY[0x277D856D8] + 4);
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_264ABD674;

  return MEMORY[0x282200310](v0 + 12, v2, v1, v6, v3, v4);
}

uint64_t sub_264ABE0D4()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264ABE1E4, v2, 0);
}

uint64_t sub_264ABE1E4()
{
  sub_264A545B0(1);
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v3);
  v5 = *(MEMORY[0x277D856D8] + 4);
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_264ABD674;

  return MEMORY[0x282200310](v0 + 12, v2, v1, v6, v3, v4);
}

uint64_t sub_264ABE2C4()
{
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_264ABE35C;
  v2 = v0[17];
  v3 = v0[14];

  return sub_264ABA794(v2);
}

uint64_t sub_264ABE35C()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264ABE46C, v2, 0);
}

uint64_t sub_264ABE46C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264ABE4CC()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v1[6] = *(v4 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264ABE5E4, v0, 0);
}

uint64_t sub_264ABE5E4()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession);
  v2 = *v1;
  *(v0 + 72) = *v1;
  if (v2)
  {
    v3 = v1[1];
    *(v0 + 80) = v3;
    *(v0 + 88) = swift_getObjectType();
    *(v0 + 184) = 0;
    v4 = *(v3 + 24);
    v3 += 24;
    *(v0 + 96) = v4;
    *(v0 + 104) = v3 & 0xFFFFFFFFFFFFLL | 0x7A70000000000000;
    v5 = *(*(v3 - 16) + 8);
    swift_unknownObjectRetain();
    v7 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264ABE708, v7, v6);
  }

  else
  {
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 24);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_264ABE708()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = (*(v0 + 96))(0xD000000000000027, 0x8000000264B5C640, v0 + 184, *(v0 + 88), *(v0 + 80));
  *(v0 + 112) = 0;
  *(v0 + 120) = v3;
  *(v0 + 128) = v4;
  v5 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_264ABE7BC, v5, 0);
}

uint64_t sub_264ABE7BC()
{
  v14 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[2];
  v4 = type metadata accessor for ControlMessageSession();
  ObjectType = swift_getObjectType();
  v13 = 0;
  v6 = *(v2 + 8);
  v7 = swift_unknownObjectRetain();
  v8 = sub_264A78D00(v7, &v13, v4, ObjectType, v6);
  v0[17] = v8;
  v9 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageSession);
  *(v3 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageSession) = v8;

  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_264ABE8C0;
  v11 = v0[2];

  return sub_264AC26D4();
}

uint64_t sub_264ABE8C0()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 152) = v4;
  *v4 = v3;
  v4[1] = sub_264ABEA00;
  v5 = *(v1 + 16);

  return sub_264AC2EB0();
}

uint64_t sub_264ABEA00()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264ABEB10, v2, 0);
}

uint64_t sub_264ABEB10()
{
  v1 = v0[17];
  v2 = v0[14];
  sub_264A74A68(v0[8]);
  v0[20] = v2;
  v3 = v0[2];
  if (v2)
  {
    v4 = sub_264ABEFC0;
  }

  else
  {
    v4 = sub_264ABEBA0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264ABEBA0()
{
  v1 = *(v0 + 64);
  v21 = *(v0 + 72);
  v22 = *(v0 + 136);
  v19 = v1;
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = sub_264B41274();
  v20 = *(v0 + 120);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v5 + 16))(v2, v1, v4);
  v9 = sub_264AB6BD4();
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v9;
  (*(v5 + 32))(v12 + v10, v2, v4);
  *(v12 + v11) = v6;
  swift_retain_n();
  sub_264A10C20(0, 0, v7, &unk_264B518F0, v12);

  swift_unknownObjectRelease();

  (*(v5 + 8))(v19, v4);
  v13 = *(v6 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageStream);
  *(v6 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageStream) = v20;
  swift_unknownObjectRelease();
  v15 = *(v0 + 56);
  v14 = *(v0 + 64);
  v16 = *(v0 + 24);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_264ABED90()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264ABEEA0, v2, 0);
}

uint64_t sub_264ABEEA0()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 24);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_264ABEF1C()
{
  v1 = v0[9];
  swift_unknownObjectRelease();
  v2 = v0[14];
  v0[21] = v2;
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_264ABED90;
  v4 = v0[2];

  return sub_264ABA794(v2);
}

uint64_t sub_264ABEFC0()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[9];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v4 = v0[20];
  v0[21] = v4;
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_264ABED90;
  v6 = v0[2];

  return sub_264ABA794(v4);
}

uint64_t sub_264ABF07C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_264ABF0A0, v2, 0);
}

uint64_t sub_264ABF0A0()
{
  v36 = v0;
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
  *(v0 + 88) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
  v5 = v1 + v4;
  v6 = *(v1 + v4 + 8);
  v7 = *(v1 + v4 + 16);
  v30 = *(v1 + v4);
  v31 = v6;
  v32 = v7;
  v33 = v3;
  v34 = v2;
  v35 = 5;
  sub_264ACB170(v30, v6, v7);

  LOBYTE(v2) = _s16ScreenSharingKit0aB7SessionC0abD5StateO2eeoiySbAE_AEtFZ_0(&v30, &v33);
  sub_264AB62DC(v33, v34, v35);
  sub_264AB62DC(v30, v31, v32);
  if (v2)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v8 = sub_264B40964();
    *(v0 + 96) = __swift_project_value_buffer(v8, qword_27FFA71B8);
    v9 = sub_264B40944();
    v10 = sub_264B414B4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2649C6000, v9, v10, "Creating media streams", v11, 2u);
      MEMORY[0x266749940](v11, -1, -1);
    }

    v12 = swift_task_alloc();
    *(v0 + 104) = v12;
    *v12 = v0;
    v12[1] = sub_264ABF3E0;
    v13 = *(v0 + 72);
    v14 = *(v0 + 80);
    v15 = *(v0 + 64);

    return sub_264ABF838(v15, v13);
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 80);
    v18 = sub_264B40964();
    __swift_project_value_buffer(v18, qword_27FFA71B8);

    v19 = sub_264B40944();
    v20 = sub_264B41494();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136446210;
      v23 = *v5;
      v24 = *(v5 + 8);
      v25 = *(v5 + 16);
      *(v0 + 16) = *v5;
      *(v0 + 24) = v24;
      *(v0 + 32) = v25;
      sub_264ACB170(v23, v24, v25);
      v26 = sub_264B41064();
      v28 = sub_2649CC004(v26, v27, &v33);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_2649C6000, v19, v20, "currentState changed to %{public}s before we could setup video stream", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x266749940](v22, -1, -1);
      MEMORY[0x266749940](v21, -1, -1);
    }

    v29 = *(v0 + 8);

    return v29();
  }
}