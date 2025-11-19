uint64_t sub_2304739F8(uint64_t a1, uint64_t a2)
{
  v17 = sub_2304A5ED4();
  v4 = *(v17 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2304A5EA4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2304A5C64();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v20 = type metadata accessor for NotifydNotificationPoster();
  v21 = &off_28451C1D8;
  *&v19 = a1;
  v12 = sub_230474F08(0, &qword_281499D80, 0x277D85C78);
  v16[1] = "ateCaptureServiceServer";
  v16[2] = v12;
  sub_2304A5C44();
  v18 = MEMORY[0x277D84F90];
  sub_230469BF8(&qword_281499D98, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54370, &qword_2304A7980);
  sub_230474FF4(&qword_281499DB8, &qword_27DB54370, &qword_2304A7980);
  sub_2304A5FA4();
  (*(v4 + 104))(v7, *MEMORY[0x277D85268], v17);
  v13 = sub_2304A5F04();
  v14 = MEMORY[0x277D84F98];
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  sub_230464EC8(&v19, a2 + 32);
  return a2;
}

uint64_t sub_230473CA0(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_2304A6044();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = sub_2304A4984();
  v5 = sub_230469BF8(&qword_281499FD0, MEMORY[0x277D464B8]);
  result = MEMORY[0x231919370](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x231919680](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_23046AF0C(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_2304A6044();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_230473E0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x231919370](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_23046ADBC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_230473EA4(uint64_t a1)
{
  v2 = sub_2304A4084();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_230469BF8(&qword_28149AC58, MEMORY[0x277CC95F0]);
  result = MEMORY[0x231919370](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_23046B48C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_23047405C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54398, &qword_2304A7690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2304740D4()
{
  result = qword_281499D88;
  if (!qword_281499D88)
  {
    sub_230474F08(255, &qword_281499D80, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281499D88);
  }

  return result;
}

char *sub_230474144(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, _BYTE *a6)
{
  v61 = a5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544E8, &qword_2304A7798);
  v70 = *(v69 - 8);
  v11 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54358, &qword_2304A7670);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v55 - v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54360, &qword_2304A7678);
  v67 = *(v66 - 8);
  v16 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v55 - v17;
  v60 = sub_2304A52F4();
  v59 = *(v60 - 1);
  v18 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v58 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2304A5ED4();
  v56 = *(v57 - 8);
  v20 = *(v56 + 64);
  MEMORY[0x28223BE20](v57);
  v55 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2304A5EA4();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v24 = sub_2304A5C64();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v62 = sub_2304A40F4();
  v77[4] = MEMORY[0x277D462B8];
  v77[5] = MEMORY[0x277D462C8];
  v77[6] = MEMORY[0x277D462D0];
  v77[7] = MEMORY[0x277D462B0];
  v77[8] = MEMORY[0x277D462D8];
  v77[3] = v62;
  v77[0] = a1;
  v76[3] = type metadata accessor for DebouncingNotificationPoster();
  v76[4] = &off_28451C1E8;
  v76[0] = a2;
  v63 = sub_2304A56A4();
  v75[3] = v63;
  v75[4] = MEMORY[0x277D469E0];
  v75[0] = a3;
  a6[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_isXPCServerEnabled] = 0;
  v26 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54210, &qword_2304A7570);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *&a6[v26] = v27;
  v28 = MEMORY[0x277D84FA0];
  *&a6[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock_clients] = MEMORY[0x277D84FA0];
  *&a6[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock_devices] = 0;
  *&a6[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_subscriptions] = v28;
  *&a6[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_listener] = 0;
  sub_230474F80(v77, &a6[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator]);
  sub_230464834(v76, &a6[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_notificationPoster]);
  sub_230464834(v75, &a6[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_clientSettingsStore]);
  *&a6[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_idsService] = a4;
  v71 = sub_230474F08(0, &qword_281499D80, 0x277D85C78);
  v29 = a4;
  sub_2304A5C44();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_230469BF8(&qword_281499D98, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54370, &qword_2304A7980);
  sub_230474FF4(&qword_281499DB8, &qword_27DB54370, &qword_2304A7980);
  sub_2304A5FA4();
  (*(v56 + 104))(v55, *MEMORY[0x277D85268], v57);
  v30 = v61;
  *&a6[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_queue] = sub_2304A5F04();
  v31 = type metadata accessor for ReplicatorControlServer();
  v74.receiver = a6;
  v74.super_class = v31;
  v32 = objc_msgSendSuper2(&v74, sel_init);
  v33 = v58;
  sub_2304A4C14();
  sub_2304A52E4();
  (*(v59 + 8))(v33, v60);
  sub_2304A4C04();
  v34 = sub_2304A5D14();

  v35 = sub_2304A5D14();

  v36 = [objc_opt_self() configurationWithDomain:v34 service:v35];
  v61 = v36;

  v37 = swift_allocObject();
  *(v37 + 16) = v32;
  aBlock[4] = sub_230431950;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2304318E8;
  aBlock[3] = &block_descriptor_47;
  v38 = _Block_copy(aBlock);
  v39 = objc_opt_self();
  v40 = v32;
  v41 = [v39 listenerWithConfiguration:v36 handler:v38];
  _Block_release(v38);

  v42 = *&v40[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_listener];
  *&v40[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_listener] = v41;
  v60 = v41;

  aBlock[0] = sub_2304A48E4();
  v62 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_queue;
  v72 = *&v40[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_queue];
  v43 = v72;
  v44 = sub_2304A5EC4();
  v45 = *(v44 - 8);
  v58 = *(v45 + 56);
  v59 = v45 + 56;
  v46 = v64;
  (v58)(v64, 1, 1, v44);
  v47 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB543A8, &qword_2304A7698);
  sub_230474FF4(&unk_281499E00, &qword_27DB543A8, &qword_2304A7698);
  v57 = sub_2304740D4();
  v48 = v65;
  sub_2304A5BD4();
  sub_230464970(v46, &qword_27DB54358, &qword_2304A7670);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_230474FF4(&qword_281499E20, &unk_27DB54360, &qword_2304A7678);
  v49 = v66;
  sub_2304A5BE4();

  (*(v67 + 8))(v48, v49);
  swift_beginAccess();
  sub_2304A5B94();
  swift_endAccess();

  aBlock[0] = sub_2304A5414();
  v72 = *&v40[v62];
  v50 = v72;
  (v58)(v46, 1, 1, v44);
  v51 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB544F0, &qword_2304A77A0);
  sub_230474FF4(&qword_281499DF8, &unk_27DB544F0, &qword_2304A77A0);
  v52 = v68;
  sub_2304A5BD4();
  sub_230464970(v46, &qword_27DB54358, &qword_2304A7670);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_230474FF4(&unk_281499E10, &qword_27DB544E8, &qword_2304A7798);
  v53 = v69;
  sub_2304A5BE4();

  (*(v70 + 8))(v52, v53);
  swift_beginAccess();
  sub_2304A5B94();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v76);
  __swift_destroy_boxed_opaque_existential_0Tm(v75);
  __swift_destroy_boxed_opaque_existential_0Tm(v77);
  return v40;
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

uint64_t sub_230474E48(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_230474E9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_230474F08(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_230474F80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  *(a2 + 64) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_230474FF4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2304750A0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a1;
  v7 = sub_2304A4114();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2304A4924();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a2, v12);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == *MEMORY[0x277D46488])
  {
    (*(v8 + 16))(v11, a4, v7);
    if ((*(v8 + 88))(v11, v7) == *MEMORY[0x277D46320])
    {
      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v18 = sub_2304A5B74();
      __swift_project_value_buffer(v18, qword_28149B008);
      v19 = sub_2304A5B54();
      v20 = sub_2304A5E94();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_230430000, v19, v20, "Adding StatusKit advertiser", v21, 2u);
        MEMORY[0x23191A000](v21, -1, -1);
      }

      sub_230464834(a3, &v54);
      v22 = sub_2304A47C4();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      v25 = sub_2304A47B4();
      v26 = v57;
      v27 = *v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_230459D08(0, v27[2] + 1, 1, v27);
      }

      v29 = v27[2];
      v28 = v27[3];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v27 = sub_230459D08((v28 > 1), v29 + 1, 1, v27);
      }

      v31 = MEMORY[0x277D46470];
LABEL_22:
      v55 = v22;
      v56 = v31;
      *&v54 = v25;
      v27[2] = v30;
      result = sub_230433DAC(&v54, &v27[5 * v29 + 4]);
      *v26 = v27;
      return result;
    }

    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v41 = sub_2304A5B74();
    __swift_project_value_buffer(v41, qword_28149B008);
    v42 = sub_2304A5B54();
    v43 = sub_2304A5E94();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_230430000, v42, v43, "Adding StatusKit advertiser", v44, 2u);
      MEMORY[0x23191A000](v44, -1, -1);
    }

    sub_230464834(a3, &v54);
    v45 = sub_2304A47C4();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    v48 = sub_2304A47B4();
    v49 = *v57;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_230459D08(0, v49[2] + 1, 1, v49);
    }

    v51 = v49[2];
    v50 = v49[3];
    if (v51 >= v50 >> 1)
    {
      v49 = sub_230459D08((v50 > 1), v51 + 1, 1, v49);
    }

    v55 = v45;
    v56 = MEMORY[0x277D46470];
    *&v54 = v48;
    v49[2] = v51 + 1;
    sub_230433DAC(&v54, &v49[5 * v51 + 4]);
    *v57 = v49;
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    if (v17 == *MEMORY[0x277D46490])
    {
      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v32 = sub_2304A5B74();
      __swift_project_value_buffer(v32, qword_28149B008);
      v33 = sub_2304A5B54();
      v34 = sub_2304A5E94();
      v35 = os_log_type_enabled(v33, v34);
      v26 = v57;
      if (v35)
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_230430000, v33, v34, "Adding terminus advertiser", v36, 2u);
        MEMORY[0x23191A000](v36, -1, -1);
      }

      sub_230464834(a3, &v54);
      v22 = sub_2304A45A4();
      v37 = *(v22 + 48);
      v38 = *(v22 + 52);
      swift_allocObject();
      v25 = sub_2304A4594();
      v27 = *v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_230459D08(0, v27[2] + 1, 1, v27);
      }

      v29 = v27[2];
      v39 = v27[3];
      v30 = v29 + 1;
      if (v29 >= v39 >> 1)
      {
        v27 = sub_230459D08((v39 > 1), v29 + 1, 1, v27);
      }

      v31 = MEMORY[0x277D463C0];
      goto LABEL_22;
    }

    *&v54 = 0;
    *(&v54 + 1) = 0xE000000000000000;
    sub_2304A6104();

    *&v54 = 0xD00000000000001FLL;
    *(&v54 + 1) = 0x80000002304A8720;
    sub_2304757DC();
    v52 = sub_2304A62D4();
    MEMORY[0x2319192E0](v52);

    result = sub_2304A6254();
    __break(1u);
  }

  return result;
}

unint64_t sub_2304757DC()
{
  result = qword_27DB54378;
  if (!qword_27DB54378)
  {
    sub_2304A4924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB54378);
  }

  return result;
}

uint64_t sub_230475834()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_230475898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *v6;
  v14 = *(*v6 + 40);
  v15 = *(*v6 + 48);
  __swift_project_boxed_opaque_existential_5Tm((*v6 + 16), v14);
  if (((*(v15 + 8))(a1, a2, a3, a4, a5, a6, v14, v15) & 1) == 0)
  {
    v16 = v13[10];
    v17 = v13[11];
    __swift_project_boxed_opaque_existential_5Tm(v13 + 7, v16);
    (*(v17 + 8))(a5, a6, v16, v17);
  }

  return 1;
}

uint64_t sub_230475978()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54210, &qword_2304A7570);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_28149A878 = result;
  return result;
}

uint64_t sub_2304759B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54210, &qword_2304A7570);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_28149A570 = result;
  return result;
}

uint64_t sub_230475A0C()
{
  v0 = sub_2304A5ED4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2304A5EA4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_2304A5C64();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_23047773C();
  sub_2304A5C54();
  v10[1] = MEMORY[0x277D84F90];
  sub_230477788(&qword_281499D98, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54370, &qword_2304A7980);
  sub_2304777D0();
  sub_2304A5FA4();
  (*(v1 + 104))(v4, *MEMORY[0x277D85268], v0);
  result = sub_2304A5F04();
  qword_28149A760 = result;
  return result;
}

uint64_t sub_230475C44(uint64_t a1)
{
  if (qword_28149A260 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *(a1 + 24);
  swift_beginAccess();
  sub_2304790E4(v1);
  swift_endAccess();
}

void *sub_230475D28(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_281499E60 != -1)
  {
    swift_once();
  }

  v12 = sub_2304A5B74();
  __swift_project_value_buffer(v12, qword_28149B050);

  v13 = sub_2304A5B54();
  v14 = sub_2304A5E94();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_23046A5C8(a1, a2, &v18);
    _os_log_impl(&dword_230430000, v13, v14, "[state-capture] StateCaptureEntry created with title: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x23191A000](v16, -1, -1);
    MEMORY[0x23191A000](v15, -1, -1);
  }

  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  return v6;
}

uint64_t sub_230475EA0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

double sub_230475F0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a3;
  v14[7] = a4;
  aBlock[4] = sub_2304776D8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2304769FC;
  aBlock[3] = &block_descriptor_1;
  v15 = _Block_copy(aBlock);

  v16 = os_state_add_handler();
  _Block_release(v15);
  if (v16)
  {
    if (qword_28149A568 != -1)
    {
      v17 = swift_once();
    }

    v18 = qword_28149A570;
    v19 = MEMORY[0x28223BE20](v17);
    MEMORY[0x28223BE20](v19);
    os_unfair_lock_lock(v18 + 4);
    sub_230431F78(v20);
    os_unfair_lock_unlock(v18 + 4);
    v21 = type metadata accessor for StateCaptureInvalidator();
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = v16;
    *(a7 + 24) = v21;
    *(a7 + 32) = &off_28451C120;
    *a7 = v22;
  }

  else
  {
    if (qword_281499E60 != -1)
    {
      swift_once();
    }

    v24 = sub_2304A5B74();
    __swift_project_value_buffer(v24, qword_28149B050);
    v25 = sub_2304A5B54();
    v26 = sub_2304A5E74();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_230430000, v25, v26, "[state-capture] os_state_add_handler() failed to return a handle", v27, 2u);
      MEMORY[0x23191A000](v27, -1, -1);
    }

    *(a7 + 32) = 0;
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
  }

  return result;
}

_OWORD *sub_2304761DC(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a2(a4, a5);
  v9 = sub_23047647C(a6, a7);
  v11 = v10;
  v12 = v9;

  if (v11 < 0x8000)
  {
    return v12;
  }

  if (qword_281499E60 != -1)
  {
    swift_once();
  }

  v14 = sub_2304A5B74();
  __swift_project_value_buffer(v14, qword_28149B050);
  v15 = sub_2304A5B54();
  v16 = sub_2304A5E74();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_230430000, v15, v16, "[state-capture] cannot capture state data larger than 32KB", v17, 2u);
    MEMORY[0x23191A000](v17, -1, -1);
  }

  return 0;
}

_OWORD *sub_23047647C(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = sub_2304A3EC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = objc_opt_self();
  v10 = sub_2304A5CC4();
  *v51 = 0;
  v11 = [v9 dataWithPropertyList:v10 format:200 options:0 error:v51];

  v12 = *v51;
  if (!v11)
  {
    v18 = v12;
    sub_2304A3F24();

    swift_willThrow();
    goto LABEL_38;
  }

  v13 = sub_2304A3FD4();
  v15 = v14;

  v50 = v15;
  v16 = v15 >> 62;
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      v17 = 0;
      goto LABEL_13;
    }

    v20 = *(v13 + 16);
    v19 = *(v13 + 24);
    v21 = __OFSUB__(v19, v20);
    v17 = v19 - v20;
    if (!v21)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    LODWORD(v17) = HIDWORD(v13) - v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v17 = v17;
    goto LABEL_13;
  }

  if (v16)
  {
    goto LABEL_10;
  }

  v17 = BYTE6(v50);
LABEL_13:
  if (__OFADD__(v17, 200))
  {
    __break(1u);
    goto LABEL_40;
  }

  v22 = malloc(v17 + 200);
  if (v22)
  {
    v11 = v22;
    *v51 = 1;
    memset(&v51[4], 0, 196);
    sub_230476B88(a1, a2, &v51[136], &v52);
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        goto LABEL_32;
      }

      v32 = *(v13 + 16);
      v31 = *(v13 + 24);
      v21 = __OFSUB__(v31, v32);
      v33 = v31 - v32;
      v23 = v50;
      if (!v21)
      {
LABEL_25:
        if ((v33 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v33))
          {
            *&v51[4] = v33;
            v34 = *&v51[176];
            v11[10] = *&v51[160];
            v11[11] = v34;
            *(v11 + 24) = *&v51[192];
            v35 = *&v51[112];
            v11[6] = *&v51[96];
            v11[7] = v35;
            v36 = *&v51[144];
            v11[8] = *&v51[128];
            v11[9] = v36;
            v37 = *&v51[48];
            v11[2] = *&v51[32];
            v11[3] = v37;
            v38 = *&v51[80];
            v11[4] = *&v51[64];
            v11[5] = v38;
            v39 = *&v51[16];
            *v11 = *v51;
            v11[1] = v39;
            if (v16 != 2)
            {
              if (__OFSUB__(HIDWORD(v13), v13))
              {
                goto LABEL_46;
              }

              v24 = HIDWORD(v13) - v13;
              goto LABEL_35;
            }

            if (__OFSUB__(*(v13 + 24), *(v13 + 16)))
            {
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
            }

            sub_2304A3FE4();
            v41 = *(v13 + 16);
            v40 = *(v13 + 24);
            sub_2304617C4(v13, v23);
            v21 = __OFSUB__(v40, v41);
            v24 = v40 - v41;
            if (!v21)
            {
              goto LABEL_37;
            }

            __break(1u);
LABEL_32:
            v23 = v50;
            *&v51[4] = 0;
            v42 = *&v51[176];
            v11[10] = *&v51[160];
            v11[11] = v42;
            *(v11 + 24) = *&v51[192];
            v43 = *&v51[112];
            v11[6] = *&v51[96];
            v11[7] = v43;
            v44 = *&v51[144];
            v11[8] = *&v51[128];
            v11[9] = v44;
            v45 = *&v51[48];
            v11[2] = *&v51[32];
            v11[3] = v45;
            v46 = *&v51[80];
            v11[4] = *&v51[64];
            v11[5] = v46;
            v47 = *&v51[16];
            *v11 = *v51;
            v11[1] = v47;
            sub_2304A3FE4();
            v24 = 0;
LABEL_36:
            sub_2304617C4(v13, v23);
LABEL_37:
            if (!__OFADD__(v24, 200))
            {
              goto LABEL_38;
            }

            goto LABEL_42;
          }

LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      __break(1u);
    }

    else if (!v16)
    {
      v23 = v50;
      v24 = BYTE6(v50);
      *&v51[4] = BYTE6(v50);
      v25 = *&v51[176];
      v11[10] = *&v51[160];
      v11[11] = v25;
      *(v11 + 24) = *&v51[192];
      v26 = *&v51[112];
      v11[6] = *&v51[96];
      v11[7] = v26;
      v27 = *&v51[144];
      v11[8] = *&v51[128];
      v11[9] = v27;
      v28 = *&v51[48];
      v11[2] = *&v51[32];
      v11[3] = v28;
      v29 = *&v51[80];
      v11[4] = *&v51[64];
      v11[5] = v29;
      v30 = *&v51[16];
      *v11 = *v51;
      v11[1] = v30;
LABEL_35:
      sub_2304A3FE4();
      goto LABEL_36;
    }

    LODWORD(v33) = HIDWORD(v13) - v13;
    v23 = v50;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v33 = v33;
    goto LABEL_25;
  }

  *v51 = 12;
  sub_230462828(MEMORY[0x277D84F90]);
  sub_230477788(&qword_27DB54510, MEMORY[0x277CC8658]);
  sub_2304A3F04();
  v11 = v8;
  sub_2304A3EB4();
  (*(v5 + 8))(v8, v4);
  swift_willThrow();
  sub_2304617C4(v13, v50);
LABEL_38:
  v48 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_2304769FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

uint64_t sub_230476A4C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for StateCaptureEntry();
  v12 = swift_allocObject();

  v13 = a3;

  sub_230475D28(a1, a2, v13, a4, a5);
  if (qword_28149A260 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = qword_28149A268;
  qword_28149A268 = 0x8000000000000000;
  sub_23045C34C(v12, a6, isUniquelyReferenced_nonNull_native);
  qword_28149A268 = v16;
  swift_endAccess();
}

uint64_t sub_230476B88(uint64_t result, uint64_t a2, char *__dst, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_2304A60F4();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *__src = result;
    v7 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (__dst)
    {
      v4 = a4 - __dst;
      v5 = __src;
      return strncpy(__dst, v5, v4);
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((result & 0x1000000000000000) == 0)
  {
    return sub_2304A60F4();
  }

  if (!__dst)
  {
    goto LABEL_12;
  }

  v4 = a4 - __dst;
  v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return strncpy(__dst, v5, v4);
}

uint64_t sub_230476C24()
{
  sub_230464B24((v0 + 8), v9, &qword_27DB54518, &qword_2304A7988);
  if (v10)
  {
    v1 = __swift_project_boxed_opaque_existential_5Tm(v9, v10);
    if ((*(*v1 + 16) & 1) == 0 && *(*v1 + 24))
    {
      v2 = os_state_remove_handler();
      if (qword_28149A568 != -1)
      {
        v2 = swift_once();
      }

      v3 = qword_28149A570;
      MEMORY[0x28223BE20](v2);
      os_unfair_lock_lock(v3 + 4);
      sub_230475088(v4);
      os_unfair_lock_unlock(v3 + 4);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  else
  {
    sub_230477834(v9);
  }

  v5 = v0[3];

  v6 = v0[5];

  v7 = v0[7];

  sub_230477834((v0 + 8));
  return swift_deallocClassInstance();
}

void *sub_230476D94()
{
  v11[0] = sub_2304A5ED4();
  v1 = *(v11[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v11[0]);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2304A5EA4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_2304A5C64();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = MEMORY[0x277D84F98];
  v0[2] = MEMORY[0x277D84F98];
  v0[3] = v9;
  sub_23047773C();
  sub_2304A5C24();
  v11[1] = MEMORY[0x277D84F90];
  sub_230477788(&qword_281499D98, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54370, &qword_2304A7980);
  sub_2304777D0();
  sub_2304A5FA4();
  (*(v1 + 104))(v4, *MEMORY[0x277D85268], v11[0]);
  v0[4] = sub_2304A5F04();
  return v0;
}

uint64_t sub_230476FDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);

  result = sub_230464F00(v5);
  *a2 = result;
  return result;
}

uint64_t sub_230477074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = swift_beginAccess();
  v9 = *(a1 + 16);
  if (*(v9 + 16))
  {

    v10 = sub_230469C40(a2, a3);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  *a4 = v12;
  return result;
}

uint64_t sub_230477124(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_5Tm(a1, v8);
  v10 = (*(v9 + 8))(v8, v9);
  v12 = v11;
  swift_beginAccess();
  if (*(*(v3 + 16) + 16) && (v13 = *(v3 + 16), , sub_230469C40(a2, a3), v15 = v14, , (v15 & 1) != 0))
  {
    if (qword_281499E60 != -1)
    {
      swift_once();
    }

    v28 = sub_2304A5B74();
    __swift_project_value_buffer(v28, qword_28149B050);

    v29 = sub_2304A5B54();
    v30 = sub_2304A5E74();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v34[0] = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_23046A5C8(a2, a3, v34);
      _os_log_impl(&dword_230430000, v29, v30, "[state-capture] identifier [%{public}s] is already in use", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x23191A000](v32, -1, -1);
      MEMORY[0x23191A000](v31, -1, -1);
    }

    result = sub_2304A6254();
    __break(1u);
  }

  else
  {
    sub_230464834(a1, v34);
    v16 = swift_allocObject();
    sub_230433DAC(v34, v16 + 16);
    type metadata accessor for StateCaptureItem();
    v17 = swift_allocObject();
    v17[2] = v10;
    v17[3] = v12;
    v17[4] = a2;
    v17[5] = a3;
    v17[6] = sub_23047766C;
    v17[7] = v16;
    v18 = qword_28149A758;

    if (v18 != -1)
    {
      swift_once();
    }

    sub_230475F0C(sub_23047766C, v16, v10, v12, a2, a3, (v17 + 8));

    if (qword_281499E60 != -1)
    {
      swift_once();
    }

    v19 = sub_2304A5B74();
    __swift_project_value_buffer(v19, qword_28149B050);

    v20 = sub_2304A5B54();
    v21 = sub_2304A5E94();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v34[0] = v23;
      *v22 = 136446466;
      v24 = sub_23046A5C8(v10, v12, v34);

      *(v22 + 4) = v24;
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_23046A5C8(a2, a3, v34);
      _os_log_impl(&dword_230430000, v20, v21, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23191A000](v23, -1, -1);
      MEMORY[0x23191A000](v22, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();

    v25 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_23045C498(v17, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v33;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_230477600()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_23047766C(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_5Tm(v2 + 2, v5);
  return (*(v6 + 16))(a1, a2, v5, v6);
}

char *sub_23047770C(char *__src)
{
  result = *(v1 + 16);
  if (result)
  {
    return strncpy(result, __src, *(v1 + 24) - result);
  }

  __break(1u);
  return result;
}

unint64_t sub_23047773C()
{
  result = qword_281499D80;
  if (!qword_281499D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281499D80);
  }

  return result;
}

uint64_t sub_230477788(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2304777D0()
{
  result = qword_281499DB8;
  if (!qword_281499DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB54370, &qword_2304A7980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281499DB8);
  }

  return result;
}

uint64_t sub_230477834(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54518, &qword_2304A7988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2304778B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FD0, &qword_2304A7428);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_2304A5294();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_230464970(a1, &qword_27DB53FD0, &qword_2304A7428);
    sub_23047916C(a2, a3, MEMORY[0x277D46850], MEMORY[0x277D46850], sub_230471050, v10);

    return sub_230464970(v10, &qword_27DB53FD0, &qword_2304A7428);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_23045BC5C(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_230477ABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_23045BF7C(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_2304A4FF4();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v23;
  }

  else
  {
    v10 = *v2;
    v11 = sub_230469D9C(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v24 = *v3;
      if (!v15)
      {
        sub_2304714B0();
        v16 = v24;
      }

      v17 = *(v16 + 48);
      v18 = sub_2304A4FF4();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);

      sub_2304798F0(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v21 = sub_2304A4FF4();
      v22 = *(*(v21 - 8) + 8);

      return v22(a2, v21);
    }
  }

  return result;
}

uint64_t sub_230477C7C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54650, &qword_2304A74D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_2304A4F74();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_230464970(a1, &qword_27DB54650, &qword_2304A74D8);
    sub_230478F44(a2, v8);
    v14 = sub_2304A4084();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_230464970(v8, &qword_27DB54650, &qword_2304A74D8);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_23045C148(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_2304A4084();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_230477EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB546F0, &unk_2304A7A40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_2304A4024();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_230464970(a1, &qword_27DB546F0, &unk_2304A7A40);
    sub_23047916C(a2, a3, MEMORY[0x277CC9578], MEMORY[0x277CC9578], sub_230472298, v10);

    return sub_230464970(v10, &qword_27DB546F0, &unk_2304A7A40);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_23045C614(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_2304780AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54740, &qword_2304A7A60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_2304A5054();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_230464970(a1, &unk_27DB54740, &qword_2304A7A60);
    v15 = *v3;
    v16 = sub_23046A0EC(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_230472548();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_23047A2B8(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_230464970(v9, &unk_27DB54740, &qword_2304A7A60);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_23045C810(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_230478334(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = v2[2];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_23047A5D8;
  *(v9 + 24) = v8;
  v12[4] = sub_23047A5E4;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_230478D34;
  v12[3] = &block_descriptor_2;
  v10 = _Block_copy(v12);

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2304784CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a2;
  v65 = a3;
  v4 = sub_2304A5C04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v62 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_2304A5C64();
  v61 = *(v63 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v60 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2304A5BF4();
  v54 = *(v55 - 8);
  v10 = *(v54 + 64);
  MEMORY[0x28223BE20](v55);
  v12 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_2304A5C94();
  v57 = *(v13 - 8);
  v58 = v13;
  v14 = *(v57 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v56 = &v51 - v18;
  v19 = sub_2304A4024();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB546F0, &unk_2304A7A40);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v51 - v29;
  swift_beginAccess();
  v59 = a1;
  v31 = *(a1 + 24);
  if (*(v31 + 16))
  {

    v32 = sub_230469C40(v64, v65);
    if (v33)
    {
      (*(v20 + 16))(v30, *(v31 + 56) + *(v20 + 72) * v32, v19);

      (*(v20 + 56))(v30, 0, 1, v19);
      return sub_230464970(v30, &qword_27DB546F0, &unk_2304A7A40);
    }
  }

  v52 = v4;
  v53 = v5;
  v35 = *(v20 + 56);
  v35(v30, 1, 1, v19);
  sub_230464970(v30, &qword_27DB546F0, &unk_2304A7A40);
  v36 = v65;

  sub_2304A4004();
  sub_2304A4014();
  (*(v20 + 8))(v23, v19);
  v35(v28, 0, 1, v19);
  v37 = v59;
  swift_beginAccess();
  v38 = v28;
  v39 = v64;
  sub_230477EA8(v38, v64, v36);
  swift_endAccess();
  sub_2304A5C74();
  *v12 = 100;
  v40 = v54;
  v41 = v55;
  (*(v54 + 104))(v12, *MEMORY[0x277D85178], v55);
  v42 = v56;
  sub_2304A5C84();
  (*(v40 + 8))(v12, v41);
  v43 = *(v57 + 8);
  v44 = v17;
  v45 = v58;
  v43(v44, v58);
  v57 = *(v37 + 16);
  v46 = swift_allocObject();
  v46[2] = v37;
  v46[3] = v39;
  v46[4] = v36;
  aBlock[4] = sub_23047A658;
  aBlock[5] = v46;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2304699EC;
  aBlock[3] = &block_descriptor_19;
  v47 = _Block_copy(aBlock);

  v48 = v60;
  sub_2304A5C34();
  v66 = MEMORY[0x277D84F90];
  sub_23047A6C8(&qword_281499DE8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB544D0, &qword_2304A7788);
  sub_23047A664();
  v49 = v62;
  v50 = v52;
  sub_2304A5FA4();
  MEMORY[0x231919420](v42, v48, v49, v47);
  _Block_release(v47);
  (*(v53 + 8))(v49, v50);
  (*(v61 + 8))(v48, v63);
  v43(v42, v45);
}

uint64_t sub_230478BD0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB546F0, &unk_2304A7A40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = sub_2304A4024();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  swift_beginAccess();

  sub_230477EA8(v9, a2, a3);
  swift_endAccess();
  v11 = a1[7];
  v12 = a1[8];
  __swift_project_boxed_opaque_existential_5Tm(a1 + 4, v11);
  return (*(v12 + 8))(a2, a3, v11, v12);
}

uint64_t sub_230478D5C()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_230478DEC(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    v14 = *v2;
    v15 = sub_230469CB8(a1);
    if (v16)
    {
      v4 = v15;
      v17 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v21 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v19 = *(*(v8 + 48) + 8 * v4);

        v13 = *(*(v8 + 56) + 8 * v4);
        sub_230479720(v4, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_2304711E8();
      v8 = v21;
      goto LABEL_10;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v2;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = sub_2304A6224();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_2304A6044();
  v8 = sub_230479300(v5, v7);

  v9 = sub_230469CB8(a1);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 48) + 8 * v9);

  v13 = *(*(v8 + 56) + 8 * v9);
  sub_230479720(v9, v8);

LABEL_11:
  *v2 = v8;
  return v13;
}

uint64_t sub_230478F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_230469E70(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2304719EC();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_2304A4084();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_2304A4F74();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_230479C10(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_2304A4F74();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2304790E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_23046A0EC(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_230471FCC();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_230479F54(v10, v9);
  *v2 = v9;
  return v11;
}

uint64_t sub_23047916C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = *v6;
  v13 = sub_230469C40(a1, a2);
  if (v14)
  {
    v15 = v13;
    v16 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v10;
    v29 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v18 = v29;
    }

    v19 = *(*(v18 + 48) + 16 * v15 + 8);

    v20 = *(v18 + 56);
    v21 = a3(0);
    v28 = *(v21 - 8);
    (*(v28 + 32))(a6, v20 + *(v28 + 72) * v15, v21);
    sub_23047A0C4(v15, v18, a4);
    *v10 = v18;
    v22 = *(v28 + 56);
    v23 = a6;
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v26 = a3(0);
    v22 = *(*(v26 - 8) + 56);
    v25 = v26;
    v23 = a6;
    v24 = 1;
  }

  return v22(v23, v24, 1, v25);
}

uint64_t sub_230479300(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FB8, &unk_2304A7A50);
    v2 = sub_2304A6294();
    v20 = v2;
    sub_2304A61A4();
    v3 = sub_2304A6234();
    if (v3)
    {
      v4 = v3;
      sub_2304A4984();
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        type metadata accessor for ClientDataSource();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_23046E490(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        sub_23047A6C8(&qword_281499FD0, MEMORY[0x277D464B8]);
        result = sub_2304A5CF4();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_2304A6234();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_230479570(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2304A5FC4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2304A6394();

      sub_2304A5D54();
      v13 = sub_2304A63B4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_230479720(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2304A5FC4() + 1) & ~v5;
    sub_2304A4984();
    sub_23047A6C8(&qword_281499FD0, MEMORY[0x277D464B8]);
    do
    {
      v9 = *(a2 + 40);
      v22 = *(*(a2 + 48) + 8 * v6);
      result = sub_2304A5CF4();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = (v13 + 8 * v3);
          v15 = (v13 + 8 * v6);
          if (v3 != v6 || v14 >= v15 + 1)
          {
            *v14 = *v15;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 8 * v3);
          v18 = (v16 + 8 * v6);
          if (v3 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v3 = v6;
          }
        }
      }

      else if (v10 >= v8 || v3 >= v10)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2304798F0(int64_t a1, uint64_t a2)
{
  v43 = sub_2304A4FF4();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_2304A5FC4();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_23047A6C8(&qword_281499F88, MEMORY[0x277D46790]);
      v26 = sub_2304A5CF4();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_230479C10(int64_t a1, uint64_t a2)
{
  v4 = sub_2304A4084();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_2304A5FC4();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_23047A6C8(&qword_28149AC58, MEMORY[0x277CC95F0]);
      v24 = sub_2304A5CF4();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(sub_2304A4F74() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_230479F54(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2304A5FC4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_2304A6384();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23047A0C4(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_2304A5FC4() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_2304A6394();

      sub_2304A5D54();
      v15 = sub_2304A63B4();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23047A2B8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2304A5FC4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_2304A6384();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(sub_2304A5054() - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23047A464(uint64_t a1, unint64_t a2)
{
  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v4 = sub_2304A5B74();
  __swift_project_value_buffer(v4, qword_28149B008);

  v5 = sub_2304A5B54();
  v6 = sub_2304A5E94();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136380675;
    *(v7 + 4) = sub_23046A5C8(a1, a2, &v11);
    _os_log_impl(&dword_230430000, v5, v6, "Publishing %{private}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x23191A000](v8, -1, -1);
    MEMORY[0x23191A000](v7, -1, -1);
  }

  v9 = sub_2304A5D44();
  notify_post((v9 + 32));
}

uint64_t sub_23047A5E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroyTm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t sub_23047A664()
{
  result = qword_281499DC8;
  if (!qword_281499DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB544D0, &qword_2304A7788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281499DC8);
  }

  return result;
}

uint64_t sub_23047A6C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23047A718()
{
  result = sub_23047A738();
  qword_28149B068 = result;
  return result;
}

uint64_t sub_23047A738()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE0, &qword_2304A7430);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v26 - v2;
  v4 = sub_2304A3FC4();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v26 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v26 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  sub_23048BD04(v3);
  v16 = v35;
  (*(v35 + 56))(v3, 0, 1, v4);
  v33 = *(v16 + 32);
  v34 = v16 + 32;
  v33(v15, v3, v4);
  sub_2304A3F64();
  v17 = sub_2304A5B44();
  v30 = *(v16 + 16);
  v31 = v16 + 16;
  v32 = v17;
  v36 = 3;
  *&v18 = 136315138;
  v27 = v18;
  v26[1] = v4;
  v26[0] = v5;
  v28 = v13;
  v29 = v15;
  v19 = v30;
  v30(v10, v13, v4);
  v19(v7, v15, v4);
  v20 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v21 = swift_allocObject();
  v33((v21 + v20), v7, v4);
  v22 = sub_2304A5B24();
  v23 = *(v35 + 8);
  v24 = v22;
  v23(v13, v4);
  v23(v15, v4);
  return v24;
}

void sub_23047AD7C(void *a1, uint64_t a2)
{
  if (qword_281499E28 != -1)
  {
    swift_once();
  }

  v4 = sub_2304A5B74();
  __swift_project_value_buffer(v4, &unk_28149AFF0);
  v5 = a1;
  v6 = sub_2304A5B54();
  v7 = sub_2304A5E74();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_230430000, v6, v7, "Database corruption detected: %{public}@", v8, 0xCu);
    sub_230464970(v9, &qword_27DB53F30, &qword_2304A7390);
    MEMORY[0x23191A000](v9, -1, -1);
    MEMORY[0x23191A000](v8, -1, -1);
  }

  sub_23047AF38(a2);
  exit(0);
}

void sub_23047AEC8(void *a1)
{
  v3 = *(sub_2304A3FC4() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_23047AD7C(a1, v4);
}

void sub_23047AF38(uint64_t a1)
{
  v72[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2304A3FC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v70 = v63 - v9;
  MEMORY[0x28223BE20](v8);
  v69 = v63 - v10;
  v68 = objc_opt_self();
  v11 = [v68 defaultManager];
  v12 = sub_2304A3F54();
  v72[0] = 0;
  v13 = [v11 contentsOfDirectoryAtURL:v12 includingPropertiesForKeys:0 options:0 error:v72];

  v14 = v72[0];
  if (v13)
  {
    v15 = sub_2304A5DC4();
    v16 = v14;

    v18 = v15;
    v19 = *(v15 + 16);
    if (v19)
    {
      v22 = *(v3 + 16);
      v21 = v3 + 16;
      v20 = v22;
      v23 = *(v21 + 64);
      v63[1] = v18;
      v24 = v18 + ((v23 + 32) & ~v23);
      v66 = *(v21 + 56);
      v71 = (v21 - 8);
      *&v17 = 136315138;
      v64 = v17;
      v25 = v69;
      v26 = v70;
      v65 = v21;
      v67 = v22;
      v22(v69, v24, v2);
      while (1)
      {
        if (qword_281499E28 != -1)
        {
          swift_once();
        }

        v28 = sub_2304A5B74();
        __swift_project_value_buffer(v28, &unk_28149AFF0);
        v20(v26, v25, v2);
        v29 = sub_2304A5B54();
        v30 = sub_2304A5E94();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = v2;
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v72[0] = v33;
          *v32 = v64;
          sub_23047B5B4();
          v34 = sub_2304A62D4();
          v36 = v35;
          v37 = *v71;
          (*v71)(v70, v31);
          v38 = sub_23046A5C8(v34, v36, v72);

          *(v32 + 4) = v38;
          _os_log_impl(&dword_230430000, v29, v30, "Removing %s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v33);
          v39 = v33;
          v26 = v70;
          MEMORY[0x23191A000](v39, -1, -1);
          v40 = v32;
          v2 = v31;
          MEMORY[0x23191A000](v40, -1, -1);
        }

        else
        {

          v37 = *v71;
          (*v71)(v26, v2);
        }

        v41 = [v68 defaultManager];
        v25 = v69;
        v42 = sub_2304A3F54();
        v72[0] = 0;
        v43 = [v41 removeItemAtURL:v42 error:v72];

        if (v43)
        {
          v27 = v72[0];
        }

        else
        {
          v44 = v72[0];
          v45 = sub_2304A3F24();

          swift_willThrow();
        }

        v37(v25, v2);
        v20 = v67;
        v24 += v66;
        if (!--v19)
        {
          break;
        }

        v67(v25, v24, v2);
      }
    }
  }

  else
  {
    v46 = v72[0];
    v47 = sub_2304A3F24();

    swift_willThrow();
    if (qword_281499E28 != -1)
    {
      swift_once();
    }

    v48 = sub_2304A5B74();
    __swift_project_value_buffer(v48, &unk_28149AFF0);
    (*(v3 + 16))(v7, a1, v2);
    v49 = v47;
    v50 = sub_2304A5B54();
    v51 = sub_2304A5E94();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = v3;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v72[0] = v54;
      *v53 = 136315394;
      sub_23047B5B4();
      v55 = sub_2304A62D4();
      v57 = v56;
      (*(v52 + 8))(v7, v2);
      v58 = sub_23046A5C8(v55, v57, v72);

      *(v53 + 4) = v58;
      *(v53 + 12) = 2080;
      swift_getErrorValue();
      v59 = sub_2304A6324();
      v61 = sub_23046A5C8(v59, v60, v72);

      *(v53 + 14) = v61;
      _os_log_impl(&dword_230430000, v50, v51, "Unable to clean up %s: %s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23191A000](v54, -1, -1);
      MEMORY[0x23191A000](v53, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }
  }

  v62 = *MEMORY[0x277D85DE8];
}

unint64_t sub_23047B5B4()
{
  result = qword_28149AC60;
  if (!qword_28149AC60)
  {
    sub_2304A3FC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28149AC60);
  }

  return result;
}

uint64_t sub_23047B648()
{
  v0 = sub_2304A5B74();
  __swift_allocate_value_buffer(v0, qword_28149B008);
  __swift_project_value_buffer(v0, qword_28149B008);
  return sub_2304A5B64();
}

uint64_t sub_23047B6F4()
{
  v0 = sub_2304A5B74();
  __swift_allocate_value_buffer(v0, qword_28149B020);
  __swift_project_value_buffer(v0, qword_28149B020);
  return sub_2304A5B64();
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

uint64_t sub_23047B800(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2304A5B74();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2304A5B64();
}

uint64_t sub_23047B878()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v5 = *(v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54520, qword_2304A7B08);
    sub_230474FF4(&qword_281499DF0, &unk_27DB54520, qword_2304A7B08);
    v2 = v0;
    v1 = sub_2304A5BC4();
    v3 = *(v0 + 24);
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t sub_23047B93C()
{
  v15 = sub_2304A5ED4();
  v1 = *(v15 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v15);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2304A5EA4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_2304A5C64();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23047773C();
  v14[1] = "v20@?0i8r^{__CFDictionary=}12";
  v14[2] = v9;
  sub_2304A5C44();
  v17 = MEMORY[0x277D84F90];
  sub_23047BE04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54370, &qword_2304A7980);
  sub_230474FF4(&qword_281499DB8, &qword_27DB54370, &qword_2304A7980);
  sub_2304A5FA4();
  (*(v1 + 104))(v4, *MEMORY[0x277D85268], v15);
  *(v0 + 16) = sub_2304A5F04();
  *(v0 + 24) = 0;
  v16 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54520, qword_2304A7B08);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v0 + 32) = sub_2304A5BB4();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 40) = MKBDeviceUnlockedSinceBoot() == 1;
  *(v0 + 48) = sub_23047BC40();
  return v0;
}

uint64_t sub_23047BBCC()
{
  v1 = *(v0 + 48);
  MKBEventsUnregister();

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_23047BC40()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  swift_weakInit();
  v10[4] = sub_230433394;
  v10[5] = v2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23043331C;
  v10[3] = &block_descriptor_3;
  v3 = _Block_copy(v10);

  v4 = MKBEventsRegister();
  _Block_release(v3);
  if (!v4)
  {
    if (qword_27DB53E40 != -1)
    {
      swift_once();
    }

    v5 = sub_2304A5B74();
    __swift_project_value_buffer(v5, qword_27DB54BC0);
    v6 = sub_2304A5B54();
    v7 = sub_2304A5E74();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_230430000, v6, v7, "Failed to begin observing keybag: nil pointer", v8, 2u);
      MEMORY[0x23191A000](v8, -1, -1);
    }
  }

  return v4;
}

unint64_t sub_23047BE04()
{
  result = qword_281499D98;
  if (!qword_281499D98)
  {
    sub_2304A5EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281499D98);
  }

  return result;
}

uint64_t sub_23047BE5C(uint64_t a1)
{
  v50 = sub_2304A4434();
  v3 = *(v50 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v50);
  v49 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = v41 - v7;
  v8 = sub_2304A4BE4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v47 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2304A4E64();
  v51 = *(v46 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v46);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = sub_2304A6044();
  }

  else
  {
    v14 = *(a1 + 16);
  }

  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v67 = MEMORY[0x277D84F90];
  sub_23045FB6C(0, v14 & ~(v14 >> 63), 0);
  v15 = v67;
  if (v52)
  {
    result = sub_2304A6194();
  }

  else
  {
    v18 = -1 << *(a1 + 32);
    result = sub_2304A5FB4();
    v17 = *(a1 + 36);
  }

  v64 = result;
  v65 = v17;
  v66 = v52 != 0;
  if ((v14 & 0x8000000000000000) == 0)
  {
    v41[1] = v1;
    v19 = 0;
    v44 = (v3 + 8);
    v43 = v51 + 32;
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v20 = a1;
    }

    v41[2] = v20;
    v45 = a1;
    v42 = v14;
    while (v19 < v14)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      v55 = v19 + 1;
      v56 = v19;
      v53 = v64;
      v54 = v65;
      v61 = v66;
      sub_230460478(v63, v64, v65, v66, a1);
      v29 = sub_2304A4964();
      v59 = v30;
      v60 = v29;
      v31 = sub_2304A4954();
      v57 = v32;
      v58 = v31;
      v33 = v48;
      sub_2304A4944();
      sub_2304A4414();
      v62 = v15;
      v34 = v13;
      v35 = *v44;
      v36 = v50;
      (*v44)(v33, v50);
      v37 = v49;
      sub_2304A4944();
      sub_2304A4424();
      v35(v37, v36);
      v13 = v34;
      v15 = v62;
      sub_2304A4BB4();
      sub_2304A4E24();

      v67 = v15;
      v39 = *(v15 + 16);
      v38 = *(v15 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_23045FB6C(v38 > 1, v39 + 1, 1);
        v15 = v67;
      }

      *(v15 + 16) = v39 + 1;
      result = (*(v51 + 32))(v15 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v39, v13, v46);
      if (v52)
      {
        a1 = v45;
        if (!v61)
        {
          goto LABEL_28;
        }

        if (sub_2304A61C4())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54130, &qword_2304A74F8);
        v40 = sub_2304A5CE4();
        sub_2304A6244();
        result = v40(v63, 0);
      }

      else
      {
        v22 = v53;
        v21 = v54;
        v23 = v61;
        a1 = v45;
        v24 = sub_230460208(v53, v54, v61, v45);
        v26 = v25;
        v28 = v27;
        result = sub_230433B44(v22, v21, v23);
        v64 = v24;
        v65 = v26;
        v66 = v28 & 1;
      }

      v19 = v56 + 1;
      v14 = v42;
      if (v55 == v42)
      {
        sub_230433B44(v64, v65, v66);
        return v15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_23047C3AC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v2 = sub_2304A5B74();
    __swift_project_value_buffer(v2, qword_28149B008);
    v3 = sub_2304A5B54();
    v4 = sub_2304A5E94();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_230430000, v3, v4, "Connection invalidated", v5, 2u);
      MEMORY[0x23191A000](v5, -1, -1);
    }

    v6 = *&v1[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock];
    v8 = MEMORY[0x28223BE20](v7);
    MEMORY[0x28223BE20](v8);

    os_unfair_lock_lock(v6 + 4);
    sub_230475088(v9);
    os_unfair_lock_unlock(v6 + 4);
  }

  return result;
}

void sub_23047C558(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v3 = sub_23045AEF0(a2);
  swift_endAccess();
}

void sub_23047C5CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_23047C620();
  }
}

uint64_t sub_23047C620()
{
  v1 = v0;
  v10 = 0;
  v2 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock);

  os_unfair_lock_lock(v2 + 4);
  sub_230480818(v1, &v10);
  os_unfair_lock_unlock(v2 + 4);

  if (v10)
  {
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v4 = sub_2304A5B74();
    __swift_project_value_buffer(v4, qword_28149B008);
    v5 = sub_2304A5B54();
    v6 = sub_2304A5E94();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_230430000, v5, v6, "Publishing devices change", v7, 2u);
      MEMORY[0x23191A000](v7, -1, -1);
    }

    v8 = *(v1 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_notificationPoster + 32);
    __swift_project_boxed_opaque_existential_5Tm((v1 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_notificationPoster), *(v1 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_notificationPoster + 24));
    v9 = sub_2304A5144();
    (*(v8 + 8))(v9);
  }

  return result;
}

uint64_t sub_23047C8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v227 = a1;
  v178 = a2;
  v2 = sub_2304A4024();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v177 = v165 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_2304A4EE4();
  v175 = *(v176 - 8);
  v5 = *(v175 + 64);
  MEMORY[0x28223BE20](v176);
  v7 = v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54120, &qword_2304A74F0);
  v8 = *(*(v200 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v200);
  v199 = v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v224 = v165 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v223 = v165 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v222 = v165 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v226 = v165 - v18;
  MEMORY[0x28223BE20](v17);
  v198 = v165 - v19;
  v197 = sub_2304A4B64();
  v201 = *(v197 - 8);
  v20 = *(v201 + 64);
  MEMORY[0x28223BE20](v197);
  v196 = v165 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54110, &unk_2304A74E0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v179 = v165 - v24;
  v172 = sub_2304A4544();
  v171 = *(v172 - 8);
  v25 = *(v171 + 64);
  MEMORY[0x28223BE20](v172);
  v169 = v165 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54680, &unk_2304A7BA0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v174 = v165 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v184 = v165 - v31;
  v204 = sub_2304A4434();
  v206 = *(v204 - 8);
  v32 = *(v206 + 64);
  v33 = MEMORY[0x28223BE20](v204);
  v203 = v165 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v202 = v165 - v35;
  v183 = sub_2304A4BE4();
  v173 = *(v183 - 8);
  v36 = *(v173 + 64);
  v37 = MEMORY[0x28223BE20](v183);
  v205 = v165 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v191 = v165 - v39;
  v220 = sub_2304A4114();
  v219 = *(v220 - 8);
  v40 = *(v219 + 64);
  MEMORY[0x28223BE20](v220);
  v218 = v165 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_2304A4E94();
  v185 = *(v190 - 8);
  v42 = *(v185 + 64);
  v43 = MEMORY[0x28223BE20](v190);
  v182 = v165 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v221 = v165 - v46;
  MEMORY[0x28223BE20](v45);
  v189 = v165 - v47;
  v187 = sub_2304A44F4();
  v186 = *(v187 - 8);
  v48 = *(v186 + 64);
  MEMORY[0x28223BE20](v187);
  v50 = v165 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v51 - 8);
  v55 = v165 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v57 = v165 - v56;
  v58 = sub_2304A4084();
  v59 = *(v58 - 8);
  v60 = v59[8];
  v61 = MEMORY[0x28223BE20](v58);
  v181 = v165 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v61);
  v180 = v165 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v188 = v165 - v66;
  MEMORY[0x28223BE20](v65);
  v68 = v165 - v67;
  sub_2304A4034();
  v69 = v59[6];
  if (v69(v57, 1, v58) == 1)
  {
    sub_230464970(v57, &qword_27DB53F20, &qword_2304A7388);
    if (qword_281499E38 == -1)
    {
LABEL_3:
      v70 = sub_2304A5B74();
      __swift_project_value_buffer(v70, qword_28149B008);
      v71 = sub_2304A5B54();
      v72 = sub_2304A5E74();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_230430000, v71, v72, "Could not create relationship ID from string", v73, 2u);
        MEMORY[0x23191A000](v73, -1, -1);
      }

      v74 = sub_2304A4104();
      sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
      swift_allocError();
      (*(*(v74 - 8) + 104))(v75, *MEMORY[0x277D462E0], v74);
      return swift_willThrow();
    }

LABEL_45:
    swift_once();
    goto LABEL_3;
  }

  v167 = v7;
  v168 = v59;
  v77 = v59[4];
  v170 = v68;
  v217 = v77;
  v77(v68, v57, v58);
  v78 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
  v79 = v227;
  swift_beginAccess();
  sub_230474F80(v79 + v78, v228);
  __swift_project_boxed_opaque_existential_5Tm(v228, v228[3]);
  sub_2304A4214();
  __swift_destroy_boxed_opaque_existential_0Tm(v228);
  sub_2304A44B4();
  sub_2304A4034();

  v80 = v50;
  if (v69(v55, 1, v58) == 1)
  {
    sub_230464970(v55, &qword_27DB53F20, &qword_2304A7388);
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v81 = sub_2304A5B74();
    __swift_project_value_buffer(v81, qword_28149B008);
    v82 = sub_2304A5B54();
    v83 = sub_2304A5E74();
    v84 = os_log_type_enabled(v82, v83);
    v85 = v168;
    v86 = v170;
    if (v84)
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_230430000, v82, v83, "Could not create device UUID from string", v87, 2u);
      MEMORY[0x23191A000](v87, -1, -1);
    }

    v88 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
    swift_allocError();
    (*(*(v88 - 8) + 104))(v89, *MEMORY[0x277D462E0], v88);
    swift_willThrow();
    (*(v186 + 8))(v80, v187);
    return (v85[1])(v86, v58);
  }

  v166 = v58;
  v217(v188, v55, v58);
  v90 = v218;
  sub_2304A4454();
  v91 = v219;
  v92 = v220;
  v93 = (*(v219 + 88))(v90, v220);
  if (v93 != *MEMORY[0x277D46330])
  {
    v96 = v190;
    v94 = v185;
    v97 = v179;
    v98 = v225;
    v95 = v221;
    if (v93 == *MEMORY[0x277D46310])
    {
      v99 = MEMORY[0x277D46710];
    }

    else if (v93 == *MEMORY[0x277D46320])
    {
      v99 = MEMORY[0x277D46720];
    }

    else if (v93 == *MEMORY[0x277D46318])
    {
      v99 = MEMORY[0x277D46718];
    }

    else
    {
      if (v93 != *MEMORY[0x277D46328])
      {
        v101 = *(v185 + 104);
        if (v93 != *MEMORY[0x277D46308])
        {
          v101(v221, *MEMORY[0x277D46730], v190);
          (*(v91 + 8))(v90, v92);
          goto LABEL_24;
        }

        v100 = *MEMORY[0x277D46708];
        goto LABEL_23;
      }

      v99 = MEMORY[0x277D46728];
    }

    v100 = *v99;
    v101 = *(v185 + 104);
LABEL_23:
    v101(v221, v100, v190);
    goto LABEL_24;
  }

  v94 = v185;
  v95 = v221;
  v96 = v190;
  (*(v185 + 104))(v221, *MEMORY[0x277D46730], v190);
  v97 = v179;
  v98 = v225;
LABEL_24:
  (*(v94 + 32))(v189, v95, v96);
  v102 = v202;
  sub_2304A4494();
  sub_2304A4414();
  v103 = v206 + 8;
  v104 = *(v206 + 8);
  v105 = v102;
  v106 = v204;
  v104(v105, v204);
  v107 = v203;
  sub_2304A4494();
  sub_2304A4424();
  v206 = v103;
  v195 = v104;
  v104(v107, v106);
  sub_2304A4BB4();
  v108 = sub_2304A44D4();
  v165[1] = sub_23047BE5C(v108);
  v165[2] = v98;

  v109 = sub_2304A4474();
  v110 = *(v109 + 16);
  if (v110)
  {
    v165[0] = v80;
    v228[0] = MEMORY[0x277D84F90];
    sub_23045FB28(0, v110, 0);
    v111 = v228[0];
    v112 = -1 << *(v109 + 32);
    v113 = sub_2304A5FB4();
    v193 = v201 + 32;
    v194 = v109;
    v192 = v109 + 64;
    while (1)
    {
      v220 = v113;
      v207 = v110;
      v221 = v111;
      v114 = *(v109 + 36);
      v115 = v200;
      v116 = *(v200 + 48);
      v117 = v198;
      v208 = v114;
      sub_230460364(v198, v198 + v116, v113, v114, 0, v109);
      v118 = sub_2304A41D4();
      v119 = *(v118 - 8);
      v120 = v226;
      (*(v119 + 32))(v226, v117, v118);
      v121 = *(v115 + 48);
      v122 = sub_2304A41F4();
      v227 = *(v122 - 8);
      v123 = *(v227 + 32);
      v124 = v117 + v116;
      v125 = v122;
      v225 = v122;
      v123(v120 + v121, v124);
      v126 = v222;
      sub_230464B24(v120, v222, &unk_27DB54120, &qword_2304A74F0);
      v219 = *(v115 + 48);
      v218 = sub_2304A41C4();
      v217 = v127;
      v128 = *(v119 + 8);
      v212 = v118;
      v128(v126, v118);
      v213 = v119 + 8;
      v211 = v128;
      v129 = v223;
      sub_230464B24(v120, v223, &unk_27DB54120, &qword_2304A74F0);
      v216 = *(v115 + 48);
      v215 = sub_2304A41A4();
      v214 = v130;
      v128(v129, v118);
      v131 = v224;
      sub_230464B24(v120, v224, &unk_27DB54120, &qword_2304A74F0);
      v132 = *(v115 + 48);
      v133 = v202;
      sub_2304A4194();
      v135 = v227 + 8;
      v134 = *(v227 + 8);
      v134(v131 + v132, v125);
      v210 = v134;
      v227 = v135;
      v209 = sub_2304A4414();
      v136 = v204;
      v137 = v195;
      v195(v133, v204);
      v138 = v199;
      sub_230464B24(v226, v199, &unk_27DB54120, &qword_2304A74F0);
      v139 = *(v115 + 48);
      v140 = v203;
      sub_2304A4194();
      v134(v138 + v139, v225);
      sub_2304A4424();
      v137(v140, v136);
      sub_2304A4BB4();
      v141 = v138;
      v142 = v212;
      v143 = v211;
      v211(v141, v212);
      v143(v224, v142);
      v144 = v196;
      sub_2304A4B24();
      sub_230464970(v226, &unk_27DB54120, &qword_2304A74F0);
      v145 = v225;
      v146 = v210;
      v210(v223 + v216, v225);
      v146(v222 + v219, v145);
      v111 = v221;
      v228[0] = v221;
      v148 = *(v221 + 2);
      v147 = *(v221 + 3);
      if (v148 >= v147 >> 1)
      {
        sub_23045FB28(v147 > 1, v148 + 1, 1);
        v111 = v228[0];
      }

      *(v111 + 16) = v148 + 1;
      (*(v201 + 32))(v111 + ((*(v201 + 80) + 32) & ~*(v201 + 80)) + *(v201 + 72) * v148, v144, v197);
      v109 = v194;
      if (v220 < 0 || v220 >= -(-1 << *(v194 + 32)))
      {
        break;
      }

      if (((*(v192 + ((v220 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v220) & 1) == 0)
      {
        goto LABEL_43;
      }

      if (v208 != *(v194 + 36))
      {
        goto LABEL_44;
      }

      v113 = sub_2304A5FD4();
      v110 = v207 - 1;
      if (v207 == 1)
      {

        v80 = v165[0];
        v149 = v166;
        v97 = v179;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v111 = MEMORY[0x277D84F90];
  v149 = v166;
LABEL_35:
  sub_2304A4444();
  v150 = v171;
  v151 = v172;
  v152 = (*(v171 + 48))(v97, 1, v172);
  v221 = v111;
  if (v152 == 1)
  {
    sub_230464970(v97, &unk_27DB54110, &unk_2304A74E0);
    v153 = 1;
    v154 = v184;
  }

  else
  {
    v155 = v169;
    (*(v150 + 32))(v169, v97, v151);
    sub_2304A4534();
    sub_2304A4524();
    sub_2304A4514();
    v154 = v184;
    sub_2304A4F54();
    (*(v150 + 8))(v155, v151);
    v153 = 0;
  }

  v156 = sub_2304A4F64();
  (*(*(v156 - 8) + 56))(v154, v153, 1, v156);
  v157 = v168;
  v158 = v168[2];
  v158(v180, v188, v149);
  v158(v181, v170, v149);
  v159 = sub_2304A44C4();
  v226 = v160;
  v227 = v159;
  v161 = v173;
  (*(v173 + 16))(v205, v191, v183);
  v162 = v185;
  (*(v185 + 16))(v182, v189, v190);
  sub_230464B24(v154, v174, &unk_27DB54680, &unk_2304A7BA0);
  (*(v175 + 104))(v167, *MEMORY[0x277D46760], v176);
  sub_2304A3FF4();
  sub_2304A4484();
  sub_2304A4464();
  sub_2304A4F24();
  sub_230464970(v184, &unk_27DB54680, &unk_2304A7BA0);
  (*(v161 + 8))(v191, v183);
  (*(v162 + 8))(v189, v190);
  v163 = v157[1];
  v164 = v166;
  v163(v188, v166);
  (*(v186 + 8))(v80, v187);
  return (v163)(v170, v164);
}

uint64_t sub_23047E1FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v129 = a2;
  v119 = a3;
  v126 = sub_2304A4084();
  v124 = *(v126 - 8);
  v4 = *(v124 + 64);
  v5 = MEMORY[0x28223BE20](v126);
  v118 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v122 = &v117 - v7;
  v8 = sub_2304A4F74();
  v125 = *(v8 - 8);
  v9 = *(v125 + 8);
  v10 = MEMORY[0x28223BE20](v8);
  v117 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v120 = &v117 - v13;
  MEMORY[0x28223BE20](v12);
  v128 = &v117 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54640, &qword_2304A73F8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v117 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB540F0, &unk_2304A7B90);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v117 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54650, &qword_2304A74D8);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = &v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v117 - v33;
  v121 = a1;
  v35 = *(a1 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock_devices);
  v127 = v8;
  if (v35)
  {
    v123 = &v117 - v33;
    MEMORY[0x28223BE20](v32);
    *(&v117 - 2) = v129;

    sub_230436E34(sub_23048A350, (&v117 - 4), v35, v26);

    sub_230464ABC(v26, v24, &qword_27DB540F0, &unk_2304A7B90);
    if ((*(v16 + 48))(v24, 1, v15) == 1)
    {
      v36 = v125;
      v34 = v123;
      v37 = v127;
      (*(v125 + 7))(v123, 1, 1, v127);
      v38 = v128;
      v39 = v126;
    }

    else
    {
      sub_230464ABC(v24, v19, &unk_27DB54640, &qword_2304A73F8);
      v36 = v125;
      v34 = v123;
      v37 = v127;
      (*(v125 + 4))(v123, &v19[*(v15 + 48)], v127);
      v39 = v126;
      (*(v124 + 8))(v19, v126);
      (*(v36 + 7))(v34, 0, 1, v37);
      v38 = v128;
    }
  }

  else
  {
    v36 = v125;
    (*(v125 + 7))(&v117 - v33, 1, 1, v8);
    v38 = v128;
    v39 = v126;
    v37 = v8;
  }

  v40 = v129;
  sub_230464B24(v34, v31, &qword_27DB54650, &qword_2304A74D8);
  if ((*(v36 + 6))(v31, 1, v37) == 1)
  {
    sub_230464970(v31, &qword_27DB54650, &qword_2304A74D8);
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v41 = sub_2304A5B74();
    __swift_project_value_buffer(v41, qword_28149B008);
    v42 = v124;
    v43 = v122;
    (*(v124 + 16))(v122, v40, v39);
    v44 = sub_2304A5B54();
    v45 = sub_2304A5E74();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v130 = v47;
      *v46 = 136446210;
      sub_2304332D4(&qword_27DB54610, MEMORY[0x277CC95F0]);
      v48 = sub_2304A62D4();
      v49 = v43;
      v50 = v34;
      v52 = v51;
      (*(v42 + 8))(v49, v39);
      v53 = sub_23046A5C8(v48, v52, &v130);
      v34 = v50;

      *(v46 + 4) = v53;
      _os_log_impl(&dword_230430000, v44, v45, "Could not find relationship ID in device list: %{public}s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x23191A000](v47, -1, -1);
      MEMORY[0x23191A000](v46, -1, -1);
    }

    else
    {

      (*(v42 + 8))(v43, v39);
    }

    v67 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
    swift_allocError();
    (*(*(v67 - 8) + 104))(v68, *MEMORY[0x277D462E8], v67);
    swift_willThrow();
    return sub_230464970(v34, &qword_27DB54650, &qword_2304A74D8);
  }

  else
  {
    (*(v36 + 4))(v38, v31, v37);
    v54 = [*(v121 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_idsService) devices];
    if (v54)
    {
      v55 = v54;
      sub_230474F08(0, &qword_27DB54658, 0x277D186E0);
      v56 = sub_2304A5DC4();

      MEMORY[0x28223BE20](v57);
      *(&v117 - 2) = v38;
      v58 = sub_230437148(sub_23048A2F0, (&v117 - 4), v56);

      if (v58)
      {
        v59 = [v58 pushToken];
        if (v59)
        {
          v60 = v59;
          v61 = sub_2304A3FD4();
          v62 = v36;
          v64 = v63;

          sub_230464970(v34, &qword_27DB54650, &qword_2304A74D8);
          v65 = v119;
          *v119 = v61;
          v65[1] = v64;
          return v62[1](v38, v127);
        }

        else
        {
          v123 = v34;
          if (qword_281499E38 != -1)
          {
            swift_once();
          }

          v94 = sub_2304A5B74();
          __swift_project_value_buffer(v94, qword_28149B008);
          v95 = v117;
          v96 = v127;
          (*(v36 + 2))(v117, v38, v127);
          v97 = sub_2304A5B54();
          v98 = sub_2304A5E74();
          if (os_log_type_enabled(v97, v98))
          {
            v99 = v39;
            v100 = v36;
            v101 = swift_slowAlloc();
            v125 = v101;
            v129 = swift_slowAlloc();
            v130 = v129;
            *v101 = 136446210;
            v102 = v95;
            v103 = v118;
            LODWORD(v126) = v98;
            sub_2304A4F04();
            sub_2304332D4(&qword_27DB54610, MEMORY[0x277CC95F0]);
            v104 = sub_2304A62D4();
            v106 = v105;
            (*(v124 + 8))(v103, v99);
            v107 = *(v100 + 1);
            v107(v102, v96);
            v108 = sub_23046A5C8(v104, v106, &v130);

            v109 = v125;
            *(v125 + 1) = v108;
            v110 = v109;
            _os_log_impl(&dword_230430000, v97, v126, "Device has no push token: %{public}s", v109, 0xCu);
            v111 = v129;
            __swift_destroy_boxed_opaque_existential_0Tm(v129);
            MEMORY[0x23191A000](v111, -1, -1);
            MEMORY[0x23191A000](v110, -1, -1);
          }

          else
          {

            v114 = v95;
            v107 = *(v36 + 1);
            v107(v114, v96);
          }

          v115 = sub_2304A4104();
          sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
          swift_allocError();
          (*(*(v115 - 8) + 104))(v116, *MEMORY[0x277D462F0], v115);
          swift_willThrow();

          sub_230464970(v123, &qword_27DB54650, &qword_2304A74D8);
          return (v107)(v128, v96);
        }
      }

      else
      {
        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v77 = sub_2304A5B74();
        __swift_project_value_buffer(v77, qword_28149B008);
        v78 = v120;
        v79 = v127;
        (*(v36 + 2))(v120, v38, v127);
        v80 = sub_2304A5B54();
        v81 = v36;
        v82 = sub_2304A5E74();
        if (os_log_type_enabled(v80, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v85 = v39;
          v123 = v34;
          v86 = v84;
          v130 = v84;
          *v83 = 136446210;
          v87 = v118;
          sub_2304A4F04();
          sub_2304332D4(&qword_27DB54610, MEMORY[0x277CC95F0]);
          v88 = sub_2304A62D4();
          v90 = v89;
          (*(v124 + 8))(v87, v85);
          v91 = *(v81 + 1);
          v91(v120, v127);
          v92 = sub_23046A5C8(v88, v90, &v130);

          *(v83 + 4) = v92;
          _os_log_impl(&dword_230430000, v80, v82, "IDS service has no matching device with ID %{public}s", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v86);
          v93 = v86;
          v34 = v123;
          v79 = v127;
          MEMORY[0x23191A000](v93, -1, -1);
          MEMORY[0x23191A000](v83, -1, -1);
        }

        else
        {

          v91 = *(v81 + 1);
          v91(v78, v79);
        }

        v112 = sub_2304A4104();
        sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
        swift_allocError();
        (*(*(v112 - 8) + 104))(v113, *MEMORY[0x277D462F0], v112);
        swift_willThrow();
        sub_230464970(v34, &qword_27DB54650, &qword_2304A74D8);
        return (v91)(v128, v79);
      }
    }

    else
    {
      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v69 = sub_2304A5B74();
      __swift_project_value_buffer(v69, qword_28149B008);
      v70 = sub_2304A5B54();
      v71 = sub_2304A5E74();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = v37;
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_230430000, v70, v71, "IDS service has no device list", v73, 2u);
        v74 = v73;
        v37 = v72;
        MEMORY[0x23191A000](v74, -1, -1);
      }

      v75 = sub_2304A4104();
      sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
      swift_allocError();
      (*(*(v75 - 8) + 104))(v76, *MEMORY[0x277D462F0], v75);
      swift_willThrow();
      sub_230464970(v34, &qword_27DB54650, &qword_2304A74D8);
      return (*(v36 + 1))(v38, v37);
    }
  }
}

uint64_t sub_23047F240(id *a1)
{
  v2 = sub_2304A4084();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIDOverride];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2304A5D24();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_2304A4F04();
  v12 = sub_2304A4044();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  if (v11)
  {
    if (v9 == v12 && v11 == v14)
    {
      v16 = 1;
    }

    else
    {
      v16 = sub_2304A62F4();
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_23047F3BC@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v152 = a2;
  v120 = a3;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54638, &unk_2304A7B80);
  v4 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v153 = &v119 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v136 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v138 = &v119 - v11;
  MEMORY[0x28223BE20](v10);
  v139 = &v119 - v12;
  v13 = sub_2304A4084();
  v126 = *(v13 - 1);
  v14 = *(v126 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v124 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v134 = &v119 - v18;
  MEMORY[0x28223BE20](v17);
  v149 = &v119 - v19;
  v20 = sub_2304A4F74();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v128 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54640, &qword_2304A73F8);
  v24 = *(v151 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v151);
  v148 = &v119 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB540F0, &unk_2304A7B90);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v119 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54650, &qword_2304A74D8);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v119 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36);
  v41 = (&v119 - v40);
  v150 = a1;
  v42 = *(a1 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock_devices);
  v147 = v13;
  v123 = (&v119 - v40);
  v125 = v20;
  if (v42)
  {
    MEMORY[0x28223BE20](v39);
    v43 = v152;
    *(&v119 - 2) = v152;

    v44 = v127;
    sub_230436E34(sub_23048A2B4, (&v119 - 4), v42, v33);
    v127 = v44;

    sub_230464ABC(v33, v31, &qword_27DB540F0, &unk_2304A7B90);
    v45 = v151;
    v46 = v43;
    if ((*(v24 + 48))(v31, 1, v151) == 1)
    {
      v41 = v123;
      v20 = v125;
      (*(v21 + 56))(v123, 1, 1, v125);
      v47 = v147;
    }

    else
    {
      v49 = v31;
      v50 = v148;
      sub_230464ABC(v49, v148, &unk_27DB54640, &qword_2304A73F8);
      v41 = v123;
      v20 = v125;
      (*(v21 + 32))(v123, v50 + *(v45 + 48), v125);
      v47 = v147;
      (*(v126 + 8))(v50, v147);
      (*(v21 + 56))(v41, 0, 1, v20);
    }

    v48 = v139;
  }

  else
  {
    (*(v21 + 56))(&v119 - v40, 1, 1, v20);
    v48 = v139;
    v47 = v13;
    v46 = v152;
  }

  sub_230464B24(v41, v38, &qword_27DB54650, &qword_2304A74D8);
  if ((*(v21 + 48))(v38, 1, v20) == 1)
  {
    sub_230464970(v38, &qword_27DB54650, &qword_2304A74D8);
    if (qword_281499E38 == -1)
    {
LABEL_9:
      v51 = sub_2304A5B74();
      __swift_project_value_buffer(v51, qword_28149B008);
      v52 = v126;
      v53 = v149;
      (*(v126 + 16))(v149, v46, v47);
      v54 = sub_2304A5B54();
      v55 = sub_2304A5E74();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = v47;
        v58 = v41;
        v59 = v57;
        v60 = v56;
        v61 = swift_slowAlloc();
        v154 = v61;
        *v60 = 136446210;
        sub_2304332D4(&qword_27DB54610, MEMORY[0x277CC95F0]);
        v62 = sub_2304A62D4();
        v63 = v53;
        v65 = v64;
        (*(v52 + 8))(v63, v59);
        v66 = sub_23046A5C8(v62, v65, &v154);
        v41 = v58;

        *(v60 + 4) = v66;
        _os_log_impl(&dword_230430000, v54, v55, "Could not find relationship ID in device list: %{public}s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v61);
        MEMORY[0x23191A000](v61, -1, -1);
        MEMORY[0x23191A000](v60, -1, -1);
      }

      else
      {

        (*(v52 + 8))(v53, v47);
      }

      v104 = sub_2304A4104();
      sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
      swift_allocError();
      (*(*(v104 - 8) + 104))(v105, *MEMORY[0x277D462E8], v104);
      swift_willThrow();
      return sub_230464970(v41, &qword_27DB54650, &qword_2304A74D8);
    }

LABEL_66:
    swift_once();
    goto LABEL_9;
  }

  v119 = v21;
  (*(v21 + 32))(v128, v38, v20);
  v67 = [*(v150 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_idsService) devices];
  if (!v67)
  {
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v106 = sub_2304A5B74();
    __swift_project_value_buffer(v106, qword_28149B008);
    v107 = sub_2304A5B54();
    v108 = sub_2304A5E74();
    v109 = os_log_type_enabled(v107, v108);
    v110 = v125;
    v111 = v119;
    if (v109)
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_230430000, v107, v108, "IDS service has no device list", v112, 2u);
      MEMORY[0x23191A000](v112, -1, -1);
    }

    v113 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
    swift_allocError();
    (*(*(v113 - 8) + 104))(v114, *MEMORY[0x277D462F0], v113);
    swift_willThrow();
    (*(v111 + 8))(v128, v110);
    return sub_230464970(v41, &qword_27DB54650, &qword_2304A74D8);
  }

  v68 = v67;
  sub_230474F08(0, &qword_27DB54658, 0x277D186E0);
  v146 = sub_2304A5DC4();

  v69 = [objc_opt_self() sharedInstance];
  v70 = [v69 devices];

  v71 = [v70 all];
  sub_230474F08(0, &qword_27DB54660, 0x277D37B48);
  v72 = sub_2304A5DC4();

  v129 = v72;
  if (!(v72 >> 62))
  {
    v46 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v73 = v138;
    if (v46)
    {
      goto LABEL_14;
    }

LABEL_68:

    (*(v119 + 8))(v128, v125);
    sub_230464970(v123, &qword_27DB54650, &qword_2304A74D8);
    return (*(v126 + 56))(v120, 1, 1, v147);
  }

  v46 = sub_2304A6044();
  v73 = v138;
  if (!v46)
  {
    goto LABEL_68;
  }

LABEL_14:
  v142 = v146 & 0xFFFFFFFFFFFFFF8;
  if (v146 >> 62)
  {
    v148 = sub_2304A6044();
  }

  else
  {
    v148 = *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = 0;
  v131 = v129 & 0xC000000000000001;
  v122 = v129 & 0xFFFFFFFFFFFFFF8;
  v121 = v129 + 32;
  v144 = v146 & 0xC000000000000001;
  v143 = (v126 + 56);
  v133 = (v126 + 32);
  v137 = (v126 + 8);
  v41 = &qword_27DB53F20;
  v47 = &qword_2304A7388;
  v130 = v46;
  v141 = (v126 + 48);
  while (1)
  {
    if (v131)
    {
      v75 = MEMORY[0x231919680](v74, v129);
    }

    else
    {
      if (v74 >= *(v122 + 16))
      {
        goto LABEL_65;
      }

      v75 = *(v121 + 8 * v74);
    }

    v149 = v75;
    v76 = __OFADD__(v74, 1);
    v77 = v74 + 1;
    if (v76)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v132 = v77;
    if (v148)
    {
      break;
    }

LABEL_19:

    v46 = v130;
    v74 = v132;
    if (v132 == v130)
    {
      goto LABEL_68;
    }
  }

  v78 = 0;
  while (1)
  {
    if (v144)
    {
      v79 = MEMORY[0x231919680](v78, v146);
    }

    else
    {
      if (v78 >= *(v142 + 16))
      {
        goto LABEL_61;
      }

      v79 = *(v146 + 8 * v78 + 32);
    }

    v80 = v79;
    if (__OFADD__(v78, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v150 = v78 + 1;
    v151 = v78;
    v81 = [v79 nsuuid];
    v152 = v80;
    if (v81)
    {
      v82 = v81;
      sub_2304A4064();

      v83 = 0;
    }

    else
    {
      v83 = 1;
    }

    v84 = *v143;
    v85 = v147;
    (*v143)(v48, v83, 1, v147);
    v86 = [v149 bluetoothIdentifier];
    sub_2304A4064();

    v140 = v84;
    v84(v73, 0, 1, v85);
    v87 = *(v145 + 48);
    v88 = v73;
    v89 = v153;
    sub_230464B24(v48, v153, &qword_27DB53F20, &qword_2304A7388);
    sub_230464B24(v88, v89 + v87, &qword_27DB53F20, &qword_2304A7388);
    v90 = *v141;
    if ((*v141)(v89, 1, v85) == 1)
    {
      break;
    }

    v91 = v153;
    v92 = v136;
    sub_230464B24(v153, v136, &qword_27DB53F20, &qword_2304A7388);
    if (v90(v91 + v87, 1, v85) == 1)
    {
      v73 = v138;
      sub_230464970(v138, &qword_27DB53F20, &qword_2304A7388);
      v48 = v139;
      sub_230464970(v139, &qword_27DB53F20, &qword_2304A7388);
      (*v137)(v92, v85);
      goto LABEL_28;
    }

    v93 = v134;
    (*v133)(v134, v91 + v87, v85);
    sub_2304332D4(&unk_27DB54450, MEMORY[0x277CC95F0]);
    v135 = sub_2304A5D04();
    v94 = *v137;
    (*v137)(v93, v85);
    v73 = v138;
    sub_230464970(v138, &qword_27DB53F20, &qword_2304A7388);
    v48 = v139;
    sub_230464970(v139, &qword_27DB53F20, &qword_2304A7388);
    v94(v92, v85);
    sub_230464970(v91, &qword_27DB53F20, &qword_2304A7388);
    v13 = v152;
    if (v135)
    {
      goto LABEL_44;
    }

LABEL_29:

    v78 = v151 + 1;
    if (v150 == v148)
    {
      goto LABEL_19;
    }
  }

  sub_230464970(v88, &qword_27DB53F20, &qword_2304A7388);
  sub_230464970(v48, &qword_27DB53F20, &qword_2304A7388);
  v73 = v88;
  if (v90(v153 + v87, 1, v85) != 1)
  {
LABEL_28:
    sub_230464970(v153, &qword_27DB54638, &unk_2304A7B80);
    v41 = &qword_27DB53F20;
    v47 = &qword_2304A7388;
    v13 = v152;
    goto LABEL_29;
  }

  v41 = &qword_27DB53F20;
  v47 = &qword_2304A7388;
  sub_230464970(v153, &qword_27DB53F20, &qword_2304A7388);
  v13 = v152;
LABEL_44:
  v95 = [v13 uniqueIDOverride];
  if (v95)
  {
    v96 = v95;
    v151 = sub_2304A5D24();
    v98 = v97;
  }

  else
  {
    v151 = 0;
    v98 = 0;
  }

  v99 = v124;
  sub_2304A4F04();
  v100 = sub_2304A4044();
  v102 = v101;
  (*v137)(v99, v147);
  if (!v98)
  {

    goto LABEL_18;
  }

  if (v151 != v100 || v98 != v102)
  {
    v103 = sub_2304A62F4();

    if (v103)
    {

      goto LABEL_63;
    }

LABEL_18:

    goto LABEL_19;
  }

LABEL_62:

LABEL_63:

  v116 = v149;
  v117 = [v149 pairingID];
  v118 = v120;
  sub_2304A4064();

  (*(v119 + 8))(v128, v125);
  sub_230464970(v123, &qword_27DB54650, &qword_2304A74D8);
  return (v140)(v118, 0, 1, v147);
}

uint64_t sub_23048065C(uint64_t a1)
{
  v2 = sub_2304A4084();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54640, &qword_2304A73F8);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  sub_230464B24(a1, &v16 - v10, &unk_27DB54640, &qword_2304A73F8);
  v12 = *(v8 + 56);
  sub_2304A4EC4();
  v13 = sub_2304A4F74();
  (*(*(v13 - 8) + 8))(&v11[v12], v13);
  LOBYTE(a1) = sub_2304A4054();
  v14 = *(v3 + 8);
  v14(v6, v2);
  v14(v11, v2);
  return a1 & 1;
}

void sub_230480818(uint64_t a1, BOOL *a2)
{
  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v5 = sub_2304A5B74();
  __swift_project_value_buffer(v5, qword_28149B008);
  v6 = sub_2304A5B54();
  v7 = sub_2304A5E94();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_230430000, v6, v7, "Relationships changed", v8, 2u);
    MEMORY[0x23191A000](v8, -1, -1);
  }

  v9 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock_devices;
  v10 = *(a1 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock_devices);

  v11 = sub_230480B88();
  if (v2)
  {

    v12 = v2;
    v13 = sub_2304A5B54();
    v14 = sub_2304A5E74();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      v17 = v2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_230430000, v13, v14, "Could not determine new device list: %{public}@", v15, 0xCu);
      sub_230464970(v16, &qword_27DB53F30, &qword_2304A7390);
      MEMORY[0x23191A000](v16, -1, -1);
      MEMORY[0x23191A000](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v19 = v11;
    if (v10 && (, , v20 = sub_23045969C(v10, v19), , swift_bridgeObjectRelease_n(), (v20 & 1) != 0))
    {

      v21 = sub_2304A5B54();
      v22 = sub_2304A5E94();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_230430000, v21, v22, "Devices have not changed", v23, 2u);
        MEMORY[0x23191A000](v23, -1, -1);
      }
    }

    else
    {
      v24 = sub_2304A5B54();
      v25 = sub_2304A5E94();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_230430000, v24, v25, "Devices have changed", v26, 2u);
        MEMORY[0x23191A000](v26, -1, -1);
      }

      *a2 = *(a1 + v9) != 0;
      v27 = *(a1 + v9);
      *(a1 + v9) = v19;
    }
  }
}

uint64_t sub_230480B88()
{
  v2 = v0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54100, &qword_2304A74D0);
  v3 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v5 = &v42 - v4;
  v6 = sub_2304A4834();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v6);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB540A0, &qword_2304A7490);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v47 = &v42 - v14;
  v15 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
  swift_beginAccess();
  sub_230474F80(v0 + v15, v51);
  __swift_project_boxed_opaque_existential_5Tm(v51, v52);
  v16 = sub_2304A4554();
  __swift_destroy_boxed_opaque_existential_0Tm(v51);
  v50 = 0;
  if (v16)
  {
    sub_230474F80(v2 + v15, v51);
    __swift_project_boxed_opaque_existential_5Tm(v51, v52);
    v50 = sub_2304A4574();
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
  }

  v17 = *(v2 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_clientSettingsStore + 32);
  __swift_project_boxed_opaque_existential_5Tm((v2 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_clientSettingsStore), *(v2 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_clientSettingsStore + 24));
  v18 = sub_2304A5404();
  if (v1)
  {

    v19 = sub_2304A51C4();
    v20 = v47;
    (*(*(v19 - 8) + 56))(v47, 1, 1, v19);
  }

  else
  {
    v21 = v18;
    if (*(v18 + 16) && (v22 = sub_230469C40(0xD000000000000011, 0x80000002304A8260), (v23 & 1) != 0))
    {
      v24 = v22;
      v48 = *(v21 + 56);
      v19 = sub_2304A51C4();
      v43 = *(v19 - 8);
      v25 = v48 + *(v43 + 72) * v24;
      v20 = v47;
      (*(v43 + 16))(v47, v25, v19);

      (*(v43 + 56))(v20, 0, 1, v19);
    }

    else
    {

      v19 = sub_2304A51C4();
      v20 = v47;
      (*(*(v19 - 8) + 56))(v47, 1, 1, v19);
    }
  }

  sub_230464B24(v20, v13, &qword_27DB540A0, &qword_2304A7490);
  sub_2304A51C4();
  v26 = *(v19 - 8);
  if ((*(v26 + 48))(v13, 1, v19) == 1)
  {
    sub_230464970(v13, &qword_27DB540A0, &qword_2304A7490);
    LODWORD(v48) = 0;
  }

  else
  {
    LODWORD(v48) = sub_2304A5184();
    (*(v26 + 8))(v13, v19);
  }

  sub_230474F80(v2 + v15, v51);
  __swift_project_boxed_opaque_existential_5Tm(v51, v52);
  v27 = v44;
  sub_2304A4824();
  v28 = sub_2304A4904();
  (*(v45 + 8))(v27, v46);
  v53 = MEMORY[0x277D84F98];
  v29 = 1 << *(v28 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v28 + 64);
  v32 = (v29 + 63) >> 6;

  for (i = 0; v31; i = v34)
  {
    v34 = i;
LABEL_19:
    v35 = __clz(__rbit64(v31)) | (v34 << 6);
    v36 = *(v28 + 48);
    v37 = sub_2304A4084();
    (*(*(v37 - 8) + 16))(v5, v36 + *(*(v37 - 8) + 72) * v35, v37);
    v38 = *(v28 + 56);
    v39 = sub_2304A46C4();
    (*(*(v39 - 8) + 16))(&v5[*(v49 + 48)], v38 + *(*(v39 - 8) + 72) * v35, v39);
    sub_230481254(&v53, v5, v48 & 1, v50);
    v31 &= v31 - 1;
    sub_230464970(v5, &unk_27DB54100, &qword_2304A74D0);
  }

  while (1)
  {
    v34 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v34 >= v32)
    {

      sub_230464970(v47, &qword_27DB540A0, &qword_2304A7490);

      v40 = v53;
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      return v40;
    }

    v31 = *(v28 + 64 + 8 * v34);
    ++i;
    if (v31)
    {
      goto LABEL_19;
    }
  }

  __break(1u);

  sub_230464970(v5, &unk_27DB54100, &qword_2304A74D0);

  __break(1u);
  return result;
}

uint64_t sub_230481254(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v320 = a4;
  v373 = a2;
  v325 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54650, &qword_2304A74D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v324 = &v313 - v7;
  v8 = sub_2304A4024();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v344 = &v313 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = sub_2304A4F74();
  v322 = *(v323 - 8);
  v11 = *(v322 + 64);
  MEMORY[0x28223BE20](v323);
  v321 = &v313 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54110, &unk_2304A74E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v334 = &v313 - v15;
  v336 = sub_2304A4544();
  v335 = *(v336 - 8);
  v16 = *(v335 + 64);
  MEMORY[0x28223BE20](v336);
  v319 = &v313 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54680, &unk_2304A7BA0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v343 = &v313 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v353 = &v313 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v338 = &v313 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v315 = &v313 - v27;
  v28 = sub_2304A4084();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v340 = &v313 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v341 = &v313 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v342 = &v313 - v36;
  MEMORY[0x28223BE20](v35);
  v314 = &v313 - v37;
  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54120, &qword_2304A74F0);
  v38 = *(*(v385 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v385);
  v384 = &v313 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v408 = &v313 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v407 = &v313 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v406 = &v313 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v405 = &v313 - v48;
  MEMORY[0x28223BE20](v47);
  v383 = &v313 - v49;
  v382 = sub_2304A4B64();
  v386 = *(v382 - 8);
  v50 = *(v386 + 64);
  MEMORY[0x28223BE20](v382);
  v381 = &v313 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = sub_2304A4EE4();
  v362 = *(v357 - 8);
  v52 = *(v362 + 64);
  v53 = MEMORY[0x28223BE20](v357);
  v339 = &v313 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v53);
  v329 = &v313 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v330 = &v313 - v58;
  MEMORY[0x28223BE20](v57);
  v356 = &v313 - v59;
  v349 = sub_2304A4BE4();
  v348 = *(v349 - 8);
  v60 = *(v348 + 64);
  v61 = MEMORY[0x28223BE20](v349);
  v387 = &v313 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v361 = &v313 - v63;
  v402 = sub_2304A4114();
  v409 = *(v402 - 8);
  v64 = *(v409 + 64);
  MEMORY[0x28223BE20](v402);
  v404 = &v313 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v360 = sub_2304A4E94();
  v359 = *(v360 - 8);
  v66 = *(v359 + 64);
  v67 = MEMORY[0x28223BE20](v360);
  v337 = &v313 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v358 = &v313 - v69;
  v346 = sub_2304A46A4();
  v347 = *(v346 - 8);
  v70 = *(v347 + 64);
  v71 = MEMORY[0x28223BE20](v346);
  v345 = &v313 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x28223BE20](v71);
  v400 = &v313 - v74;
  MEMORY[0x28223BE20](v73);
  v76 = &v313 - v75;
  v391 = sub_2304A4434();
  v390 = *(v391 - 8);
  v77 = *(v390 + 64);
  v78 = MEMORY[0x28223BE20](v391);
  v388 = &v313 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78);
  v389 = &v313 - v80;
  v369 = sub_2304A44F4();
  v81 = *(v369 - 8);
  v82 = *(v81 + 64);
  v83 = MEMORY[0x28223BE20](v369);
  v318 = &v313 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x28223BE20](v83);
  v316 = &v313 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v328 = &v313 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v403 = &v313 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v350 = &v313 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v401 = &v313 - v94;
  MEMORY[0x28223BE20](v93);
  v365 = &v313 - v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54100, &qword_2304A74D0);
  v97 = *(*(v96 - 8) + 64);
  v98 = MEMORY[0x28223BE20](v96);
  v317 = &v313 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = MEMORY[0x28223BE20](v98);
  v333 = &v313 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v332 = &v313 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v331 = &v313 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v327 = &v313 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v352 = &v313 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v354 = &v313 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v355 = &v313 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v410 = &v313 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v118 = &v313 - v117;
  v372 = v116;
  v364 = &v313 - v117;
  v367 = v28;
  v368 = v29;
  if ((a3 & 1) == 0)
  {
    sub_230464B24(v373, &v313 - v117, &unk_27DB54100, &qword_2304A74D0);
    v119 = *(v96 + 48);
    v120 = v29;
    v121 = v365;
    sub_2304A4674();
    v122 = sub_2304A46C4();
    v123 = *(v122 - 8);
    v398 = *(v123 + 8);
    v399 = v122;
    v397 = v123 + 8;
    v398(&v118[v119]);
    v124 = v389;
    sub_2304A4494();
    v125 = v121;
    v29 = v120;
    (*(v81 + 8))(v125, v369);
    v126 = sub_2304A4414();
    (*(v390 + 8))(v124, v391);
    v127 = *(v120 + 8);
    v127(v118, v28);
    if (v126 == 7)
    {
      sub_230464B24(v373, v118, &unk_27DB54100, &qword_2304A74D0);
      v128 = *(v372 + 48);
      sub_2304A46B4();
      v118 = v364;
      v96 = v372;
      (v398)(&v364[v128], v399);
      v129 = *MEMORY[0x277D46408];
      v130 = v347;
      v131 = *(v347 + 104);
      v399 = v127;
      v132 = v400;
      v133 = v346;
      v131(v400, v129, v346);
      sub_2304332D4(&qword_27DB54690, MEMORY[0x277D46430]);
      v134 = sub_2304A5D04();
      v135 = v132;
      LOBYTE(v132) = v134;
      v136 = *(v130 + 8);
      v136(v135, v133);
      v137 = v133;
      v28 = v367;
      v136(v76, v137);
      v29 = v368;
      result = v399(v118, v28);
      if (v132)
      {
        return result;
      }
    }
  }

  v139 = v28;
  v140 = v410;
  sub_230464B24(v373, v410, &unk_27DB54100, &qword_2304A74D0);
  v141 = v96;
  v142 = *(v96 + 48);
  v143 = v401;
  sub_2304A4674();
  v144 = sub_2304A46C4();
  v145 = *(v144 - 8);
  v146 = *(v145 + 8);
  v376 = v144;
  v375 = v146;
  v374 = v145 + 8;
  (v146)(v140 + v142);
  v147 = v404;
  sub_2304A4454();
  v148 = *(v81 + 8);
  v149 = v369;
  v371 = v81 + 8;
  v370 = v148;
  v148(v143, v369);
  v150 = v402;
  v151 = (*(v409 + 88))(v147, v402);
  if (v151 == *MEMORY[0x277D46330])
  {
    v152 = v373;
    v153 = MEMORY[0x277D46730];
LABEL_14:
    v154 = *v153;
    v155 = *(v359 + 104);
LABEL_15:
    v155(v358, v154, v360);
    goto LABEL_16;
  }

  if (v151 == *MEMORY[0x277D46310])
  {
    v152 = v373;
    v153 = MEMORY[0x277D46710];
    goto LABEL_14;
  }

  if (v151 == *MEMORY[0x277D46320])
  {
    v152 = v373;
    v153 = MEMORY[0x277D46720];
    goto LABEL_14;
  }

  if (v151 == *MEMORY[0x277D46318])
  {
    v152 = v373;
    v153 = MEMORY[0x277D46718];
    goto LABEL_14;
  }

  if (v151 == *MEMORY[0x277D46328])
  {
    v152 = v373;
    v153 = MEMORY[0x277D46728];
    goto LABEL_14;
  }

  v155 = *(v359 + 104);
  if (v151 == *MEMORY[0x277D46308])
  {
    v152 = v373;
    v154 = *MEMORY[0x277D46708];
    goto LABEL_15;
  }

  v152 = v373;
  v155(v358, *MEMORY[0x277D46730], v360);
  (*(v409 + 8))(v404, v150);
LABEL_16:
  v351 = *(v29 + 8);
  v363 = v29 + 8;
  v351(v410, v139);
  v156 = v152;
  sub_230464B24(v152, v118, &unk_27DB54100, &qword_2304A74D0);
  v157 = *(v141 + 48);
  v158 = v365;
  sub_2304A4674();
  v375(&v118[v157], v376);
  v159 = v389;
  sub_2304A4494();
  v370(v158, v149);
  v410 = sub_2304A4414();
  v160 = v390 + 8;
  v161 = *(v390 + 8);
  v161(v159, v391);
  v162 = v156;
  v163 = v355;
  sub_230464B24(v162, v355, &unk_27DB54100, &qword_2304A74D0);
  v164 = v149;
  v165 = *(v372 + 48);
  v166 = v350;
  sub_2304A4674();
  v375((v163 + v165), v376);
  v167 = v388;
  sub_2304A4494();
  v370(v166, v164);
  sub_2304A4424();
  v390 = v160;
  v380 = v161;
  v161(v167, v391);
  sub_2304A4BB4();
  v168 = v373;
  v169 = v367;
  v170 = v351;
  v351(v163, v367);
  v170(v118, v169);
  sub_230464B24(v168, v118, &unk_27DB54100, &qword_2304A74D0);
  v171 = *(v372 + 48);
  sub_2304A4674();
  v375(&v118[v171], v376);
  v172 = sub_2304A44D4();
  v173 = v164;
  v174 = v370;
  v370(v158, v173);
  v175 = v366;
  v326 = sub_23047BE5C(v172);
  v366 = v175;

  v176 = v118;
  v177 = v367;
  v170(v176, v367);
  v178 = v372;
  v179 = v168;
  v180 = v354;
  sub_230464B24(v179, v354, &unk_27DB54100, &qword_2304A74D0);
  v181 = *(v178 + 48);
  v182 = v403;
  sub_2304A4674();
  v375((v180 + v181), v376);
  v183 = sub_2304A4474();
  v174(v182, v369);
  v184 = *(v183 + 16);
  if (!v184)
  {

    v409 = MEMORY[0x277D84F90];
    v223 = v373;
LABEL_27:
    v170(v354, v177);
    v224 = v352;
    sub_230464B24(v223, v352, &unk_27DB54100, &qword_2304A74D0);
    v225 = *(v178 + 48);
    v226 = v345;
    sub_2304A46B4();
    v375((v224 + v225), v376);
    v227 = v347;
    v228 = v346;
    v229 = (*(v347 + 88))(v226, v346);
    v230 = v368;
    v231 = v329;
    v232 = v327;
    if (v229 == *MEMORY[0x277D46428])
    {
      (*(v227 + 96))(v226, v228);
      v233 = *v226;
      v234 = *(v226 + 1);
      v235 = v315;
      sub_2304A4034();

      if ((*(v230 + 48))(v235, 1, v177) == 1)
      {
        sub_230464970(v235, &qword_27DB53F20, &qword_2304A7388);
        v236 = MEMORY[0x277D46748];
      }

      else
      {
        v240 = *(v230 + 32);
        v241 = v314;
        v240(v314, v235, v177);
        v240(v231, v241, v177);
        v236 = MEMORY[0x277D46768];
      }

      v238 = v330;
      v239 = v357;
      v237 = v362;
      (*(v362 + 104))(v231, *v236, v357);
      (*(v237 + 32))(v238, v231, v239);
    }

    else if (v229 == *MEMORY[0x277D46408])
    {
      v237 = v362;
      v238 = v330;
      v239 = v357;
      (*(v362 + 104))(v330, *MEMORY[0x277D46748], v357);
    }

    else
    {
      v238 = v330;
      v239 = v357;
      if (v229 != *MEMORY[0x277D46418])
      {
        v312 = *(v362 + 104);
        v242 = v353;
        if (v229 == *MEMORY[0x277D46410])
        {
          v312(v330, *MEMORY[0x277D46750], v357);
        }

        else
        {
          v312(v330, *MEMORY[0x277D46760], v357);
          (*(v347 + 8))(v345, v228);
        }

        v237 = v362;
        goto LABEL_37;
      }

      v237 = v362;
      (*(v362 + 104))(v330, *MEMORY[0x277D46758], v357);
    }

    v242 = v353;
LABEL_37:
    v170(v352, v177);
    (*(v237 + 32))(v356, v238, v239);
    v243 = v373;
    sub_230464B24(v373, v232, &unk_27DB54100, &qword_2304A74D0);
    v244 = *(v372 + 48);
    v245 = v328;
    sub_2304A4674();
    v375((v232 + v244), v376);
    v246 = v334;
    sub_2304A4444();
    v247 = v246;
    v370(v245, v369);
    v248 = v335;
    v249 = v246;
    v250 = v336;
    if ((*(v335 + 48))(v249, 1, v336) == 1)
    {
      sub_230464970(v247, &unk_27DB54110, &unk_2304A74E0);
      v170(v232, v177);
      v251 = 1;
    }

    else
    {
      v252 = v247;
      v253 = v319;
      (*(v248 + 32))(v319, v252, v250);
      v170(v232, v177);
      sub_2304A4534();
      sub_2304A4524();
      sub_2304A4514();
      sub_2304A4F54();
      (*(v248 + 8))(v253, v250);
      v251 = 0;
    }

    v254 = v177;
    v255 = sub_2304A4F64();
    (*(*(v255 - 8) + 56))(v242, v251, 1, v255);
    v256 = v364;
    sub_230464B24(v243, v364, &unk_27DB54100, &qword_2304A74D0);
    v257 = *(v372 + 48);
    v258 = v365;
    sub_2304A4674();
    v375((v256 + v257), v376);
    sub_2304A44B4();
    v370(v258, v369);
    v259 = v338;
    sub_2304A4034();

    v170(v256, v254);
    v260 = v368;
    if ((*(v368 + 48))(v259, 1, v254) == 1)
    {

      sub_230464970(v242, &unk_27DB54680, &unk_2304A7BA0);
      (*(v362 + 8))(v356, v357);
      (*(v348 + 8))(v361, v349);
      (*(v359 + 8))(v358, v360);
      return sub_230464970(v259, &qword_27DB53F20, &qword_2304A7388);
    }

    else
    {
      v261 = v254;
      v262 = *(v260 + 32);
      v263 = v342;
      v262(v342, v259, v254);
      v264 = v373;
      if (v320)
      {
        LODWORD(v410) = sub_230495A50(v263, v320) ^ 1;
      }

      else
      {
        LODWORD(v410) = 0;
      }

      v265 = *(v368 + 16);
      v368 += 16;
      v408 = v265;
      (v265)(v341, v263, v261);
      v266 = v364;
      sub_230464B24(v264, v364, &unk_27DB54100, &qword_2304A74D0);
      v267 = v372;
      v268 = *(v372 + 48);
      sub_2304A4684();
      v269 = v376;
      v270 = v375;
      v375((v266 + v268), v376);
      v271 = v355;
      sub_230464B24(v264, v355, &unk_27DB54100, &qword_2304A74D0);
      v272 = *(v267 + 48);
      v273 = v365;
      sub_2304A4674();
      v270(v271 + v272, v269);
      v274 = sub_2304A44C4();
      v406 = v275;
      v407 = v274;
      v370(v273, v369);
      (*(v348 + 16))(v387, v361, v349);
      (*(v359 + 16))(v337, v358, v360);
      sub_230464B24(v353, v343, &unk_27DB54680, &unk_2304A7BA0);
      (*(v362 + 16))(v339, v356, v357);
      v276 = v264;
      v277 = v264;
      v278 = v331;
      sub_230464B24(v277, v331, &unk_27DB54100, &qword_2304A74D0);
      v279 = *(v267 + 48);
      sub_2304A4664();
      v280 = (v278 + v279);
      v281 = v375;
      v375(v280, v269);
      v282 = v276;
      v283 = v276;
      v284 = v332;
      sub_230464B24(v282, v332, &unk_27DB54100, &qword_2304A74D0);
      v285 = *(v267 + 48);
      v286 = v350;
      sub_2304A4674();
      v281(v284 + v285, v269);
      v287 = sub_2304A4484();
      v404 = v288;
      v405 = v287;
      v289 = v286;
      v290 = v369;
      v291 = v370;
      v370(v289, v369);
      v292 = v283;
      v293 = v333;
      sub_230464B24(v292, v333, &unk_27DB54100, &qword_2304A74D0);
      v294 = *(v267 + 48);
      v295 = v316;
      sub_2304A4674();
      v296 = v293 + v294;
      v297 = v376;
      v281(v296, v376);
      v298 = sub_2304A4464();
      v402 = v299;
      v403 = v298;
      v291(v295, v290);
      v300 = v291;
      v301 = v317;
      sub_230464B24(v373, v317, &unk_27DB54100, &qword_2304A74D0);
      v302 = *(v267 + 48);
      v303 = v318;
      sub_2304A4674();
      v281(v301 + v302, v297);
      sub_2304A44E4();
      v300(v303, v290);
      v304 = v321;
      v305 = v341;
      sub_2304A4F14();
      v306 = v367;
      v307 = v351;
      v351(v301, v367);
      v307(v333, v306);
      v307(v332, v306);
      v307(v331, v306);
      v307(v355, v306);
      v307(v364, v306);
      v308 = v342;
      (v408)(v305, v342, v306);
      v309 = v322;
      v310 = v324;
      v311 = v323;
      (*(v322 + 16))(v324, v304, v323);
      (*(v309 + 56))(v310, 0, 1, v311);
      sub_230477C7C(v310, v305);
      (*(v309 + 8))(v304, v311);
      v307(v308, v306);
      sub_230464970(v353, &unk_27DB54680, &unk_2304A7BA0);
      (*(v362 + 8))(v356, v357);
      (*(v348 + 8))(v361, v349);
      return (*(v359 + 8))(v358, v360);
    }
  }

  v411 = MEMORY[0x277D84F90];
  sub_23045FB28(0, v184, 0);
  v409 = v411;
  v185 = -1 << *(v183 + 32);
  v186 = sub_2304A5FB4();
  v378 = v386 + 32;
  v379 = v183;
  v377 = v183 + 64;
  while (1)
  {
    v404 = v186;
    v392 = v184;
    v187 = *(v183 + 36);
    v188 = v385;
    v189 = *(v385 + 48);
    v190 = v383;
    v393 = v187;
    sub_230460364(v383, v383 + v189, v186, v187, 0, v183);
    v191 = sub_2304A41D4();
    v192 = *(v191 - 8);
    v193 = v405;
    (*(v192 + 32))(v405, v190, v191);
    v194 = *(v188 + 48);
    v195 = sub_2304A41F4();
    v394 = *(v195 - 8);
    v196 = *(v394 + 32);
    v410 = v195;
    v196(v193 + v194, v190 + v189, v195);
    v197 = v406;
    sub_230464B24(v193, v406, &unk_27DB54120, &qword_2304A74F0);
    v403 = *(v188 + 48);
    v198 = sub_2304A41C4();
    v401 = v199;
    v402 = v198;
    v201 = v192 + 8;
    v200 = *(v192 + 8);
    v396 = v191;
    v200(v197, v191);
    v397 = v201;
    v395 = v200;
    v202 = v407;
    sub_230464B24(v193, v407, &unk_27DB54120, &qword_2304A74F0);
    v400 = *(v188 + 48);
    v203 = sub_2304A41A4();
    v398 = v204;
    v399 = v203;
    v200(v202, v191);
    v205 = v193;
    v206 = v408;
    sub_230464B24(v193, v408, &unk_27DB54120, &qword_2304A74F0);
    v207 = *(v188 + 48);
    v208 = v389;
    sub_2304A4194();
    v209 = *(v394 + 8);
    v209(&v206[v207], v195);
    v394 = sub_2304A4414();
    v210 = v391;
    v211 = v380;
    v380(v208, v391);
    v212 = v384;
    sub_230464B24(v205, v384, &unk_27DB54120, &qword_2304A74F0);
    v213 = *(v188 + 48);
    v214 = v388;
    sub_2304A4194();
    v209((v212 + v213), v410);
    sub_2304A4424();
    v211(v214, v210);
    sub_2304A4BB4();
    v215 = v212;
    v217 = v395;
    v216 = v396;
    v395(v215, v396);
    v217(v408, v216);
    v218 = v381;
    sub_2304A4B24();
    sub_230464970(v405, &unk_27DB54120, &qword_2304A74F0);
    v219 = v410;
    v209(&v400[v407], v410);
    v209((v406 + v403), v219);
    v220 = v409;
    v411 = v409;
    v222 = *(v409 + 16);
    v221 = *(v409 + 24);
    if (v222 >= v221 >> 1)
    {
      sub_23045FB28(v221 > 1, v222 + 1, 1);
      v220 = v411;
    }

    *(v220 + 16) = v222 + 1;
    (*(v386 + 32))(v220 + ((*(v386 + 80) + 32) & ~*(v386 + 80)) + *(v386 + 72) * v222, v218, v382);
    v183 = v379;
    result = v404;
    if (v404 < 0 || v404 >= -(-1 << *(v379 + 32)))
    {
      break;
    }

    if (((*(v377 + ((v404 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v404) & 1) == 0)
    {
      goto LABEL_55;
    }

    if (v393 != *(v379 + 36))
    {
      goto LABEL_56;
    }

    v409 = v220;
    v186 = sub_2304A5FD4();
    v184 = v392 - 1;
    if (v392 == 1)
    {

      v223 = v373;
      v177 = v367;
      v178 = v372;
      v170 = v351;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_230483B74(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = v1 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
  swift_beginAccess();
  sub_230474F80(v4, v10);
  __swift_project_boxed_opaque_existential_5Tm(v10, v10[3]);
  v5 = sub_2304A42C4() & 1;
  result = __swift_destroy_boxed_opaque_existential_0Tm(v10);
  if (v5 != v3)
  {
    swift_beginAccess();
    v7 = *(v4 + 56);
    __swift_mutable_project_boxed_opaque_existential_1(v4, *(v4 + 24));
    sub_2304A42D4();
    swift_endAccess();
    v8 = *(v2 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_notificationPoster + 32);
    __swift_project_boxed_opaque_existential_5Tm((v2 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_notificationPoster), *(v2 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_notificationPoster + 24));
    v9 = sub_2304A5154();
    (*(v8 + 8))(v9);
  }

  return result;
}

BOOL sub_230483CA0()
{
  sub_2304A4084();
  sub_2304332D4(&unk_27DB54450, MEMORY[0x277CC95F0]);
  return (sub_2304A5D04() & 1) == 0;
}

id sub_230483D80(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_230483E24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2304A4F74();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19[1] = a1;
    v12 = *(Strong + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock);
    v13 = MEMORY[0x28223BE20](Strong);
    v19[-2] = v13;
    MEMORY[0x28223BE20](v13);
    v19[-2] = sub_23048A310;
    v19[-1] = v14;

    os_unfair_lock_lock(v12 + 4);
    sub_23048A298(v15);
    os_unfair_lock_unlock(v12 + 4);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {

      (*(v4 + 16))(v8, v10, v3);
      sub_2304A4CA4();
      swift_unknownObjectRelease();
      return (*(v4 + 8))(v10, v3);
    }
  }

  else
  {
    v17 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D462E0], v17);
    return swift_willThrow();
  }
}

uint64_t sub_230484244()
{
  v1 = sub_2304A4084();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = MEMORY[0x2319182D0]();
    v9 = *(v7 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock);
    v10 = MEMORY[0x28223BE20](v8);
    *(&v16 - 2) = v7;
    *(&v16 - 1) = v5;
    MEMORY[0x28223BE20](v10);
    *(&v16 - 2) = sub_23048A2D4;
    *(&v16 - 1) = v11;

    os_unfair_lock_lock(v9 + 4);
    sub_230431F78(v12);
    os_unfair_lock_unlock(v9 + 4);
    if (v0)
    {
      swift_unknownObjectRelease();

      return (*(v2 + 8))(v5, v1);
    }

    else
    {

      (*(v2 + 8))(v5, v1);
      sub_2304A4C84();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v14 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D462E0], v14);
    return swift_willThrow();
  }
}

uint64_t sub_230484768@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2304A4084();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v25 - v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v25[1] = a1;
    v16 = MEMORY[0x2319182F0]();
    v17 = *(v15 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock);
    v18 = MEMORY[0x28223BE20](v16);
    v25[-2] = v15;
    v25[-1] = v6;
    MEMORY[0x28223BE20](v18);
    v25[-2] = sub_23048A27C;
    v25[-1] = v19;

    os_unfair_lock_lock(v17 + 4);
    v20 = v25[3];
    sub_23048A298(v21);
    os_unfair_lock_unlock(v17 + 4);
    if (v20)
    {
      swift_unknownObjectRelease();

      return (*(v3 + 8))(v6, v2);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
      sub_230464B24(v13, v11, &qword_27DB53F20, &qword_2304A7388);
      sub_2304A4CC4();
      swift_unknownObjectRelease();
      return sub_230464970(v13, &qword_27DB53F20, &qword_2304A7388);
    }
  }

  else
  {
    v23 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D462E0], v23);
    return swift_willThrow();
  }
}

void sub_230484D2C(void *a1, void (*a2)(void))
{
  if (a1)
  {
    v4 = a1;
    v5 = sub_2304A3F14();
    a2();
  }

  else
  {
    a2();
  }
}

uint64_t sub_230484EFC()
{
  v0 = sub_2304A4084();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    MEMORY[0x231918350]();
    sub_230489814(v4);
    swift_unknownObjectRelease();
    return (*(v1 + 8))(v4, v0);
  }

  else
  {
    v6 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D462E0], v6);
    return swift_willThrow();
  }
}

uint64_t sub_230485238()
{
  v0 = sub_2304A4084();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    MEMORY[0x2319182B0]();
    v7 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
    swift_beginAccess();
    sub_230474F80(v6 + v7, v12);
    __swift_project_boxed_opaque_existential_5Tm(v12, v12[3]);
    sub_2304A48F4();
    swift_unknownObjectRelease();
    (*(v1 + 8))(v4, v0);
    return __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    v9 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D462E0], v9);
    return swift_willThrow();
  }
}

uint64_t sub_2304855BC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
    v2 = Strong;
    swift_beginAccess();
    sub_230474F80(v2 + v1, v6);
    __swift_project_boxed_opaque_existential_5Tm(v6, v6[3]);
    sub_2304A4934();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  else
  {
    v4 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D462E0], v4);
    return swift_willThrow();
  }
}

uint64_t sub_230485784()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
    v2 = Strong;
    swift_beginAccess();
    sub_230474F80(v2 + v1, v6);
    __swift_project_boxed_opaque_existential_5Tm(v6, v6[3]);
    sub_2304A42C4();
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    sub_2304A4C44();
    return swift_unknownObjectRelease();
  }

  else
  {
    v4 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D462E0], v4);
    return swift_willThrow();
  }
}

uint64_t sub_230485F54()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_2304A4E04();
    sub_230473EA4(v2);

    v3 = v1 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
    swift_beginAccess();
    v4 = *(v3 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v3, *(v3 + 24));
    sub_2304A4584();
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  else
  {
    v6 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D462E0], v6);
    return swift_willThrow();
  }
}

uint64_t sub_230486244()
{
  v1 = sub_2304A4084();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    MEMORY[0x231918290]();
    v8 = v7 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
    swift_beginAccess();
    sub_230474F80(v8, v19);
    __swift_project_boxed_opaque_existential_5Tm(v19, v19[3]);
    v9 = sub_2304A4574();
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F78, &qword_2304A73D8);
    v10 = *(v2 + 72);
    v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2304A7270;
    (*(v2 + 16))(v12 + v11, v5, v1);
    sub_230489E58(v12, v9);
    swift_setDeallocating();
    v19[10] = v0;
    v13 = *(v2 + 8);
    v13(v12 + v11, v1);
    swift_deallocClassInstance();
    swift_beginAccess();
    v14 = *(v8 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v8, *(v8 + 24));
    sub_2304A4584();
    swift_endAccess();
    swift_unknownObjectRelease();
    return (v13)(v5, v1);
  }

  else
  {
    v16 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D462E0], v16);
    return swift_willThrow();
  }
}

uint64_t sub_2304866B8()
{
  v0 = sub_2304A4084();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    MEMORY[0x231918290]();
    v7 = v6 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
    swift_beginAccess();
    sub_230474F80(v7, v15);
    __swift_project_boxed_opaque_existential_5Tm(v15, v15[3]);
    v8 = sub_2304A4574();
    v9 = __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x28223BE20](v9);
    v14[-2] = v4;
    sub_23048748C(sub_23048902C, &v14[-4], v8, MEMORY[0x277CC95F0], sub_2304882EC, MEMORY[0x277CC95F0], sub_2304882EC);
    swift_beginAccess();
    v10 = *(v7 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v7, *(v7 + 24));
    sub_2304A4584();
    swift_endAccess();
    swift_unknownObjectRelease();
    return (*(v1 + 8))(v4, v0);
  }

  else
  {
    v12 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D462E0], v12);
    return swift_willThrow();
  }
}

uint64_t sub_230486B0C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
    v2 = Strong;
    swift_beginAccess();
    sub_230474F80(v2 + v1, v6);
    __swift_project_boxed_opaque_existential_5Tm(v6, v6[3]);
    sub_2304A4554();
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    sub_2304A4C44();
    return swift_unknownObjectRelease();
  }

  else
  {
    v4 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D462E0], v4);
    return swift_willThrow();
  }
}

uint64_t sub_230486DE8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v1 = Strong;
  v2 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
  swift_beginAccess();
  sub_230474F80(v1 + v2, v11);
  __swift_project_boxed_opaque_existential_5Tm(v11, v11[3]);
  v3 = sub_2304A4574();
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_23045A31C(*(v3 + 16), 0);
    v6 = *(sub_2304A4084() - 8);
    v7 = sub_230488D88(v11, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80))), v4, v3);
    sub_230433B3C();
    if (v7 != v4)
    {
      __break(1u);
LABEL_5:
      v8 = sub_2304A4104();
      sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
      swift_allocError();
      (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D462E0], v8);
      return swift_willThrow();
    }
  }

  else
  {
  }

  sub_2304A4C24();
  return swift_unknownObjectRelease();
}

uint64_t sub_230487158(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v24 = v6;
    v29 = v3;
    v26 = &v24;
    MEMORY[0x28223BE20](a1);
    v25 = &v24 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v25, v7);
    v27 = 0;
    v8 = 0;
    v6 = a3 + 56;
    v9 = 1 << *(a3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a3 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v8 << 6);
      v30[0] = *(*(a3 + 48) + 8 * v16);

      v3 = v29;
      v17 = v28(v30);
      v29 = v3;
      if (v3)
      {

        result = swift_willThrow();
        goto LABEL_18;
      }

      v18 = v17;

      if (v18)
      {
        *&v25[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_230487D48(v25, v24, v27, a3);
          goto LABEL_18;
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_17;
      }

      v15 = *(v6 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = sub_230487C10(v22, v6, a3, v28);

  result = MEMORY[0x23191A000](v22, -1, -1);
  if (!v3)
  {
    result = v23;
  }

LABEL_18:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230487410(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_23048748C(a1, a2, a3, MEMORY[0x277D46850], sub_230487FC4, MEMORY[0x277D46850], sub_230487FC4);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23048748C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), char *a5, uint64_t a6, unint64_t a7)
{
  v49 = a1;
  v53 = *MEMORY[0x277D85DE8];
  v12 = a4(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v40 - v16;
  LOBYTE(v16) = *(a3 + 32);
  v41 = ((1 << v16) + 63) >> 6;
  v18 = 8 * v41;
  if ((v16 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v47 = v17;
    v48 = v15;
    v40 = a5;
    v43 = &v40;
    MEMORY[0x28223BE20](v15);
    v42 = &v40 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v42, v18);
    a6 = 0;
    v50 = a3;
    v20 = *(a3 + 56);
    a3 += 56;
    v19 = v20;
    v21 = 1 << *(a3 - 24);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v19;
    v24 = (v21 + 63) >> 6;
    v44 = 0;
    v45 = v13 + 16;
    v46 = (v13 + 8);
    while (v23)
    {
      v25 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
LABEL_12:
      a7 = v25 | (a6 << 6);
      v28 = *(v50 + 48) + *(v13 + 9) * a7;
      v17 = v13;
      v29 = *(v13 + 2);
      a5 = v47;
      v30 = v48;
      v29(v47, v28, v48);
      v31 = v52;
      v32 = v49(a5);
      v52 = v31;
      if (v31)
      {
        (*v46)(a5, v30);

        result = swift_willThrow();
        goto LABEL_18;
      }

      v18 = v32;
      v15 = (*v46)(a5, v30);
      v13 = v17;
      v23 = v51;
      if (v18)
      {
        *&v42[(a7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a7;
        if (__OFADD__(v44++, 1))
        {
          __break(1u);
LABEL_17:
          result = (v40)(v42, v41, v44, v50);
          goto LABEL_18;
        }
      }
    }

    v26 = a6;
    while (1)
    {
      a6 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (a6 >= v24)
      {
        goto LABEL_17;
      }

      v27 = *(a3 + 8 * a6);
      v26 = (v26 + 1);
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v51 = (v27 - 1) & v27;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v36 = v15;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v15 = v36;
  }

  v37 = swift_slowAlloc();
  v38 = v52;
  v39 = sub_230487CA0(v37, v41, a3, v49, a2, a6, a7);

  result = MEMORY[0x23191A000](v37, -1, -1);
  if (!v38)
  {
    result = v39;
  }

LABEL_18:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230487838(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v19 = 0;
  v18 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v22 = *(*(a3 + 48) + 8 * v14);

    v15 = a4(&v22);

    if (v4)
    {
      return result;
    }

    if (v15)
    {
      *(v18 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_230487D48(v18, a2, v19, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2304879A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v32 = a2;
  v33 = a7;
  v39 = a4;
  v34 = a1;
  v42 = a6(0);
  v9 = *(*(v42 - 8) + 64);
  result = MEMORY[0x28223BE20](v42);
  v40 = a3;
  v41 = &v32 - v12;
  v13 = 0;
  v16 = *(a3 + 56);
  v15 = a3 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v37 = v11 + 16;
  v38 = v11;
  v35 = 0;
  v36 = (v11 + 8);
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v22 = v21 | (v13 << 6);
    v23 = v42;
    v24 = v41;
LABEL_11:
    (*(v38 + 16))(v24, *(v40 + 48) + *(v38 + 72) * v22, v23);
    v27 = v39(v24);
    v28 = v24;
    if (v7)
    {
      return (*v36)(v24, v23);
    }

    v29 = v27;
    result = (*v36)(v28, v23);
    if (v29)
    {
      *(v34 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v35++, 1))
      {
        __break(1u);
LABEL_16:
        v31 = v40;

        return v33(v34, v32, v35, v31);
      }
    }
  }

  v25 = v13;
  v23 = v42;
  v24 = v41;
  while (1)
  {
    v13 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_16;
    }

    v26 = *(v15 + 8 * v13);
    ++v25;
    if (v26)
    {
      v19 = (v26 - 1) & v26;
      v22 = __clz(__rbit64(v26)) | (v13 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_230487C10(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_230487838(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_230487CA0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a7;
      v11 = a6;
      v12 = a5;
      v13 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v13;
      a5 = v12;
      a6 = v11;
      a7 = v10;
    }

    v14 = sub_2304879A8(result, a2, a3, a4, a5, a6, a7);

    return v14;
  }

  return result;
}

uint64_t sub_230487D48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v4 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544B0, &unk_2304A74C0);
  v9 = sub_2304A60D4();
  v5 = v9;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = v9 + 56;
  result = a4;
  while (v10)
  {
    v14 = __clz(__rbit64(v10));
    v28 = (v10 - 1) & v10;
LABEL_16:
    v17 = *(*(result + 48) + 8 * (v14 | (v11 << 6)));
    v18 = *(v5 + 40);
    sub_2304A4984();
    sub_2304332D4(&qword_281499FD0, MEMORY[0x277D464B8]);

    result = sub_2304A5CF4();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v5 + 48) + 8 * v22) = v17;
    ++*(v5 + 16);
    if (__OFSUB__(v4--, 1))
    {
      goto LABEL_32;
    }

    result = a4;
    v10 = v28;
    if (!v4)
    {
LABEL_28:

      return v5;
    }
  }

  v15 = v11;
  while (1)
  {
    v11 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v16 = a1[v11];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v28 = (v16 - 1) & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_230487FC4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_2304A5294();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544A8, &unk_2304A7BB0);
  result = sub_2304A60D4();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_2304332D4(&qword_281499F60, MEMORY[0x277D46850]);
    result = sub_2304A5CF4();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
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
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2304882EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_2304A4084();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB545E0, &unk_2304A7B60);
  result = sub_2304A60D4();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_2304332D4(&qword_28149AC58, MEMORY[0x277CC95F0]);
    result = sub_2304A5CF4();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
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
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_230488614(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v19 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_2304A6004();
  sub_2304A4984();
  sub_2304332D4(&qword_281499FD0, MEMORY[0x277D464B8]);
  result = sub_2304A5E24();
  v4 = v26;
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v11 = v30;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = v9;
  v24 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_2304A6074())
      {
        goto LABEL_30;
      }

      sub_2304A4984();
      swift_dynamicCast();
      result = v25;
      if (!v25)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));

    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v22 = v10 + 1;
  }

  else
  {
    v22 = v13;
  }

  v10 = v22 - 1;
LABEL_30:
  v9 = v23;
  v7 = v24;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_230488840(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_2304A4FF4();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_230488AE4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_2304A4FF4();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_230488D88(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_2304A4084();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_23048904C@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_230489090(uint64_t a1, uint64_t a2, void (**a3)(const void *, void *))
{
  v57 = a1;
  v5 = sub_2304A53C4();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  MEMORY[0x28223BE20](v5);
  v55 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2304A4084();
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v8);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2304A44F4();
  v47 = *(v48 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v48);
  v45 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB53F00, &unk_2304A7B70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v45 - v15;
  v17 = sub_2304A46C4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v46 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_23048A230;
  *(v22 + 24) = v21;
  v23 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
  swift_beginAccess();
  v49 = a2;
  sub_230474F80(a2 + v23, v58);
  __swift_project_boxed_opaque_existential_5Tm(v58, v59);
  v56 = a3;
  _Block_copy(a3);

  sub_2304A48C4();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_230464970(v16, &unk_27DB53F00, &unk_2304A7B70);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v24 = sub_2304A5B74();
    __swift_project_value_buffer(v24, qword_28149B008);
    v25 = v50;
    v26 = v51;
    v27 = v52;
    (*(v51 + 16))(v50, v57, v52);
    v28 = sub_2304A5B54();
    v29 = sub_2304A5E74();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v58[0] = v31;
      *v30 = 136446210;
      sub_2304332D4(&qword_27DB54610, MEMORY[0x277CC95F0]);
      v32 = sub_2304A62D4();
      v33 = v25;
      v35 = v34;
      (*(v26 + 8))(v33, v27);
      v36 = sub_23046A5C8(v32, v35, v58);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_230430000, v28, v29, "Cannot change pairing state for a relationship that does not exist: %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x23191A000](v31, -1, -1);
      MEMORY[0x23191A000](v30, -1, -1);
    }

    else
    {

      (*(v26 + 8))(v25, v27);
    }

    (*(v53 + 104))(v55, *MEMORY[0x277D468D0], v54);
    sub_2304A53E4();
    sub_2304332D4(&unk_281499F28, MEMORY[0x277D468E0]);
    v40 = swift_allocError();
    sub_2304A53D4();
    v41 = v56;
    _Block_copy(v56);
    v42 = v40;
    v43 = sub_2304A3F14();
    v41[2](v41, v43);

    _Block_release(v41);
  }

  else
  {
    v37 = v46;
    (*(v18 + 32))(v46, v16, v17);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    sub_230474F80(v49 + v23, v58);
    v57 = v60;
    __swift_project_boxed_opaque_existential_5Tm(v58, v59);
    v38 = v45;
    sub_2304A4674();
    sub_2304A44B4();
    (*(v47 + 8))(v38, v48);
    v39 = swift_allocObject();
    *(v39 + 16) = sub_23048A244;
    *(v39 + 24) = v22;

    sub_2304A4864();

    (*(v18 + 8))(v37, v17);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
  }
}

uint64_t sub_230489814(uint64_t a1)
{
  v46 = a1;
  v2 = sub_2304A53C4();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v43 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2304A4084();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2304A44F4();
  v35 = *(v36 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v36);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB53F00, &unk_2304A7B70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v34 - v13;
  v15 = sub_2304A46C4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
  swift_beginAccess();
  v37 = v1;
  sub_230474F80(v1 + v20, v44);
  __swift_project_boxed_opaque_existential_5Tm(v44, v45);
  sub_2304A48C4();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_230464970(v14, &unk_27DB53F00, &unk_2304A7B70);
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v21 = sub_2304A5B74();
    __swift_project_value_buffer(v21, qword_28149B008);
    v23 = v38;
    v22 = v39;
    v24 = v40;
    (*(v39 + 16))(v38, v46, v40);
    v25 = sub_2304A5B54();
    v26 = sub_2304A5E74();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v44[0] = v28;
      *v27 = 136446210;
      sub_2304332D4(&qword_27DB54610, MEMORY[0x277CC95F0]);
      v29 = sub_2304A62D4();
      v31 = v30;
      (*(v22 + 8))(v23, v24);
      v32 = sub_23046A5C8(v29, v31, v44);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_230430000, v25, v26, "Cannot change pairing state for a relationship that does not exist: %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x23191A000](v28, -1, -1);
      MEMORY[0x23191A000](v27, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v23, v24);
    }

    (*(v41 + 104))(v43, *MEMORY[0x277D468D0], v42);
    sub_2304A53E4();
    sub_2304332D4(&unk_281499F28, MEMORY[0x277D468E0]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    sub_230474F80(v37 + v20, v44);
    __swift_project_boxed_opaque_existential_5Tm(v44, v45);
    sub_2304A4674();
    sub_2304A44B4();
    (*(v35 + 8))(v10, v36);
    sub_2304A4874();
    (*(v16 + 8))(v19, v15);

    return __swift_destroy_boxed_opaque_existential_0Tm(v44);
  }
}

uint64_t sub_230489E58(uint64_t a1, uint64_t a2)
{
  v4 = sub_2304A4084();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v20 = a2;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v5 + 16);
    v13 = v5 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v9, v16, v4);
      sub_23046B48C(v11, v9);
      (*(v13 - 8))(v11, v4);
      v16 += v17;
      --v12;
    }

    while (v12);
    return v20;
  }

  return a2;
}

void sub_230489FB8(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = sub_2304A4104();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2304A4084();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = _Block_copy(a3);
    MEMORY[0x231918330](v16);
    _Block_copy(a3);
    sub_230489090(v13, v15, a3);
    _Block_release(a3);
    swift_unknownObjectRelease();
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D462E0], v4);
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
    v17 = swift_allocError();
    (*(v5 + 32))(v18, v8, v4);
    _Block_copy(a3);
    v19 = sub_2304A3F14();
    (a3)[2](a3, v19);
  }

  _Block_release(a3);
}

uint64_t sub_23048A24C(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if ((a2 & 1) == 0)
  {
    a1 = 0;
  }

  return v3(a1);
}

uint64_t sub_23048A32C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23047C3AC();
}

uint64_t AllowedClientVerifier.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = sub_23048A900();
  v2 = sub_230473E0C(v1);

  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_23048A3C8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB546A8, &qword_2304A7CC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_5Tm(a1, a1[3]);
  sub_23048B404();
  sub_2304A63D4();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F40, &qword_2304A73A0);
  sub_23048B458(&qword_27DB546B0);
  sub_2304A62C4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_23048A550()
{
  sub_2304A6394();
  MEMORY[0x231919910](0);
  return sub_2304A63B4();
}

uint64_t sub_23048A5BC()
{
  sub_2304A6394();
  MEMORY[0x231919910](0);
  return sub_2304A63B4();
}

uint64_t sub_23048A618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449746E65696C63 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2304A62F4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23048A6C0(uint64_t a1)
{
  v2 = sub_23048B404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23048A6FC(uint64_t a1)
{
  v2 = sub_23048B404();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_23048A738@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_23048B25C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t AllowedClientVerifier.init()()
{
  v1 = sub_23048A900();
  v2 = sub_230473E0C(v1);

  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_23048A7C4()
{
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54698, &qword_2304A7BC0);
  sub_23048B0A4();
  return sub_2304A5E34() & 1;
}

uint64_t AllowedClientVerifier.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AllowedClientVerifier.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_23048A88C()
{
  v2 = *(*v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54698, &qword_2304A7BC0);
  sub_23048B0A4();
  return sub_2304A5E34() & 1;
}

uint64_t sub_23048A900()
{
  v70 = *MEMORY[0x277D85DE8];
  v0 = sub_2304A3F34();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2304A3FC4();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v62 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v62 - v14;
  v66 = objc_opt_self();
  v16 = [v66 defaultManager];
  v68 = 0;
  v17 = [v16 URLForDirectory:5 inDomain:8 appropriateForURL:0 create:0 error:&v68];

  v18 = v68;
  if (!v17)
  {
    v35 = v68;
    v36 = sub_2304A3F24();

    swift_willThrow();
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v37 = sub_2304A5B74();
    __swift_project_value_buffer(v37, qword_28149B008);
    v38 = v36;
    v39 = sub_2304A5B54();
    v40 = sub_2304A5E94();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = v36;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_230430000, v39, v40, "Failed to load allow list: %@", v41, 0xCu);
      sub_23048B190(v42);
      MEMORY[0x23191A000](v42, -1, -1);
      MEMORY[0x23191A000](v41, -1, -1);
    }

    goto LABEL_10;
  }

  sub_2304A3F74();
  v19 = v18;

  v68 = 0x746163696C706572;
  v69 = 0xEB0000000064726FLL;
  v20 = *MEMORY[0x277CC91D8];
  v65 = v5;
  v67 = v13;
  v21 = v1[13];
  v21(v4, v20, v0);
  sub_2304645C4();
  v63 = v6;
  v64 = v15;
  sub_2304A3FB4();
  v22 = v1[1];
  v22(v4, v0);
  v68 = 0x73694C776F6C6C41;
  v69 = 0xEF7473696C702E74;
  v21(v4, v20, v0);
  v23 = v67;
  v24 = v65;
  sub_2304A3FB4();
  v22(v4, v0);
  v25 = v63[1];
  v25(v10, v24);
  v26 = [v66 defaultManager];
  sub_2304A3F94();
  v27 = sub_2304A5D14();

  v28 = [v26 contentsAtPath_];

  if (!v28)
  {
    v25(v23, v24);
    v25(v64, v24);
LABEL_10:
    result = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v29 = sub_2304A3FD4();
  v31 = v30;

  v32 = sub_2304A3EF4();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  sub_2304A3EE4();
  sub_23048B1F8();
  sub_2304A3ED4();
  v47 = v68;
  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v48 = sub_2304A5B74();
  __swift_project_value_buffer(v48, qword_28149B008);

  v49 = sub_2304A5B54();
  v50 = sub_2304A5E94();

  v66 = v49;
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v68 = v63;
    *v51 = 136315138;

    v53 = v47;
    v54 = MEMORY[0x231919340](v52, MEMORY[0x277D837D0]);
    v56 = v55;

    v57 = sub_23046A5C8(v54, v56, &v68);

    *(v51 + 4) = v57;
    v58 = v66;
    _os_log_impl(&dword_230430000, v66, v50, "Loaded allow list: %s", v51, 0xCu);
    v59 = v63;
    __swift_destroy_boxed_opaque_existential_0Tm(v63);
    MEMORY[0x23191A000](v59, -1, -1);
    MEMORY[0x23191A000](v51, -1, -1);

    sub_2304617C4(v29, v31);

    v60 = v65;
    v25(v67, v65);
    v25(v64, v60);
    result = v53;
  }

  else
  {

    sub_2304617C4(v29, v31);

    v61 = v65;
    v25(v67, v65);
    v25(v64, v61);
    result = v47;
  }

LABEL_11:
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_23048B0A4()
{
  result = qword_281499DB0;
  if (!qword_281499DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB54698, &qword_2304A7BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281499DB0);
  }

  return result;
}

uint64_t sub_23048B190(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F30, &qword_2304A7390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23048B1F8()
{
  result = qword_28149A620;
  if (!qword_28149A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28149A620);
  }

  return result;
}

void *sub_23048B25C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB546A0, &unk_2304A7CB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_5Tm(a1, a1[3]);
  sub_23048B404();
  sub_2304A63C4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F40, &qword_2304A73A0);
    sub_23048B458(&qword_281499DC0);
    sub_2304A62B4();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v9;
}

unint64_t sub_23048B404()
{
  result = qword_28149A638[0];
  if (!qword_28149A638[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28149A638);
  }

  return result;
}

uint64_t sub_23048B458(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB53F40, &qword_2304A73A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AllowedClientVerifier.AllowList.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AllowedClientVerifier.AllowList.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_23048B5B0()
{
  result = qword_27DB546B8;
  if (!qword_27DB546B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB546B8);
  }

  return result;
}

unint64_t sub_23048B608()
{
  result = qword_28149A628;
  if (!qword_28149A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28149A628);
  }

  return result;
}

unint64_t sub_23048B660()
{
  result = qword_28149A630;
  if (!qword_28149A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28149A630);
  }

  return result;
}

void sub_23048B6B4(uint64_t a1, _BYTE *a2, void *a3)
{
  v26 = a3;
  v5 = sub_2304A49E4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2304A4084();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2304A5AF4();
  v12 = sub_2304A5AD4();

  if (v3)
  {
    *v26 = v3;
  }

  else if (v12)
  {
    v25[2] = sub_2304A49C4();
    v25[3] = v13;
    sub_2304A4344();

    sub_2304A4044();
    v25[1] = v18;
    (*(v8 + 8))(v11, v7);
    sub_2304A49D4();
    sub_2304A49F4();
    v19 = sub_2304A4A04();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = sub_2304A49B4();
    v23 = MEMORY[0x28223BE20](v22);
    v25[-2] = v12;
    v25[-1] = v23;
    v24 = sub_2304A5B34();
    MEMORY[0x28223BE20](v24);
    v25[-2] = v12;
    v25[-1] = v22;
    sub_2304A5B34();
  }

  else
  {
    if (qword_281499E28 != -1)
    {
      swift_once();
    }

    v14 = sub_2304A5B74();
    __swift_project_value_buffer(v14, &unk_28149AFF0);
    v15 = sub_2304A5B54();
    v16 = sub_2304A5E94();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_230430000, v15, v16, "No more client defined IDs to migrate", v17, 2u);
      MEMORY[0x23191A000](v17, -1, -1);
    }

    *a2 = 0;
  }
}

void sub_23048BA74(uint64_t a1)
{
  v4 = 1;
  do
  {
    v2 = MEMORY[0x2319199F0]();
    sub_23048B6B4(a1, &v4, &v3);
    objc_autoreleasePoolPop(v2);
  }

  while ((v4 & 1) != 0);
}

uint64_t sub_23048BC98(uint64_t a1, void (*a2)(void), void (*a3)(uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  a2();
  a3(v5, v6);
}

uint64_t sub_23048BD04@<X0>(uint64_t a1@<X8>)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2304A3FC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - v8;
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  v12 = sub_2304A5D14();
  v13 = [v11 containerURLForSecurityApplicationGroupIdentifier_];

  if (!v13)
  {
    __break(1u);
  }

  sub_2304A3F74();

  (*(v3 + 32))(v9, v7, v2);
  sub_2304A3F64();
  v14 = [v10 defaultManager];
  v15 = sub_2304A3F54();
  v24[0] = 0;
  v16 = [v14 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:v24];

  if (v16)
  {
    v17 = *(v3 + 8);
    v18 = v24[0];
    result = v17(v9, v2);
  }

  else
  {
    v20 = v24[0];
    sub_2304A3F24();

    swift_willThrow();
    v21 = *(v3 + 8);
    v21(a1, v2);
    result = (v21)(v9, v2);
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23048BFBC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v5 = *(v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB546C0, &qword_2304A7E58);
    sub_23048C0E8();
    v2 = v0;
    v1 = sub_2304A5BC4();
    v3 = *(v0 + 24);
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t sub_23048C054()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_23048C0E8()
{
  result = qword_27DB546C8;
  if (!qword_27DB546C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB546C0, &qword_2304A7E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB546C8);
  }

  return result;
}

void sub_23048C14C(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 protocolForProtocol_];
  [a1 setClient_];

  v4 = [v2 protocolForProtocol_];
  [a1 setServer_];
}

void sub_23048C234()
{
  v1 = sub_2304A5CA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_2304A5CB4();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    sub_2304919B4();
    v8 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_connection);
    if (v8)
    {
      v9 = v8;
      if ([v9 remoteTarget])
      {
        sub_2304A5F94();
        swift_unknownObjectRelease();

        sub_230464970(v10, &qword_27DB54148, &unk_2304A7500);
      }

      else
      {
        memset(v10, 0, sizeof(v10));
        sub_230464970(v10, &qword_27DB54148, &unk_2304A7500);
        [v9 activate];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_23048C414()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MigrationClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MigrationClient()
{
  result = qword_28149AAA8;
  if (!qword_28149AAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23048C55C()
{
  result = sub_2304A3FC4();
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

void sub_23048C614()
{
  if (qword_281499E50 != -1)
  {
    swift_once();
  }

  v0 = sub_2304A5B74();
  __swift_project_value_buffer(v0, qword_28149B038);
  v1 = sub_2304A5B54();
  v2 = sub_2304A5E94();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_230430000, v1, v2, "Begin migration", v3, 2u);
    MEMORY[0x23191A000](v3, -1, -1);
  }

  if (sub_23048C9E4())
  {
    sub_23048CE7C();
    v4 = sub_23048EBAC();
    v5 = MEMORY[0x2319199F0](v4);
    sub_23048F08C();
    objc_autoreleasePoolPop(v5);
  }

  sub_230491638();
  oslog = sub_2304A5B54();
  v6 = sub_2304A5E94();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_230430000, oslog, v6, "End migration", v7, 2u);
    MEMORY[0x23191A000](v7, -1, -1);
  }
}

uint64_t sub_23048C9E4()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - v5;
  v7 = sub_2304A4084();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2304A5CA4();
  v17 = *(v11 - 8);
  v12 = *(v17 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
  *v14 = v15;
  (*(v17 + 104))(v14, *MEMORY[0x277D85200], v11);
  v16 = v15;
  LOBYTE(v15) = sub_2304A5CB4();
  v18 = *(v17 + 8);
  LOBYTE(v17) = v17 + 8;
  v18(v14, v11);
  if (v15)
  {
    if (qword_281499E50 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v19 = sub_2304A5B74();
  __swift_project_value_buffer(v19, qword_28149B038);
  v20 = sub_2304A5B54();
  v21 = sub_2304A5E94();
  if (os_log_type_enabled(v20, v21))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_230430000, v20, v21, "Migrating local device ID", v17, 2u);
    MEMORY[0x23191A000](v17, -1, -1);
  }

  sub_230492400(v6);
  if (!v1)
  {
    v22 = v35;
    v23 = (*(v35 + 48))(v6, 1, v7);
    LOBYTE(v17) = v23 != 1;
    if (v23 == 1)
    {
      sub_230464970(v6, &qword_27DB53F20, &qword_2304A7388);
      v30 = sub_2304A5B54();
      v31 = sub_2304A5E94();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_230430000, v30, v31, "Failed to migrate local device ID", v32, 2u);
        MEMORY[0x23191A000](v32, -1, -1);
      }
    }

    else
    {
      (*(v22 + 32))(v10, v6, v7);
      v24 = sub_2304A5B54();
      v25 = sub_2304A5E94();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_230430000, v24, v25, "Migrated local device ID", v26, 2u);
        MEMORY[0x23191A000](v26, -1, -1);
      }

      sub_2304A4044();
      v27 = v2 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_recordMetadataStore;
      swift_beginAccess();
      v28 = *(v27 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v27, *(v27 + 24));
      v29 = *(v28 + 16);
      sub_2304A47F4();
      swift_endAccess();
      (*(v35 + 8))(v10, v7);
    }
  }

  return v17 & 1;
}

uint64_t sub_23048CE7C()
{
  v1 = sub_2304A4024();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v216 = &v152[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v3);
  v215 = &v152[-v6];
  MEMORY[0x28223BE20](v5);
  v214 = &v152[-v7];
  v230 = sub_2304A46C4();
  v250 = *(v230 - 8);
  v8 = *(v250 + 64);
  v9 = MEMORY[0x28223BE20](v230);
  v213 = &v152[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v229 = &v152[-v11];
  v12 = sub_2304A41D4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v244 = &v152[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v251 = sub_2304A4B64();
  v178 = *(v251 - 8);
  v15 = *(v178 + 64);
  MEMORY[0x28223BE20](v251);
  v243 = &v152[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v242 = sub_2304A41F4();
  v245 = *(v242 - 8);
  v17 = *(v245 + 64);
  MEMORY[0x28223BE20](v242);
  v176 = &v152[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v212 = sub_2304A4EE4();
  v248 = *(v212 - 8);
  v19 = *(v248 + 64);
  MEMORY[0x28223BE20](v212);
  v211 = &v152[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v222 = sub_2304A46A4();
  v249 = *(v222 - 8);
  v21 = *(v249 + 64);
  v22 = MEMORY[0x28223BE20](v222);
  v210 = &v152[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v22);
  v209 = &v152[-v25];
  MEMORY[0x28223BE20](v24);
  v228 = &v152[-v26];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v208 = &v152[-v29];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54110, &unk_2304A74E0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v207 = &v152[-v32];
  v232 = sub_2304A4084();
  v246 = *(v232 - 8);
  v33 = *(v246 + 64);
  MEMORY[0x28223BE20](v232);
  v235 = &v152[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v227 = sub_2304A44F4();
  v247 = *(v227 - 8);
  v35 = *(v247 + 64);
  v36 = MEMORY[0x28223BE20](v227);
  v206 = &v152[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v36);
  v234 = &v152[-v38];
  v39 = sub_2304A4BE4();
  v252 = *(v39 - 8);
  v40 = *(v252 + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v152[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v41);
  v256 = &v152[-v44];
  v45 = sub_2304A4434();
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v255 = &v152[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = sub_2304A4E64();
  v177 = *(v48 - 8);
  v49 = *(v177 + 64);
  MEMORY[0x28223BE20](v48);
  v175 = &v152[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v218 = sub_2304A4E94();
  v240 = *(v218 - 8);
  v51 = *(v240 + 64);
  MEMORY[0x28223BE20](v218);
  v217 = &v152[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v231 = sub_2304A4114();
  v241 = *(v231 - 8);
  v53 = *(v241 + 64);
  v54 = MEMORY[0x28223BE20](v231);
  v205 = &v152[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = MEMORY[0x28223BE20](v54);
  v204 = &v152[-v57];
  MEMORY[0x28223BE20](v56);
  v233 = &v152[-v58];
  v226 = sub_2304A4F74();
  v219 = *(v226 - 8);
  v59 = *(v219 + 64);
  MEMORY[0x28223BE20](v226);
  v236 = &v152[-((v60 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = sub_2304A5CA4();
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  v65 = &v152[-((v64 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v220 = v0;
  v66 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
  *v65 = v66;
  (*(v62 + 104))(v65, *MEMORY[0x277D85200], v61);
  v67 = v66;
  v68 = sub_2304A5CB4();
  (*(v62 + 8))(v65, v61);
  if ((v68 & 1) == 0)
  {
    goto LABEL_52;
  }

  if (qword_281499E50 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v69 = sub_2304A5B74();
    v203 = __swift_project_value_buffer(v69, qword_28149B038);
    v70 = sub_2304A5B54();
    v71 = sub_2304A5E94();
    v72 = os_log_type_enabled(v70, v71);
    v73 = v235;
    if (v72)
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_230430000, v70, v71, "Migrating devices", v74, 2u);
      MEMORY[0x23191A000](v74, -1, -1);
    }

    v75 = v258;
    result = sub_2304929E0();
    if (v75)
    {
      break;
    }

    v202 = *(result + 16);
    if (!v202)
    {
    }

    v158 = 0;
    v77 = v219;
    v198 = result + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v78 = result;
    v199 = OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_recordMetadataStore;
    swift_beginAccess();
    v79 = v78;
    v80 = 0;
    v197 = (v240 + 88);
    v196 = *MEMORY[0x277D46730];
    v173 = *MEMORY[0x277D46710];
    v169 = *MEMORY[0x277D46720];
    v166 = *MEMORY[0x277D46718];
    v162 = *MEMORY[0x277D46728];
    v157 = *MEMORY[0x277D46708];
    v174 = *MEMORY[0x277D46330];
    v154 = (v240 + 8);
    v153 = *MEMORY[0x277D46308];
    v156 = *MEMORY[0x277D46328];
    v161 = *MEMORY[0x277D46318];
    v165 = *MEMORY[0x277D46320];
    v168 = *MEMORY[0x277D46310];
    v195 = (v246 + 56);
    v194 = (v248 + 88);
    v201 = (v249 + 104);
    v155 = (v248 + 8);
    v193 = *MEMORY[0x277D46768];
    v172 = (v248 + 96);
    v192 = (v249 + 32);
    v171 = *MEMORY[0x277D46748];
    v191 = (v249 + 16);
    *&v81 = 136446210;
    v170 = v81;
    v190 = (v250 + 16);
    v189 = v250 + 8;
    v188 = (v249 + 8);
    v167 = *MEMORY[0x277D46758];
    v187 = (v247 + 16);
    v186 = (v247 + 8);
    v164 = *MEMORY[0x277D46750];
    v185 = (v241 + 104);
    v184 = (v241 + 32);
    v183 = (v241 + 16);
    v182 = (v241 + 8);
    v160 = *MEMORY[0x277D46760];
    v179 = *MEMORY[0x277D46408];
    v159 = *MEMORY[0x277D46410];
    v163 = *MEMORY[0x277D46418];
    v181 = v77 + 16;
    v239 = v178 + 16;
    v238 = (v178 + 8);
    v237 = v245 + 32;
    v180 = (v77 + 8);
    v82 = v232;
    v248 = v48;
    v83 = v231;
    v253 = v43;
    v254 = v39;
    v200 = v78;
    v252 += 8;
    v221 = (v246 + 8);
    v241 = v177 + 16;
    v240 = v177 + 8;
    while (v80 < *(v79 + 16))
    {
      v89 = v82;
      (*(v219 + 16))(v236, v198 + *(v219 + 72) * v80, v226);
      v90 = v217;
      sub_2304A4EA4();
      v91 = (*v197)(v90, v218);
      if (v91 == v196)
      {
        v92 = v204;
        (*v185)(v204, v174, v83);
      }

      else
      {
        v92 = v204;
        if (v91 == v173)
        {
          (*v185)(v204, v168, v83);
        }

        else if (v91 == v169)
        {
          (*v185)(v204, v165, v83);
        }

        else if (v91 == v166)
        {
          (*v185)(v204, v161, v83);
        }

        else if (v91 == v162)
        {
          (*v185)(v204, v156, v83);
        }

        else
        {
          v93 = *v185;
          if (v91 == v157)
          {
            v93(v204, v153, v83);
          }

          else
          {
            v93(v204, v174, v83);
            (*v154)(v217, v218);
          }
        }
      }

      v225 = v80;
      (*v184)(v233, v92, v83);
      v94 = sub_2304A4F44();
      v95 = *(v94 + 16);
      if (v95)
      {
        v257[0] = MEMORY[0x277D84F90];
        sub_2304A6154();
        v250 = sub_2304A4984();
        v96 = v94 + ((*(v177 + 80) + 32) & ~*(v177 + 80));
        v249 = *(v177 + 72);
        v97 = *(v177 + 16);
        v246 = v94;
        v247 = v97;
        v98 = v175;
        do
        {
          (v247)(v98, v96, v48);
          sub_2304A4E34();
          sub_2304A4E54();
          v258 = sub_2304A4974();

          v99 = v256;
          sub_2304A4E44();
          sub_2304A4BC4();
          v100 = *v252;
          v101 = v254;
          (*v252)(v99, v254);
          v102 = v253;
          sub_2304A4E44();
          sub_2304A4BD4();
          v100(v102, v101);
          sub_2304A4404();
          v103 = sub_2304A49A4();
          v104 = *(v103 + 48);
          v105 = *(v103 + 52);
          swift_allocObject();
          v48 = v248;
          sub_2304A4994();
          (*v240)(v98, v48);
          sub_2304A6134();
          v106 = *(v257[0] + 16);
          sub_2304A6164();
          sub_2304A6174();
          sub_2304A6144();
          v96 += v249;
          --v95;
        }

        while (v95);

        v224 = v257[0];
        v107 = v232;
        v73 = v235;
      }

      else
      {

        v224 = MEMORY[0x277D84F90];
        v107 = v89;
      }

      v108 = sub_2304A4EB4();
      v109 = *(v108 + 16);
      v110 = v256;
      if (v109)
      {
        v257[0] = MEMORY[0x277D84F90];
        sub_23045FAA0(0, v109, 0);
        v258 = v257[0];
        v111 = (*(v178 + 80) + 32) & ~*(v178 + 80);
        v223 = v108;
        v112 = v108 + v111;
        v113 = *(v178 + 72);
        v246 = *(v178 + 16);
        v247 = v113;
        v114 = v176;
        do
        {
          v250 = v109;
          v115 = v243;
          (v246)(v243, v112, v251);
          sub_2304A4B34();
          sub_2304A4B54();
          sub_2304A41B4();
          sub_2304A4B44();
          v249 = sub_2304A4BC4();
          v116 = *v252;
          v117 = v110;
          v118 = v254;
          (*v252)(v117, v254);
          v119 = v253;
          sub_2304A4B44();
          sub_2304A4BD4();
          v116(v119, v118);
          sub_2304A4404();
          sub_2304A41E4();
          (*v238)(v115, v251);
          v257[0] = v258;
          v121 = v258[2];
          v120 = v258[3];
          v122 = v258;
          if (v121 >= v120 >> 1)
          {
            sub_23045FAA0(v120 > 1, v121 + 1, 1);
            v114 = v176;
            v122 = v257[0];
          }

          v258 = v122;
          v122[2] = v121 + 1;
          (*(v245 + 32))(v122 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v121, v114, v242);
          v112 += v247;
          v109 = v250 - 1;
          v110 = v256;
        }

        while (v250 != 1);

        v107 = v232;
        v73 = v235;
      }

      else
      {

        v258 = MEMORY[0x277D84F90];
      }

      sub_2304A4F04();
      v249 = sub_2304A4044();
      v247 = v123;
      v250 = *v221;
      (v250)(v73, v107);
      v246 = sub_2304A4F34();
      v223 = v124;
      sub_2304A4ED4();
      sub_2304A4BC4();
      v125 = *v252;
      v126 = v254;
      (*v252)(v110, v254);
      v127 = v253;
      sub_2304A4ED4();
      sub_2304A4BD4();
      v125(v127, v126);
      sub_2304A4404();
      (*v183)(v205, v233, v231);
      v128 = sub_2304A4544();
      (*(*(v128 - 8) + 56))(v207, 1, 1, v128);
      (*v195)(v208, 1, 1, v107);
      sub_2304A44A4();
      v129 = v211;
      sub_2304A4EF4();
      v130 = v212;
      v131 = (*v194)(v129, v212);
      if (v131 == v193)
      {
        (*v172)(v129, v130);
        v132 = v209;
        v133 = v222;
        (*v201)(v209, v179, v222);
        (v250)(v129, v107);
        v134 = v230;
      }

      else
      {
        v134 = v230;
        v133 = v222;
        v132 = v209;
        if (v131 == v171)
        {
          (*v201)(v209, v179, v222);
        }

        else if (v131 == v167)
        {
          (*v201)(v209, v163, v222);
        }

        else if (v131 == v164)
        {
          (*v201)(v209, v159, v222);
        }

        else
        {
          v151 = v131;
          (*v201)(v209, v179, v222);
          if (v151 != v160)
          {
            (*v155)(v129, v130);
          }
        }
      }

      v135 = v228;
      (*v192)(v228, v132, v133);
      v136 = v133;
      v137 = v235;
      sub_2304A4EC4();
      (*v187)(v206, v234, v227);
      sub_2304A4004();
      sub_2304A4004();
      v138 = v136;
      (*v191)(v210, v135, v136);
      sub_2304A4004();
      v139 = v229;
      sub_2304A4694();
      v140 = v213;
      (*v190)(v213, v139, v134);
      v141 = sub_2304A5B54();
      v142 = sub_2304A5E94();
      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        v258 = swift_slowAlloc();
        v257[0] = v258;
        *v143 = v170;
        sub_2304A4684();
        sub_2304948A8(&qword_27DB54610, MEMORY[0x277CC95F0]);
        v144 = v232;
        v145 = sub_2304A62D4();
        v147 = v146;
        (v250)(v137, v144);
        v84 = *v189;
        v43 = (v189 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v138 = v222;
        (*v189)(v140, v230);
        v148 = sub_23046A5C8(v145, v147, v257);

        *(v143 + 4) = v148;
        _os_log_impl(&dword_230430000, v141, v142, "Storing relationship: %{public}s)", v143, 0xCu);
        v149 = v258;
        __swift_destroy_boxed_opaque_existential_0Tm(v258);
        MEMORY[0x23191A000](v149, -1, -1);
        v150 = v143;
        v134 = v230;
        MEMORY[0x23191A000](v150, -1, -1);
      }

      else
      {

        v84 = *v189;
        v43 = (v189 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        (*v189)(v140, v134);
      }

      v48 = v248;
      v39 = v225 + 1;
      sub_230464834(v220 + v199, v257);
      v85 = v257[4];
      __swift_project_boxed_opaque_existential_5Tm(v257, v257[3]);
      v86 = *(v85 + 16);
      v87 = v229;
      sub_2304A4804();
      v88 = v134;
      v80 = v39;
      v84(v87, v88);
      (*v188)(v228, v138);
      (*v186)(v234, v227);
      v83 = v231;
      (*v182)(v233, v231);
      (*v180)(v236, v226);
      __swift_destroy_boxed_opaque_existential_0Tm(v257);
      v82 = v232;
      v73 = v235;
      v79 = v200;
      if (v39 == v202)
      {
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  return result;
}

uint64_t sub_23048EBAC()
{
  v2 = v0;
  v3 = sub_2304A5294();
  v46 = *(v3 - 8);
  v4 = *(v46 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v48 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v38 - v7;
  v8 = sub_2304A5CA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  v15 = sub_2304A5CB4();
  (*(v9 + 8))(v12, v8);
  if ((v15 & 1) == 0)
  {
    goto LABEL_16;
  }

  if (qword_281499E50 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v16 = sub_2304A5B74();
    v45 = __swift_project_value_buffer(v16, qword_28149B038);
    v17 = sub_2304A5B54();
    v18 = sub_2304A5E94();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v48;
    if (v19)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_230430000, v17, v18, "Migrating client descriptors", v21, 2u);
      MEMORY[0x23191A000](v21, -1, -1);
    }

    result = sub_230492F08();
    v24 = v47;
    if (v1)
    {
      break;
    }

    v44 = *(result + 16);
    if (!v44)
    {
    }

    v25 = 0;
    v41 = v2 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_clientDescriptorStore;
    v40 = result + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v39 = v46 + 16;
    v49 = (v46 + 8);
    *&v23 = 136446210;
    v38 = v23;
    v42 = v3;
    v43 = result;
    while (v25 < *(result + 16))
    {
      v26 = *(v46 + 16);
      v26(v24, v40 + *(v46 + 72) * v25, v3);
      v26(v20, v24, v3);
      v27 = sub_2304A5B54();
      v28 = sub_2304A5E94();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v50 = v30;
        *v29 = v38;
        v31 = sub_2304A5284();
        v33 = v32;
        v2 = *v49;
        (*v49)(v48, v42);
        v34 = sub_23046A5C8(v31, v33, &v50);

        *(v29 + 4) = v34;
        _os_log_impl(&dword_230430000, v27, v28, "Storing client descriptor: %{public}s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        v35 = v30;
        v20 = v48;
        MEMORY[0x23191A000](v35, -1, -1);
        v36 = v29;
        v3 = v42;
        MEMORY[0x23191A000](v36, -1, -1);
      }

      else
      {

        v2 = *v49;
        (*v49)(v20, v3);
      }

      v37 = *(v41 + 4);
      __swift_project_boxed_opaque_existential_5Tm(v41, *(v41 + 3));
      v24 = v47;
      sub_2304A54A4();
      ++v25;
      v2(v24, v3);
      result = v43;
      if (v44 == v25)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
  }

  return result;
}

uint64_t *sub_23048F08C()
{
  v311 = sub_2304A4A64();
  v308 = *(v311 - 8);
  v1 = *(v308 + 8);
  MEMORY[0x28223BE20](v311);
  v310 = &v225 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = sub_2304A3FC4();
  v307 = *(v315 - 8);
  v3 = v307[8];
  MEMORY[0x28223BE20](v315);
  v294 = &v225 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE0, &qword_2304A7430);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v309 = &v225 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v293 = &v225 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v312 = &v225 - v12;
  MEMORY[0x28223BE20](v11);
  v319 = &v225 - v13;
  v320 = sub_2304A5054();
  v299 = *(v320 - 8);
  v14 = *(v299 + 64);
  v15 = MEMORY[0x28223BE20](v320);
  v321 = &v225 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v298 = &v225 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB546E8, &qword_2304A7EC8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v318 = &v225 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v314 = &v225 - v22;
  v251 = sub_2304A43B4();
  v23 = *(*(v251 - 8) + 64);
  MEMORY[0x28223BE20](v251);
  v250 = &v225 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB546F0, &unk_2304A7A40);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v249 = &v225 - v27;
  v28 = sub_2304A4FD4();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v254 = &v225 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2304A49E4();
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v248 = &v225 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v253 = &v225 - v36;
  MEMORY[0x28223BE20](v35);
  v255 = &v225 - v37;
  v278 = sub_2304A4FF4();
  i = *(v278 - 8);
  v38 = *(i + 64);
  v39 = MEMORY[0x28223BE20](v278);
  v247 = &v225 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v276 = &v225 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v246 = &v225 - v44;
  MEMORY[0x28223BE20](v43);
  v261 = &v225 - v45;
  v245 = sub_2304A4084();
  v305 = *(v245 - 8);
  v46 = v305[8];
  v47 = MEMORY[0x28223BE20](v245);
  v244 = &v225 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v260 = &v225 - v49;
  v279 = sub_2304A45F4();
  v50 = *(v279 - 8);
  v51 = *(v50 + 64);
  v52 = MEMORY[0x28223BE20](v279);
  v243 = &v225 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v287 = &v225 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB546F8, &qword_2304A7ED0);
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x28223BE20](v55 - 8);
  v283 = &v225 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v282 = (&v225 - v60);
  MEMORY[0x28223BE20](v59);
  v288 = &v225 - v61;
  v292 = sub_2304A4BF4();
  v62 = *(v292 - 8);
  v63 = v62[8];
  v64 = MEMORY[0x28223BE20](v292);
  v252 = &v225 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v64);
  v275 = &v225 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v316 = &v225 - v69;
  MEMORY[0x28223BE20](v68);
  v277 = &v225 - v70;
  v295 = sub_2304A5084();
  v304 = *(v295 - 8);
  v71 = *(v304 + 64);
  v72 = MEMORY[0x28223BE20](v295);
  v259 = &v225 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x28223BE20](v72);
  v257 = &v225 - v75;
  MEMORY[0x28223BE20](v74);
  v300 = &v225 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54170, &qword_2304A7528);
  v284 = *(v77 - 8);
  v78 = *(v284 + 64);
  MEMORY[0x28223BE20](v77);
  v281 = &v225 - v79;
  v80 = sub_2304A5CA4();
  v81 = *(v80 - 8);
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v80);
  v84 = (&v225 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
  v262 = v0;
  v85 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
  *v84 = v85;
  (*(v81 + 104))(v84, *MEMORY[0x277D85200], v80);
  v86 = v85;
  LOBYTE(v85) = sub_2304A5CB4();
  (*(v81 + 8))(v84, v80);
  if (v85)
  {
    if (qword_281499E50 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_57:
    __break(1u);
  }

  swift_once();
LABEL_3:
  v87 = sub_2304A5B74();
  v280 = __swift_project_value_buffer(v87, qword_28149B038);
  v88 = sub_2304A5B54();
  v89 = sub_2304A5E94();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_230430000, v88, v89, "Migrating records", v90, 2u);
    MEMORY[0x23191A000](v90, -1, -1);
  }

  v91 = v262;
  v92 = v317;
  result = sub_230493430();
  v94 = v288;
  if (!v92)
  {
    v95 = result;
    v265 = result[2];
    if (v265)
    {
      v313 = 0;
      v273 = *(v77 + 48);
      v303 = (v91 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_recordStore);
      v272 = result + ((*(v284 + 80) + 32) & ~*(v284 + 80));
      v232 = OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_recordMetadataStore;
      swift_beginAccess();
      v96 = 0;
      v271 = (v304 + 32);
      v270 = (v62 + 4);
      v97 = v62 + 2;
      v269 = (v62 + 11);
      v268 = *MEMORY[0x277D46558];
      v267 = (v50 + 56);
      v286 = (v62 + 1);
      v242 = *MEMORY[0x277D46560];
      v256 = (v50 + 104);
      v241 = (v62 + 12);
      v266 = (v50 + 48);
      v235 = *MEMORY[0x277D463E0];
      v240 = (v50 + 32);
      v274 = (i + 8);
      v239 = *MEMORY[0x277D463D8];
      v258 = (v304 + 16);
      v263 = (v304 + 8);
      v238 = (v50 + 8);
      v231 = (v305 + 1);
      v230 = (v305 + 6);
      v226 = (v305 + 4);
      v229 = (v305 + 7);
      v228 = (v50 + 16);
      v296 = v299 + 16;
      v317 = (v299 + 32);
      v305 = v307 + 6;
      v291 = v307 + 4;
      *&v98 = 136446466;
      v234 = v98;
      *&v98 = 136446210;
      v233 = v98;
      v227 = xmmword_2304A7E70;
      v290 = v307 + 1;
      v302 = v307 + 7;
      v301 = (v308 + 8);
      v304 = v299 + 8;
      v77 = v279;
      v50 = v292;
      v99 = v283;
      v100 = v277;
      v101 = v275;
      v62 = v316;
      v264 = v95;
      v285 = v97;
      do
      {
        if (v96 >= v95[2])
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v105 = *(v284 + 72);
        v289 = v96;
        v106 = v281;
        v107 = v97;
        sub_230464B24(&v272[v105 * v96], v281, &qword_27DB54170, &qword_2304A7528);
        (*v271)(v300, v106, v295);
        (*v270)(v100, v106 + v273, v50);
        v108 = *v107;
        (*v107)(v62, v100, v50);
        v109 = (*v269)(v62, v50);
        if (v109 == v268)
        {
          (*v241)(v62, v50);
          v110 = *v62;
          v111 = v282;
          *v282 = v110;
          (*v256)(v111, v239, v77);
          (*v267)(v111, 0, 1, v77);
        }

        else
        {
          v111 = v282;
          if (v109 == v242)
          {
            (*v256)(v282, v235, v77);
            (*v267)(v111, 0, 1, v77);
          }

          else
          {
            (*v267)(v282, 1, 1, v77);
            (*v286)(v316, v50);
          }
        }

        sub_230464ABC(v111, v94, &qword_27DB546F8, &qword_2304A7ED0);
        sub_230464B24(v94, v99, &qword_27DB546F8, &qword_2304A7ED0);
        if ((*v266)(v99, 1, v77) == 1)
        {
          sub_230464970(v99, &qword_27DB546F8, &qword_2304A7ED0);
          v108(v101, v100, v50);
          v112 = v259;
          v113 = v295;
          (*v258)(v259, v300, v295);
          v114 = sub_2304A5B54();
          v115 = v113;
          v116 = v100;
          v117 = sub_2304A5E74();
          if (os_log_type_enabled(v114, v117))
          {
            v118 = swift_slowAlloc();
            v307 = swift_slowAlloc();
            v322[0] = v307;
            *v118 = v234;
            v108(v252, v101, v292);
            v119 = sub_2304A5D34();
            v121 = v120;
            v308 = *v286;
            (v308)(v101, v292);
            v122 = sub_23046A5C8(v119, v121, v322);

            *(v118 + 4) = v122;
            *(v118 + 12) = 2082;
            v123 = v276;
            sub_2304A5014();
            sub_2304948A8(&qword_281499F78, MEMORY[0x277D46790]);
            v124 = v278;
            v125 = sub_2304A62D4();
            v127 = v126;
            (*v274)(v123, v124);
            v128 = *v263;
            v129 = v295;
            (*v263)(v112, v295);
            v130 = sub_23046A5C8(v125, v127, v322);
            v77 = v279;

            *(v118 + 14) = v130;
            _os_log_impl(&dword_230430000, v114, v117, "Unknown destination %{public}s for record ID: %{public}s", v118, 0x16u);
            v131 = v307;
            swift_arrayDestroy();
            v94 = v288;
            MEMORY[0x23191A000](v131, -1, -1);
            v132 = v118;
            v50 = v292;
            MEMORY[0x23191A000](v132, -1, -1);

            sub_230464970(v94, &qword_27DB546F8, &qword_2304A7ED0);
            v100 = v277;
            (v308)(v277, v50);
            v128(v300, v129);
            goto LABEL_49;
          }

          v102 = *v263;
          (*v263)(v112, v115);
          v103 = v115;
          v104 = *v286;
          (*v286)(v101, v50);
          v94 = v288;
          sub_230464970(v288, &qword_27DB546F8, &qword_2304A7ED0);
          v104(v116, v50);
          v102(v300, v103);
          v100 = v116;
          v62 = v316;
          v95 = v264;
          v77 = v279;
        }

        else
        {
          (*v240)(v287, v99, v77);
          v133 = v261;
          v134 = v300;
          sub_2304A5014();
          v135 = sub_2304A4FA4();
          v137 = v136;
          v138 = *v274;
          v139 = v278;
          (*v274)(v133, v278);
          v322[0] = v135;
          v322[1] = v137;
          v140 = v260;
          v141 = v313;
          sub_2304A4344();
          if (!v141)
          {
            v313 = 0;

            v308 = sub_2304A4044();
            v307 = v156;
            v157 = v245;
            (*v231)(v140, v245);
            v158 = v246;
            sub_2304A5014();
            v159 = v254;
            sub_2304A4FE4();
            v138(v158, v139);
            v160 = 1;
            if ((*v230)(v159, 1, v157) != 1)
            {
              (*v226)(v253, v254, v157);
              v160 = 0;
            }

            v161 = v253;
            (*v229)(v253, v160, 1, v157);
            v162 = v161;
            v163 = v255;
            sub_230494704(v162, v255);
            i = sub_2304A4984();
            v164 = v276;
            sub_2304A5014();
            sub_2304A4FB4();
            v138(v164, v139);
            v165 = v139;
            v166 = v247;
            sub_2304A5014();
            sub_2304A4F84();
            v167 = v166;
            v168 = v276;
            v138(v167, v165);
            v169 = sub_2304A4974();
            i = v138;
            v170 = v169;

            sub_230494768(v163, v248);
            v171 = sub_2304A4A04();
            v172 = *(v171 + 48);
            v173 = *(v171 + 52);
            v297 = v171;
            swift_allocObject();

            v237 = v170;
            v174 = sub_2304A49B4();

            sub_2304A5014();
            v307 = sub_2304A4FA4();
            (i)(v168, v165);
            sub_2304A5074();
            (*v228)(v243, v287, v279);
            v175 = sub_2304A4024();
            (*(*(v175 - 8) + 56))(v249, 1, 1, v175);
            v322[0] = MEMORY[0x277D84F90];
            sub_2304948A8(&qword_27DB54700, MEMORY[0x277D46388]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54708, &qword_2304A7ED8);
            sub_2304947CC();
            sub_2304A5FA4();
            v176 = sub_2304A43E4();
            v177 = *(v176 + 48);
            v178 = *(v176 + 52);
            swift_allocObject();
            v179 = v174;
            v180 = sub_2304A4374();

            v181 = sub_2304A5B54();
            v182 = sub_2304A5E94();

            v183 = os_log_type_enabled(v181, v182);
            v308 = v179;
            if (v183)
            {
              v184 = swift_slowAlloc();
              v185 = swift_slowAlloc();
              v322[0] = v185;
              *v184 = v233;
              v322[10] = v179;
              sub_2304948A8(&qword_27DB54728, MEMORY[0x277D464E8]);
              v186 = sub_2304A62D4();
              v188 = sub_23046A5C8(v186, v187, v322);

              *(v184 + 4) = v188;
              _os_log_impl(&dword_230430000, v181, v182, "Storing metadata: %{public}s", v184, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v185);
              MEMORY[0x23191A000](v185, -1, -1);
              MEMORY[0x23191A000](v184, -1, -1);
            }

            v50 = v320;
            sub_230464834(v262 + v232, v322);
            v189 = v322[4];
            __swift_project_boxed_opaque_existential_5Tm(v322, v322[3]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB540A8, &qword_2304A7498);
            v190 = swift_allocObject();
            *(v190 + 16) = v227;
            *(v190 + 32) = v180;
            v191 = *(v189 + 16);
            v236 = v180;

            sub_2304A4814();

            __swift_destroy_boxed_opaque_existential_0Tm(v322);
            v192 = sub_2304A5064();
            v193 = 0;
            v195 = (v192 + 64);
            v194 = *(v192 + 64);
            v297 = v192;
            v196 = 1 << *(v192 + 32);
            if (v196 < 64)
            {
              v197 = ~(-1 << v196);
            }

            else
            {
              v197 = -1;
            }

            v198 = v197 & v194;
            v199 = (v196 + 63) >> 6;
            v307 = (v192 + 64);
            for (i = v199; ; v199 = i)
            {
              v203 = v318;
              if (!v198)
              {
                break;
              }

              v204 = v193;
LABEL_42:
              v208 = __clz(__rbit64(v198));
              v198 &= v198 - 1;
              v209 = v208 | (v204 << 6);
              v210 = *(*(v297 + 48) + 8 * v209);
              v211 = v299;
              v212 = v298;
              (*(v299 + 16))(v298, *(v297 + 56) + *(v299 + 72) * v209, v50);
              v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54720, &qword_2304A7EE0);
              v214 = *(v213 + 48);
              v215 = v318;
              *v318 = v210;
              v203 = v215;
              (*(v211 + 32))(&v215[v214], v212, v50);
              (*(*(v213 - 8) + 56))(v203, 0, 1, v213);
              v207 = v314;
              v62 = v315;
              v77 = v316;
LABEL_43:
              sub_230464ABC(v203, v207, &qword_27DB546E8, &qword_2304A7EC8);
              v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54720, &qword_2304A7EE0);
              if ((*(*(v216 - 8) + 48))(v207, 1, v216) == 1)
              {
                v62 = v77;

                sub_230494830(v255);
                v77 = v279;
                (*v238)(v287, v279);
                v94 = v288;
                sub_230464970(v288, &qword_27DB546F8, &qword_2304A7ED0);
                v100 = v277;
                v50 = v292;
                (*v286)(v277, v292);
                (*v263)(v300, v295);
                v101 = v275;
                goto LABEL_51;
              }

              v217 = *v207;
              (*v317)(v321, &v207[*(v216 + 48)], v320);
              v218 = v312;
              sub_2304A5024();
              if ((*v305)(v218, 1, v62) == 1)
              {
                sub_230464970(v218, &qword_27DB53FE0, &qword_2304A7430);
                v200 = v319;
                (*v302)(v319, 1, 1, v62);
              }

              else
              {
                v219 = v294;
                (*v291)(v294, v218, v62);
                type metadata accessor for ClientDataSource();
                v220 = v293;
                v221 = v313;
                sub_230496544(v219, v293);
                v313 = v221;
                if (v221)
                {

                  (*v290)(v219, v62);
                  (*v304)(v321, v320);
                  sub_230494830(v255);
                  (*v238)(v287, v279);
                  sub_230464970(v288, &qword_27DB546F8, &qword_2304A7ED0);
                  (*v286)(v277, v292);
                  return (*v263)(v300, v295);
                }

                (*v290)(v219, v62);
                (*v302)(v220, 0, 1, v62);
                v200 = v319;
                sub_230464ABC(v220, v319, &qword_27DB53FE0, &qword_2304A7430);
              }

              sub_2304A5034();
              sub_230464B24(v200, v309, &qword_27DB53FE0, &qword_2304A7430);
              v201 = v310;
              sub_2304A4A24();
              v202 = v303[4];
              __swift_project_boxed_opaque_existential_5Tm(v303, v303[3]);
              sub_2304A5354();
              (*v301)(v201, v311);
              sub_230464970(v319, &qword_27DB53FE0, &qword_2304A7430);
              v50 = v320;
              (*v304)(v321, v320);
              v195 = v307;
            }

            if (v199 <= v193 + 1)
            {
              v205 = v193 + 1;
            }

            else
            {
              v205 = v199;
            }

            v206 = v205 - 1;
            v207 = v314;
            v62 = v315;
            v77 = v316;
            while (1)
            {
              v204 = v193 + 1;
              if (__OFADD__(v193, 1))
              {
                break;
              }

              if (v204 >= v199)
              {
                v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54720, &qword_2304A7EE0);
                (*(*(v222 - 8) + 56))(v203, 1, 1, v222);
                v198 = 0;
                v193 = v206;
                goto LABEL_43;
              }

              v198 = v195[v204];
              ++v193;
              if (v198)
              {
                v193 = v204;
                goto LABEL_42;
              }
            }

            __break(1u);
            goto LABEL_56;
          }

          v313 = 0;

          v142 = v257;
          (*v258)(v257, v134, v295);
          v143 = sub_2304A5B54();
          v144 = sub_2304A5E74();
          if (!os_log_type_enabled(v143, v144))
          {

            v223 = *v263;
            v224 = v295;
            (*v263)(v142, v295);
            (*v238)(v287, v77);
            v94 = v288;
            sub_230464970(v288, &qword_27DB546F8, &qword_2304A7ED0);
            v100 = v277;
            v50 = v292;
            (*v286)(v277, v292);
            v223(v134, v224);
LABEL_49:
            v101 = v275;
            v62 = v316;
LABEL_51:
            v95 = v264;
            goto LABEL_9;
          }

          v145 = swift_slowAlloc();
          v307 = swift_slowAlloc();
          v322[0] = v307;
          *v145 = v233;
          v146 = v276;
          sub_2304A5014();
          sub_2304948A8(&qword_281499F78, MEMORY[0x277D46790]);
          v147 = v138;
          v148 = v278;
          v149 = sub_2304A62D4();
          v151 = v150;
          v152 = v146;
          v153 = v295;
          v147(v152, v148);
          v308 = *v263;
          (v308)(v257, v153);
          v154 = sub_23046A5C8(v149, v151, v322);
          v95 = v264;
          v94 = v288;

          *(v145 + 4) = v154;
          _os_log_impl(&dword_230430000, v143, v144, "Could not create internal ID for record ID: %{public}s", v145, 0xCu);
          v155 = v307;
          __swift_destroy_boxed_opaque_existential_0Tm(v307);
          MEMORY[0x23191A000](v155, -1, -1);
          MEMORY[0x23191A000](v145, -1, -1);

          (*v238)(v287, v77);
          sub_230464970(v94, &qword_27DB546F8, &qword_2304A7ED0);
          v100 = v277;
          v50 = v292;
          (*v286)(v277, v292);
          (v308)(v300, v153);
          v101 = v275;
          v62 = v316;
        }

LABEL_9:
        v96 = v289 + 1;
        v99 = v283;
        v97 = v285;
      }

      while (v289 + 1 != v265);
    }
  }

  return result;
}